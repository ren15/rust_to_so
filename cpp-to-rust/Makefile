ifeq ($(shell uname),Darwin)
    EXT := dylib
else
    EXT := so
endif

cbindgen:
	cbindgen --output src/example.h

all: target/debug/libdouble_input.$(EXT) cbindgen
	g++ src/main.cpp -L ./target/debug/ -ldouble_input -o run
	LD_LIBRARY_PATH=./target/debug/ ./run

target/debug/libdouble_input.$(EXT): src/lib.rs Cargo.toml
	cargo build

clean:
	rm -rf target
	rm -rf run
