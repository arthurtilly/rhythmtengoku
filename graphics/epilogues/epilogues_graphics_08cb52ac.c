#include "global.h"
#include "graphics.h"

// // //  D_08CB52AC  // // //

// [D_08CB514C] D_08CB52AC Data
u16 D_08cb52ac_data[] = {
	0x0000, 0x010c, 0x0003, 0x0003, 0x0109, 0x0003, 0x0003, 0x0003, 0x010b, 0x010a, 0x0115, 0x0114, 0x0113, 0x0109, 0x0003, 0x0003, 0x0112, 0x0000, 0x0116, 0x0003, 0x010f, 0x0003, 0x0003, 0x0111, 0x0110, 0x010e, 0x010d, 0x0003, 0x0003, 0x0109, 0x0003, 0x0003, 0x010b, 0x0003, 0x0000, 0x0102, 0x0003, 0x0003, 0x0103, 0x0003, 0x0003, 0x0103, 0x0003, 0x0003, 0x0103, 0x0003, 0x0003, 0x0103, 0x0003, 0x0003, 0x0003, 0x0000, 0x0101, 0x0003, 0x0003, 0x0100, 0x0003, 0x0003, 0x0100, 0x0003, 0x0003, 0x0100, 0x0003, 0x0003, 0x0100, 0x0003, 0x0003, 0x0003, 0x0000, 0x0108, 0x0107, 0x0105, 0x0104, 0x0106, 0x0105, 0x0104, 0x0106, 0x0105, 0x0104, 0x0106, 0x0105, 0x0104, 0x0106, 0x0003, 0x0003, 0x0000, 0x0109, 0x012c, 0x012f, 0x012e, 0x012d, 0x0130, 0x012e, 0x012d, 0x0130, 0x012e, 0x012d, 0x0130, 0x012e, 0x012d, 0x0003, 0x0003, 0x0000, 0x0003, 0x0003, 0x012b, 0x0129, 0x0128, 0x0127, 0x012a, 0x0128, 0x0127, 0x012a, 0x0128, 0x0127, 0x012a, 0x013d, 0x013c, 0x0003, 0x0000, 0x013e, 0x0136, 0x0135, 0x0134, 0x0138, 0x0137, 0x0131, 0x0133, 0x0132, 0x0131, 0x0133, 0x0132, 0x0131, 0x013b, 0x013a, 0x0139, 0x0000, 0x0084, 0x0084, 0x0119, 0x0118, 0x0117, 0x0120, 0x011f, 0x011e, 0x0123, 0x0122, 0x0121, 0x011b, 0x0118, 0x011a, 0x011d, 0x011c, 0x0000, 0x0084, 0x0125, 0x0124, 0x0124, 0x0124, 0x0126, 0x0084, 0x0000
};

// [D_08CB5290] D_08CB52AC RLE Data
u8 D_08cb52ac_rledata[] = {
	0x1, 0xa6, 0x11, 0xf, 0x11, 0xf, 0x11, 0xf, 0x11, 0xf, 0x11, 0xf, 0x11, 0xf, 0x11, 0xf, 0x11, 0xf, 0x11, 0xf, 0x1, 0x9, 0x7, 0x0, 0x0, 0x2a, 0x0, 0x0
};

// [D_08CB52AC] D_08CB52AC Graphics
struct CompressedGraphics D_08cb52ac = {
	/* Data */				{.raw = D_08cb52ac_data},
	/* RLE Data */			D_08cb52ac_rledata,
	/* RLE Size */			0x18,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

