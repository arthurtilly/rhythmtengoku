#include "global.h"
#include "graphics.h"

// // //  D_08C50F54  // // //

// [D_08C50F4C] D_08C50F54 Data
u16 D_08c50f54_data[] = {
	0x0084
};

// [D_08C50F4E] D_08C50F54 RLE Data
u8 D_08c50f54_rledata[] = {
	0x1, 0x0, 0x0, 0x0, 0x0, 0x3
};

// [D_08C50F54] D_08C50F54 Graphics
struct CompressedGraphics D_08c50f54 = {
	/* Data */				{.raw = D_08c50f54_data},
	/* RLE Data */			D_08c50f54_rledata,
	/* RLE Size */			0x2,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

