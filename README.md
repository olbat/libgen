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
ldflags: "-licuio -licui18n -liculx -licule -licuuc -licudata"
packages: "icu-uc icu-i18n icu-io icu-lx icu-le"
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
__WIP__: the config file format is not frozen yet, please wait for the first release to use the project

...

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
