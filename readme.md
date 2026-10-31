# BBD

Like xxd, but its 8 bytes per row, and in binary.

## Install

Do '$ make install'

Bear in mind, a good amount of the code is implemented in i386 assembly
for optimization.
If you use something non x86, compile using libc for the syscall mapings
and decomment the C implementations of the functions.

## Example

```console
$ bbd < file
01010100 01101000 01101001 01110011 00100000 01101001 01110011 00100000 
01100001 00100000 01110100 01100101 01111000 01110100 00100000 01100110 
01101001 01101100 01100101 00100001 00001010 
```
