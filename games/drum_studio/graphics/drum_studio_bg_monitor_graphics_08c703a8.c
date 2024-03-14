#include "global.h"
#include "graphics.h"

// // //  D_08C703A8  // // //

// [D_08C70350] D_08C703A8 Huffman Data
u16 D_08c703a8_huffmandata[] = {
	0x0e70, 0x7070, 0xf070, 0xe0e0, 0xe0e0, 0xe0e0, 0x70f0, 0x7070, 0x7070, 0x7070, 0x7070, 0x7070, 0x0e00, 0x0e0e, 0x0e0e, 0x0e0e, 0xf870, 0x5400, 0x00aa, 0x0000
};

#if REV < 1
// [D_08C70378] D_08C703A8 Huffman Window 1
u32 D_08c703a8_window1[] = {
	0x00d34c2f
};

// [D_08C7037C] D_08C703A8 Huffman Window 2
u32 D_08c703a8_window2[] = {
	0x00d34c2e
};
#else
// [D_08C70378] D_08C703A8 Huffman Window 1
u32 D_08c703a8_window1[] = {
	0x00d34dcf
};

// [D_08C7037C] D_08C703A8 Huffman Window 2
u32 D_08c703a8_window2[] = {
	0x00d34dce
};
#endif

// [D_08C70380] D_08C703A8 Huffman
struct Huffman D_08c703a8_huffman[] = {
	/* Data */			D_08c703a8_huffmandata,
	/* Size */			0x3f,
	/* Count */			0x2,
	/* Window 1 */		D_08c703a8_window1,
	/* Window 2 */		D_08c703a8_window2,
};

// [D_08C70390] D_08C703A8 RLE Data
u8 D_08c703a8_rledata[] = {
	0x1, 0xf, 0x6, 0xa, 0x1, 0x5, 0x1, 0xa, 0x6, 0x14, 0x6, 0x9, 0x1, 0x5, 0x1, 0x9, 0x27, 0xf, 0x1, 0x0, 0x60, 0x0, 0x0, 0x0
};

// [D_08C703A8] D_08C703A8 Graphics
struct CompressedGraphics D_08c703a8 = {
	/* Huffman Data */		D_08c703a8_huffman,
	/* RLE Data */			D_08c703a8_rledata,
	/* RLE Size */			0x14,
	/* RLE Offset */		0x200,
	/* Double Compressed */	TRUE,
};

