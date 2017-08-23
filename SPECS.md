# Specifications - v0.2

## Example

A lib generation config
```yaml
--- # lib.yml
name: LibICU
cflags: "U_COMMON_IMPLEMENTATION"
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

A definition
```yaml
--- # include/ucsdet.yml
description: Charset detection
includes:
- unicode/ucsdet.h
prefixes:
- ucsdet_
```

The complete example is available in the [examples/icu](examples/icu) directory.


## Configuration files

Lib's are generated following configurations specified in two kind of entities:
* a __library__ that specifies global options such as the lib name, the output
  directory or the linker's flags (_how to generate_)
* some __definitions__ that specifies a part of the lib specifying the C header
  files that describes it (_what to generate_)  
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


## Configuration format
### Library
- `name`: the name of the output lib  
  _[String, mandatory]_
- `cflags`: flags to be passed to the compiler  
  _[String, optional]_
- `ldflags`: flags to be passed to the linker  
  _[String, mandatory]_
- `packages`: a list of [pkg-config](https://www.freedesktop.org/wiki/Software/pkg-config/)
  packages that can be used to find the compiler's and linker's flags
  (if there is any results, the compiler's flags are added to _cflags_
  and the linker's flags are used instead of _ldflags_)  
  _[String, optional]_
- `destdir`: the directory to write the output files to (relative to the
  config file)  
  _[String, optional, default: src/@name.underscore]_
- `includes`: a list of definition files to include for the generation
  (interpreted by [Dir.glob](https://crystal-lang.org/api/0.21.1/Dir.html))  
  _[Array(String), optional]_
- `definitions`: a list of definitions (see __Definition__ bellow) the hash's
  is used to specify the output file name (without extension)  
  _[Hash(String, String), optional]_
- `rename/rules`: a list of renaming rules:
  - the key is the type of AST node to rename  
    _[String, value =~ /(Fun|Type|CStructOrUnion|Enum)Def|Alias|ExternalVar|Arg|\*/]_,
  - the value is an array of
    [String#gsub](https://crystal-lang.org/api/0.21.1/Dir.html) `pattern` and
    `replacement` values  
    _[Array(NamedTuple(pattern:Regex, replacement:String)))]_

### Definition
- `description`: a description of this part of the lib (used to generate a
  comment in the output file)  
  _[String, optional]_
- `includes`: a list of C header files used to generate the binding of this
  part of the lib  
  _[Array(String), mandatory]_
- `prefixes`: a list of prefixes used to filter C functions that have to be
  included in the binding from the header files  
  _[String, mandatory]_

## Previous versions
- [v0.1](https://github.com/olbat/libgen/blob/v0.1.0/SPECS.md)
