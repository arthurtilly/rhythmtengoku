#include "global.h"
#include "graphics.h"

// // //  D_08BF374C  // // //

// [D_08BF33DC] D_08BF374C Huffman Data
u16 D_08bf374c_huffmandata[] = {
	0xff10, 0xf0f0, 0xf0f0, 0xf0f0, 0xf8f0, 0x0707, 0x0707, 0x0707, 0x0f07, 0x0c0c, 0x0e0e, 0x0f0e, 0x030f, 0x0703, 0x0707, 0x0808, 0x0c08, 0x0c0c, 0x0202, 0x1712, 0x0717, 0x0c0c, 0x0e0e, 0x8f0f, 0xf78f, 0xfdfd, 0x3e7e, 0x8f1f, 0xff8f, 0xf3f7, 0x70f1, 0x3030, 0xe838, 0xe3e1, 0xf7f3, 0xf7f7, 0x01f3, 0x0808, 0x1f0c, 0x070f, 0xfefe, 0xf0f0, 0xf7f0, 0x1f07, 0x1f1f, 0x1f1f, 0x0f0f, 0x1f0f, 0x1f1f, 0x1f1f, 0x1f1f, 0x801f, 0x8f8f, 0x8f8f, 0xcf8f, 0xffcf, 0xf0f0, 0xf0f0, 0xf0f0, 0x01f1, 0x0f0f, 0x070f, 0x0707, 0x0404, 0x0e06, 0x0e0e, 0x0e0e, 0x0e0e, 0xbfbc, 0xbfbf, 0xbfbf, 0x1fbf, 0x01c7, 0x0c08, 0xfefc, 0xc7df, 0xc0c1, 0xc3c3, 0xf3e3, 0x7ffb, 0x1f3f, 0x070f, 0x0103, 0x8f0c, 0x8f8f, 0x0c0f, 0xfe0e, 0x03fd, 0x0001, 0x07ef, 0x1f07, 0x3f3f, 0xfc3f, 0xf8fc, 0xf0f8, 0xf0f0, 0xf0f0, 0xf3f3, 0xf1f1, 0x70f0, 0x3070, 0x1030, 0xf010, 0xf1f1, 0xf1f1, 0xf1f1, 0x01f1, 0xfcfc, 0xfcfc, 0xfefe, 0x7e7e, 0x1f1f, 0x1f1f, 0x3f3f, 0x3f3f, 0xf0f0, 0xf0f0, 0xf0f0, 0xf0f0, 0x0707, 0x0707, 0x0707, 0x0707, 0xf8f8, 0xfcfc, 0xf0fe, 0xf0f0, 0xf1f1, 0xf3f3, 0x0607, 0x8707, 0xc787, 0xe7c7, 0x8c07, 0x8c8c, 0x8989, 0x0303, 0x1717, 0x0717, 0x0202, 0x0808, 0xec0c, 0xfded, 0xf3fd, 0xf7f3, 0xfbf7, 0x10f3, 0x8010, 0x8f8f, 0x8787, 0x8f8f, 0xdfef, 0x078f, 0x8303, 0xdfd7, 0xefff, 0x83c7, 0xc181, 0xe7e3, 0xfff7, 0xc3e3, 0xe3c3, 0xf3f3, 0x0ff3, 0x0808, 0x0808, 0x0c0c, 0xfe0e, 0xf1f1, 0xf0f1, 0x7070, 0x8030, 0x8080, 0x3f7e, 0x3f3f, 0x1f1f, 0x0f0f, 0x7e3f, 0x7e7e, 0xfc7c, 0xf8f8, 0xf0f0, 0xf0f0, 0xf0f0, 0xf0f0, 0x0707, 0x0707, 0x0707, 0x0707, 0xfefe, 0xf0fe, 0xf0f0, 0xe0f7, 0xe7e7, 0xe7e7, 0xf7f7, 0x03f3, 0x0f07, 0x0f0f, 0x0e0e, 0x0e0e, 0x0101, 0x0301, 0xe0e0, 0xf0f0, 0x3cf8, 0x010e, 0xc7cf, 0xc1c3, 0xc0c0, 0x00c0, 0xc3e3, 0x0383, 0x0303, 0x0003, 0x0303, 0x0f07, 0x381e, 0x8060, 0xfefe, 0x80fe, 0x8080, 0x703f, 0xf870, 0xf8f8, 0xf3f1, 0xc0f7, 0xc0c0, 0x0e01, 0x0e0e, 0x0f0c, 0x070f, 0x0707, 0x0803, 0x0f00, 0xcf8f, 0x71e7, 0x1030, 0x8080, 0x3f80, 0x1f3f, 0x1f1f, 0x0f1f, 0xe00f, 0xe0e0, 0xc0c0, 0xc0c0, 0x03c0, 0x0703, 0x0707, 0x0707, 0x1f0f, 0x1f1f, 0x1f1f, 0x1f1f, 0xf01f, 0xf1f1, 0x4b01, 0x0e0e, 0x0e0e, 0xfe0e, 0xf3f3, 0x70f1, 0x9e38, 0x8fef, 0xefcf, 0x1f0f, 0x7f3f, 0xefef, 0x8fcf, 0x3f0f, 0xfcfe, 0xfefb, 0xfe7e, 0xfefe, 0xf7f7, 0xf7f7, 0xf3f3, 0x03f3, 0x8f0f, 0x8f8f, 0x8f8f, 0xffcf, 0xf3f3, 0xf7f3, 0xf7f7, 0x07f7, 0x0f0f, 0x0f0f, 0x0e0e, 0xfe0e, 0xe3e7, 0xe1e3, 0xe0e1, 0xe0e0, 0x7e7f, 0x3e3e, 0x1e1e, 0x0e0e, 0xf3fe, 0xf1f3, 0xf1f1, 0xf1f1, 0xcfc0, 0xcfcf, 0xefef, 0x7fef, 0x7f7f, 0x7f7f, 0x7f7f, 0xe07f, 0xe0e0, 0xc0c0, 0xc0c0, 0x0fc0, 0x0e0e, 0x0e0e, 0x0e0e, 0xfe0e, 0xe0e0, 0xe0e0, 0xe0e0, 0xe0e0, 0x0f0f, 0x878f, 0xe7c7, 0xfbf3, 0xf3f3, 0xf3f3, 0xf1f3, 0x08f1, 0x0c0c, 0x0c0c, 0xcf0e, 0x0000, 0x0000
};

