#include "global.h"
#include "graphics.h"

// // //  D_08CD7AE0  // // //

// [D_08CD79A4] D_08CD7AE0 Data
u16 D_08cd7ae0_data[] = {
	0x0000, 0x1035, 0x1000, 0x0000, 0x0000, 0x0000, 0x0034, 0x0000, 0x1033, 0x1000, 0x0000, 0x2037, 0x2038, 0x0000, 0x0036, 0x0000, 0x1000, 0x1000, 0x0000, 0x0000, 0x003a, 0x003b, 0x0000, 0x1000, 0x1000, 0x0000, 0x203c, 0x003d, 0x0000, 0x2000, 0x0000, 0x2000, 0x0000, 0x1039, 0x0000, 0x2000, 0x0000, 0x2000, 0x202f, 0x2000, 0x0000, 0x0000, 0x0000, 0x2030, 0x0000, 0x2032, 0x0000, 0x0000, 0x1031, 0x0000, 0x2000, 0x2000, 0x2000, 0x0000, 0x2040, 0x0000, 0x203e, 0x0000, 0x203f, 0x2000, 0x0000, 0x0034, 0x0000, 0x2000, 0x2000, 0x0000, 0x003a, 0x003b, 0x0000, 0x1007, 0x1000, 0x0000, 0x1005, 0x1006, 0x0000, 0x0009, 0x0000, 0x100a, 0x0000, 0x0000, 0x0008, 0x0000, 0x1001, 0x1002, 0x0000, 0x2003, 0x0000, 0x0004, 0x0000, 0x0026, 0x0025, 0x001f, 0x001f, 0x0020, 0x001d, 0x001e, 0x0023, 0x0024, 0x0021, 0x0022, 0x0029, 0x002a, 0x0027, 0x0028, 0x002d, 0x002e, 0x002b, 0x002c, 0x0000, 0x0014, 0x0013, 0x000d, 0x000d, 0x000e, 0x000b, 0x000c, 0x0011, 0x0012, 0x000f, 0x0010, 0x0017, 0x0018, 0x0015, 0x0016, 0x001b, 0x001c, 0x0019, 0x001a, 0x0000
};

// [D_08CD7AA6] D_08CD7AE0 RLE Data
u8 D_08cd7ae0_rledata[] = {
	0x1, 0x23, 0xa, 0x4, 0x3, 0x3, 0x2, 0xa, 0xa, 0x4, 0x3, 0xd, 0x2, 0x3, 0x2, 0xd, 0x4, 0x7, 0x8, 0xf, 0x5, 0x4, 0x4, 0xdc, 0x2, 0x1e, 0x2, 0x18, 0x3, 0x5, 0x2, 0x16, 0x3, 0x4, 0x3, 0x1c, 0x3, 0x8, 0x3, 0x3, 0x2, 0x3, 0x5, 0x5, 0x3, 0x3, 0x2, 0x9, 0x2, 0x12, 0x14, 0xc, 0x14, 0x0, 0x87, 0x0, 0x0, 0x0
};

// [D_08CD7AE0] D_08CD7AE0 Graphics
struct CompressedGraphics D_08cd7ae0 = {
	/* Data */				{.raw = D_08cd7ae0_data},
	/* RLE Data */			D_08cd7ae0_rledata,
	/* RLE Size */			0x36,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};
