#include "global.h"
#include "graphics.h"

// // //  D_08C70490  // // //

// [D_08C703B8] D_08C70490 Huffman Data
u16 D_08c70490_huffmandata[] = {
	0x4a20, 0x91f0, 0x9191, 0xcf91, 0xc0c0, 0xc0c0, 0xc4c4, 0xf4c4, 0xf7f7, 0xf0f3, 0xf1f1, 0xe010, 0xcfef, 0xefef, 0x0fcf, 0x080e, 0x0808, 0x0e0e, 0x40ff, 0x4040, 0xe040, 0x1e1f, 0x0e0e, 0xc70e, 0x306d, 0x01f0, 0x0e0f, 0x0c0c, 0x3e1c, 0x3e3e, 0x0101, 0x0101, 0x0101, 0x0101, 0x8080, 0x8080, 0x8080, 0x8080, 0x4080, 0xe0c0, 0xe0e0, 0x00c0, 0x020e, 0x1f07, 0x3f37, 0x666f, 0x000f, 0xfe0e, 0xc3e7, 0x1042, 0x1010, 0xf3f0, 0x2121, 0x3e3e, 0x3e3e, 0x3e3e, 0x3e3e, 0x7030, 0xc070, 0xe0e0, 0x0f0f, 0x3f1f, 0x1f3f, 0x3f1f, 0xf8f0, 0xf8f8, 0xf8f0, 0xfefc, 0xf8fe, 0xe7f8, 0x80ef, 0x7f80, 0x01fe, 0xf707, 0x1fef, 0x7f7f, 0x0000, 0x0000
};

#if REV < 1
// [D_08C70454] D_08C70490 Huffman Window 1
u32 D_08c70490_window1[] = {
	0x00d2933d
};

// [D_08C70458] D_08C70490 Huffman Window 2
u32 D_08c70490_window2[] = {
	0x00d2933c
};
#else
// [D_08C70454] D_08C70490 Huffman Window 1
u32 D_08c70490_window1[] = {
	0x00d294dd
};

// [D_08C70458] D_08C70490 Huffman Window 2
u32 D_08c70490_window2[] = {
	0x00d294dc
};
#endif

// [D_08C7045C] D_08C70490 Huffman
struct Huffman D_08c70490_huffman[] = {
	/* Data */			D_08c70490_huffmandata,
	/* Size */			0x12d,
	/* Count */			0x2,
	/* Window 1 */		D_08c70490_window1,
	/* Window 2 */		D_08c70490_window2,
};

// [D_08C7046C] D_08C70490 RLE Data
u8 D_08c70490_rledata[] = {
	0x1, 0xf, 0x1, 0x3, 0x9, 0x3, 0x31, 0xc, 0x4, 0xb, 0x4, 0x6, 0xb, 0x5, 0x12, 0xe, 0xb, 0x7, 0x49, 0xd, 0x7, 0x5, 0x7, 0x5, 0x6, 0x4, 0x1, 0x9, 0x17, 0x9, 0x6, 0xb, 0x25, 0x10, 0x21, 0x3f
};

// [D_08C70490] D_08C70490 Graphics
struct CompressedGraphics D_08c70490 = {
	/* Huffman Data */		D_08c70490_huffman,
	/* RLE Data */			D_08c70490_rledata,
	/* RLE Size */			0x24,
	/* RLE Offset */		0x200,
	/* Double Compressed */	TRUE,
};

