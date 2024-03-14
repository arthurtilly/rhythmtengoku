#include "global.h"
#include "graphics.h"

// // //  D_08CCB374  // // //

// [D_08CCB2A8] D_08CCB374 Huffman Data
u16 D_08ccb374_huffmandata[] = {
	0xa9c6, 0x000a, 0x0624, 0x0110, 0x3400, 0x1007, 0x0001, 0x00fd, 0x00bd, 0x005e, 0x0005, 0x0080, 0x0594, 0x0096, 0x1c3e, 0x96ca, 0x9004, 0x90aa, 0xb1aa, 0x96aa, 0x2aaa, 0x16aa, 0x66cc, 0x00a6, 0x1c3e, 0xac96, 0x000f, 0x0040, 0x0060, 0x00f0, 0x60f8, 0x80ff, 0x00ff, 0x0002, 0x0003, 0x000b, 0x027f, 0x00bf, 0xffe0, 0xff80, 0x7f80, 0x9f80, 0x2740, 0x9666, 0x006c, 0xff7e, 0x9ca6, 0x0004, 0x0255, 0x0095, 0x0095, 0x0097, 0x00de, 0x9c66, 0x00c6, 0x8080, 0xa9c6, 0x0005, 0x0090, 0x00d0, 0x00e4, 0x00f4, 0xf9f9, 0xe4ff, 0xaaaa, 0x00c6, 0x0100, 0xa96c, 0x5404, 0x5255, 0x5355, 0x4b55, 0xff55, 0xff4b, 0x66c9, 0xeeee, 0x0000, 0x0000
};

// [D_08CCB344] D_08CCB374 Huffman Window 1
u32 D_08ccb374_window1[] = {
	0x00d06db7
};

#if REV < 1
// [D_08CCB348] D_08CCB374 Huffman Window 2
u32 D_08ccb374_window2[] = {
	0x00d3bd55
};
#else
// [D_08CCB348] D_08CCB374 Huffman Window 2
u32 D_08ccb374_window2[] = {
	0x00d1b555
};
#endif

// [D_08CCB34C] D_08CCB374 Huffman
struct Huffman D_08ccb374_huffman[] = {
	/* Data */			D_08ccb374_huffmandata,
	/* Size */			0x81,
	/* Count */			0x12,
	/* Window 1 */		D_08ccb374_window1,
	/* Window 2 */		D_08ccb374_window2,
};

// [D_08CCB35C] D_08CCB374 RLE Data
u8 D_08ccb374_rledata[] = {
	0x1, 0xf, 0x5, 0xb, 0x5, 0xc, 0x8, 0xf, 0x10, 0x10, 0x9, 0x4, 0xc, 0x5, 0x28, 0x3, 0x20, 0xf, 0x1, 0x0, 0x20, 0x0, 0x0, 0x0
};

// [D_08CCB374] D_08CCB374 Graphics
struct CompressedGraphics D_08ccb374 = {
	/* Huffman Data */		D_08ccb374_huffman,
	/* RLE Data */			D_08ccb374_rledata,
	/* RLE Size */			0x14,
	/* RLE Offset */		0x200,
	/* Double Compressed */	TRUE,
};

u8 D_08ccb384[52] = {
	0x78, 0x00, 0x40, 0x00, 0x78, 0x00, 0x40, 0x00, 0x78, 0x00, 0x40, 0x00,
	0x78, 0x00, 0x40, 0x00, 0x78, 0x00, 0x40, 0x00, 0x78, 0x00, 0x40, 0x00,
	0x78, 0x00, 0x40, 0x00, 0x78, 0x00, 0x40, 0x00, 0x78, 0x00, 0x40, 0x00,
	0x78, 0x00, 0x40, 0x00, 0x78, 0x00, 0x40, 0x00, 0x78, 0x00, 0x50, 0x00,
	0x6A, 0x00, 0x20, 0x00
};


