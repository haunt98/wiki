.PHONY: all format

all:
	$(MAKE) format

format:
	# deno upgrade
	deno fmt *.md
