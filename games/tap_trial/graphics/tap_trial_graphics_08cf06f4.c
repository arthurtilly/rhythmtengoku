#include "global.h"
#include "graphics.h"

// // //  D_08CF06F4  // // //

// [D_08CF068C] D_08CF06F4 Data
u16 D_08cf06f4_data[] = {
	0x0000, 0x6000, 0x6000, 0x6000, 0x0000, 0x6000, 0x6000, 0x6000, 0x0000, 0x6001, 0x0000, 0x6006, 0x0000, 0x6008, 0x6007, 0x0000, 0x6003, 0x6002, 0x0000, 0x6005, 0x6004, 0x6405, 0x0000, 0x600a, 0x6009, 0x6c0a, 0x0000, 0x600a, 0x6009, 0x6c0a, 0x0000, 0x6805, 0x6c04, 0x6c05, 0x0000
};

// [D_08CF06D2] D_08CF06F4 RLE Data
u8 D_08cf06f4_rledata[] = {
	0x1, 0xeb, 0x4, 0x1c, 0x4, 0x53, 0x2, 0x1e, 0x2, 0x1e, 0x3, 0x1d, 0x3, 0x1e, 0x2, 0x13, 0x2, 0x9, 0x2, 0x13, 0x2, 0x9, 0x2, 0x13, 0x2, 0x9, 0x2, 0x13, 0x2, 0x0, 0xa6, 0x0, 0x0, 0x0
};

// [D_08CF06F4] D_08CF06F4 Graphics
struct CompressedGraphics D_08cf06f4 = {
	/* Data */				{.raw = D_08cf06f4_data},
	/* RLE Data */			D_08cf06f4_rledata,
	/* RLE Size */			0x1e,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

