.PHONY: $(MAKECMDGOALS)

help:
	echo "Check Makefile"
test:
	cd rust_lib && cargo test

	