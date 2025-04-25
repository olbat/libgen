# 0.2.12 (25-04-2025)
- Bump version of crystal_lib, clang.cr and test compatibility with LLVM 18

# 0.2.11 (17-04-2020)
- Add support for Crystal >= 1.x

# 0.2.10 (04-03-2020)
- Fix: compilation issue with Crystal 0.36+

# 0.2.9 (04-03-2020)
- Fix: "transformation to broken code" error messages are not verbose enough

# 0.2.8 (27-11-2019)
- Make it possible to namespace library names, e.g. _Foo::Bar::Lib_
  (an englobing module will be added when generating the lib)

# 0.2.7 (06-11-2019)
- Add an option to import docstrings (see [options/import_docstrings](SPECS.md))

# 0.2.6 (05-08-2019)
- Fix: compilation issue that appeared with Crystal 0.30

# 0.2.5 (15-05-2019)
- Fix: compilation issue that appeared with Crystal 0.28 (see #33)

# 0.2.4 (05-09-2018)
- Add Crystal 0.26 compatibility

# 0.2.3 (29-07-2018)
- Fix: using the "-h" option makes the program crash (#29, thanks @rtnakashima)

# 0.2.2 (20-07-2018)
- Add Crystal 0.25 compatibility

# 0.2.1 (28-12-2017)
- Add Crystal 0.24 compatibility

# 0.2.0 (23-08-2017)
- **(breaking-change)** Compilation flags are now specified using the
  `cflags` field of code generation configuration file (see #17)
- Update examples using Crystal 23, libicu 55 and libgmp 10
- Add GTK examples
- Fix the Crystal documentation

# 0.1.0 (14-06-2017)
- Initial release
  - YAML, JSON configuration for code generation
  - YAML, JSON, Crystal configuration for definitions
  - Crystal code formating
  - AST node renaming
