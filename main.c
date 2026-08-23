/*
 * BBD - like xxd but in binary and much simpler
 *
 * Copyright (C) 2026
 * License: GNU GPL
 * Author: Pablo Trik Marin <mail@pablotrik.online>
 */

char *AUTHOR = "Pablo Trik Marin";
char *VERSION = "2.0 release";

printbin(unsigned char n)
{
	char buf[8];
	int i = 8;

	while (i != 0) {
		buf[--i] = (n & 1) + '0';
		n >>= 1;
	}

	syscall(1, 1, &buf[i], 8);
}

_start()
{
	char c = 0;
	int i = 0;

	while (syscall(0, 0, &c, 1) != 0) {
		printbin(c);
		if (++i % 8)
			syscall(1, 1, " ", 1);
		else
			syscall(1, 1, "\n", 1);
	}

	syscall(1, 1, "\n", 1);

	syscall(60, 0);
}
