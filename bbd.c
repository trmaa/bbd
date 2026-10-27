char file[1024];
char byte[8];

void
pbin(char n)
{
	for (int i = 0; i < 8; i++)
		byte[i] = ((n >> (7 - i)) & 1) + '0';

	write(1, byte, 8);
}

main()
{
	int len = read(0, file, 1024);

	for (int i = 0; i < len; i++) {
		if ((i & 7) == 0)
			write(1, "\n", 1);
		pbin(file[i]);
		write(1, " ", 1);
	}

	write(1, "\n", 1);
}
