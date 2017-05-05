# Crystal lib generator [![Build Status](https://secure.travis-ci.org/olbat/libgen.png?branch=master)](https://travis-ci.org/olbat/libgen)

Libgen is a small tool based on the [crystal_lib](https://github.com/crystal-lang/crystal_lib) project that allows to generate [libs](https://crystal-lang.org/docs/syntax_and_semantics/c_bindings/lib.html) following rules specified in config files.


## Overview
This project aims to ease the port of big C libraries and to provide a convinient way to define re-generable bindings.

Lib generation is parametrized using a YAML or JSON configuration file (_how to generate_).

Bindings definitions are specified in YAML, JSON or Crystal files or in the generation config file directly (_what to generate_).

It's possible to split lib's definitions in several files in order to make the binding more readable/easy to maintain.

There is also an option to perform AST node renaming at generation time.


## Installation
__Debian/Ubuntu__
```bash
# install build dependencies
apt-get install -y build-essential llvm-3.5-dev libclang-3.5-dev
# then, build and install
make && make install
```

__macOS__
```bash
# if necessary, install build dependencies
brew install llvm@3.7
# then, build and install
make && make install
```


## Usage
```bash
usage: libgen [<lib_desc_file>]
```


## Example
A generation config file, [examples/icu/lib.yml](examples/icu/lib.yml):
```yaml
---
name: LibICU
ldflags: "-licuuc -licudata -licui18n -licuio"
packages: "icu-uc icu-i18n icu-io"
destdir: src/lib_icu/
includes:
- include/*.yml
- include/*.json
- include/*.cr
definitions:
  ubrk:
    description: Text Boundary Analysis (Break Iteration)
    includes: [ unicode/ubrk.h ]
    prefixes: [ ubrk_ ]
rename:
  rules:
    "*":
    - pattern: _\d+$
      replacement: ""
```

A definition file, [examples/icu/include/ucsdet.yml](examples/icu/include/ucsdet.yml):
```yaml
---
description: Charset detection
includes:
- unicode/ucsdet.h
prefixes:
- ucsdet_
```

Generation of the lib:
```bash
$ libgen examples/icu/lib.yml
loading library from examples/icu/lib.yml
moving to examples/icu/
loading ubrk definition from lib.yml
loading lib_icu definition from include/lib_icu.yml
loading ucsdet definition from include/ucsdet.yml
loading ucurr definition from include/ucurr.json
loading udat definition from include/udat.cr
generate src/lib_icu/ubrk.cr
generate src/lib_icu/lib_icu.cr
generate src/lib_icu/ucsdet.cr
generate src/lib_icu/ucurr.cr
generate src/lib_icu/udat.cr

# or, using docker-compose
$ docker-compose run --rm -u $UID libgen examples/icu/lib.yml
```

The generated files: [examples/icu/src/lib_icu](examples/icu/src/lib_icu).


## Specifications
### Configuration files

Lib's are generated following configurations specified in two kind of entities:
* a __library__ that specifies global options such as the lib name, the output
  directory or the linker's flags
* some __definitions__ that specifies a part of the lib specifying the C header
  files that describes it  
  (a Crystal file will be generated for each definition in the output directory)

The ___library___ config has to be saved in a file (
[JSON](examples/gmp/lib.json) or [YAML](examples/openssl/lib.yml))

The ___definitions___ configs can be saved in:
* a file ([JSON](examples/icu/include/ucurr.json),
  [YAML](examples/icu/include/ucsdet.yml) or
  [Crystal](examples/icu/include/udat.cr)), the name of the output file
  corresponds to the name of this file (i.e. sha.yml → sha.cr)
* inside the __library__ config file using the
  [definitions](examples/icu/lib.yml) field, the name of the output file
  corresponds to the name of the field


### Configuration format

___WIP___: the config file format is not frozen yet, please wait for the first
         release to use the project

__Library__
- __name__: the name of the output lib  
  _[String, mandatory]_
- __ldflags__: flags to be passed to the linker  
  _[String, mandatory]_
- __packages__: a list of [pkg-config](https://www.freedesktop.org/wiki/Software/pkg-config/)
  packages that can be used to find the linker's flags
  (falls back on _ldflags_ if not found)  
  _[String, optional]_
- __destdir__: the directory to write the output files to (relative to the
  config file)  
  _[String, optional, default: src/@name.underscore]_
- __includes__: a list of definition files to include for the generation
  (interpreted by [Dir.glob](https://crystal-lang.org/api/0.21.1/Dir.html))  
  _[Array(String), optional]_
- __definitions__: a list of definitions (see __Definition__ bellow) the hash's
  is used to specify the output file name (without extension)  
  _[Hash(String, String), optional]_
- __rename/rules__: a list of renaming rules:
  - the key is the type of AST node to rename  
    _[String, value =~ /(Fun|Type|CStructOrUnion|Enum)Def|Alias|ExternalVar|Arg|\*/]_,
  - the value is an array of
    [String#gsub](https://crystal-lang.org/api/0.21.1/Dir.html) __pattern__ and
    __replacement__ values  
    _[Array(NamedTuple(pattern:Regex, replacement:String)))]_

__Definition__
- __description__: a description of this part of the lib (used to generate a
  comment in the output file)  
  _[String, optional]_
- __includes__: a list of C header files used to generate the binding of this
  part of the lib  
  _[Array(String), mandatory]_
- __prefixes__: a list of prefixes used to filter C functions that have to be
  included in the binding from the header files  
  _[String, mandatory]_
- __flags__: some flags to be define when loading C header files  
  _[String, optional]_


### Example

A complete example is available in the [examples/icu](examples/icu) directory.


## Development
__How does it work__

...

__Known limitations__
* it's only possible to filter functions to bind by prefix (and not by name, such as in [example](https://github.com/crystal-lang/crystal_lib/blob/master/examples/lib_readline.cr))
* it's not possible to specify the `description` field in definitions written in Crystal
* the `description` field specified in definitions is not used ATM (it should be added as a comment in the generated bindings)

__Launch the tests__
```
make test

# or, using docker-compose
docker-compose run --rm -u $UID devel make test
```

__Build the Docker image__
```bash
make
docker build .
```


## Contributing
1. Fork it ( https://github.com/olbat/libgen/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request


## Contributors
- [olbat](https://github.com/olbat)  - creator, maintainer
