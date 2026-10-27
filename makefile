all: bbd

bbd: bbd.c
	cc -Wno-implicit-function-declaration -Wno-implicit-int -w -o bbd bbd.c

.PHONY: all install

install: bbd
	cp bbd /bin
