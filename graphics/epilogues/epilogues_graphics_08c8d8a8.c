#include "global.h"
#include "graphics.h"

// // //  D_08C8D8A8  // // //

// [D_08C8D7E0] D_08C8D8A8 Data
u16 D_08c8d8a8_data[] = {
	0x0000, 0x00b9, 0x0000, 0x00b9, 0x0000, 0x00b9, 0x00be, 0x00bd, 0x00b9, 0x0000, 0x00b9, 0x00b8, 0x00bc, 0x00bb, 0x00ba, 0x00b9, 0x0000, 0x00b9, 0x00c2, 0x00c1, 0x00c0, 0x00bf, 0x00b9, 0x0000, 0x00b9, 0x00d2, 0x00d5, 0x00d4, 0x00d3, 0x00b9, 0x0000, 0x00b9, 0x00b9, 0x00b9, 0x00cf, 0x00ce, 0x00cd, 0x00d1, 0x00d0, 0x00b9, 0x0000, 0x00b9, 0x00b9, 0x00b9, 0x00d7, 0x00da, 0x00d9, 0x00d8, 0x00d6, 0x00b9, 0x0000, 0x00b9, 0x00b9, 0x00b9, 0x00c7, 0x00c6, 0x00ca, 0x00c9, 0x00c8, 0x00b9, 0x0000, 0x00b9, 0x00c5, 0x00c4, 0x00c3, 0x00c3, 0x00c3, 0x00cc, 0x00cc, 0x00cb, 0x00cb, 0x00cb, 0x0000
};

// [D_08C8D872] D_08C8D8A8 RLE Data
u8 D_08c8d8a8_rledata[] = {
	0x1, 0xa6, 0x1, 0xf, 0x1, 0xf, 0x1, 0xf, 0x1, 0xf, 0x1, 0x5, 0x3, 0x7, 0x1, 0xf, 0x1, 0x4, 0x5, 0x6, 0x1, 0xf, 0x1, 0x4, 0x5, 0x6, 0x1, 0xf, 0x1, 0x3, 0x5, 0x7, 0x1, 0xf, 0x9, 0x7, 0x1, 0xf, 0x9, 0x7, 0x1, 0xf, 0x9, 0x7, 0x1, 0xf, 0x1, 0x5, 0xb, 0x0, 0x0, 0x2a, 0x0, 0x0
};

// [D_08C8D8A8] D_08C8D8A8 Graphics
struct CompressedGraphics D_08c8d8a8 = {
	/* Data */				{.raw = D_08c8d8a8_data},
	/* RLE Data */			D_08c8d8a8_rledata,
	/* RLE Size */			0x32,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

