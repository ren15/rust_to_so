.PHONY: $(MAKECMDGOALS)

BUILD_DIR=build

help:
	echo "Check Makefile"
test:
	cd rust_lib && cargo test
clean:
	rm -rf $(BUILD_DIR)

rust_so_gen: 
	cd rust_lib && cargo build --release

build: rust_so_gen
	mkdir -p ${BUILD_DIR}
	cbindgen rust_lib --output=cxx/include/rust_lib.h --lang c++
	clang++ -O3 -std=c++20 cxx/main.cpp -o ${BUILD_DIR}/main -lrust_lib -L rust_lib/target/release

run: build
	LD_LIBRARY_PATH=./rust_lib/target/release ${BUILD_DIR}/main