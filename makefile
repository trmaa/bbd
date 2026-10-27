ccf = -no-pie -Wno-implicit-function-declaration -Wno-implicit-int -w -nostdlib -m32
all: bbd

bbd: $(wildcard *.c) $(wildcard *.s)
	cc $(ccf) -o $@ $^

.PHONY: all install clean

install: bbd
	cp bbd /bin

clean:
	rm bbd
