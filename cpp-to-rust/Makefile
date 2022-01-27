.PHONY: $(MAKECMDGOALS)

cbindgen:
	cbindgen --output src/example.h

all: target/release/libdouble_input.so cbindgen
	clang++ -std=c++20 src/main.cpp -L ./target/release/ -ldouble_input -o run
	LD_LIBRARY_PATH=./target/release/ ./run

target/release/libdouble_input.so: src/lib.rs Cargo.toml
	cargo build --release

clean:
	rm -rf target
	rm -rf run
