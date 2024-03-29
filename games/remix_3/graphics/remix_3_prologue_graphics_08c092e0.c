#include "global.h"
#include "graphics.h"

// // //  D_08C092E0  // // //

// [D_08C08C08] D_08C092E0 Huffman Data
u16 D_08c092e0_huffmandata[] = {
	0x9ae0, 0x0006, 0x0090, 0x00d4, 0x4095, 0x50d5, 0x5495, 0x55d5, 0x5595, 0xca0e, 0x4000, 0x000e, 0xcaeb, 0x5004, 0x7e55, 0x5055, 0x7e55, 0x5055, 0x7e55, 0xf90e, 0x0000, 0x9555, 0x020e, 0xfcfe, 0xf0f8, 0xc0e0, 0x9a0e, 0x0000, 0xee50, 0x009a, 0x2ee0, 0x8080, 0xc0c0, 0xe0e0, 0xf0f0, 0x1f03, 0x070f, 0x0f3f, 0x0f01, 0x807f, 0xe0c0, 0xf0e0, 0xf8f8, 0x3010, 0xf070, 0xf1f0, 0xf0f0, 0xf0f0, 0xf0f0, 0x00f0, 0xefef, 0xefef, 0xefef, 0x00ef, 0x1f1f, 0x1f1f, 0x1f1f, 0x001f, 0xefef, 0xefef, 0xefef, 0xefef, 0x101f, 0x1010, 0x1010, 0x1010, 0x0c00, 0x0c0c, 0x0c0c, 0x0c0c, 0xf3fc, 0xf3f3, 0xf3f3, 0xf3f3, 0xf803, 0xf8f8, 0xf8f8, 0xf0f8, 0xbce0, 0x0000, 0xfa95, 0xabce, 0x1003, 0x40e9, 0x10a5, 0x40e9, 0x10a5, 0xabbc, 0xae90, 0x0004, 0x0009, 0x002b, 0x00a9, 0x02ab, 0x0aa9, 0xeeea, 0x030e, 0x0808, 0x0808, 0x0808, 0x0808, 0xbc0e, 0x4000, 0x8055, 0x9bbc, 0xabce, 0x1000, 0x40fa, 0x9bbc, 0xabce, 0x1000, 0x40fa, 0x9bbc, 0xabce, 0x1000, 0x40fa, 0x9bbc, 0x06e0, 0x0100, 0x0703, 0x1f0f, 0x7f3f, 0x7f7f, 0x7f7f, 0x7f7f, 0x00b0, 0x8080, 0x00e0, 0xc080, 0xaec0, 0x0000, 0x00a4, 0xecba, 0xe000, 0xcbae, 0xbae0, 0x4000, 0xeee5, 0xc0ba, 0xa400, 0xa777, 0xecec, 0x00ec, 0x010e, 0xc0c0, 0xf0e0, 0x0eec, 0x00e0, 0xc080, 0xeb90, 0x0000, 0xffe9, 0xccaa, 0x000e, 0xf7f0, 0xbce0, 0x5001, 0x5500, 0x55d9, 0xccee, 0x02e0, 0xfcfc, 0xfcfc, 0xfcfc, 0xae9b, 0xa400, 0xafaa, 0x0c0e, 0xf0f0, 0xf7f7, 0x0307, 0xef1f, 0x0f0f, 0x3f07, 0x80ff, 0xc080, 0xe0c0, 0xf0e0, 0xf7f1, 0xf3f7, 0x1031, 0xa90e, 0x0002, 0x0001, 0x0080, 0x80e0, 0xeeca, 0xa9ee, 0xaceb, 0x9400, 0x5535, 0xcb9e, 0xceee, 0xeba9, 0xcbae, 0x0002, 0xc039, 0x000e, 0xc003, 0xbccc, 0x0e9b, 0xabce, 0xa400, 0x950f, 0xee9b, 0xabce, 0xa400, 0x950f, 0xee9b, 0xabce, 0xa400, 0x950f, 0xee9b, 0xbbce, 0xeeaa, 0x1de0, 0xf0f0, 0xf0f0, 0xf0f0, 0xf0f0, 0xefef, 0xefef, 0xefef, 0xefef, 0x1f1f, 0x1f1f, 0x1f1f, 0x1f1f, 0xefef, 0xefef, 0xefef, 0xefef, 0x101f, 0x1010, 0x1010, 0x1010, 0x0c00, 0x0c0c, 0x0c0c, 0x0c0c, 0xf3fc, 0xf3f3, 0xf3f3, 0xf3f3, 0x8f83, 0x0f8f, 0xbc0e, 0x0001, 0x8055, 0x20fa, 0xeabc, 0x9400, 0x503f, 0xae90, 0x0001, 0xaaa9, 0xaaab, 0xeee9, 0x0b0e, 0x1010, 0x1010, 0x0010, 0x0808, 0x0808, 0x0808, 0xf808, 0x8080, 0x8080, 0x8080, 0x8080, 0x780f, 0xaeee, 0x02e0, 0xf8f8, 0xf8f8, 0xf0f8, 0xcbe0, 0x0000, 0x0e54, 0x0000, 0x000a, 0x06e0, 0x3010, 0xf070, 0xf1f0, 0x0e03, 0xcf8f, 0xcfcf, 0xcfcf, 0xab9e, 0x0000, 0x0029, 0xccaa, 0xab9e, 0x0000, 0x0029, 0xccaa, 0x010e, 0xf1f0, 0x3070, 0xa90e, 0x0000, 0xeee5, 0xcab0, 0x9000, 0xd099, 0xe0cb, 0x4404, 0x777a, 0x37ff, 0x5fff, 0x37ff, 0x5fff, 0xe9b0, 0x0000, 0xfff9, 0x9bea, 0x5001, 0x5e55, 0x5055, 0x0e0e, 0x3030, 0x3030, 0xf3f0, 0xf1f3, 0xf0f1, 0xf0f0, 0x0807, 0xfcff, 0xf0e0, 0xf8f8, 0xfcf8, 0x0f0f, 0x0307, 0x0103, 0x0100, 0xeeee, 0xbaee, 0x030e, 0xf0e0, 0xf8f0, 0xfcfc, 0x00fe, 0x0000, 0xbccc, 0xee9b, 0x2be0, 0xc0c0, 0xc0c0, 0xc0c0, 0xf0e0, 0xf0f0, 0xf0f0, 0xf0f0, 0xeff0, 0xefef, 0xefef, 0xefef, 0x1fef, 0x1f1f, 0x1f1f, 0x1f1f, 0xef1f, 0xefef, 0xefef, 0xefef, 0x1fef, 0x1010, 0x1010, 0x1010, 0x0010, 0x0c0c, 0x0c0c, 0x0c0c, 0xfc0c, 0xf3f3, 0xf3f3, 0xf3f3, 0x03f3, 0xfefe, 0xfefe, 0xf7f7, 0xf7f7, 0xf7f7, 0x07f7, 0x7f7f, 0x7f7f, 0x7f7f, 0x7f7f, 0x7f7f, 0x7f7f, 0x9a0e, 0x0002, 0x0040, 0x0180, 0x05c0, 0xaeee, 0x00e0, 0x80c0, 0x00b0, 0x8080, 0x0000, 0x9000, 0xbeca, 0x9402, 0xafaa, 0x94aa, 0xaaaa, 0xbc0e, 0x5001, 0x5222, 0x5eee, 0x90ba, 0x4400, 0xcca4, 0x009a, 0x040e, 0xc0c0, 0x03e0, 0x0303, 0x0303, 0x0303, 0xfce0, 0x5001, 0x0055, 0x6660, 0x04e0, 0xfcfc, 0xfcfc, 0xfcfc, 0xc0fc, 0xcfcf, 0xbc0e, 0x0003, 0x0005, 0x8885, 0x2225, 0xeee5, 0xba00, 0xbaba, 0x11e0, 0x8180, 0xcfcf, 0x0fcf, 0x070e, 0x8f3f, 0x0c0f, 0x0103, 0xfc01, 0x70f8, 0xe020, 0xe0e0, 0xf0f0, 0xf8f0, 0xf0f8, 0xf0f0, 0xefef, 0xfff0, 0x01f1, 0x01ce, 0x5500, 0xffaa, 0x00cb, 0x00aa, 0xf9ba, 0x4400, 0x8844, 0x9a9a, 0x150e, 0x0100, 0x0101, 0x0101, 0xef01, 0xefef, 0xefef, 0x3fef, 0x3f3f, 0x3f3f, 0x3f3f, 0xc03f, 0xc0c0, 0xc0c0, 0xc0c0, 0x7fc0, 0x7f7f, 0x3f3f, 0x0f1f, 0x8007, 0x8080, 0xc080, 0xc0c0, 0xa09e, 0x0008, 0x00a4, 0x0080, 0x0240, 0x0ac0, 0x2a40, 0xaac0, 0xaa40, 0xaac2, 0xaa4a, 0xecb0, 0x0000, 0xffa5, 0xceba, 0x9404, 0xf5ab, 0x94aa, 0xf5ab, 0x94aa, 0xf5ab, 0x090e, 0x80f0, 0x8080, 0x8080, 0x8080, 0x8080, 0x8080, 0x8080, 0x8080, 0x1f80, 0x00f0, 0xbec0, 0x0004, 0x0090, 0x0060, 0x0050, 0x0070, 0x00f0, 0x9ba0, 0x9000, 0xd000, 0xb0ce, 0x0004, 0x1100, 0x44a1, 0x55a4, 0x77a5, 0xffa7, 0x9a0b, 0x5001, 0x5222, 0x5eee, 0x0a0e, 0x01c0, 0x0701, 0xff3f, 0xe010, 0x0f0f, 0xcf08, 0x0e0f, 0x003f, 0x1f7f, 0x0303, 0x0801, 0x0bae, 0xcb9e, 0x0000, 0x0039, 0xecba, 0x9eee, 0xeecb, 0xa9ee, 0xeeec, 0xba9e, 0xeeec, 0xcba0, 0xeeee, 0xec00, 0x060e, 0xf3f0, 0x7f00, 0x0f3f, 0x0003, 0x0103, 0x80f8, 0x8080, 0xb0ce, 0x4402, 0x1184, 0xdd91, 0xff9d, 0xfa0b, 0x4000, 0x4888, 0x02e0, 0xe0c0, 0xf8f0, 0xfefc, 0x0a9e, 0x0000, 0x9900, 0x09a9, 0x2f0e, 0x0ff0, 0xf0ff, 0xfcfe, 0xf0f8, 0xc0e0, 0xf8f8, 0xfcfc, 0xfefe, 0x8080, 0x8080, 0x8080, 0x8080, 0xcfef, 0x0f8f, 0x0e0f, 0xeffc, 0xefef, 0xefef, 0xefef, 0x101f, 0x1010, 0x1010, 0x1010, 0xc080, 0xf0e0, 0xfcf8, 0xf0fe, 0x30f7, 0xf1f0, 0x8080, 0xc0c0, 0xe7e0, 0x080f, 0xff8c, 0x0c0f, 0xcf0e, 0xf07f, 0xf1f0, 0xf7f3, 0xf3f3, 0xf3f3, 0xf3f3, 0x03f3, 0xce08, 0x0c0f, 0x8f0e, 0x0fef, 0xf0ff, 0xa9e0, 0x0000, 0xee55, 0x09a9, 0x020e, 0xc080, 0xf0e0, 0xfcf8, 0xab0e, 0x5401, 0xee55, 0xaa6e, 0xec0b, 0x4002, 0x6222, 0x6eee, 0x7bbb, 0x1b0e, 0x8080, 0x0f80, 0x0808, 0x1e0c, 0x0fbf, 0x0808, 0x0808, 0x0808, 0x0808, 0x0c0c, 0x0c0c, 0x0c0c, 0xec0c, 0xefef, 0xff0f, 0x0ff0, 0xf0ff, 0xf0ff, 0xf0f0, 0xf0f0, 0xf0f0, 0xc080, 0xf0e0, 0xfcf8, 0x03fe, 0x0703, 0x1f0f, 0x7f3f, 0xeb90, 0x0000, 0xffe9, 0xccaa, 0xab9e, 0x0000, 0x0029, 0xccaa, 0xab9e, 0x0000, 0x0029, 0x0eca, 0x5000, 0xffaa, 0xf9a0, 0x0000, 0x9990, 0x020e, 0x8000, 0xe0c0, 0xf8f0, 0xa9e0, 0x0004, 0x4000, 0x0095, 0x00d5, 0x0094, 0x00d0, 0xcaeb, 0x5002, 0x7e55, 0x5055, 0x5e55, 0x0d0e, 0xf0f0, 0xfcf8, 0x03fe, 0x0303, 0x0303, 0x0303, 0x080f, 0x0808, 0x0808, 0x0808, 0x0c08, 0x0e0e, 0x0e0e, 0x0f0f, 0x0000
};

