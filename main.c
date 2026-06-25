printbin(char n)
{
	char buf = 0;
	int i;
	for (i = 0; i < 4; i++) {
		buf = '0' + (n & 1); /* or n % 2 */
		syscall(1, 1, &buf, 1);
		n = n >> 1;
	}
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
