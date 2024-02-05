#include "global.h"
#include "graphics.h"

// // //  D_08C73EA4  // // //

// [D_08C73D08] D_08C73EA4 Data
u16 D_08c73ea4_data[] = {
	0x0000, 0x0020, 0x0021, 0x0000, 0x0016, 0x0017, 0x0000, 0x001a, 0x001b, 0x0000, 0x0039, 0x003a, 0x0000, 0x003d, 0x003e, 0x0000, 0x0029, 0x0028, 0x0025, 0x0024, 0x0027, 0x0026, 0x0026, 0x002c, 0x002e, 0x002d, 0x002b, 0x002a, 0x0000, 0x0033, 0x0032, 0x0030, 0x002f, 0x0031, 0x0026, 0x0026, 0x0036, 0x0038, 0x0037, 0x0035, 0x0034, 0x0000, 0x001e, 0x001f, 0x0000, 0x0022, 0x0023, 0x0000, 0x0020, 0x0021, 0x0000, 0x0018, 0x0019, 0x0000, 0x0016, 0x0017, 0x0000, 0x001c, 0x001d, 0x0000, 0x001a, 0x001b, 0x0000, 0x003b, 0x003c, 0x0000, 0x0039, 0x003a, 0x0000, 0x003d, 0x003e, 0x0000, 0x0029, 0x0028, 0x0025, 0x0024, 0x0027, 0x0026, 0x0026, 0x002c, 0x002e, 0x002d, 0x002b, 0x002a, 0x0000, 0x0033, 0x0032, 0x0030, 0x002f, 0x0031, 0x0026, 0x0026, 0x0036, 0x0038, 0x0037, 0x0035, 0x0034, 0x0000, 0x001e, 0x001f, 0x0000, 0x0022, 0x0023, 0x0000, 0x0018, 0x0019, 0x0000, 0x0020, 0x0021, 0x0000, 0x001c, 0x001d, 0x0000, 0x0016, 0x0017, 0x0000, 0x003b, 0x003c, 0x0000, 0x001a, 0x001b, 0x0000, 0x0039, 0x003a, 0x0000, 0x003d, 0x003e, 0x0000, 0x0029, 0x0028, 0x0025, 0x0024, 0x0027, 0x0026, 0x0026, 0x002c, 0x002e, 0x002d, 0x002b, 0x002a, 0x0000, 0x0033, 0x0032, 0x0030, 0x002f, 0x0031, 0x0026, 0x0026, 0x0036, 0x0038, 0x0037, 0x0035, 0x0034, 0x0000, 0x001e, 0x001f, 0x0000, 0x0022, 0x0023, 0x0000, 0x0018, 0x0019, 0x0000, 0x001c, 0x001d, 0x0000, 0x003b, 0x003c, 0x0000
};

// [D_08C73E5A] D_08C73EA4 RLE Data
u8 D_08c73ea4_rledata[] = {
	0x1, 0x26, 0x3, 0x1d, 0x3, 0x1d, 0x3, 0x1d, 0x3, 0x1d, 0x3, 0x18, 0xd, 0x13, 0xd, 0x18, 0x3, 0x1d, 0x3, 0xd, 0x3, 0xd, 0x3, 0xd, 0x3, 0xd, 0x3, 0xd, 0x3, 0xd, 0x3, 0xd, 0x3, 0x1d, 0x3, 0x18, 0xd, 0x13, 0xd, 0x18, 0x3, 0x1d, 0x3, 0x1d, 0x3, 0x12, 0x3, 0x8, 0x3, 0x12, 0x3, 0x8, 0x3, 0x12, 0x3, 0x1d, 0x3, 0x1d, 0x3, 0x18, 0xd, 0x13, 0xd, 0x18, 0x3, 0x1d, 0x3, 0x1d, 0x3, 0x1d, 0x3, 0x1d, 0x3, 0x31
};

// [D_08C73EA4] D_08C73EA4 Graphics
struct CompressedGraphics D_08c73ea4 = {
	/* Data */				{.raw = D_08c73ea4_data},
	/* RLE Data */			D_08c73ea4_rledata,
	/* RLE Size */			0x4a,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

