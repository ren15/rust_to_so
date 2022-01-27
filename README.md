# rust_to_so

This repo is for creating `.so` and `.a` file from rust.
Then C/C++ project can use this.

Tools used:
```
- cbindgen      ## .h header auto-generator
- clang++       ## the compiler
- make
- bear          ## for generating compile_commands.json
```

More complicated examples will be in another repo, those will focus on performance/benchmark.

Credit to https://github.com/alexcrichton/rust-ffi-examples
