#include "global.h"
#include "graphics.h"

// // //  D_08C02A34  // // //

// [D_08C02638] D_08C02A34 Huffman Data
u16 D_08c02a34_huffmandata[] = {
	0x00d0, 0x8f80, 0xfe0d, 0x0003, 0xa815, 0xa815, 0xa815, 0xa815, 0x00d0, 0x7070, 0xfde0, 0x0002, 0x0029, 0x0029, 0x0029, 0x0dde, 0x00d0, 0xe080, 0xfed0, 0x0001, 0x0055, 0x00a5, 0xeedd, 0x00d0, 0xf1f0, 0xfe0d, 0x5402, 0x5428, 0x542a, 0x542a, 0xddee, 0x000d, 0x303e, 0xfe0d, 0x0005, 0xaa05, 0xaa05, 0x0a05, 0x0a05, 0x0a05, 0x0a05, 0x000d, 0xc0c0, 0xf0de, 0x0004, 0x00a5, 0x05a5, 0x05a5, 0x05a5, 0x05a5, 0x010d, 0xfffc, 0x71f7, 0xfe0d, 0x0003, 0x8001, 0xa801, 0xaa81, 0x0a81, 0x00d0, 0x7f7e, 0xf0ed, 0x5004, 0x5481, 0x5581, 0x0580, 0x05a0, 0x05a8, 0x01d0, 0xc000, 0xcfcf, 0xfd0e, 0x0003, 0x00a5, 0xa0a5, 0xa0a5, 0xa0a5, 0x00d0, 0x0f00, 0xfe0d, 0x0004, 0x0a55, 0x0a55, 0x0a55, 0x0a55, 0x0a55, 0x00d0, 0xc080, 0xfed0, 0x0002, 0x5055, 0x50a5, 0x50aa, 0xdeee, 0x00d0, 0x3f00, 0xfe0d, 0x0016, 0xa850, 0xaa50, 0x2a50, 0x0a50, 0x0a50, 0x0154, 0x8100, 0x81aa, 0x81aa, 0x81aa, 0x81aa, 0x812a, 0x812a, 0x002a, 0xaa40, 0xaa42, 0xaa42, 0xaa42, 0xa842, 0xa842, 0xa842, 0x5542, 0x5515, 0xedd0, 0x01ed, 0xfce0, 0xfcfc, 0xfed0, 0x4000, 0x9455, 0x01de, 0x0c1c, 0x0c0c, 0xf0de, 0x5001, 0xa500, 0xa940, 0x01ed, 0xb0b0, 0x0303, 0xf0ed, 0x5004, 0x50a0, 0x54a0, 0x15a0, 0x81a0, 0x81aa, 0x01d0, 0x7070, 0xcfc0, 0xfe0d, 0x0001, 0xaa05, 0xaa05, 0x00d0, 0xfcfc, 0x0000, 0xddd0, 0x01ed, 0x6c6c, 0x076c, 0xf0de, 0x4002, 0x4155, 0x41a9, 0x50a9, 0x010d, 0xf7fe, 0x7077, 0xfe0d, 0x0001, 0xa815, 0xa815, 0x00d0, 0xe0f8, 0x01ed, 0x3636, 0x0036, 0xf0de, 0x4002, 0x4055, 0x41a9, 0x50a9, 0x000d, 0x02ed, 0xfc00, 0xfcfc, 0x80fc, 0xfed0, 0x0000, 0x0094, 0x01ed, 0x7b08, 0xfa7b, 0xf0de, 0x5402, 0x9400, 0x9400, 0x9400, 0xeeee, 0x000d, 0x1018, 0xfe0d, 0x0001, 0xaa81, 0xaa81, 0x01d0, 0xfefe, 0xe0c0, 0x01ed, 0xb0b0, 0x0303, 0xf0ed, 0x5005, 0x50a0, 0x54a0, 0x15a0, 0x05a0, 0x05aa, 0x05aa, 0x03d0, 0x10f0, 0x1010, 0x1010, 0x8080, 0x0000, 0x02cd, 0xe7e0, 0xe7e7, 0xe7e7, 0xe0dc, 0x4004, 0x5555, 0xd56a, 0xd56a, 0xd6aa, 0xd6aa, 0x00d0, 0xe0e0, 0xfde0, 0x0002, 0x0029, 0x0029, 0x0029, 0x0dde, 0x03d0, 0x7070, 0xf0f0, 0xc0c0, 0xc0c0, 0xfde0, 0x0002, 0x00a5, 0x00a5, 0x00a5, 0xddee, 0x01d0, 0xf0f0, 0xcfc0, 0xfe0d, 0x0005, 0xa055, 0xa050, 0xa050, 0xa050, 0xa050, 0xa050, 0x040d, 0x0c0c, 0x101c, 0xf3f0, 0xf3f3, 0xf3f3, 0xfed0, 0x5004, 0x005a, 0x005a, 0x005a, 0x005a, 0x005a, 0xddee, 0x04d0, 0xf0f0, 0xcfc0, 0x0c0f, 0x0c0c, 0x0c0c, 0xfde0, 0x0003, 0x00a5, 0x00a5, 0x00a5, 0x00a5, 0xddee, 0x04d0, 0xf0f0, 0xc000, 0x0fcf, 0x0c0c, 0x0c0c, 0xfed0, 0x5004, 0x0000, 0x005a, 0x005a, 0x005a, 0x005a, 0xddee, 0x00d0, 0xf0f0, 0xfed0, 0x000a, 0x0000, 0x6a94, 0x5554, 0xa900, 0xa916, 0xa916, 0xa916, 0xa916, 0xa916, 0xa916, 0x5516, 0x0ddd, 0x00ed, 0x80fc, 0xfed0, 0x0012, 0x0094, 0x0094, 0x0094, 0x0094, 0x0094, 0x6a54, 0x6a01, 0x6a01, 0x6a01, 0x6a01, 0x6a01, 0x6a01, 0x5501, 0x5a01, 0x5601, 0x5a00, 0x6a01, 0xa905, 0xa505, 0x000d, 0x1c0c, 0xfe0d, 0x5004, 0x8055, 0xa015, 0xa805, 0x2a05, 0x0a05, 0x00d0, 0x7cfc, 0xfde0, 0x0004, 0xa900, 0xa500, 0x9502, 0x560a, 0x5a0a, 0x010d, 0x0c0c, 0xfffc, 0xf0ed, 0x4002, 0x502a, 0x542a, 0x142a, 0x00d0, 0x78f8, 0xfde0, 0x0002, 0x00a9, 0x02a5, 0x0295, 0xdeed, 0x000d, 0x1e0e, 0xfe0d, 0x5402, 0x1555, 0x05a0, 0x01a8, 0x01de, 0x3070, 0x3c38, 0xf0de, 0x540e, 0x9555, 0x9540, 0xa940, 0xa540, 0x9500, 0x9400, 0x9401, 0x9405, 0x9555, 0x15aa, 0x056a, 0x015a, 0x4056, 0x5016, 0x5416, 0x00d0, 0x3e7e, 0xf0de, 0x5004, 0x54a9, 0x50aa, 0x40a9, 0x01a5, 0x05a5, 0x010d, 0x1c0c, 0x03fc, 0xfed0, 0x5001, 0x5055, 0x509a, 0xedee, 0x00d0, 0x7070, 0xcde0, 0x0004, 0x0029, 0x0029, 0x0aa0, 0x0be0, 0x0be0, 0x00d0, 0xf03c, 0xeedd, 0xdeed, 0x01d0, 0x1010, 0xe010, 0xfe0d, 0x0006, 0x8a81, 0x8a81, 0x8a81, 0x0055, 0x0a55, 0x0a55, 0x0a55, 0x00d0, 0xe000, 0xfc0d, 0x4004, 0x4aa1, 0x4aa1, 0x4aa1, 0x4aa1, 0x4001, 0x0000
};

