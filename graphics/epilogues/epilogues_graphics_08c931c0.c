#include "global.h"
#include "graphics.h"

// // //  D_08C931C0  // // //

// [D_08C930D4] D_08C931C0 Data
u16 D_08c931c0_data[] = {
	0x0000, 0x0082, 0x0000, 0x0082, 0x0000, 0x0082, 0x0000, 0x0082, 0x0082, 0x00c5, 0x00c4, 0x0082, 0x0000, 0x0082, 0x00cc, 0x00cb, 0x00ca, 0x00ce, 0x0082, 0x00cd, 0x00c7, 0x0082, 0x00c6, 0x00c9, 0x0082, 0x00c8, 0x00d0, 0x00cf, 0x0082, 0x0000, 0x0082, 0x00e4, 0x00e7, 0x00e6, 0x00e5, 0x0082, 0x00ed, 0x00ec, 0x00f0, 0x00ef, 0x00ee, 0x00ea, 0x00e9, 0x00e8, 0x00eb, 0x0082, 0x0000, 0x00e3, 0x00e2, 0x00e1, 0x00dd, 0x00dc, 0x00db, 0x00e0, 0x00df, 0x00de, 0x0101, 0x0100, 0x00ff, 0x0104, 0x0103, 0x0102, 0x0082, 0x0000, 0x0105, 0x00f9, 0x00f8, 0x00f7, 0x00fc, 0x00fb, 0x00fa, 0x00f3, 0x00f2, 0x00f1, 0x00f6, 0x00f5, 0x00f4, 0x00fe, 0x00fd, 0x0082, 0x0000, 0x00d2, 0x00d1, 0x00d4, 0x00d4, 0x00d3, 0x0082, 0x00d8, 0x00d4, 0x00da, 0x00d9, 0x00d4, 0x00d6, 0x00d5, 0x00d4, 0x00d7, 0x0082, 0x0000, 0x0082, 0x0000
};

// [D_08C9319C] D_08C931C0 RLE Data
u8 D_08c931c0_rledata[] = {
	0x1, 0xa6, 0x1, 0xf, 0x1, 0xf, 0x1, 0xf, 0x1, 0xf, 0x1, 0xf, 0x1, 0xf, 0x5, 0xb, 0x1, 0xf, 0x11, 0xf, 0x11, 0xf, 0x11, 0xf, 0x11, 0xf, 0x11, 0xf, 0x1, 0xf, 0x1, 0x0, 0x0, 0x2a, 0x0, 0x0
};

// [D_08C931C0] D_08C931C0 Graphics
struct CompressedGraphics D_08c931c0 = {
	/* Data */				{.raw = D_08c931c0_data},
	/* RLE Data */			D_08c931c0_rledata,
	/* RLE Size */			0x20,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

