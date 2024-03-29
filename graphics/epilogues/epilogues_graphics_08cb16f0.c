#include "global.h"
#include "graphics.h"

// // //  D_08CB16F0  // // //

// [D_08CB1508] D_08CB16F0 Data
u16 D_08cb16f0_data[] = {
	0x0000, 0x0001, 0x0001, 0x0000, 0x0001, 0x0001, 0x0000, 0x0001, 0x0001, 0x0000, 0x0001, 0x0001, 0x0000, 0x00a4, 0x00a3, 0x00a2, 0x009e, 0x009d, 0x009c, 0x00a1, 0x00a0, 0x009f, 0x00b7, 0x00b6, 0x00b5, 0x00ba, 0x00b9, 0x00b8, 0x00b4, 0x0000, 0x0001, 0x0001, 0x0000, 0x00bb, 0x00ad, 0x00ac, 0x00ab, 0x00b0, 0x00af, 0x00ae, 0x00a7, 0x00a6, 0x00a5, 0x00aa, 0x00a9, 0x00a8, 0x00b3, 0x00b2, 0x00b1, 0x0000, 0x0001, 0x0001, 0x0000, 0x00f4, 0x00f3, 0x00f7, 0x00f6, 0x00f5, 0x00ff, 0x00fe, 0x00fd, 0x0102, 0x0101, 0x0100, 0x00fa, 0x00f9, 0x00f8, 0x00fc, 0x00fb, 0x0000, 0x0001, 0x0001, 0x0000, 0x00f2, 0x00f1, 0x00f0, 0x00ec, 0x00eb, 0x00ea, 0x00ef, 0x00ee, 0x00ed, 0x0115, 0x0114, 0x0113, 0x0118, 0x0117, 0x0116, 0x0112, 0x0000, 0x0001, 0x0001, 0x0000, 0x0119, 0x010b, 0x010a, 0x0109, 0x010e, 0x010d, 0x010c, 0x0105, 0x0104, 0x0103, 0x0108, 0x0107, 0x0106, 0x0111, 0x0110, 0x010f, 0x0000, 0x0001, 0x0001, 0x0000, 0x00c6, 0x00c5, 0x00c9, 0x00c8, 0x00c7, 0x00cf, 0x003f, 0x003f, 0x00d2, 0x00d1, 0x00d0, 0x00cc, 0x00cb, 0x00ca, 0x00ce, 0x00cd, 0x0000, 0x0001, 0x0001, 0x0000, 0x00c4, 0x00c3, 0x00c2, 0x00be, 0x00bd, 0x00bc, 0x00c1, 0x00c0, 0x00bf, 0x00e5, 0x00e4, 0x00e3, 0x00e8, 0x00e7, 0x00e6, 0x00e2, 0x0000, 0x0001, 0x0001, 0x0000, 0x00e9, 0x00db, 0x00da, 0x00d9, 0x00de, 0x00dd, 0x00dc, 0x00d5, 0x00d4, 0x00d3, 0x00d8, 0x00d7, 0x00d6, 0x00e1, 0x00e0, 0x00df, 0x0000, 0x0001, 0x0001, 0x0000, 0x0094, 0x0093, 0x0097, 0x0096, 0x0095, 0x009a, 0x0099, 0x0098, 0x009b, 0x0088, 0x0000, 0x0001, 0x0001, 0x0000, 0x0092, 0x0088, 0x0000, 0x0001, 0x0001, 0x0000, 0x0001, 0x0001, 0x0000, 0x0001, 0x0001, 0x0000, 0x0001, 0x0001, 0x0000, 0x0001, 0x0001, 0x0000, 0x0001, 0x0001, 0x0000, 0x0001
};

// [D_08CB16AA] D_08CB16F0 RLE Data
u8 D_08cb16f0_rledata[] = {
	0x1, 0x1d, 0x3, 0x1d, 0x3, 0x1d, 0x3, 0x1d, 0x3, 0x6, 0x11, 0x6, 0x3, 0x6, 0x11, 0x6, 0x3, 0x6, 0x11, 0x6, 0x3, 0x6, 0x11, 0x6, 0x3, 0x6, 0x11, 0x6, 0x3, 0x6, 0x11, 0x6, 0x3, 0x6, 0x11, 0x6, 0x3, 0x6, 0x11, 0x6, 0x3, 0x6, 0xa, 0x6, 0x1, 0x6, 0x3, 0x6, 0x2, 0xe, 0x1, 0x6, 0x3, 0x1d, 0x3, 0x1d, 0x3, 0x1d, 0x3, 0x1d, 0x3, 0x1d, 0x3, 0x1d, 0x1, 0x0, 0x82, 0x0, 0x0, 0x0
};

// [D_08CB16F0] D_08CB16F0 Graphics
struct CompressedGraphics D_08cb16f0 = {
	/* Data */				{.raw = D_08cb16f0_data},
	/* RLE Data */			D_08cb16f0_rledata,
	/* RLE Size */			0x42,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

