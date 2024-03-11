#include "global.h"
#include "graphics.h"

// // //  D_08C76300  // // //

// [D_08C762F8] D_08C76300 Data
u16 D_08c76300_data[] = {
	0x0000
};

// [D_08C762FA] D_08C76300 RLE Data
u8 D_08c76300_rledata[] = {
	0x1, 0x0, 0x0, 0x0, 0x0, 0x3
};

// [D_08C76300] D_08C76300 Graphics
struct CompressedGraphics D_08c76300 = {
	/* Data */				{.raw = D_08c76300_data},
	/* RLE Data */			D_08c76300_rledata,
	/* RLE Size */			0x2,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