// [D_08C029CC] D_08C02A34 Huffman Window 1
u32 D_08c02a34_window1[] = {
	0xedfffb6f, 0xf7ef7f3f, 0xeffdb6f6, 0x000079df
};

// [D_08C029DC] D_08C02A34 Huffman Window 2
u32 D_08c02a34_window2[] = {
	0xaaaaaaaa, 0xaaa92a94, 0x052aaaaa
};

// [D_08C029E8] D_08C02A34 Huffman
struct Huffman D_08c02a34_huffman[] = {
	/* Data */			D_08c02a34_huffmandata,
	/* Size */			0x34c,
	/* Count */			0x70,
	/* Window 1 */		D_08c02a34_window1,
	/* Window 2 */		D_08c02a34_window2,
};

// [D_08C029F8] D_08C02A34 RLE Data
u8 D_08c02a34_rledata[] = {
	0x1, 0x3, 0xd, 0x3, 0xc, 0x7, 0xa, 0x3, 0x6c, 0x5, 0x3c, 0x4, 0x33, 0xa, 0x86, 0x8, 0xa, 0x23, 0x4, 0xb, 0x1, 0x5, 0x1b, 0x3, 0xc, 0x5, 0xc, 0x3, 0xc, 0x4, 0x5, 0xb, 0x75, 0xb, 0x41, 0x10, 0x2c, 0x3, 0xd, 0x3, 0x41, 0x37, 0x9, 0x7, 0x8, 0x4, 0x9, 0xd, 0x1, 0x3, 0x3, 0x9, 0x6, 0x8, 0x9, 0x7, 0x17, 0x0, 0xb2, 0x0
};

// [D_08C02A34] D_08C02A34 Graphics
struct CompressedGraphics D_08c02a34 = {
	/* Huffman Data */		D_08c02a34_huffman,
	/* RLE Data */			D_08c02a34_rledata,
	/* RLE Size */			0x3a,
	/* RLE Offset */		0x600,
	/* Double Compressed */	TRUE,
};

