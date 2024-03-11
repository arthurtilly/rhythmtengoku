#include "global.h"
#include "graphics.h"

// // //  D_08CC9E2C  // // //

// [D_08CC9E24] D_08CC9E2C Data
u16 D_08cc9e2c_data[] = {
	0x0001
};

// [D_08CC9E26] D_08CC9E2C RLE Data
u8 D_08cc9e2c_rledata[] = {
	0x1, 0x0, 0x0, 0x0, 0x0, 0x3
};

// [D_08CC9E2C] D_08CC9E2C Graphics
struct CompressedGraphics D_08cc9e2c = {
	/* Data */				{.raw = D_08cc9e2c_data},
	/* RLE Data */			D_08cc9e2c_rledata,
	/* RLE Size */			0x2,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

