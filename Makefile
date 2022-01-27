.PHONY: $(MAKECMDGOALS)

BUILD_DIR=build

COMPILE_CMD=clang++ cxx/main.cpp -o ${BUILD_DIR}/main \
		-O3 -std=c++20 -flto\
		-lrust_lib -L rust_lib/target/release \
		-I rust_lib/include


help:
	echo "Check Makefile"
test:
	cd rust_lib && cargo test
gen_compile_commands:
	bear -- ${COMPILE_CMD}
	mv compile_commands.json cxx/compile_commands.json


clean:
	rm -rf $(BUILD_DIR)
	mkdir -p ${BUILD_DIR}

rust_so_gen: clean
	cd rust_lib && cargo build --release

build: rust_so_gen
	cbindgen rust_lib --output=rust_lib/include/rust_lib.h --lang c++
	${COMPILE_CMD}

run: build
	LD_LIBRARY_PATH=./rust_lib/target/release ${BUILD_DIR}/main