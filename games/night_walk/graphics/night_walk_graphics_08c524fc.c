#include "global.h"
#include "graphics.h"

// // //  D_08C524FC  // // //

// [D_08C524E0] D_08C524FC Data
u16 D_08c524fc_data[] = {
	0x011f, 0x613f, 0x653f, 0x011f, 0x6158, 0x6558, 0x011f
};

// [D_08C524EE] D_08C524FC RLE Data
u8 D_08c524fc_rledata[] = {
	0x1, 0x81, 0x1, 0x18, 0x2, 0x5, 0x1, 0x18, 0x2, 0x0, 0x0, 0x0, 0x46, 0x0
};

// [D_08C524FC] D_08C524FC Graphics
struct CompressedGraphics D_08c524fc = {
	/* Data */				{.raw = D_08c524fc_data},
	/* RLE Data */			D_08c524fc_rledata,
	/* RLE Size */			0xa,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

