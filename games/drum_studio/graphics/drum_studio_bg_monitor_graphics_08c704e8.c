#include "global.h"
#include "graphics.h"

// // //  D_08C704E8  // // //

// [D_08C704A0] D_08C704E8 Huffman Data
u16 D_08c704e8_huffmandata[] = {
	0x0f02, 0x00f0, 0x0301, 0x0f07, 0x3f1f, 0x007f, 0xc080, 0xf0e0, 0xfcf8, 0x7ffe, 0x1f3f, 0x070f, 0x0103, 0xfe00, 0xf8fc, 0xe0f0, 0x80c0, 0xff02, 0x0000, 0x5500
};

#if REV < 1
// [D_08C704C8] D_08C704E8 Huffman Window 1
u32 D_08c704e8_window1[] = {
	0x00d2936f
};

// [D_08C704CC] D_08C704E8 Huffman Window 2
u32 D_08c704e8_window2[] = {
	0x00d2936e
};
#else
// [D_08C704C8] D_08C704E8 Huffman Window 1
u32 D_08c704e8_window1[] = {
	0x00d2950f
};

// [D_08C704CC] D_08C704E8 Huffman Window 2
u32 D_08c704e8_window2[] = {
	0x00d2950e
};
#endif

// [D_08C704D0] D_08C704E8 Huffman
struct Huffman D_08c704e8_huffman[] = {
	/* Data */			D_08c704e8_huffmandata,
	/* Size */			0x43,
	/* Count */			0x2,
	/* Window 1 */		D_08c704e8_window1,
	/* Window 2 */		D_08c704e8_window2,
};

// [D_08C704E0] D_08C704E8 RLE Data
u8 D_08c704e8_rledata[] = {
	0x1, 0xf, 0x1, 0xf, 0x41, 0x0, 0xa0, 0x0
};

// [D_08C704E8] D_08C704E8 Graphics
struct CompressedGraphics D_08c704e8 = {
	/* Huffman Data */		D_08c704e8_huffman,
	/* RLE Data */			D_08c704e8_rledata,
	/* RLE Size */			0x6,
	/* RLE Offset */		0x200,
	/* Double Compressed */	TRUE,
};

