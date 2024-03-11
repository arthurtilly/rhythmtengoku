#include "global.h"
#include "graphics.h"

// // //  D_08C68D64  // // //

// [D_08C68D2C] D_08C68D64 Huffman Data
u16 D_08c68d64_huffmandata[] = {
	0x0000, 0xeeee, 0x0480, 0x8080, 0x8080, 0x8080, 0x8080, 0x0ff0, 0x8000, 0x0000
};

// [D_08C68D40] D_08C68D64 Huffman Window 1
u32 D_08c68d64_window1[] = {
	0x00d1b1e4
};

// [D_08C68D44] D_08C68D64 Huffman Window 2
u32 D_08c68d64_window2[] = {
	0x00d1b1f8
};

// [D_08C68D48] D_08C68D64 Huffman
struct Huffman D_08c68d64_huffman[] = {
	/* Data */			D_08c68d64_huffmandata,
	/* Size */			0x18,
	/* Count */			0x5,
	/* Window 1 */		D_08c68d64_window1,
	/* Window 2 */		D_08c68d64_window2,
};

// [D_08C68D58] D_08C68D64 RLE Data
u8 D_08c68d64_rledata[] = {
	0x1, 0xf, 0x1, 0xf, 0x11, 0xd, 0x3, 0xe, 0x2, 0x0, 0xb0, 0x0
};

// [D_08C68D64] D_08C68D64 Graphics
struct CompressedGraphics D_08c68d64 = {
	/* Huffman Data */		D_08c68d64_huffman,
	/* RLE Data */			D_08c68d64_rledata,
	/* RLE Size */			0xa,
	/* RLE Offset */		0x200,
	/* Double Compressed */	TRUE,
};

