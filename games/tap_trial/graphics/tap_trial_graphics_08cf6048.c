#include "global.h"
#include "graphics.h"

// // //  D_08CF6048  // // //

// [D_08CF5D1C] D_08CF6048 Huffman Data
u16 D_08cf6048_huffmandata[] = {
	0x0000, 0x03f1, 0x1010, 0x1010, 0x1010, 0x1010, 0xff01, 0x0004, 0xaa55, 0x00aa, 0xaa55, 0x00a5, 0x0009, 0x11f0, 0x00f1, 0x1010, 0xff01, 0x0009, 0xa955, 0x0a95, 0x00a5, 0x0025, 0x0025, 0x6a55, 0xa055, 0x0056, 0x005a, 0x0058, 0x00f1, 0x00f0, 0x3c00, 0x11f0, 0x0f11, 0x001f, 0x7e7e, 0x11f0, 0x0f11, 0x00f0, 0x003c, 0xf1f0, 0x9005, 0x50aa, 0x40aa, 0x00a5, 0x0054, 0x06aa, 0x05aa, 0xff11, 0x000f, 0x1f8e, 0x710f, 0x5403, 0x52a8, 0x52a8, 0x5401, 0xff55, 0xf89b, 0x9403, 0x94aa, 0x94aa, 0x94aa, 0x94aa, 0x8888, 0x009b, 0xfefe, 0xf98b, 0x0004, 0x5500, 0x5529, 0x5529, 0x5529, 0x5529, 0xb998, 0x01b9, 0x8080, 0x101f, 0xf8b9, 0x0004, 0xaa81, 0xaa81, 0xaa81, 0xaa81, 0xaa81, 0x009b, 0x7f00, 0xf8b9, 0x0007, 0xaa40, 0xaa42, 0xaa42, 0xaa42, 0xaa42, 0xaa42, 0x00fc, 0x00a8, 0x008f, 0xff00, 0xf8b9, 0x0000, 0xa555, 0x8888, 0x029b, 0xfcfc, 0xfcfc, 0xfcfc, 0x99bb, 0x9999, 0x00f8, 0xff00, 0x7f98, 0x0004, 0x5500, 0x02aa, 0xa900, 0x0555, 0xff55, 0x777a, 0x7777, 0x00af, 0xfefe, 0xf0af, 0x5404, 0x5255, 0x4a55, 0x2a55, 0xaa55, 0xaa54, 0xaff0, 0x00f8, 0x01f0, 0x009f, 0xff00, 0x7bf8, 0x0002, 0x0001, 0x5556, 0xebff, 0x7777, 0x03af, 0xfefe, 0xfefe, 0xfefe, 0xfefe, 0xb9f8, 0x0005, 0x0015, 0x557a, 0xaabf, 0x00ff, 0x0001, 0x5557, 0x00b9, 0xff80, 0x7b8f, 0x0002, 0xea55, 0xff00, 0x0055, 0xb98f, 0x5400, 0x03aa, 0x009b, 0xf0e0, 0xff9b, 0x0000, 0xaa55, 0xbbbb, 0x00f0, 0x00f0, 0x9999, 0x00fb, 0xff00, 0xffb0, 0x0000, 0x5500, 0x00f7, 0xff00, 0x0000, 0x019b, 0xfcfc, 0xfcfc, 0x0fb7, 0x5001, 0xaa55, 0xffaa, 0x9999, 0x00fb, 0xff00, 0x0fb9, 0x0002, 0x0055, 0x55aa, 0xaaff, 0x0fb7, 0x5004, 0x0a55, 0xaf00, 0xffaa, 0x0055, 0xaa40, 0x7fff, 0x00f0, 0x8080, 0xf7f0, 0x0001, 0xaa55, 0x5500, 0x0000, 0x03b9, 0x3030, 0x3030, 0x3030, 0x3030, 0x7af9, 0x0000, 0xffe9, 0x7af0, 0x9405, 0x40fa, 0x00a5, 0x0050, 0xaaff, 0x55ff, 0x00ea, 0xafff, 0x00f0, 0x0080, 0x0fa7, 0x0002, 0x0015, 0x156a, 0x6abf, 0xbbbb, 0x7777, 0x000b, 0xfff0, 0x89f0, 0x400f, 0x9400, 0xf900, 0xfe40, 0xff90, 0xffe4, 0xfff9, 0xff94, 0xfff9, 0x5000, 0xe540, 0x5500, 0xfe55, 0xe5ff, 0x00ff, 0x0040, 0x5595, 0x0089, 0xffee, 0x0008, 0xfff0, 0x89f0, 0x4001, 0x9540, 0xff95, 0x87af, 0x5401, 0x54f2, 0x5409, 0x77aa, 0x01af, 0xfefe, 0xfefe, 0xb8af, 0x5401, 0xaa55, 0xaaa0, 0x8f7b, 0xa401, 0x45ff, 0x55ea, 0xf7bb, 0x00b7, 0x0080, 0x00f8, 0xf010, 0xb78f, 0x5400, 0x02fe, 0x018f, 0xfefe, 0xfefe, 0xa78f, 0x5002, 0x4855, 0x2c55, 0xbc55, 0x908f, 0x540f, 0x00aa, 0x5700, 0xaa55, 0x0000, 0x5557, 0x2aaa, 0xc000, 0x5557, 0x00aa, 0x5500, 0x00aa, 0x5500, 0x00aa, 0x5500, 0x00aa, 0x5700, 0x8888, 0x00f0, 0x0fc0, 0x0000
};

