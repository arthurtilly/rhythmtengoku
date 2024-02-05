#include "global.h"
#include "graphics.h"

// // //  D_08C2DE80  // // //

// [D_08C2D970] D_08C2DE80 Huffman Data
u16 D_08c2de80_huffmandata[] = {
	0x0010, 0xf0f0, 0xf410, 0x4002, 0x40a5, 0x40a5, 0x40a5, 0x4411, 0x0010, 0xf8f8, 0x4444, 0x0001, 0x0fc0, 0x0141, 0xf010, 0xf8fc, 0x0010, 0x3f3c, 0xf401, 0x0004, 0x2a50, 0x2a50, 0x2a50, 0x0a50, 0x0a54, 0x0010, 0xf0f0, 0xf410, 0x0004, 0x00a5, 0x00a5, 0x00a5, 0x00a5, 0x00a5, 0x4411, 0x0001, 0xf0f0, 0xf014, 0x5004, 0x50aa, 0x50aa, 0x50aa, 0x50aa, 0x50aa, 0x0010, 0xc0f0, 0x0000, 0x1110, 0x0041, 0x8f80, 0xff14, 0x0000, 0x0015, 0x0010, 0xf030, 0xf401, 0x5402, 0x5400, 0x5402, 0x5402, 0x1114, 0x0101, 0x00fe, 0x1c3f, 0xf401, 0x4000, 0x4000, 0x4411, 0x0101, 0xfff8, 0xf1f1, 0xf041, 0x4003, 0x40aa, 0x502a, 0x502a, 0x542a, 0x0010, 0xc7c0, 0xf401, 0x0014, 0x0205, 0x0205, 0x0205, 0x4205, 0x4005, 0x2a05, 0x2a50, 0x2a50, 0x2a50, 0x2a50, 0x2a50, 0x2a50, 0x2a50, 0x2050, 0xa050, 0xa050, 0xa040, 0x8142, 0x8102, 0x010a, 0x050a, 0x1444, 0x0010, 0xe080, 0x1110, 0x0041, 0xc800, 0xf014, 0x0002, 0x0005, 0x55aa, 0x0001, 0x0010, 0xf7e0, 0xf401, 0x4001, 0x42a0, 0x42a0, 0x0010, 0xf380, 0xf401, 0x4012, 0x4000, 0x42a0, 0x0aa0, 0x1555, 0x15a8, 0x15a8, 0x15a8, 0x15a8, 0x15a8, 0x15a8, 0x15a8, 0x05a8, 0x05a8, 0x05a8, 0x05a8, 0x05a8, 0x05a8, 0x05a8, 0x05a8, 0x0041, 0x101e, 0xf140, 0x0004, 0x00a9, 0x00a9, 0x00a9, 0x00a9, 0x00a9, 0x1114, 0x0210, 0x3010, 0x07f0, 0xff7f, 0x0114, 0xc0e0, 0xc0c0, 0x0b01, 0xfcfc, 0xfcfc, 0xf8f8, 0xf8f8, 0xf8f8, 0xf8f8, 0xfcf8, 0xfcfc, 0x0f3f, 0xf7f0, 0xf7f7, 0xf3f3, 0xff10, 0x5400, 0x5400, 0x0341, 0xf8f8, 0xfcfc, 0x7e7e, 0x1f3e, 0xf014, 0x5400, 0x94aa, 0x0310, 0x3070, 0x1030, 0xf010, 0xf0f0, 0xf410, 0x0003, 0x00a5, 0x00a5, 0x00a5, 0x00a5, 0x0141, 0x0c0c, 0xfc0c, 0x1144, 0x1000, 0x0114, 0xfcfc, 0x01f0, 0x0010, 0xf0c0, 0xf410, 0x5000, 0x5495, 0x4441, 0x0010, 0xf0e0, 0x1100, 0x0441, 0x8e08, 0x8fef, 0x8f8f, 0x8f8f, 0x8f8f, 0xf104, 0x0008, 0x0029, 0x56a8, 0x56a8, 0x56a8, 0x56a8, 0x56a8, 0x56a8, 0x56a8, 0x56a8, 0x0000, 0x0241, 0xf3f0, 0xf3f3, 0xf3f3, 0xf014, 0x5403, 0x9400, 0x9400, 0x9500, 0xa550, 0x1114, 0x0101, 0x8f8e, 0x3f8f, 0xf041, 0x5402, 0x540a, 0x150a, 0x1502, 0x4110, 0x0014, 0xfc7c, 0x0301, 0xc810, 0xc3c3, 0xe3e3, 0xf3f3, 0xf410, 0x5011, 0x5000, 0x056a, 0x056a, 0x056a, 0x056a, 0x056a, 0x056a, 0x056a, 0x056a, 0xaa50, 0xa950, 0xa940, 0xa540, 0xa500, 0x9500, 0x9400, 0x5400, 0xaaa5, 0x0001, 0xf7f0, 0x0014, 0xf3f0, 0xf410, 0x0002, 0x16a5, 0x1695, 0x1694, 0x0010, 0x3e7e, 0xf410, 0x0001, 0x5a94, 0x5a94, 0x0010, 0xfefe, 0xf410, 0x001f, 0xa950, 0xaa50, 0xaa50, 0xaa50, 0xaa50, 0xaa54, 0xaa54, 0xaa94, 0xa940, 0xa940, 0xa940, 0xa940, 0xa940, 0xa940, 0xa940, 0xa940, 0x0056, 0x0056, 0x0056, 0x0056, 0x0056, 0x0056, 0x0056, 0x0056, 0x0015, 0x0056, 0x015a, 0x056a, 0x15aa, 0x16aa, 0x16aa, 0x156a, 0x0000, 0x0114, 0xc0c0, 0xffe0, 0x0401, 0x8f80, 0x8f8f, 0x8f8f, 0x8f8f, 0x1f8f, 0xf410, 0x0005, 0x0095, 0x4095, 0x40a5, 0x50a5, 0x50a9, 0x54a9, 0x0014, 0x0e00, 0xf401, 0x4002, 0x402a, 0x502a, 0x502a, 0x0014, 0xf0f0, 0x4444, 0x1444, 0x0210, 0x7010, 0x0f00, 0x0f0f, 0x1111, 0x4111, 0x0101, 0xf3f0, 0xf3f3, 0xff10, 0x5000, 0x5000, 0x0014, 0xf8f8, 0xf014, 0x4004, 0x4055, 0x40a5, 0x40a5, 0x40a5, 0x40a5, 0x0001, 0xf80c, 0xf410, 0x9401, 0x94aa, 0x94aa, 0x1144, 0x0010, 0x3cfe, 0x0000, 0x0014, 0x1f1c, 0xf041, 0x0012, 0x2a54, 0x2a54, 0x2a54, 0x2a54, 0x2a54, 0x0254, 0x0255, 0x0255, 0x0255, 0x0255, 0x0255, 0x0255, 0x0255, 0x0155, 0x01aa, 0x01aa, 0x01aa, 0x01aa, 0x01aa, 0x0000, 0x0014, 0xfefe, 0x0610, 0xf7f0, 0xf7f7, 0x03ff, 0x0303, 0x0303, 0x0303, 0x0303, 0xf410, 0x5001, 0x50a9, 0x40a9, 0x4411, 0x0010, 0xf0f0, 0xf410, 0x0001, 0x0054, 0x015a, 0x1114, 0x0710, 0x7070, 0x1030, 0x8fe0, 0x3c07, 0xc0c0, 0xc0c0, 0xc0c0, 0x00c0, 0xf014, 0x4003, 0x40a5, 0x40a5, 0x40a5, 0x40a5, 0x0201, 0x0c0c, 0xfffc, 0xf7f3, 0xf410, 0x4002, 0x40a9, 0x40a9, 0x40a9, 0x4441, 0x0110, 0xf8f8, 0xe0f0, 0xf014, 0x5402, 0x54aa, 0x54aa, 0x54aa, 0x0110, 0x70f0, 0x3070, 0xf410, 0x0004, 0xaa94, 0xaa94, 0xaa94, 0xaa94, 0xaa94, 0x0310, 0xfefe, 0x3ffc, 0x080f, 0x0e0c, 0xf041, 0x4000, 0x502a, 0x1110, 0x0214, 0x3870, 0x1c3c, 0x0e0e, 0xf401, 0x4000, 0x502a, 0x0114, 0x0300, 0x0f07, 0x1101, 0x4411, 0x0110, 0xc0f0, 0x1f80, 0xf014, 0x5000, 0x0095, 0x0111, 0x0114, 0xe0e0, 0xe7e1, 0x0301, 0x3f00, 0x3f3f, 0x3f3f, 0x3f3f, 0xf410, 0x0007, 0x6a50, 0x6a05, 0x6a05, 0x6a05, 0x6a05, 0x6a05, 0x6a05, 0x6a05, 0x0101, 0xe1fc, 0x7fe0, 0xf041, 0x540d, 0x542a, 0x542a, 0x542a, 0x542a, 0x542a, 0x542a, 0x542a, 0x5502, 0x5502, 0x550a, 0x550a, 0x540a, 0x540a, 0x540a, 0x1100, 0x0141, 0xf83e, 0xf011, 0x0111, 0x0114, 0xf0f0, 0xf0f0, 0x1444, 0x0401, 0x0800, 0xfcf8, 0xfcfc, 0xfcfc, 0xfcfc, 0x0011, 0x0000
};

