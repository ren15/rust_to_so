.PHONY: $(MAKECMDGOALS)

BUILD_DIR=build

help:
	echo "Check Makefile"
test:
	cd rust_lib && cargo test

rust_so_gen: rust_lib/src
	cd rust_lib && cargo build --release

build: rust_so_gen c/main.c
	mkdir -p ${BUILD_DIR}
	cbindgen rust_lib --output=c/include/rust_lib.h --lang c
	clang -O3 c/main.c -o ${BUILD_DIR}/main -lm -lrust_lib -L rust_lib/target/release

run: build
	LD_LIBRARY_PATH=./rust_lib/target/release ${BUILD_DIR}/main