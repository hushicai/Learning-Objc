# makefile

CC = clang
CFLAGS = -I./include -I./src -framework Foundation

srcs = $(wildcard src/*.m)
progs = $(patsubst %.m, dist/%, $(notdir $(srcs)))


all: $(progs)

.PHONY: clean setup
setup: 
	mkdir -p dist

clean: 
	rm -rf dist

dist/%: src/%.m
	$(CC) $(CFLAGS) -o $@ $^

# vim: set ft=make ts=4 sw=4 sts=4 tw=120 fdm=indent: #
