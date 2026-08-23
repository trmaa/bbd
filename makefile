.PHONY: install all

all: bbd

bbd: main.c
	cc -o $@ main.c sys.s -std=c89 -nostartfiles -fno-stack-protector

install: bbd
	cp bbd /usr/bin/
