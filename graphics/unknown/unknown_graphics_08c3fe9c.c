#include "global.h"
#include "graphics.h"

// // //  D_08C3FE9C  // // //

// [D_08C3FDF4] D_08C3FE9C Data
u16 D_08c3fe9c_data[] = {
	0x0000, 0x001f, 0x0000, 0x0007, 0x000a, 0x000b, 0x0008, 0x0009, 0x000c, 0x0000, 0x0001, 0x0004, 0x0005, 0x0002, 0x0003, 0x0006, 0x0000, 0x0016, 0x0019, 0x001a, 0x0017, 0x0018, 0x001d, 0x001e, 0x001b, 0x001c, 0x0000, 0x000d, 0x0010, 0x0011, 0x000e, 0x000f, 0x0014, 0x0015, 0x0012, 0x0013, 0x0000, 0x0028, 0x002b, 0x002c, 0x0029, 0x002a, 0x002e, 0x002f, 0x002d, 0x0000, 0x0020, 0x0023, 0x0024, 0x0021, 0x0022, 0x0026, 0x0027, 0x0025, 0x0000, 0x0038, 0x003b, 0x003c, 0x0039, 0x003a, 0x003e, 0x003f, 0x003d, 0x0000, 0x0030, 0x0033, 0x0034, 0x0031, 0x0032, 0x0036, 0x0037, 0x0035, 0x0000
};

// [D_08C3FE86] D_08C3FE9C RLE Data
u8 D_08c3fe9c_rledata[] = {
	0x1, 0x6b, 0x2, 0x1d, 0x7, 0x19, 0x7, 0x19, 0xa, 0x16, 0xa, 0x16, 0x9, 0x17, 0x9, 0x17, 0x9, 0x17, 0x9, 0x0, 0x0, 0x8e
};

// [D_08C3FE9C] D_08C3FE9C Graphics
struct CompressedGraphics D_08c3fe9c = {
	/* Data */				{.raw = D_08c3fe9c_data},
	/* RLE Data */			D_08c3fe9c_rledata,
	/* RLE Size */			0x14,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

