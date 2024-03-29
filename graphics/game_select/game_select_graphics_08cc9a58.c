#include "global.h"
#include "graphics.h"

// // //  D_08CC9A58  // // //

// [D_08CC98D8] D_08CC9A58 Data
u16 D_08cc9a58_data[] = {
	0x805c, 0x8080, 0x807f, 0x807d, 0x807e, 0x8082, 0x8083, 0x8081, 0x805c, 0x808d, 0x808b, 0x808c, 0x8091, 0x8092, 0x8090, 0x808e, 0x808f, 0x0001, 0x0001, 0x807a, 0x8084, 0x8085, 0x8089, 0x808a, 0x8088, 0x8086, 0x8087, 0x807a, 0x807b, 0x8079, 0x8078, 0x0001, 0x0001, 0x8001, 0x887c, 0x8894, 0x8c7c, 0x0001, 0x0001, 0x8001, 0x8076, 0x8093, 0x8476, 0x0001, 0x0001, 0x8001, 0x8076, 0x8009, 0x8476, 0x0001, 0x0001, 0x8001, 0x8076, 0x8077, 0x8476, 0x0001, 0x0001, 0x8001, 0x8076, 0x885c, 0x8476, 0x0001, 0x0001, 0x8001, 0x8076, 0x885c, 0x8476, 0x0001, 0x0001, 0x8001, 0x8076, 0x885c, 0x8476, 0x0001, 0x0001, 0x8001, 0x8076, 0x885c, 0x8476, 0x0001, 0x0001, 0x8001, 0x8076, 0x885c, 0x8476, 0x0001, 0x0001, 0x8001, 0x8076, 0x885c, 0x8476, 0x0001, 0x0001, 0x8001, 0x8076, 0x885c, 0x8476, 0x0001, 0x0001, 0x8001, 0x8076, 0x885c, 0x8476, 0x0001, 0x0001, 0x8001, 0x8076, 0x885c, 0x8476, 0x0001, 0x0001, 0x8001, 0x807c, 0x8094, 0x847c, 0x0001, 0x0001, 0x8001, 0x8076, 0x805c, 0x8476, 0x0001, 0x0001, 0x8001, 0x8095, 0x807a, 0x8495, 0x0001, 0x0001, 0x8878, 0x8096, 0x8097, 0x8098, 0x0001, 0x0001, 0x885c, 0x809a, 0x8099, 0x0001, 0x0001, 0x8001, 0x0001, 0x8001, 0x0001, 0x8001, 0x0001, 0x8001
};

// [D_08CC99FE] D_08CC9A58 RLE Data
u8 D_08cc9a58_rledata[] = {
	0x9, 0xd, 0x16, 0x12, 0x3, 0xe, 0x2, 0xc, 0x4, 0xe, 0x2, 0xc, 0x4, 0xe, 0x2, 0xc, 0x4, 0xe, 0x2, 0xc, 0x4, 0xe, 0x2, 0xc, 0x4, 0xe, 0x2, 0xc, 0x4, 0xe, 0x2, 0xc, 0x4, 0xe, 0x2, 0xc, 0x4, 0xe, 0x2, 0xc, 0x4, 0xe, 0x2, 0xc, 0x4, 0xe, 0x2, 0xc, 0x4, 0xe, 0x2, 0xc, 0x4, 0xe, 0x2, 0xc, 0x4, 0xe, 0x2, 0xc, 0x4, 0xe, 0x2, 0xc, 0x4, 0xe, 0x2, 0xc, 0x4, 0x1a, 0x6, 0x1b, 0x5, 0x1b, 0x1, 0x3, 0x1, 0x1b, 0x1, 0x1f, 0x1, 0x3, 0x1, 0x1b, 0x1, 0x0, 0x4, 0x0, 0x0, 0x0
};

// [D_08CC9A58] D_08CC9A58 Graphics
struct CompressedGraphics D_08cc9a58 = {
	/* Data */				{.raw = D_08cc9a58_data},
	/* RLE Data */			D_08cc9a58_rledata,
	/* RLE Size */			0x56,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

