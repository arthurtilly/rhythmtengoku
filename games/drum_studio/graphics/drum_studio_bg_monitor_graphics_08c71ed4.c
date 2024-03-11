#include "global.h"
#include "graphics.h"

// // //  D_08C71ED4  // // //

// [D_08C71E74] D_08C71ED4 Huffman Data
u16 D_08c71ed4_huffmandata[] = {
	0x1a01, 0xfefe, 0xfefe, 0xfefe, 0xfefe, 0xfefe, 0xfefe, 0xfefe, 0x7efe, 0x7f7f, 0x7f7f, 0x7f7f, 0xff7f, 0xfbfb, 0xfbfb, 0xfbfb, 0xfbfb, 0xfdfd, 0xfdfd, 0xfdfd, 0xbdfd, 0xbfbf, 0xbfbf, 0xbfbf, 0xdfbf, 0xdfdf, 0xdfdf, 0xdfdf, 0xff10, 0x0000, 0x0004, 0x0000
};

// [D_08C71EB4] D_08C71ED4 Huffman Window 1
u32 D_08c71ed4_window1[] = {
	0x00d2b86f
};

// [D_08C71EB8] D_08C71ED4 Huffman Window 2
u32 D_08c71ed4_window2[] = {
	0x00d2b86e
};

// [D_08C71EBC] D_08C71ED4 Huffman
struct Huffman D_08c71ed4_huffman[] = {
	/* Data */			D_08c71ed4_huffmandata,
	/* Size */			0x6f,
	/* Count */			0x2,
	/* Window 1 */		D_08c71ed4_window1,
	/* Window 2 */		D_08c71ed4_window2,
};

// [D_08C71ECC] D_08C71ED4 RLE Data
u8 D_08c71ed4_rledata[] = {
	0x10, 0x11, 0x5f, 0x0, 0x81, 0x0, 0x0, 0x0
};

// [D_08C71ED4] D_08C71ED4 Graphics
struct CompressedGraphics D_08c71ed4 = {
	/* Huffman Data */		D_08c71ed4_huffman,
	/* RLE Data */			D_08c71ed4_rledata,
	/* RLE Size */			0x4,
	/* RLE Offset */		0x200,
	/* Double Compressed */	TRUE,
};