// [D_08BF367C] D_08BF374C Huffman Window 1
u32 D_08bf374c_window1[] = {
	0x0047515b
};

// [D_08BF3680] D_08BF374C Huffman Window 2
u32 D_08bf374c_window2[] = {
	0x0047515c
};

// [D_08BF3684] D_08BF374C Huffman
struct Huffman D_08bf374c_huffman[] = {
	/* Data */			D_08bf374c_huffmandata,
	/* Size */			0x531,
	/* Count */			0x3,
	/* Window 1 */		D_08bf374c_window1,
	/* Window 2 */		D_08bf374c_window2,
};

// [D_08BF3694] D_08BF374C RLE Data
u8 D_08bf374c_rledata[] = {
	0x1, 0x10, 0x1f, 0x51, 0xa, 0x5, 0x1, 0x9, 0x1, 0x5, 0x1, 0x9, 0x1, 0x5, 0xa, 0x2b, 0xc, 0x4, 0x4c, 0x1a, 0x6, 0x9, 0x6, 0x1c, 0x5, 0xb, 0x1, 0x3, 0x1, 0xb, 0x1, 0x3, 0x1, 0xb, 0x5, 0xf, 0x10, 0x10, 0x11, 0xf, 0x21, 0x2a, 0x6, 0x9, 0x6, 0x6b, 0x28, 0x4, 0x4, 0x5, 0xc, 0x4, 0x18, 0xf, 0x10, 0x7, 0x9, 0x7, 0x3, 0x5, 0x17, 0x3, 0x1, 0xb, 0x1, 0x3, 0x1, 0xb, 0x1, 0x3, 0xc, 0x14, 0xc, 0x14, 0x11, 0xf, 0x21, 0x20, 0x1f, 0x16, 0xb, 0x5, 0x1, 0x9, 0x1, 0x5, 0x1, 0x9, 0x1, 0x5, 0xb, 0x10, 0x2a, 0xe, 0xc, 0xa, 0xa, 0x3, 0x5, 0xb, 0x45, 0x60, 0x1f, 0xb, 0x26, 0x20, 0x1f, 0x10, 0x7, 0x9, 0x1, 0x5, 0x1, 0x9, 0x1, 0x5, 0x1, 0x9, 0x3, 0x3, 0x1, 0x19, 0x21, 0x7, 0x4f, 0x4, 0x6, 0x5, 0xb, 0x6, 0x6, 0x9, 0x1, 0x3, 0x7, 0x8, 0x8, 0x7, 0x1, 0x7, 0x1, 0x7, 0x1, 0x7, 0x1, 0x7, 0x8, 0x1d, 0xf, 0x4, 0x4, 0x57, 0x35, 0x10, 0x11, 0xf, 0x11, 0x80, 0x15, 0xb, 0x8, 0x7, 0x11, 0x9a, 0x6, 0x1c, 0x44, 0x0, 0x90, 0x11, 0xf, 0x2e, 0x3, 0x20, 0x0, 0x90, 0x11, 0xf, 0x20, 0x11, 0x1d, 0x0, 0x83, 0x0
};

// [D_08BF374C] D_08BF374C Graphics
struct CompressedGraphics D_08bf374c = {
	/* Huffman Data */		D_08bf374c_huffman,
	/* RLE Data */			D_08bf374c_rledata,
	/* RLE Size */			0xb4,
	/* RLE Offset */		0x1000,
	/* Double Compressed */	TRUE,
};

