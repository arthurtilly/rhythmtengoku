#include "global.h"
#include "graphics.h"

// // //  D_08CEA104  // // //

// [D_08CEA0B0] D_08CEA104 Data
u16 D_08cea104_data[] = {
	0x0000, 0x0001, 0x0000, 0x0006, 0x0000, 0x0008, 0x0007, 0x0000, 0x0003, 0x0002, 0x0000, 0x0005, 0x0004, 0x0405, 0x0000, 0x000a, 0x0009, 0x0c0a, 0x0000, 0x000a, 0x0009, 0x0c0a, 0x0000, 0x0805, 0x0c04, 0x0c05, 0x0000
};

// [D_08CEA0E6] D_08CEA104 RLE Data
u8 D_08cea104_rledata[] = {
	0x1, 0x0, 0x63, 0x2, 0x1e, 0x2, 0x1e, 0x3, 0x1d, 0x3, 0x1e, 0x2, 0x13, 0x2, 0x9, 0x2, 0x13, 0x2, 0x9, 0x2, 0x13, 0x2, 0x9, 0x2, 0x13, 0x2, 0x0, 0xa6, 0x0, 0x0
};

// [D_08CEA104] D_08CEA104 Graphics
struct CompressedGraphics D_08cea104 = {
	/* Data */				{.raw = D_08cea104_data},
	/* RLE Data */			D_08cea104_rledata,
	/* RLE Size */			0x1a,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