// [D_08C091CC] D_08C092E0 Huffman Window 1
u32 D_08c092e0_window1[] = {
	0x63d56bbf, 0xc5489eda, 0xd89fd66b, 0x17fef3dc, 0x7f5f6f80
};

// [D_08C091E0] D_08C092E0 Huffman Window 2
u32 D_08c092e0_window2[] = {
	0xea9c7baf, 0xae47da77, 0x7dab5ee8, 0x00000003
};

// [D_08C091F0] D_08C092E0 Huffman
struct Huffman D_08c092e0_huffman[] = {
	/* Data */			D_08c092e0_huffmandata,
	/* Size */			0x77e,
	/* Count */			0xa0,
	/* Window 1 */		D_08c092e0_window1,
	/* Window 2 */		D_08c092e0_window2,
};

// [D_08C09200] D_08C092E0 RLE Data
u8 D_08c092e0_rledata[] = {
	0x31, 0x50, 0x14, 0xb, 0x1, 0x5, 0x5, 0x5, 0x1, 0x9, 0x7, 0x12, 0xe, 0x3, 0xc, 0x13, 0x30, 0xd, 0x41, 0x3, 0xd, 0x3, 0x1, 0xb, 0x1, 0x3, 0xd, 0x3, 0x1d, 0xf, 0x2b, 0x6, 0x1f, 0xd, 0x4, 0xb, 0x5, 0xc, 0x4, 0xb, 0x19, 0x8, 0x4, 0x3, 0x5, 0x3, 0x5, 0x9, 0x16, 0x9, 0xd, 0x7, 0x54, 0xf, 0x47, 0x9, 0x1, 0x5, 0x1, 0x9, 0x7, 0x9, 0x21, 0x1f, 0x11, 0xd, 0x3b, 0x8, 0x18, 0x7, 0x23, 0xd, 0x7, 0x9, 0x1, 0x7, 0x2b, 0xd, 0x41, 0xf, 0x41, 0x2f, 0x8, 0x9, 0x10, 0x1f, 0x51, 0xf, 0x11, 0xf, 0x11, 0x7, 0xd, 0x7, 0x5, 0x5, 0x5, 0x5, 0x6, 0xa, 0x9, 0x28, 0x14, 0xa, 0x6, 0x9, 0x7, 0x9, 0x1f, 0x3, 0xc, 0x5, 0x20, 0x20, 0x40, 0xf, 0x21, 0x2d, 0x3, 0xd, 0x26, 0x6, 0x7, 0xd, 0x9, 0x9, 0x1, 0x5, 0x5, 0x5, 0x1, 0xc, 0x4, 0x6, 0x5, 0x4, 0x4, 0xb, 0x12, 0xe, 0x2, 0xd, 0x3, 0x6, 0xd, 0xb, 0x2, 0x2f, 0x21, 0xd, 0x3, 0xd, 0x3, 0xd, 0x1, 0x5, 0x18, 0x34, 0x11, 0x3, 0x2c, 0x1d, 0xd, 0x17, 0x4, 0xb, 0x1, 0x3, 0x5, 0x7, 0xd, 0x3, 0x1, 0xe, 0x2, 0xa, 0xd, 0x8, 0xb, 0x6, 0x10, 0x1a, 0xf, 0x8, 0x1, 0xd, 0x3, 0xd, 0x3, 0xd, 0x21, 0x2f, 0x3, 0x4, 0x9, 0x40, 0x26, 0xa, 0x1, 0xd, 0x3, 0xd, 0x3, 0xd, 0x3, 0xd, 0x12, 0x21, 0xd, 0x12, 0xf, 0x3, 0x27, 0x7, 0x9, 0x7, 0x8, 0x8, 0xf, 0xd1, 0x20, 0x0, 0xe1, 0x0
};

// [D_08C092E0] D_08C092E0 Graphics
struct CompressedGraphics D_08c092e0 = {
	/* Huffman Data */		D_08c092e0_huffman,
	/* RLE Data */			D_08c092e0_rledata,
	/* RLE Size */			0xde,
	/* RLE Offset */		0x1000,
	/* Double Compressed */	TRUE,
};

