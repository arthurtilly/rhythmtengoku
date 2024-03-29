#include "global.h"
#include "graphics.h"

// // //  D_08CAC6AC  // // //

// [D_08CAC560] D_08CAC6AC Data
u16 D_08cac6ac_data[] = {
	0x0000, 0x0462, 0x005e, 0x0061, 0x0060, 0x005f, 0x006f, 0x006e, 0x005e, 0x0062, 0x0000, 0x0070, 0x0069, 0x0069, 0x0069, 0x006c, 0x006b, 0x006a, 0x0065, 0x0064, 0x0063, 0x0068, 0x0067, 0x0066, 0x0069, 0x0069, 0x006d, 0x0000, 0x0070, 0x0069, 0x0069, 0x0069, 0x00a0, 0x00a6, 0x00a5, 0x00a4, 0x00a9, 0x00a8, 0x00a7, 0x00a3, 0x00a2, 0x00a1, 0x0069, 0x006d, 0x0000, 0x0070, 0x009f, 0x0069, 0x009b, 0x0069, 0x009a, 0x009e, 0x009d, 0x009c, 0x00b9, 0x00b8, 0x0069, 0x00bb, 0x00ba, 0x0069, 0x006d, 0x0000, 0x00bc, 0x00b2, 0x00b1, 0x00b0, 0x00b5, 0x00b4, 0x00b3, 0x00ac, 0x00ab, 0x00aa, 0x00af, 0x00ae, 0x00ad, 0x00b7, 0x00b6, 0x006d, 0x0000, 0x007a, 0x0079, 0x007d, 0x007c, 0x007b, 0x0085, 0x0084, 0x0083, 0x0088, 0x0087, 0x0086, 0x0080, 0x007f, 0x007e, 0x0082, 0x0081, 0x0000, 0x0078, 0x0077, 0x0076, 0x0072, 0x0069, 0x0071, 0x0075, 0x0074, 0x0073, 0x0096, 0x0095, 0x0069, 0x0069, 0x0098, 0x0097, 0x0094, 0x0000, 0x0099, 0x008f, 0x008e, 0x0069, 0x0069, 0x0091, 0x0090, 0x008b, 0x008a, 0x0089, 0x008d, 0x008c, 0x0069, 0x0093, 0x0092, 0x006d, 0x0000, 0x004e, 0x004d, 0x0051, 0x0050, 0x004f, 0x0059, 0x0058, 0x0057, 0x005c, 0x005b, 0x005a, 0x0054, 0x0053, 0x0052, 0x0056, 0x0055, 0x0000, 0x004c, 0x004b, 0x005d, 0x0000
};

// [D_08CAC68E] D_08CAC6AC RLE Data
u8 D_08cac6ac_rledata[] = {
	0x1, 0x86, 0x2, 0x4, 0x6, 0x3, 0x2, 0xf, 0x11, 0xf, 0x11, 0xf, 0x11, 0xf, 0x11, 0xf, 0x11, 0xf, 0x11, 0xf, 0x11, 0xf, 0x11, 0xf, 0x2, 0xd, 0x2, 0x0, 0x0, 0x4a
};

// [D_08CAC6AC] D_08CAC6AC Graphics
struct CompressedGraphics D_08cac6ac = {
	/* Data */				{.raw = D_08cac6ac_data},
	/* RLE Data */			D_08cac6ac_rledata,
	/* RLE Size */			0x1c,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

