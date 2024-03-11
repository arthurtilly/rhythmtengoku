#include "global.h"
#include "graphics.h"

// // //  D_08C1F24C  // // //

// [D_08C1F224] D_08C1F24C Huffman Data
u16 D_08c1f24c_huffmandata[] = {
	0x0f10, 0x0000, 0x0055, 0x0000
};

// [D_08C1F22C] D_08C1F24C Huffman Window 1
u32 D_08c1f24c_window1[] = {
	0x00d2abb5
};

// [D_08C1F230] D_08C1F24C Huffman Window 2
u32 D_08c1f24c_window2[] = {
	0x00d2abb5
};

// [D_08C1F234] D_08C1F24C Huffman
struct Huffman D_08c1f24c_huffman[] = {
	/* Data */			D_08c1f24c_huffmandata,
	/* Size */			0x3,
	/* Count */			0x1,
	/* Window 1 */		D_08c1f24c_window1,
	/* Window 2 */		D_08c1f24c_window2,
};

// [D_08C1F244] D_08C1F24C RLE Data
u8 D_08c1f24c_rledata[] = {
	0x1, 0xf, 0x1, 0xf, 0x1, 0x0, 0xe0, 0x0
};

// [D_08C1F24C] D_08C1F24C Graphics
struct CompressedGraphics D_08c1f24c = {
	/* Huffman Data */		D_08c1f24c_huffman,
	/* RLE Data */			D_08c1f24c_rledata,
	/* RLE Size */			0x6,
	/* RLE Offset */		0x200,
	/* Double Compressed */	TRUE,
};

u8 D_08c1f25c[8] = {
	0x72, 0x00, 0x78, 0x00, 0x16, 0x00, 0xA2, 0x00
};

