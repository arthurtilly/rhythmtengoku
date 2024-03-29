#include "global.h"
#include "graphics.h"

// // //  D_08CBE634  // // //

// [D_08CBE55C] D_08CBE634 Data
u16 D_08cbe634_data[] = {
	0x0000, 0x0001, 0x0000, 0x0001, 0x0000, 0x0001, 0x0073, 0x0001, 0x0001, 0x0001, 0x0072, 0x0001, 0x0000, 0x0001, 0x0002, 0x0063, 0x0062, 0x0001, 0x0001, 0x0065, 0x0064, 0x004d, 0x0001, 0x0000, 0x0001, 0x0001, 0x0001, 0x0002, 0x005e, 0x005d, 0x0061, 0x0060, 0x005f, 0x0071, 0x0070, 0x006f, 0x0053, 0x0053, 0x0001, 0x0001, 0x0000, 0x0001, 0x006d, 0x006c, 0x006b, 0x0001, 0x0067, 0x0066, 0x006a, 0x0069, 0x0068, 0x006e, 0x0001, 0x0001, 0x0000, 0x0001, 0x0074, 0x0077, 0x0076, 0x0001, 0x007a, 0x0079, 0x0078, 0x0075, 0x0001, 0x0000, 0x0001, 0x0000, 0x0001, 0x0019, 0x0018, 0x0017, 0x001c, 0x001b, 0x001a, 0x0000, 0x0001, 0x000a, 0x0014, 0x0013, 0x0012, 0x0016, 0x0015, 0x0000
};

// [D_08CBE604] D_08CBE634 RLE Data
u8 D_08cbe634_rledata[] = {
	0x1, 0x86, 0x1, 0xf, 0x1, 0xf, 0x1, 0xf, 0x1, 0xf, 0x1, 0x4, 0x6, 0x5, 0x1, 0xf, 0x1, 0x3, 0x9, 0x3, 0x1, 0xf, 0x11, 0xf, 0x1, 0x3, 0xd, 0xf, 0x1, 0x3, 0x9, 0x3, 0x1, 0xf, 0x1, 0xf, 0x1, 0xf, 0x1, 0x9, 0x7, 0xf, 0x1, 0x9, 0x7, 0x0, 0x0, 0x4a
};

// [D_08CBE634] D_08CBE634 Graphics
struct CompressedGraphics D_08cbe634 = {
	/* Data */				{.raw = D_08cbe634_data},
	/* RLE Data */			D_08cbe634_rledata,
	/* RLE Size */			0x2e,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

