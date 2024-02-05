#include "global.h"
#include "graphics.h"

// // //  D_08C99580  // // //

// [D_08C99430] D_08C99580 Data
u16 D_08c99580_data[] = {
	0x0000, 0x00be, 0x00bd, 0x00be, 0x00bd, 0x00be, 0x00bd, 0x00be, 0x00bd, 0x00bf, 0x00c7, 0x00c6, 0x00bd, 0x00be, 0x00bd, 0x00be, 0x00bd, 0x0000, 0x00c3, 0x00c2, 0x00c3, 0x00c2, 0x00c3, 0x00c2, 0x00c3, 0x00c2, 0x00c1, 0x00c0, 0x00c5, 0x00c4, 0x00c3, 0x00c2, 0x00c3, 0x00c2, 0x0000, 0x00ae, 0x00b0, 0x0057, 0x0057, 0x0057, 0x00af, 0x00ae, 0x00ae, 0x00ae, 0x0000, 0x00ae, 0x00ae, 0x00ad, 0x00a9, 0x00a8, 0x00a7, 0x00ac, 0x00ab, 0x00aa, 0x0057, 0x00af, 0x00ae, 0x00ae, 0x0000, 0x00ae, 0x00ae, 0x00b6, 0x00b5, 0x00b9, 0x00b8, 0x00b7, 0x00b2, 0x00b1, 0x0057, 0x00b4, 0x00b3, 0x0057, 0x00bc, 0x00bb, 0x00ba, 0x0000, 0x00ae, 0x00ae, 0x00e3, 0x00e2, 0x00e1, 0x00ea, 0x00e9, 0x00e8, 0x00ed, 0x00ec, 0x00eb, 0x00e6, 0x00e5, 0x00e4, 0x00e7, 0x00af, 0x0000, 0x00ae, 0x00ae, 0x00e0, 0x00dd, 0x00dc, 0x00db, 0x00df, 0x00de, 0x00ab, 0x00fd, 0x0057, 0x00fc, 0x0100, 0x00ff, 0x00fe, 0x0057, 0x0000, 0x00ae, 0x00f6, 0x00f5, 0x00f4, 0x00f9, 0x00f8, 0x00f7, 0x00f0, 0x00ef, 0x00ee, 0x00f3, 0x00f2, 0x00f1, 0x00fb, 0x00fa, 0x0057, 0x0000, 0x00ae, 0x00c8, 0x00cb, 0x00ca, 0x00c9, 0x00d1, 0x00d0, 0x00cf, 0x00d4, 0x00d3, 0x00d2, 0x00ce, 0x00cd, 0x00cc, 0x0057, 0x0057, 0x0000, 0x00ae, 0x00d7, 0x0057, 0x00d6, 0x00da, 0x00d9, 0x00d8, 0x00d5, 0x0000
};

// [D_08C99562] D_08C99580 RLE Data
u8 D_08c99580_rledata[] = {
	0x1, 0xa6, 0x11, 0xf, 0x11, 0xf, 0x1, 0x7, 0x9, 0xf, 0xa, 0x3, 0x4, 0xf, 0x11, 0xf, 0x11, 0xf, 0x11, 0xf, 0x11, 0xf, 0x11, 0xf, 0x1, 0x8, 0x8, 0x0, 0x0, 0x2a
};

// [D_08C99580] D_08C99580 Graphics
struct CompressedGraphics D_08c99580 = {
	/* Data */				{.raw = D_08c99580_data},
	/* RLE Data */			D_08c99580_rledata,
	/* RLE Size */			0x1c,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

