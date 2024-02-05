#include "global.h"
#include "graphics.h"

// // //  D_08C39888  // // //

// [D_08C39080] D_08C39888 Data
u16 D_08c39888_data[] = {
	0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1001, 0x1000, 0x1003, 0x1002, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006, 0x1005, 0x1004, 0x1007, 0x1006
};

// [D_08C39880] D_08C39888 RLE Data
u8 D_08c39888_rledata[] = {
	0x0, 0x0, 0x0, 0x0, 0x4, 0x0, 0x0, 0x0
};

// [D_08C39888] D_08C39888 Graphics
struct CompressedGraphics D_08c39888 = {
	/* Data */				{.raw = D_08c39888_data},
	/* RLE Data */			D_08c39888_rledata,
	/* RLE Size */			0x1,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