// [D_08C2DDCC] D_08C2DE80 Huffman Window 1
u32 D_08c2de80_window1[] = {
	0x5ede77eb, 0x6d73feff, 0x7e4fdffb, 0x677ef6ed, 0x0000055f
};

// [D_08C2DDE0] D_08C2DE80 Huffman Window 2
u32 D_08c2de80_window2[] = {
	0x552aa542, 0x4a92a454, 0x95554951, 0x00000014
};

// [D_08C2DDF0] D_08C2DE80 Huffman
struct Huffman D_08c2de80_huffman[] = {
	/* Data */			D_08c2de80_huffmandata,
	/* Size */			0x458,
	/* Count */			0x8d,
	/* Window 1 */		D_08c2de80_window1,
	/* Window 2 */		D_08c2de80_window2,
};

// [D_08C2DE00] D_08C2DE80 RLE Data
u8 D_08c2de80_rledata[] = {
	0x10, 0x4, 0x1, 0x7, 0x1, 0x3, 0x7, 0x5, 0x14, 0x11, 0x1f, 0xf, 0x2, 0x1e, 0x2, 0x3, 0x2, 0x4, 0x7, 0x3, 0xd, 0x1d, 0x3, 0x7, 0x49, 0x4, 0xc, 0x3, 0x1, 0x4, 0x2, 0x5, 0x1, 0x7, 0x9, 0x5, 0xb, 0xf, 0x30, 0xc, 0x7, 0x11, 0x2f, 0xd, 0x2e, 0x7, 0x16, 0x5, 0x7, 0x9, 0x1, 0x3, 0x2, 0xa, 0x1, 0x8, 0x13, 0x4, 0x21, 0xf, 0x1, 0x3, 0x5f, 0x5, 0x3, 0x5, 0x1, 0x3, 0x3, 0x3, 0x1, 0x5, 0xb, 0x5, 0x9, 0x17, 0x41, 0xf, 0xb, 0x5, 0x10, 0x21, 0x20, 0xb, 0xb, 0x9, 0x3, 0x3, 0x1b, 0x3, 0x2, 0xa, 0xb, 0x5, 0x31, 0x9, 0xb, 0xb, 0x1d, 0x3, 0xc, 0x14, 0x5, 0xb, 0x3, 0xe, 0x24, 0xb, 0x20, 0x10, 0x14, 0x53, 0x3a, 0x10, 0x20, 0xb, 0x5, 0xf, 0x23, 0xa, 0x14, 0xf, 0x10, 0x0, 0x11, 0x0, 0x0, 0x0
};

// [D_08C2DE80] D_08C2DE80 Graphics
struct CompressedGraphics D_08c2de80 = {
	/* Huffman Data */		D_08c2de80_huffman,
	/* RLE Data */			D_08c2de80_rledata,
	/* RLE Size */			0x7c,
	/* RLE Offset */		0x800,
	/* Double Compressed */	TRUE,
};

