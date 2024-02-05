#include "global.h"
#include "graphics.h"

// // //  D_08BEE468  // // //

// [D_08BEE440] D_08BEE468 Huffman Data
u16 D_08bee468_huffmandata[] = {
	0xff20, 0x0000, 0x0055, 0x0000
};

// [D_08BEE448] D_08BEE468 Huffman Window 1
u32 D_08bee468_window1[] = {
	0x00d1b1f9
};

// [D_08BEE44C] D_08BEE468 Huffman Window 2
u32 D_08bee468_window2[] = {
	0x00d1b1f9
};

// [D_08BEE450] D_08BEE468 Huffman
struct Huffman D_08bee468_huffman[] = {
	/* Data */			D_08bee468_huffmandata,
	/* Size */			0x3,
	/* Count */			0x1,
	/* Window 1 */		D_08bee468_window1,
	/* Window 2 */		D_08bee468_window2,
};

// [D_08BEE460] D_08BEE468 RLE Data
u8 D_08bee468_rledata[] = {
	0x1, 0xf, 0x1, 0xf, 0x1, 0x0, 0xe0, 0x0
};

// [D_08BEE468] D_08BEE468 Graphics
struct CompressedGraphics D_08bee468 = {
	/* Huffman Data */		D_08bee468_huffman,
	/* RLE Data */			D_08bee468_rledata,
	/* RLE Size */			0x6,
	/* RLE Offset */		0x200,
	/* Double Compressed */	TRUE,
};

u8 D_08bee478[16] = {
	0x40, 0x00, 0x40, 0x00, 0x77, 0x00, 0x65, 0x00, 0x40, 0x00, 0x40, 0x00,
	0x78, 0x00, 0x78, 0x00
};

