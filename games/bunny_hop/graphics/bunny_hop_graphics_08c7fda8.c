#include "global.h"
#include "graphics.h"

// // //  D_08C7FDA8  // // //

// [D_08C7FBC8] D_08C7FDA8 Huffman Data
u16 D_08c7fda8_huffmandata[] = {
	0x0000, 0x0467, 0xfff0, 0xf3f7, 0x8fc0, 0x0e0f, 0x8f0c, 0x7766, 0x7777, 0x0060, 0x3010, 0x5550, 0x0156, 0xf0f0, 0x00c0, 0x0150, 0x0300, 0x0f07, 0xff65, 0x0000, 0x5541, 0x0050, 0x1e18, 0x5550, 0x0555, 0x0165, 0xf070, 0xf3f0, 0x0467, 0xf8fc, 0xf0c0, 0xf078, 0xf0f8, 0x70f7, 0xff67, 0x0000, 0x0001, 0x0150, 0x0300, 0x8f07, 0x0065, 0xf040, 0x0050, 0x0800, 0x5550, 0x6055, 0x0065, 0xc0c0, 0x5556, 0x6666, 0x0050, 0xf8f0, 0x0065, 0x0e0c, 0x6666, 0x0050, 0x7010, 0x5550, 0x0165, 0x0f06, 0xff7f, 0x4321, 0x0001, 0xaa55, 0xffaa, 0x4ff5, 0x0000, 0x5500, 0x00de, 0xf0f0, 0x5987, 0x0000, 0xaa55, 0x9765, 0x0000, 0xaa55, 0xdca9, 0x0001, 0xaa55, 0xffff, 0x59ba, 0x0001, 0xaa55, 0x55ff, 0x0315, 0x7070, 0x7070, 0x7070, 0x7070, 0xfbf9, 0x0002, 0x0255, 0x0a54, 0x2a50, 0xf999, 0x019b, 0xe0f0, 0x80c0, 0x03f9, 0x0100, 0x0703, 0x1e0f, 0x783c, 0xf4c1, 0x0000, 0x0001, 0x1141, 0x00c1, 0x4020, 0x0081, 0x1000, 0x00c1, 0x2010, 0x3dc1, 0x0000, 0xaa55, 0x6543, 0x0000, 0xaa55, 0x2176, 0x0000, 0xaa55, 0xba32, 0x0001, 0x5555, 0xffaa, 0xf98c, 0x0000, 0xaa55, 0x0bf0, 0xe080, 0xe0cf, 0x10f1, 0xf0f0, 0xf080, 0xf0ff, 0xfef8, 0xf010, 0xf0f1, 0xfc70, 0xf010, 0xf7f0, 0xffff, 0x0000
};

// [D_08C7FCE8] D_08C7FDA8 Huffman Window 1
u32 D_08c7fda8_window1[] = {
	0xf593f3d2, 0x004ffbbf
};

// [D_08C7FCF0] D_08C7FDA8 Huffman Window 2
u32 D_08c7fda8_window2[] = {
	0x12f60110, 0x0047515f
};

// [D_08C7FCF8] D_08C7FDA8 Huffman
struct Huffman D_08c7fda8_huffman[] = {
	/* Data */			D_08c7fda8_huffmandata,
	/* Size */			0x121,
	/* Count */			0x36,
	/* Window 1 */		D_08c7fda8_window1,
	/* Window 2 */		D_08c7fda8_window2,
};

// [D_08C7FD08] D_08C7FDA8 RLE Data
u8 D_08c7fda8_rledata[] = {
	0x1, 0xf, 0x1, 0xf, 0x8, 0x8, 0x9, 0x7, 0x1, 0x9, 0x3, 0x3, 0x1, 0x3, 0x15, 0x5, 0x9, 0x3, 0x7, 0x3, 0x7, 0x5, 0x1, 0x6, 0x3, 0x6, 0x1, 0x9, 0x3, 0x3, 0x1, 0x4, 0x7, 0x4, 0xc, 0x4, 0xc, 0x4, 0x4, 0x7, 0x6, 0x3, 0xd, 0x13, 0x1, 0x3, 0x3, 0x3, 0x3, 0xf, 0x1, 0xf, 0x1, 0x7, 0x1, 0x7, 0x1, 0xf, 0x1, 0x3, 0x1, 0x7, 0x1, 0x3, 0x1, 0x3, 0x1, 0x7, 0x1, 0x3, 0x1, 0x3, 0x1, 0xb, 0x1, 0xd, 0x3, 0x3, 0x1, 0xb, 0x1, 0xf, 0x1, 0xf, 0x1, 0xf, 0x31, 0xb, 0x2, 0xb, 0x2, 0xb, 0x2, 0x10, 0x6, 0x9, 0x2, 0xc, 0x2, 0x9, 0x1, 0x7, 0x1, 0x7, 0x1, 0x5, 0x1, 0x5, 0x1, 0x7, 0x1, 0x5, 0x1, 0x5, 0x1, 0x7, 0x1, 0x5, 0x3, 0x7, 0x1, 0x7, 0x1, 0xf, 0x1, 0x7, 0x1, 0x7, 0x1, 0x4, 0x4, 0x7, 0x5, 0xb, 0x1, 0x5, 0x5, 0x5, 0x1, 0xa, 0x6, 0x4, 0x5, 0x6, 0x1, 0x5, 0x5, 0x5, 0x1, 0xa, 0x1, 0x4, 0x1, 0x6, 0x3, 0x6, 0x1, 0x7, 0x9, 0x8f
};

// [D_08C7FDA8] D_08C7FDA8 Graphics
struct CompressedGraphics D_08c7fda8 = {
	/* Huffman Data */		D_08c7fda8_huffman,
	/* RLE Data */			D_08c7fda8_rledata,
	/* RLE Size */			0xa0,
	/* RLE Offset */		0x400,
	/* Double Compressed */	TRUE,
};

u8 D_08c7fdb8[80] = {
	0xC0, 0x00, 0x80, 0x00, 0xC4, 0x00, 0x80, 0x00, 0xC0, 0x00, 0x80, 0x00,
	0xC0, 0x00, 0x80, 0x00, 0x5C, 0x00, 0x80, 0x00, 0x40, 0x00, 0x80, 0x00,
	0x40, 0x00, 0x80, 0x00, 0x40, 0x00, 0x80, 0x00, 0x42, 0x00, 0x80, 0x00,
	0x40, 0x00, 0x40, 0x00, 0x40, 0x00, 0x40, 0x00, 0x40, 0x00, 0x40, 0x00,
	0x40, 0x00, 0x40, 0x00, 0xC4, 0x00, 0x40, 0x00, 0x40, 0x00, 0x40, 0x00,
	0x40, 0x00, 0x80, 0x00, 0x40, 0x00, 0x40, 0x00, 0x40, 0x00, 0x40, 0x00,
	0x40, 0x00, 0x40, 0x00, 0x40, 0x00, 0x40, 0x00
};