// [D_08CF5F94] D_08CF6048 Huffman Window 1
u32 D_08cf6048_window1[] = {
	0x5fb764b6, 0xedd7f766, 0x5fbbf376
};

// [D_08CF5FA0] D_08CF6048 Huffman Window 2
u32 D_08cf6048_window2[] = {
	0xd4a5568a, 0xa6cad692, 0x00000001
};

// [D_08CF5FAC] D_08CF6048 Huffman
struct Huffman D_08cf6048_huffman[] = {
	/* Data */			D_08cf6048_huffmandata,
	/* Size */			0x217,
	/* Count */			0x5f,
	/* Window 1 */		D_08cf6048_window1,
	/* Window 2 */		D_08cf6048_window2,
};

// [D_08CF5FBC] D_08CF6048 RLE Data
u8 D_08cf6048_rledata[] = {
	0x1, 0xf, 0x1, 0xf, 0x11, 0x3, 0x3, 0x9, 0x1, 0x4, 0xc, 0x6, 0xa, 0x5, 0x23, 0x7, 0x8, 0xc, 0x9, 0x3, 0x1, 0xf, 0x1f, 0x3, 0x23, 0xb, 0x5, 0xb, 0x1, 0xf, 0x17, 0x9, 0x7, 0x9, 0x1, 0xd, 0x13, 0xd, 0x3, 0x1b, 0x5, 0xb, 0x7, 0xd, 0x11, 0x5, 0x7, 0x3, 0x1, 0x7, 0xd, 0xb, 0x1, 0x3, 0x7, 0x5, 0x1, 0x7, 0x9, 0x9, 0x7, 0x5, 0x5, 0x5, 0xd, 0x3, 0x1, 0xb, 0x5, 0x9, 0xd, 0x9, 0x1, 0x3, 0x7, 0x6, 0x2, 0xd, 0x5, 0xb, 0x1, 0xf, 0x19, 0x7, 0x1, 0x5, 0xb, 0x9, 0x7, 0xd, 0x16, 0xc, 0x1, 0xc, 0x8, 0xb, 0x2, 0xe, 0x1, 0x6, 0x11, 0x8, 0x11, 0x3, 0xd, 0x9, 0x17, 0x7, 0x4, 0x4, 0x1, 0x6, 0x4, 0x5, 0x1, 0xa, 0x6, 0x9, 0x3, 0x3, 0x1, 0x3, 0x3, 0x9, 0x1, 0x5, 0x3, 0x7, 0x1, 0x4, 0x4, 0x7, 0x1, 0xd, 0x3, 0x0, 0xb0, 0x0, 0x0, 0x0
};

// [D_08CF6048] D_08CF6048 Graphics
struct CompressedGraphics D_08cf6048 = {
	/* Huffman Data */		D_08cf6048_huffman,
	/* RLE Data */			D_08cf6048_rledata,
	/* RLE Size */			0x88,
	/* RLE Offset */		0x600,
	/* Double Compressed */	TRUE,
};

u8 D_08cf6058[136] = {
	0xB4, 0x00, 0x73, 0x00, 0xB4, 0x00, 0x73, 0x00, 0xB4, 0x00, 0x73, 0x00,
	0x78, 0x00, 0x73, 0x00, 0x78, 0x00, 0x73, 0x00, 0x78, 0x00, 0x73, 0x00,
	0x78, 0x00, 0x73, 0x00, 0x78, 0x00, 0x73, 0x00, 0x78, 0x00, 0x73, 0x00,
	0x78, 0x00, 0x73, 0x00, 0x78, 0x00, 0x73, 0x00, 0x78, 0x00, 0x73, 0x00,
	0x78, 0x00, 0x73, 0x00, 0x78, 0x00, 0x73, 0x00, 0x78, 0x00, 0x73, 0x00,
	0x00, 0x00, 0x78, 0x00, 0x00, 0x00, 0x78, 0x00, 0x00, 0x00, 0x78, 0x00,
	0x78, 0x00, 0x73, 0x00, 0x78, 0x00, 0x73, 0x00, 0x78, 0x00, 0x73, 0x00,
	0xF0, 0x00, 0xA0, 0x00, 0xB4, 0x00, 0x73, 0x00, 0xB4, 0x00, 0x73, 0x00,
	0xB4, 0x00, 0x73, 0x00, 0xB4, 0x00, 0x73, 0x00, 0xB4, 0x00, 0x73, 0x00,
	0xB4, 0x00, 0x73, 0x00, 0xB4, 0x00, 0x73, 0x00, 0xB4, 0x00, 0x73, 0x00,
	0xB4, 0x00, 0x73, 0x00, 0xB4, 0x00, 0x73, 0x00, 0xB4, 0x00, 0x73, 0x00,
	0xB4, 0x00, 0x73, 0x00
};


