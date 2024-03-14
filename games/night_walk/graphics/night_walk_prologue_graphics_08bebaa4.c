#include "global.h"
#include "graphics.h"

// // //  D_08BEBAA4  // // //

// [D_08BEBA68] D_08BEBAA4 Huffman Data
u16 D_08bebaa4_huffmandata[] = {
	0xfb10, 0x0001, 0x9555, 0xe555, 0x001b, 0x7f7e, 0x0f1b, 0x5403, 0x5285, 0x5285, 0x5415, 0xff55
};

#if REV < 1
// [D_08BEBA80] D_08BEBAA4 Huffman Window 1
u32 D_08bebaa4_window1[] = {
	0x00d2ee57
};

// [D_08BEBA84] D_08BEBAA4 Huffman Window 2
u32 D_08bebaa4_window2[] = {
	0x00d2ee55
};
#else
// [D_08BEBA80] D_08BEBAA4 Huffman Window 1
u32 D_08bebaa4_window1[] = {
	0x00d2d707
};

// [D_08BEBA84] D_08BEBAA4 Huffman Window 2
u32 D_08bebaa4_window2[] = {
	0x00d2d705
};
#endif

// [D_08BEBA88] D_08BEBAA4 Huffman
struct Huffman D_08bebaa4_huffman[] = {
	/* Data */			D_08bebaa4_huffmandata,
	/* Size */			0x12,
	/* Count */			0x3,
	/* Window 1 */		D_08bebaa4_window1,
	/* Window 2 */		D_08bebaa4_window2,
};

// [D_08BEBA98] D_08BEBAA4 RLE Data
u8 D_08bebaa4_rledata[] = {
	0x1, 0xf, 0x1, 0x13, 0x6, 0xa, 0x9, 0x3, 0x1, 0x0, 0xc0, 0x0
};

// [D_08BEBAA4] D_08BEBAA4 Graphics
struct CompressedGraphics D_08bebaa4 = {
	/* Huffman Data */		D_08bebaa4_huffman,
	/* RLE Data */			D_08bebaa4_rledata,
	/* RLE Size */			0xa,
	/* RLE Offset */		0x200,
	/* Double Compressed */	TRUE,
};

u8 D_08bebab4[12] = {
	0x3C, 0x00, 0x78, 0x00, 0x3C, 0x00, 0x78, 0x00, 0x6E, 0x00, 0x78, 0x00
};

