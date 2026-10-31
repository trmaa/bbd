ccf := -no-pie -m32
ccf += -nostdlib
ccf += -Wno-implicit-function-declaration -Wno-implicit-int -w 

all: bbd

bbd: $(wildcard *.c) $(wildcard *.s)
	cc $(ccf) -o $@ $^

.PHONY: all install clean

install: bbd
	cp bbd /bin

clean:
	rm bbd
