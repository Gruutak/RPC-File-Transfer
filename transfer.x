const MAXLEN = 262144;

typedef opaque filebytes[MAXLEN];

struct file {
	char name[MAXLEN];
	filebytes data;
	int nbytes;
};

program TRANSFER {
	version TRANSFER_1 {
		int TRANSF(file) = 1;
	} = 1;
} = 0x31230000;
