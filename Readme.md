# igraph-d
WIP

This is the repository for D bindings of [igraph](https://igraph.org/) library for the network analysis.
It is based on [igraph C API](https://igraph.org/c/) and ImportC functionality.

Currently only examples from Tutorial were tested.
More examples are coming.

## Building
I recommend to build both C and D versions, to compare both results.

### C building
To build C example run in the terminal (with assumption, that the igraph library was installed in /usr path):

```sh
cc igraph_test.c -I/usr/include/igraph -L/usr/lib -ligraph -o igraph_test
```

### D building
At first you need to prepare `igraph_lib.c` file, where you need to include required header files:
```c
#include <path_to_the_lib/igraph.h>
```

#### 1. Manual preprocessing
You can preprocess file to eliminate macros manually (don't forget to add `importc.h`):
```sh
clang -E igraph_lib.c -o igraph_lib.i -include  /usr/include/dlang/ldc/importc.h
```

Compile with D compiler (which supports ImportC):
```sh
ldc2 igraph_test.d ./igraph_lib.i -L/usr/lib/libigraph.so
```

#### 2. Auto preprocessing
In later versions of D compilers (at least DMD 104.0, LDC 1.34), you can ask the compiler to do all job:
```sh
ldc2 igraph_test.d ./igraph_lib.c -L/use/lib/libigraph.so
```

## Tested

- [ ] macOS (M1)
- [X] Linux
- [ ] Windows

## Todo

- [ ] Inline C macros
- [ ] Make code more iDiomatic
- [X] Prepare examples from Tutorial
- [ ] Prepare Simple examples from C repository

## Contributing

Any form of contribution is welcome.
Feel free to open an issue or create a pull request.

## Credits
- [igraph](https://igraph.org/c/) for original C API of the library
- [Walter Bright](https://github.com/WalterBright) for [ImportC](https://dlang.org/spec/importc.html) tool
