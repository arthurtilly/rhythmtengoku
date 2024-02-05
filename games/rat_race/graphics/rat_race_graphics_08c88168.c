#include "global.h"
#include "graphics.h"

// // //  D_08C88168  // // //

// [D_08C88158] D_08C88168 Data
u16 D_08c88168_data[] = {
	0x0000, 0x1003, 0x0000
};

// [D_08C8815E] D_08C88168 RLE Data
u8 D_08c88168_rledata[] = {
	0x1, 0x0, 0x60, 0x1, 0x3f, 0x1, 0x0, 0x0, 0x61, 0x0
};

// [D_08C88168] D_08C88168 Graphics
struct CompressedGraphics D_08c88168 = {
	/* Data */				{.raw = D_08c88168_data},
	/* RLE Data */			D_08c88168_rledata,
	/* RLE Size */			0x6,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

