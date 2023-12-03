.PHONY: all format

all:
	$(MAKE) format

format:
	deno fmt ./00_tiny.md ./01_deep_dive.md
