#include "global.h"
#include "graphics.h"

// // //  D_08D1FB70  // // //

// [D_08D1FAC0] D_08D1FB70 Data
u16 D_08d1fb70_data[] = {
	0x040a, 0x0409, 0x040c, 0x040b, 0x0407, 0x0406, 0x0408, 0x0404, 0x040a, 0x0409, 0x040c, 0x040b, 0x0407, 0x0406, 0x0408, 0x0404, 0x0407, 0x0406, 0x0408, 0x0404, 0x0405, 0x0404, 0x0405, 0x0401, 0x0400, 0x0403, 0x0402, 0x0404, 0x0405, 0x0401, 0x0400, 0x0403, 0x0402, 0x0404, 0x0405, 0x0401, 0x0400, 0x0403, 0x0402, 0x0404, 0x0405, 0x0401, 0x0400, 0x0403, 0x0402, 0x0404, 0x0405, 0x0401, 0x0400, 0x0403, 0x0402, 0x0404, 0x0405, 0x0401, 0x0400, 0x0403, 0x0402, 0x0404, 0x0404, 0x0404, 0x0405, 0x0401, 0x0400, 0x0403, 0x0402, 0x0401, 0x0400, 0x0403, 0x0402
};

// [D_08D1FB4A] D_08D1FB70 RLE Data
u8 D_08d1fb70_rledata[] = {
	0x1, 0x4, 0x7, 0x14, 0x8, 0x18, 0x4, 0xbb, 0x2, 0x1a, 0x6, 0x16, 0x5, 0x4, 0x1, 0x12, 0x5, 0x8, 0x1, 0xe, 0x5, 0xc, 0x1, 0xa, 0x5, 0x10, 0x1, 0x6, 0x5, 0x14, 0x8, 0x18, 0x4, 0x0, 0x0, 0x1e, 0x0, 0x0
};

// [D_08D1FB70] D_08D1FB70 Graphics
struct CompressedGraphics D_08d1fb70 = {
	/* Data */				{.raw = D_08d1fb70_data},
	/* RLE Data */			D_08d1fb70_rledata,
	/* RLE Size */			0x22,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};