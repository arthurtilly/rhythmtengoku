#include "global.h"
#include "graphics.h"

// // //  D_08CD2D0C  // // //

// [D_08CD2CFC] D_08CD2D0C Data
u16 D_08cd2d0c_data[] = {
	0x2005, 0x2006, 0x2004
};

// [D_08CD2D02] D_08CD2D0C RLE Data
u8 D_08cd2d0c_rledata[] = {
	0x1, 0x1f, 0x1, 0x1f, 0x1, 0x0, 0x0, 0x0, 0xc2, 0x0
};

// [D_08CD2D0C] D_08CD2D0C Graphics
struct CompressedGraphics D_08cd2d0c = {
	/* Data */				{.raw = D_08cd2d0c_data},
	/* RLE Data */			D_08cd2d0c_rledata,
	/* RLE Size */			0x6,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

