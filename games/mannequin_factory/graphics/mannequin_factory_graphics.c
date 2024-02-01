#include "global.h"
#include "graphics.h"

// // //  D_08C34478  // // //

// [D_08C33F74] D_08C34478 Huffman Data
u16 D_08c34478_huffmandata[] = {
	0xf01f, 0x000f, 0xaa50, 0xaa40, 0xa900, 0xa900, 0xa500, 0xa400, 0x9400, 0x9000, 0x55aa, 0x5600, 0x5600, 0x5601, 0x5601, 0x5a01, 0x5a05, 0x5a05, 0xff11, 0x040e, 0xe0c0, 0xfcf0, 0xf7f0, 0xf7f7, 0xf0f0, 0xfff1, 0x0000, 0x5500, 0x020e, 0xfcfc, 0xf1fc, 0xf1f1, 0x0001, 0xfefe, 0xff01, 0x5403, 0x5255, 0x5255, 0x4a55, 0x4a55, 0x0000, 0x04f1, 0x7f00, 0xc00f, 0x8fcf, 0x8f8f, 0x0f8f, 0xffff, 0x04e0, 0x3010, 0xf0f0, 0x0801, 0xf808, 0xf0f0, 0x0101, 0xf0f0, 0xf0f8, 0x1111, 0x0000, 0x00f1, 0x0ff0, 0xff01, 0x0010, 0x2a55, 0xa055, 0x8154, 0x8554, 0x8554, 0x8554, 0x8554, 0x8554, 0x1554, 0x85aa, 0x8502, 0x8550, 0x8554, 0x8554, 0x8554, 0x8554, 0xaa54, 0x1111, 0x2ded, 0x2010, 0x2820, 0x0818, 0x0200, 0x0b82, 0x0206, 0x0303, 0x1010, 0x1010, 0x1010, 0x0410, 0x2020, 0x1030, 0x0010, 0x1030, 0x1010, 0x1010, 0x1010, 0x8010, 0x8080, 0x8080, 0x8080, 0x0080, 0x700c, 0xf800, 0x1086, 0x3a10, 0x5256, 0x80f0, 0x8080, 0x00f0, 0x0808, 0x8f88, 0x9898, 0x1f98, 0x641c, 0x8306, 0x0282, 0x2241, 0x401c, 0x8242, 0x0801, 0x0384, 0x3052, 0x0808, 0x0808, 0xeddd, 0xdddd, 0x0ee0, 0x3010, 0xc0c0, 0xf0e0, 0x1818, 0x1818, 0x1818, 0x1818, 0x0707, 0x1f0f, 0x0303, 0x0303, 0xfcf8, 0xfefc, 0xe0e0, 0xe0e0, 0xf0de, 0x0000, 0x5500, 0xeee0, 0x03de, 0xefc0, 0xefef, 0xefef, 0x0fef, 0x0eee, 0x02ed, 0x80c0, 0x8080, 0x8080, 0xdddd, 0xeddd, 0x070e, 0xe0f8, 0x83c0, 0x0e87, 0x0c0c, 0x071f, 0xc103, 0x60e1, 0x3030, 0xf0ed, 0x0000, 0x5555, 0x0000, 0x00de, 0xfefe, 0xf0de, 0x5001, 0x0255, 0xaa00, 0x00ed, 0x8080, 0xdddd, 0xeedd, 0x080e, 0xcf80, 0xf0f0, 0xc8c0, 0x0c08, 0x0f8e, 0x0f03, 0x131f, 0x7033, 0xf1f0, 0x0210, 0x0808, 0x0808, 0x0808, 0xff10, 0x4008, 0x4000, 0x16aa, 0x156a, 0x1555, 0x1695, 0x16aa, 0x16aa, 0x16aa, 0x16aa, 0x091f, 0xc020, 0x0f00, 0x0701, 0xf97f, 0x0181, 0x0101, 0x0701, 0xf9ff, 0x0101, 0x0101, 0xf01f, 0x5001, 0x0055, 0x4094, 0x0001, 0x0808, 0xf01f, 0x9403, 0x9400, 0x9400, 0x9400, 0x9400, 0x001f, 0xff80, 0xfff1, 0x0000, 0x5540, 0x020e, 0xe7e0, 0x83c7, 0x1001, 0x1f0e, 0x4007, 0x7eaa, 0x7eaa, 0x7eaa, 0x7eaa, 0x7eaa, 0x7eaa, 0x7eaa, 0x7eaa, 0x03f1, 0xfefe, 0xfefe, 0xfefe, 0xfefe, 0xff10, 0x9006, 0x9001, 0x9001, 0x9001, 0x9001, 0x9001, 0x9001, 0x9001, 0x0001, 0x02e0, 0xff7e, 0xc3e7, 0x8181, 0xeeee, 0x0010, 0x1080, 0xff10, 0x0002, 0x0055, 0x056a, 0x16aa, 0x0010, 0xffe0, 0xf0f1, 0x5405, 0x5455, 0xa84a, 0xa84a, 0xa84a, 0xa84a, 0x284a, 0x1100, 0x00f1, 0xef80, 0xffff, 0x0010, 0xf070, 0x00f1, 0xf7f0, 0xeee0, 0x02ce, 0x8300, 0xc3c3, 0x0383, 0xeecc, 0x10e0, 0x7ffe, 0xe3f3, 0xc3c3, 0xf3e3, 0x7f7f, 0x3c3e, 0xfe7c, 0x4a7b, 0x7b4a, 0x43c0, 0xc342, 0x2220, 0x2020, 0x1010, 0x320e, 0xf30e, 0x0614, 0xff0e, 0x1400, 0x5500, 0x00c1, 0x0f00, 0x1111, 0x01fc, 0xefc0, 0x307f, 0x001c, 0x0ff0, 0x00cf, 0xf078, 0xf1cf, 0x0001, 0x4155, 0xaaaa, 0x02cf, 0xfcfc, 0xf0f8, 0xe0f0, 0xf1cf, 0x0000, 0xaa54, 0x1111, 0x00fc, 0x1010, 0xf1fc, 0x4000, 0xaaaa, 0x01fc, 0xe060, 0xcfc3, 0x0de0, 0xf1f0, 0x0101, 0x0402, 0x0318, 0x023f, 0x120b, 0xe022, 0x6080, 0x4180, 0x1120, 0xe109, 0x2410, 0x7a0f, 0x254f, 0xeeee, 0x14fc, 0x0f00, 0x301f, 0xf870, 0x00bf, 0xc303, 0x0683, 0x780e, 0x10f0, 0xc0e0, 0xc0c0, 0x1080, 0xf3f0, 0xf7f3, 0xf7f7, 0x8383, 0x0707, 0x1f0f, 0x001c, 0x9c8e, 0xe171, 0x0383, 0xf1cf, 0x4000, 0xaa55, 0x00cf, 0xfcfc, 0x1111, 0x45ed, 0x0912, 0x297b, 0x213f, 0x213f, 0x8f00, 0xf084, 0xd000, 0x0403, 0x0fc4, 0x4fc1, 0xca4a, 0x8001, 0xe080, 0x4481, 0x0028, 0x7002, 0x3808, 0x3828, 0xf008, 0x080e, 0x000f, 0x020e, 0x800e, 0xa0af, 0xf0a0, 0xa0a1, 0xf0a0, 0x1413, 0x1414, 0x8312, 0x0232, 0x700a, 0x4040, 0x7040, 0xe800, 0x0009, 0x147c, 0x4474, 0x704c, 0x4e4f, 0x4e42, 0x4ef2, 0xce40, 0x0e08, 0x2415, 0x3f24, 0x1200, 0x5061, 0x5252, 0x0bd2, 0xa4e4, 0xe4a4, 0x6830, 0x80b0, 0xa2b2, 0x0eb2, 0xe808, 0xe828, 0xa0a0, 0x0310, 0x2023, 0xa320, 0x2920, 0xe129, 0x9401, 0x9494, 0x40f4, 0x4a7a, 0x014e, 0x2224, 0xffde, 0x5400, 0x5554, 0x2310, 0x7e00, 0x067e, 0x0606, 0x3e3e, 0x7e00, 0x067e, 0x0606, 0x0606, 0x7e00, 0x067e, 0x0606, 0x7e7e, 0x7e00, 0xe67e, 0x03e7, 0xe7e0, 0x6067, 0xe060, 0x07e7, 0x0606, 0xe7e6, 0x7607, 0xe606, 0x07e7, 0x1177, 0x1417, 0xa077, 0xe2a2, 0xa2a2, 0x7702, 0x0775, 0x0107, 0x0103, 0x7707, 0x3555, 0x5755, 0x0000
};

// [D_08C34370] D_08C34478 Huffman Window 1
u32 D_08c34478_window1[] = {
	0xb2b2cd7d, 0x5af5fff3, 0x00777bf7
};

// [D_08C3437C] D_08C34478 Huffman Window 2
u32 D_08c34478_window2[] = {
	0xaa8a2425, 0x122a1052
};

// [D_08C34384] D_08C34478 Huffman
struct Huffman D_08c34478_huffman[] = {
	/* Data */			D_08c34478_huffmandata,
	/* Size */			0x5c1,
	/* Count */			0x58,
	/* Window 1 */		D_08c34478_window1,
	/* Window 2 */		D_08c34478_window2,
};

// [D_08C34394] D_08C34478 RLE Data
u8 D_08c34478_rledata[] = {
	0x1, 0xf, 0x11, 0xf, 0x18, 0x8, 0x1, 0x3, 0x7, 0x6, 0x4, 0xb, 0x3, 0xd, 0x6, 0xb, 0x6, 0xb, 0x13, 0xb, 0x11, 0x7, 0x9, 0x6, 0x6, 0x3, 0x1, 0xc, 0x4, 0x3, 0x1, 0x9, 0x1, 0x5, 0x1, 0x9, 0x3, 0x3, 0x1, 0xb, 0x1, 0x3, 0x1, 0xa, 0x6, 0xb, 0x21, 0x3, 0x1, 0xb, 0x1, 0x5, 0x4a, 0x11, 0x1c, 0xa, 0xa, 0x5, 0x21, 0xa, 0x6, 0x9, 0x7, 0x9, 0x7, 0xa, 0x6, 0x9, 0x6, 0xb, 0x8, 0x7, 0x1, 0xb, 0x4, 0x9, 0x3a, 0xd, 0x41, 0x5, 0x3, 0x7, 0x9, 0x7, 0x9, 0x7, 0x47, 0x3, 0x1, 0x5, 0x20, 0x5, 0x2, 0x3, 0x1, 0x6, 0x10, 0x4, 0x6, 0x5, 0x1, 0x3, 0x49, 0x3, 0x1, 0xe, 0x2, 0x7, 0x9, 0x6, 0x5, 0x3, 0x12, 0x5, 0x7, 0x3, 0x21, 0x3, 0x9, 0x3, 0x9, 0x8, 0x8, 0x7, 0x8, 0x8, 0x9, 0x7, 0x9, 0x7, 0x3, 0xd, 0x3, 0x5, 0xb, 0x6, 0x1a, 0x9, 0x7, 0x6, 0x8, 0x5, 0x2, 0x4, 0x3, 0x7, 0xa, 0x6, 0xb, 0x6, 0x2, 0x4, 0x4, 0x4, 0xc, 0x3, 0x2b, 0xd, 0x2, 0x3, 0xa, 0x3, 0xd, 0x5, 0x1e, 0x6, 0x1, 0xb, 0x5, 0xb, 0x14, 0x3, 0x9a, 0x7, 0x11, 0x7, 0x9, 0x7, 0x9, 0x8, 0x6, 0x9, 0x9, 0x7, 0x9, 0x9, 0x7, 0x7, 0x9, 0x7, 0x9, 0x7, 0x9, 0x7, 0x9, 0x7, 0x7, 0x9, 0x37, 0x5, 0xb, 0xa, 0xa, 0x6, 0xa, 0x5, 0x3, 0x7, 0x1, 0x5, 0x1, 0x5, 0x5, 0x5, 0xb, 0x5, 0xb, 0x5, 0x3, 0x5, 0x3, 0x5, 0xa, 0x6, 0xb, 0x0, 0x26, 0x0
};

// [D_08C34478] D_08C34478 Graphics
struct CompressedGraphics D_08c34478 = {
	/* Huffman Data */		D_08c34478_huffman,
	/* RLE Data */			D_08c34478_rledata,
	/* RLE Size */			0xe2,
	/* RLE Offset */		0xa00,
	/* Double Compressed */	TRUE,
};

// // //  D_08C35C9C  // // //

// [D_08C34488] D_08C35C9C Huffman Data
u16 D_08c35c9c_huffmandata[] = {
	0x0010, 0xc0c0, 0xff10, 0x0000, 0x0054, 0xf110, 0x0010, 0xf1f0, 0xff01, 0x5002, 0x50a8, 0x42aa, 0x0aaa, 0x0210, 0xc080, 0xc0c0, 0x7800, 0x1110, 0x01f1, 0xc300, 0xf3e3, 0xff1f, 0x5000, 0x4000, 0x0010, 0x8010, 0xff10, 0x0002, 0x0094, 0x00a5, 0x5055, 0x00f1, 0xefce, 0xf10f, 0x0003, 0xaa55, 0x0056, 0x006a, 0x0080, 0x0410, 0x0180, 0x0e03, 0x0c00, 0x0c0c, 0x0c0c, 0xff10, 0x9400, 0xa555, 0x0110, 0x0010, 0xf010, 0x0000, 0x1fff, 0x0701, 0x31f0, 0x33f0, 0x0800, 0x01fe, 0x000f, 0xfc0f, 0xfef3, 0xdff1, 0xff10, 0x0000, 0x0040, 0x021f, 0x30e0, 0x7010, 0x0fc0, 0xff11, 0xffff, 0x0010, 0xc040, 0xff10, 0x0001, 0x0050, 0x0064, 0x1ff1, 0x0110, 0x0800, 0x0c0c, 0xff10, 0x5403, 0x9400, 0x9400, 0x9400, 0x9400, 0x05f1, 0x8080, 0x9f8f, 0x7fbf, 0x7f7f, 0x3f3f, 0x7f7f, 0xf01f, 0x0008, 0x0001, 0x56aa, 0x16aa, 0x16a9, 0x16a5, 0x1695, 0x1694, 0x1654, 0x5940, 0x031f, 0x8080, 0x8080, 0x8080, 0x8080, 0x0301, 0xfefe, 0xfefe, 0xfefe, 0xfcfe, 0xff10, 0x4003, 0xa940, 0xaa40, 0xaa90, 0xaa94, 0xff10, 0x001f, 0x1030, 0xff1f, 0x0000, 0x0001, 0x0410, 0xc070, 0x0e03, 0x080c, 0x0808, 0x8c08, 0xf111, 0xf111, 0x000f, 0xfff0, 0x0810, 0x0808, 0x080c, 0x3ffe, 0x0107, 0x8c01, 0x0f0f, 0xff01, 0x01c0, 0x020c, 0xff10, 0x4001, 0xaa00, 0xaaa6, 0x0010, 0xc0f0, 0xff01, 0x0004, 0xaa15, 0xa815, 0xa055, 0xa155, 0x5455, 0x1100, 0x001f, 0x103e, 0xff01, 0x5402, 0x50a8, 0x52a8, 0x0aaa, 0xffff, 0x0210, 0xc0e0, 0x80c0, 0xf0e0, 0xff10, 0x4000, 0x50a5, 0x0ef1, 0xfefe, 0xfcfe, 0xf9f8, 0xfcf3, 0xf9fd, 0xe7f3, 0xbfcf, 0x073f, 0x1f0f, 0x7f1f, 0x1f3f, 0x7faf, 0xfeff, 0xfefe, 0xfefe, 0xf0f1, 0x5407, 0xa055, 0x81aa, 0x81aa, 0x01aa, 0x01aa, 0x05aa, 0x15aa, 0x55a8, 0x0001, 0xf7fc, 0xff10, 0x5006, 0x9000, 0x9000, 0x9400, 0xa400, 0xa400, 0xa400, 0x00aa, 0xf100, 0x0110, 0x80c0, 0x8080, 0x0000, 0x1000, 0x011f, 0x1010, 0x1010, 0xffff, 0x0510, 0xe080, 0xffe0, 0x801f, 0x7f0f, 0x07f0, 0x0f08, 0xff10, 0x0000, 0x0014, 0x021f, 0x2020, 0x1010, 0x8010, 0xf10f, 0x0006, 0x9555, 0x2a55, 0x9555, 0x0955, 0x0955, 0x0955, 0x0a55, 0x1000, 0x00f1, 0xff8e, 0xf01f, 0x0008, 0x0055, 0x015a, 0x005a, 0x005a, 0x015a, 0x056a, 0x05aa, 0x16aa, 0x56aa, 0x0b1f, 0x1018, 0xc020, 0x8080, 0xf010, 0x81c0, 0xb408, 0x4280, 0x116a, 0x8091, 0x1010, 0x1010, 0x2010, 0xf01f, 0x0000, 0x9400, 0x001f, 0x80c0, 0xffff, 0x0010, 0x7030, 0xf1f0, 0x0000, 0x02a5, 0x001f, 0xf8fc, 0x111f, 0xfff1, 0x0010, 0x7030, 0xff10, 0x0007, 0xa400, 0xa900, 0xa900, 0xa900, 0xa900, 0xa900, 0xa900, 0xa900, 0xffff, 0x0010, 0x8080, 0xff10, 0x0004, 0x0090, 0x0090, 0x0090, 0x4094, 0x54a5, 0xffff, 0x0510, 0xc080, 0xff80, 0xe011, 0x401f, 0xff03, 0x0030, 0x0111, 0x0000, 0x051f, 0x8010, 0x8080, 0x0180, 0x080e, 0x0818, 0x070c, 0xf0f1, 0x5402, 0xaa55, 0xaa40, 0xaa0a, 0x001f, 0x3010, 0xf10f, 0x0003, 0x0009, 0x0009, 0x0009, 0x0009, 0x0010, 0xfcf8, 0xff10, 0x5004, 0x50aa, 0x50aa, 0x50aa, 0x40a9, 0x00a9, 0x12f1, 0xcfe8, 0x7e0f, 0xf0f8, 0xf3f5, 0xfbfb, 0xbfcf, 0x7bfb, 0x7e7e, 0x3f7e, 0x3f3f, 0xdfbf, 0xdfdf, 0x3f9f, 0xfe7f, 0xfefe, 0xf3f7, 0x7f51, 0x9e7f, 0x878f, 0xf01f, 0x4005, 0x5005, 0x50aa, 0x40a9, 0x40a9, 0x54a9, 0x54aa, 0x0010, 0x3070, 0xff10, 0x0010, 0xa900, 0xa900, 0xa900, 0xa900, 0xa900, 0xa900, 0xa400, 0xa400, 0x40aa, 0x00a5, 0x0094, 0x0090, 0x0090, 0x0090, 0x0090, 0x0090, 0xaa90, 0x0210, 0x8080, 0x8080, 0xf3e0, 0xff01, 0x4000, 0x42a8, 0x00f1, 0x3e3e, 0xfff1, 0x1fff, 0x0110, 0xe010, 0x8080, 0xf1f0, 0x0000, 0x0040, 0xf100, 0x0210, 0xc0c0, 0x3010, 0x3030, 0xff10, 0x0000, 0x0005, 0x111f, 0x0010, 0x3c60, 0x021f, 0x1ce0, 0x0206, 0x601e, 0xf01f, 0x0007, 0x0040, 0xaaa4, 0xaa94, 0xaa90, 0xaa90, 0xaa50, 0xaa40, 0xaa40, 0x1fff, 0x0910, 0x7030, 0xa1a0, 0x0003, 0x0e0c, 0x0a0a, 0x0707, 0x0103, 0x0101, 0x0301, 0xc003, 0xff10, 0x0000, 0x0040, 0x00f1, 0xfefe, 0x1111, 0xffff, 0x0010, 0xf0fc, 0xff10, 0x0000, 0x0040, 0x001f, 0xf7f0, 0x0001, 0xf7f0, 0x0000, 0x001f, 0x0904, 0xf0f1, 0x4000, 0x0255, 0x071f, 0x0200, 0x080c, 0x080a, 0x0404, 0x8384, 0x8181, 0x8080, 0xc880, 0x1fff, 0x0301, 0xfcfc, 0xfcfc, 0xfcfc, 0xfefe, 0xff10, 0x0003, 0x00a4, 0x00a4, 0x0094, 0x0090, 0xf100, 0x0010, 0x80c0, 0xff10, 0x0009, 0xaa40, 0xaaa9, 0x9000, 0x9000, 0x9000, 0x9000, 0xa400, 0xa400, 0xa500, 0xa900, 0xffff, 0x0310, 0x8080, 0x8080, 0x8080, 0xc080, 0x03f1, 0xfe7e, 0xfefe, 0xfefe, 0xfffe, 0x0001, 0xfcfc, 0xf01f, 0x9404, 0x94aa, 0x94aa, 0x94aa, 0x946a, 0x946a, 0x0210, 0x0c0c, 0x0808, 0x0800, 0xff01, 0x0000, 0x8055, 0x1000, 0x02f1, 0x1808, 0xefec, 0x7fef, 0xf0f1, 0x0007, 0x0055, 0x05a8, 0x85aa, 0xa1aa, 0xa1aa, 0xa1aa, 0x81aa, 0x81aa, 0x0000, 0x001f, 0x8020, 0xf1f0, 0x0005, 0x0255, 0x0255, 0x0255, 0x0255, 0x0255, 0x0255, 0xffff, 0x0b01, 0xfbfe, 0x15c3, 0xf333, 0xf3f3, 0xf3f3, 0xefe7, 0xe0e7, 0xe3e9, 0xdfdf, 0x9797, 0x38b3, 0x7d78, 0xff10, 0x0000, 0xa550, 0x0010, 0xe0f8, 0xff10, 0x0001, 0x0040, 0x55aa, 0x0000, 0x011f, 0x0050, 0x7f38, 0x1111, 0xf111, 0x0010, 0x80e0, 0x0000, 0x0000, 0x021f, 0x868c, 0xc2c2, 0xc0c0, 0xff11, 0x011f, 0x0101, 0xfe80, 0xfefe, 0x00f1, 0xfcfe, 0xff10, 0xa40d, 0x94aa, 0x90aa, 0x40aa, 0x40aa, 0x00a9, 0xaaa5, 0xaa40, 0xaa50, 0x5554, 0xaa00, 0xaa95, 0xaa50, 0xa940, 0x9400, 0x0010, 0x8080, 0x011f, 0x07d0, 0x0c08, 0x01ff, 0x0010, 0xc0c0, 0xff10, 0x0004, 0x0050, 0x0094, 0x0095, 0x40a5, 0x40a9, 0x001f, 0xc080, 0x011f, 0xf110, 0x021f, 0x3f3e, 0x070f, 0x0303, 0xf0f1, 0x5401, 0xaa55, 0xaa0a, 0x00f1, 0xfcfe, 0xff10, 0x9003, 0x90aa, 0x90aa, 0x90aa, 0xa4aa, 0x001f, 0xc030, 0xf01f, 0x5006, 0x54aa, 0x95a5, 0x91aa, 0x95aa, 0x84aa, 0x54aa, 0x55aa, 0x0000, 0x021f, 0x2020, 0x8000, 0x8080, 0xf01f, 0x0007, 0x0001, 0x00a9, 0x00a9, 0x00a9, 0x00a9, 0x00a9, 0x40a9, 0x40aa, 0x0610, 0x0780, 0x030d, 0x0603, 0x0202, 0x9184, 0x01f1, 0x1e01, 0x0000, 0xf110, 0x0110, 0x8080, 0x8080, 0xff10, 0x0001, 0x0040, 0x0090, 0xf100, 0x031f, 0x0100, 0x1c03, 0x80f0, 0x1f70, 0xf10f, 0x0000, 0x5a55, 0xf100, 0x0001, 0x7e7e, 0xff10, 0x0005, 0x0040, 0x16aa, 0x06aa, 0x06aa, 0x01a9, 0x0069, 0x01f1, 0x0010, 0x6070, 0xff10, 0x0006, 0x5054, 0x50aa, 0x94aa, 0x94aa, 0x94aa, 0x94aa, 0x94aa, 0x021f, 0x8070, 0x40c0, 0x6040, 0x0210, 0xc080, 0x3860, 0xfff0, 0xff10, 0x4000, 0x6a00, 0x0301, 0x3f0c, 0xbfbf, 0x3fbf, 0xfa7c, 0x011f, 0xc060, 0x070f, 0xf01f, 0x4005, 0x40aa, 0x50aa, 0x90aa, 0x90aa, 0x94aa, 0xa4aa, 0x0410, 0x0030, 0x0c04, 0xcbe8, 0xc04f, 0x0180, 0xf01f, 0x0006, 0x00a9, 0x00a9, 0x00a9, 0x00a9, 0x00a9, 0x40a9, 0x40aa, 0x0010, 0x3010, 0xf1f0, 0x0001, 0x00a5, 0x0295, 0x0000, 0x011f, 0x1060, 0x040c, 0xf01f, 0x0407, 0xa400, 0x94aa, 0x90aa, 0x90aa, 0x50aa, 0x40aa, 0x40aa, 0x40aa, 0x0010, 0x8030, 0xff01, 0x5008, 0x5415, 0x2aaa, 0x2a55, 0x2a55, 0x2a55, 0x2a55, 0x2a55, 0xaa50, 0xaa42, 0x011f, 0x011f, 0x38c0, 0x040c, 0xff1f, 0x4000, 0x0001, 0x0e10, 0xf0e0, 0x07f1, 0x0181, 0x1818, 0x1818, 0x1818, 0x1818, 0xc0c0, 0xc0c0, 0xc0c0, 0xc0c0, 0x8080, 0x8080, 0x8080, 0x8080, 0xf01f, 0xa406, 0x94aa, 0x95aa, 0x94aa, 0x50aa, 0x40aa, 0x40aa, 0x40aa, 0x0710, 0xcfc0, 0xcfcf, 0xcfcf, 0x0fcf, 0xf3f0, 0xf3f3, 0xf3f3, 0x13f3, 0xf1f0, 0x000a, 0x9555, 0x9500, 0xa500, 0x2500, 0x2500, 0x2900, 0x0900, 0x0a00, 0x5500, 0x550a, 0x5509, 0x01ff, 0x001f, 0x80c0, 0xff1f, 0x0000, 0x0040, 0x0010, 0x1010, 0xff10, 0x0008, 0x0005, 0x6aaa, 0xaa00, 0xaa01, 0xaa01, 0xaa01, 0xaa01, 0xaa01, 0xaa05, 0x0001, 0x00fc, 0xf10f, 0x0000, 0xa555, 0x00f1, 0x3fc0, 0xf01f, 0x0001, 0xa4a5, 0x94aa, 0x1110, 0x001f, 0x8038, 0xf01f, 0x000d, 0x0040, 0x5590, 0x50a9, 0x90aa, 0xa4aa, 0xa9aa, 0x00aa, 0x00a4, 0x00a9, 0x40a9, 0x40a9, 0x40aa, 0x40aa, 0x40aa, 0x0000, 0x001f, 0x6020, 0xff10, 0x0002, 0x4055, 0x50a9, 0x94aa, 0x051f, 0x3070, 0x0010, 0x0e10, 0x0c0c, 0x0e0c, 0xc18f, 0xffff, 0x0510, 0x171e, 0x0c17, 0x0c0c, 0x040c, 0x01e1, 0xf380, 0xf1f0, 0x0000, 0x0025, 0x001f, 0x0e10, 0xc010, 0x3c03, 0x0102, 0x1818, 0x1818, 0x1818, 0x1818, 0xc0c0, 0xc0c0, 0xc0c0, 0xc0c0, 0x8080, 0x8080, 0x8080, 0x8080, 0xf01f, 0x4006, 0x00aa, 0x00a9, 0x00a9, 0x00a9, 0x00a9, 0x00a9, 0x00a9, 0x0001, 0xfcfe, 0xff01, 0x0001, 0x0a54, 0xaa50, 0x011f, 0x0910, 0x23c0, 0x1010, 0xc010, 0x8fcf, 0x8f8f, 0x0f0f, 0xfc04, 0xf3f3, 0xf1f1, 0x20f1, 0x0000, 0x0011, 0x00f0, 0xfff0, 0x001f, 0x0808, 0xf01f, 0x5002, 0x9000, 0xa400, 0xa500, 0x1fff, 0x0001, 0xefee, 0xf1f0, 0x000a, 0x0955, 0x2900, 0x2500, 0x2500, 0xa500, 0x9500, 0x9500, 0x9500, 0x5500, 0x552a, 0x5526, 0x01f1, 0x011f, 0x9090, 0x0810, 0xf01f, 0x400c, 0xa900, 0xaa40, 0xaa40, 0xaa40, 0xaa40, 0xaa40, 0xaa40, 0xa900, 0x9000, 0x9000, 0x9000, 0x9000, 0x9000, 0x001f, 0x80c0, 0xf10f, 0x000a, 0x5500, 0x5556, 0x2a00, 0xa5a0, 0x9568, 0x8058, 0x8055, 0x8055, 0x8055, 0x8055, 0x8a55, 0x0001, 0x7e3e, 0x0011, 0x061f, 0x4040, 0x80c0, 0xc080, 0x2040, 0x1810, 0x0208, 0x0801, 0x111f, 0x1f10, 0x64c4, 0x10fc, 0x6170, 0x20f1, 0x2020, 0x2020, 0x3020, 0xdbd4, 0xd42b, 0xd81b, 0xd43b, 0x3bdb, 0xdc3c, 0x3bdb, 0x818c, 0x8181, 0x8181, 0x8181, 0x0101, 0x0101, 0x023c, 0xbd43, 0x7e7e, 0x8181, 0xc0c0, 0xc0c0, 0xc0c0, 0xc0c0, 0x8080, 0x8080, 0x8080, 0x8080, 0xf01f, 0x0006, 0x00a9, 0x00a9, 0x00a9, 0x01a9, 0x01a9, 0x45a9, 0x44aa, 0x0000, 0x011f, 0xc0e0, 0xe0c0, 0xf01f, 0x0002, 0x4094, 0x55a5, 0x00a5, 0x0701, 0xdc28, 0xe42b, 0x27e7, 0x2bd4, 0xf3f4, 0xc7e3, 0x1f8f, 0xef3f, 0xff10, 0x0007, 0x0690, 0x0690, 0x0690, 0x0690, 0x0690, 0x0690, 0x0690, 0x0690, 0x11ff, 0x0010, 0x3030, 0xf1f0, 0x000c, 0x0009, 0x0009, 0x0009, 0x0025, 0x0025, 0x9555, 0x5500, 0x5502, 0x5502, 0x5502, 0x5502, 0x5502, 0x5502, 0x0001, 0x001f, 0x2880, 0xf01f, 0x4003, 0x5055, 0x90a9, 0x90aa, 0x94aa, 0x0010, 0x3030, 0xf1f0, 0x000f, 0x2a55, 0xa555, 0x2955, 0x0955, 0x0955, 0x0955, 0x0955, 0x2555, 0x2955, 0xa500, 0x552a, 0x950a, 0x9502, 0x9500, 0x9500, 0x9500, 0x0010, 0x0100, 0x0010, 0x0000, 0x031f, 0xf080, 0xc080, 0x1040, 0x030c, 0xfff1, 0xffff, 0x0e01, 0xf7f0, 0xc0cd, 0xc0d8, 0xefcf, 0xfbf7, 0xf0ff, 0x3c3c, 0x7e42, 0xbd7e, 0xffc3, 0x423c, 0x7e7e, 0xc3bd, 0x7e7f, 0x1c3e, 0xff01, 0x4001, 0x4281, 0x4281, 0x0c10, 0x183c, 0xbd01, 0xc3c3, 0x81bd, 0x3c42, 0xc000, 0xc0c0, 0xc0c0, 0xc0c0, 0x80c0, 0x8080, 0x8080, 0x8080, 0xff10, 0x000e, 0x6540, 0x6900, 0x5a00, 0x1a00, 0x1a00, 0x1600, 0x0600, 0x0500, 0xaa00, 0xaa16, 0xaa16, 0xaa16, 0xaa16, 0x6a15, 0x5a05, 0x0601, 0xef0e, 0xe7e7, 0x3bd7, 0xf7fc, 0xf8fc, 0xe3f1, 0xefe7, 0xff10, 0x0007, 0x0690, 0x0690, 0x0690, 0x0690, 0x0690, 0x0690, 0x0690, 0x0690, 0x021f, 0xe0c0, 0xfefe, 0xdefe, 0x11ff, 0x000f, 0xc0f0, 0xf10f, 0x0001, 0xaa50, 0xaa50, 0x000f, 0x0c0c, 0x00ff, 0x11ff, 0x010f, 0xf7fc, 0x3071, 0x1111, 0xfff0, 0x00f1, 0x7470, 0xff11, 0x0010, 0x8080, 0xff10, 0x0001, 0x4094, 0x54a9, 0x1fff, 0x0001, 0xf08c, 0x00f1, 0xfefc, 0xf01f, 0x4005, 0x5555, 0x00aa, 0x0015, 0x015a, 0x06aa, 0x1aaa, 0xf000, 0x011f, 0x6160, 0x6f67, 0x111f, 0x111f, 0x00f0, 0xf8f0, 0x051f, 0xfce0, 0x3e3e, 0xf636, 0xb7b0, 0x8f8f, 0x9989, 0x1111, 0x00f0, 0x0100, 0xf10f, 0x5004, 0x4255, 0x4255, 0x4255, 0x4255, 0x4255, 0x00f0, 0x8080, 0xf1f0, 0x0003, 0x0050, 0x0094, 0x0095, 0x00a5, 0x11ff, 0x00f0, 0xff7e, 0x021f, 0x7f18, 0x037f, 0x0101, 0x00f0, 0xf0e0, 0xf1f0, 0x4000, 0x51a5, 0x011f, 0x0e0e, 0x0e0e, 0x1111, 0x000f, 0x060e, 0x01f1, 0xecfc, 0xe0e0, 0x0001, 0x1030, 0x01f1, 0xcfce, 0xcecf, 0xf0f1, 0x5000, 0x0150, 0xf110, 0x081f, 0x017c, 0x0807, 0x0301, 0x0402, 0x1018, 0x2020, 0x0030, 0xc080, 0x3060, 0xffff, 0xfff1, 0x0010, 0xc000, 0xff10, 0x0002, 0x5095, 0x94a9, 0xa4aa, 0x001f, 0x1030, 0xffff, 0x1100, 0x00f1, 0x0f80, 0xff01, 0x5000, 0x02aa, 0xffff, 0x0010, 0x0300, 0xf01f, 0x5402, 0x40aa, 0x00a5, 0x0094, 0x01ff, 0x001f, 0x80c0, 0x0410, 0x0ff0, 0x80ff, 0x0ff0, 0xf0ff, 0xff0f, 0x0000, 0x021f, 0xd8dc, 0x98d8, 0x8098, 0x00f0, 0xfcfe, 0xf0f1, 0x0001, 0x4095, 0x5495, 0x0fff, 0x00f1, 0x80fe, 0x1111, 0xf111, 0x030f, 0xfff0, 0xf7f7, 0xefef, 0xcfcf, 0x0000, 0x021f, 0x1c1c, 0x3c1c, 0xf0f8, 0x00f0, 0xf8fc, 0x0010, 0x20e0, 0xff10, 0x0002, 0x0001, 0x0090, 0x0090, 0xf100, 0x0010, 0xc0c0, 0xff10, 0x0000, 0x0010, 0x071f, 0xdcfc, 0xdcdc, 0x87cf, 0x3f70, 0xf9f9, 0xf901, 0xd8f8, 0x9bdb, 0xf01f, 0x4005, 0x0001, 0xaa81, 0xaa80, 0xaa81, 0xaa05, 0xa805, 0xff11, 0x000f, 0x0e0e, 0xf1f0, 0x0005, 0xa540, 0xa540, 0xa540, 0xa500, 0xa500, 0x9400, 0x00f0, 0x80c0, 0x061f, 0xfcfc, 0xf1c0, 0xbff7, 0x001e, 0xf3f0, 0x1f3b, 0x011d, 0x00ff, 0x02f1, 0xcc0c, 0xc8c8, 0xcfc9, 0x000f, 0x8000, 0xff10, 0x5403, 0x50aa, 0x40a9, 0x00a5, 0x0095, 0xf110, 0x0010, 0xc0c0, 0x0000, 0x1000, 0x06f1, 0xf3f8, 0xe3f3, 0xe7e7, 0xbf9f, 0xbfbf, 0x7e7f, 0xf3f0, 0xf01f, 0x5401, 0x9550, 0xa955, 0x00f1, 0xfcfe, 0xff10, 0xa402, 0x94aa, 0x50aa, 0x00a9, 0xf111, 0x0010, 0x00c0, 0xf01f, 0x0000, 0x0015, 0x1100, 0x00f1, 0x01f0, 0x0011, 0x001f, 0xc080, 0xf01f, 0x0002, 0x0090, 0x4094, 0x54a5, 0x0f10, 0xf030, 0xff0f, 0x0ff0, 0x00ff, 0xf0c0, 0xff0f, 0xff00, 0x0ff0, 0xf0ff, 0x0f0f, 0x0c0f, 0xe0f0, 0xff00, 0xff00, 0x0fe0, 0xe0ff, 0xff10, 0x0003, 0x00a9, 0x00a9, 0x00a9, 0x00a9, 0x02f1, 0xff00, 0x7f7f, 0x7f7f, 0x0000, 0x02f1, 0xff00, 0xfdfc, 0xfefc, 0xff10, 0x0003, 0x0015, 0x006a, 0x006a, 0x006a, 0x1fff, 0x0010, 0x8f80, 0xf10f, 0x0002, 0x0095, 0x0095, 0x0095, 0x0000, 0x00f1, 0x3f00, 0xf01f, 0x0000, 0xaa50, 0x00f1, 0xef00, 0xf01f, 0x0005, 0x0005, 0x55aa, 0x00a9, 0x00a9, 0x00a9, 0x00a9, 0x0001, 0x77fe, 0xf0f1, 0x4004, 0x5542, 0x4012, 0x1552, 0x5552, 0x5552, 0xff10, 0x071f, 0x0ff0, 0x0fe0, 0x0ff0, 0x0800, 0x0ff8, 0x07f0, 0x0ff0, 0x7030, 0xf01f, 0x0007, 0xaaa9, 0xa954, 0x9400, 0x9154, 0x9001, 0x9000, 0x9000, 0x9000, 0x00f0, 0x3c00, 0xf1f0, 0x940c, 0xa416, 0xa41a, 0xa41a, 0xa45a, 0xa56a, 0x006a, 0x0054, 0x4065, 0x40a9, 0x40aa, 0x506a, 0x906a, 0x905a, 0x0f11, 0x00f0, 0xf100, 0xf10f, 0x1404, 0x14a8, 0x04aa, 0x85aa, 0x852a, 0x850a, 0x1f11, 0x00f0, 0x3f00, 0x1111, 0x0ff1, 0x00f1, 0x80c0, 0xf01f, 0x0012, 0x0004, 0x5580, 0x5505, 0x01a5, 0x15a4, 0x1aa5, 0x6a94, 0xaa40, 0xaa01, 0xaa06, 0xaa16, 0xaaa9, 0xaa94, 0xa940, 0x9400, 0x6aaa, 0x1aaa, 0x1aaa, 0x1aaa, 0x0000, 0x01f1, 0xef00, 0xf7f7, 0xf01f, 0x4001, 0x0000, 0x55aa, 0x0000, 0x011f, 0x82f0, 0x0301, 0xf10f, 0x0003, 0x5500, 0x5556, 0x5558, 0x5558, 0x001f, 0x0010, 0xfef0, 0x00f1, 0x7cf0, 0x0000, 0x00f1, 0x7ff0, 0xf0f1, 0x0000, 0x0554, 0x0000, 0x00f1, 0x0ff0, 0xfff1, 0x5400, 0x1550, 0x0010, 0xf0f0, 0x0111, 0x001f, 0xc1f0, 0x0310, 0x0ff0, 0xf0ff, 0xff0f, 0x0080, 0xff10, 0x0004, 0x00a9, 0x00a9, 0x0055, 0x00a9, 0x0054, 0x021f, 0xff00, 0xf800, 0xff00, 0x0000, 0x021f, 0xff00, 0x1f00, 0xff00, 0xf1f0, 0x0002, 0x0095, 0x0095, 0x00aa, 0x1fff, 0x0010, 0x8070, 0xf10f, 0x0004, 0x0095, 0x0095, 0x0095, 0x0095, 0x0095, 0x0010, 0x00f8, 0x011f, 0x4040, 0x40c0, 0xffff, 0x0001, 0xff00, 0x01f1, 0xfcfc, 0x00fc, 0xf1f0, 0x0005, 0x5500, 0x5502, 0x5502, 0x5502, 0x5502, 0x5502, 0x0001, 0xfe0e, 0xff10, 0x0005, 0xaaa4, 0xaaa4, 0xaaa4, 0xaaa4, 0xaa94, 0x9540, 0x0010, 0x0080, 0xffff, 0x0001, 0xff00, 0x011f, 0x0706, 0x0606, 0x0001, 0xff00, 0xf01f, 0x0004, 0x0090, 0x0090, 0x0090, 0x0090, 0x5494, 0x0001, 0xffee, 0x0000, 0x001f, 0xce7e, 0xf01f, 0x5408, 0x5440, 0x1008, 0x02a8, 0x48aa, 0x4085, 0x4585, 0x5585, 0x5585, 0x5481, 0x000f, 0xfe0c, 0xf1f0, 0x0005, 0x9a90, 0x5a90, 0x5a90, 0xaa90, 0xaa50, 0xa940, 0x00f0, 0x00f0, 0x02f1, 0x8180, 0x8083, 0xb890, 0x000f, 0xff10, 0xff10, 0x0000, 0x0040, 0x00f1, 0xfe7e, 0xff10, 0xa402, 0x90aa, 0x40aa, 0x00aa, 0xff11, 0x0010, 0xc0e0, 0xff01, 0x540f, 0x4255, 0x2a55, 0xaa54, 0xaa42, 0xaa2a, 0x5455, 0x4255, 0x2a55, 0xaa55, 0x5550, 0x5585, 0x5585, 0x5505, 0x5585, 0x5585, 0x5515, 0x021f, 0x0ff8, 0xf001, 0xc198, 0xf0f1, 0x0000, 0x2a55, 0x03f1, 0xfe00, 0x07f0, 0x8e6f, 0x00f7, 0xff01, 0x5405, 0x5552, 0x5552, 0x5550, 0x5552, 0x5552, 0x5554, 0x0bf1, 0xf0fc, 0xfc04, 0xfcfc, 0xfcfc, 0x0300, 0x00ff, 0x000f, 0x0ffc, 0xf3f0, 0xf200, 0xf3f3, 0xf3f3, 0x11ff, 0x0010, 0xe0c0, 0xff10, 0x0000, 0x4095, 0xf111, 0x0210, 0x3efc, 0x001f, 0x0301, 0xf01f, 0x9400, 0x54aa, 0x0e10, 0xc1f0, 0x0f83, 0x0c08, 0x8f8f, 0x8383, 0x3003, 0xf0f0, 0x83e1, 0x0707, 0x8007, 0xc1c0, 0xcfc9, 0xefef, 0x070f, 0x070f, 0xff01, 0x5405, 0xaa55, 0x2a02, 0x4a50, 0x5255, 0x5255, 0xaa55, 0x01ff, 0x001f, 0x0f80, 0xff10, 0x4000, 0x00a9, 0xf111, 0x0010, 0xc080, 0xff10, 0x0004, 0x0090, 0x5094, 0x90a5, 0x50aa, 0x40aa, 0xfff1, 0x0010, 0x0100, 0xff01, 0x5004, 0x4255, 0x0a55, 0xaa40, 0xaa4a, 0x2a42, 0x0b01, 0xfbfc, 0xf1f3, 0xf7fc, 0xfaf7, 0xe8fc, 0xf4f3, 0xf7fc, 0xc7f7, 0x8f8f, 0x0f0f, 0xe80c, 0xf1e0, 0xff10, 0x5001, 0x9000, 0x5500, 0x1000, 0x00f1, 0xef8e, 0x000f, 0xf000, 0xff10, 0x5400, 0xa940, 0x1110, 0x011f, 0x9e30, 0x30f1, 0xf01f, 0x5003, 0x5405, 0xaa95, 0xa940, 0x9500, 0x01f1, 0x6738, 0x3c0f, 0xf111, 0x11ff, 0x0510, 0xc840, 0x10f0, 0xe0e8, 0x3020, 0x40f0, 0xf080, 0xff10, 0x5000, 0x94a9, 0x021f, 0x1838, 0xdf10, 0xf071, 0xf1f0, 0x0001, 0x0a95, 0x2955, 0x05f1, 0x7f3e, 0x4770, 0xef1f, 0xfbe3, 0x8e31, 0x3fef, 0x1fff, 0x0101, 0x8c00, 0xef3f, 0xff10, 0x0010, 0xaa40, 0xaa94, 0x5400, 0xa400, 0x9400, 0x9400, 0xa400, 0xa400, 0xa900, 0xa900, 0x0015, 0x001a, 0x0016, 0x0016, 0x001a, 0x001a, 0x006a, 0x1fff, 0x1a10, 0x0c00, 0x8f0e, 0xcfcf, 0x0187, 0xf0f0, 0x3070, 0xc0f0, 0x1080, 0xf030, 0xc1e0, 0x0383, 0x8003, 0x8383, 0x0f83, 0x0e0f, 0x0008, 0xc787, 0xf1c3, 0x30f1, 0xe000, 0xfcef, 0x7078, 0x1020, 0x7030, 0xe0f0, 0x1040, 0x1010, 0xff10, 0x0008, 0xa940, 0xaa40, 0x6a50, 0x5690, 0x0550, 0x6a00, 0xaa01, 0xa901, 0x9505, 0x001f, 0x0810, 0x103c, 0xc0e0, 0x8030, 0xf1f1, 0x8070, 0xfebc, 0x003e, 0xe1e1, 0x3061, 0xff10, 0x0006, 0x0090, 0x00a4, 0x40a5, 0x50a9, 0x90aa, 0x90aa, 0x90aa, 0x011f, 0x1b10, 0x3218, 0xf01f, 0x5003, 0x0006, 0x0056, 0x016a, 0x56aa, 0x01f1, 0x7e72, 0x3c7b, 0xf01f, 0x0001, 0x0090, 0x4095, 0x0401, 0xff8e, 0x7e73, 0xf0f0, 0xf3f1, 0xfcf8, 0x01f1, 0x1e3c, 0xfe4e, 0xf0f1, 0x5002, 0x4205, 0x0a55, 0xaa54, 0x02f1, 0x83c0, 0xf727, 0xf3c7, 0xf01f, 0x9403, 0xa540, 0xaa55, 0x5540, 0xa950, 0x111f, 0x0410, 0x1030, 0xb0e0, 0x8498, 0x1060, 0x1010, 0xff10, 0x0005, 0x0050, 0x00a4, 0x50a9, 0xa55a, 0xa905, 0x5506, 0x0011, 0x00f1, 0x10fe, 0x0010, 0x8010, 0xffff, 0x1000, 0x000f, 0xf3f0, 0xf01f, 0x0009, 0x00a9, 0x80a9, 0x6aaa, 0x001a, 0x401a, 0x4006, 0x9006, 0x9001, 0xa401, 0xa401, 0xffff, 0x0001, 0xeffe, 0xff10, 0x0000, 0x0001, 0x011f, 0x0010, 0x10f0, 0x0011, 0x00f0, 0xf7f0, 0xf01f, 0x5008, 0xa406, 0xa406, 0xa406, 0xa406, 0xa406, 0xa406, 0xa406, 0xa406, 0xa456, 0x0810, 0x1c1e, 0x1c1c, 0x3c3c, 0x003c, 0x7e7e, 0xe7e6, 0xe007, 0x67e7, 0x7e7e, 0xff10, 0x0002, 0x5554, 0xaaa5, 0x0015, 0x011f, 0x2410, 0x3070, 0x1030, 0xe7e0, 0x6067, 0xe060, 0x07e3, 0xe7e0, 0x0607, 0x0606, 0x0606, 0xc780, 0x60e7, 0xe060, 0x07e7, 0x0c00, 0x060c, 0x0306, 0x8303, 0x8181, 0x8181, 0x8181, 0x0181, 0x7e60, 0x007e, 0x7e7e, 0x6060, 0x7860, 0x007c, 0x7e7e, 0x6060, 0x7c60, 0x007c, 0x7e7e, 0x0006, 0x0606, 0x0606, 0x0606, 0xff10, 0x140a, 0x9000, 0x5000, 0xaa00, 0xaa95, 0x5540, 0xaa00, 0x5556, 0x0001, 0x001a, 0x0016, 0x0001, 0x00f1, 0xecec, 0xf0f1, 0x5000, 0x4255, 0x1fff, 0x0010, 0xf8fe, 0xf1f0, 0x0000, 0xaaa5, 0x111f, 0x0101, 0xcf0e, 0xcfef, 0x0000, 0x01f1, 0xfcfc, 0xf0fc, 0x0010, 0xf0fe, 0xf1f0, 0x0003, 0xaa55, 0x0000, 0xaa55, 0x0000, 0x011f, 0xc0c0, 0xf0c0, 0x0101, 0xe080, 0x7f7f, 0xff10, 0x0009, 0x0090, 0x0090, 0x0094, 0x00a4, 0x00a4, 0x6a69, 0x6a00, 0x1a00, 0x1a00, 0x0600, 0x0010, 0x1010, 0xf1f0, 0x0009, 0x0a95, 0x002a, 0x0958, 0x0958, 0x0958, 0x0958, 0x0958, 0x0958, 0x0958, 0x0958, 0x0710, 0x7878, 0x7878, 0x7878, 0x7070, 0x6060, 0x6060, 0x6060, 0x7e7e, 0x0000, 0xffff, 0x1810, 0x6060, 0x7e60, 0x607e, 0x6060, 0x6060, 0x7e60, 0x807e, 0x8181, 0xc0c1, 0x6060, 0x8000, 0x8181, 0x8181, 0x0181, 0x0606, 0x0606, 0x0e06, 0x0606, 0x7e7e, 0x6060, 0x7e60, 0x607e, 0x7e7e, 0x6060, 0x6060, 0x0000, 0x0110, 0x00f0, 0xfff0, 0x021f, 0x0c02, 0x07fc, 0x878c, 0xf01f, 0x0003, 0x0050, 0x0090, 0x00a4, 0x40a5, 0x0001, 0xefee, 0x0000, 0x00f1, 0xfcfe, 0xff10, 0xa404, 0x94aa, 0x90aa, 0x40aa, 0x40aa, 0x00a9, 0x04f1, 0xeffc, 0x7f9f, 0x19f0, 0x7fcc, 0x3f7f, 0xf01f, 0x000a, 0x0090, 0x00a4, 0x40a5, 0xaaa9, 0xaa1a, 0xaa5a, 0x1500, 0x6a00, 0xaa55, 0x5400, 0xa955, 0x0000, 0x011f, 0xf8c0, 0xc080, 0xf01f, 0x0002, 0x0090, 0x00a4, 0x40a5, 0x1601, 0xefee, 0x270f, 0xef37, 0xcf3f, 0xbf9f, 0xefbf, 0xb07f, 0xd9d1, 0xf8ff, 0xfefe, 0x07fe, 0x9d83, 0x07ff, 0x9fcf, 0xbfbf, 0x7fef, 0xd930, 0xffb9, 0xfef8, 0xfefe, 0xf7f7, 0xf8f0, 0xfff9, 0xff01, 0x5001, 0x4a55, 0x4255, 0x0010, 0xc010, 0xff10, 0x5001, 0x9455, 0x9456, 0x001f, 0x0310, 0x8000, 0xfef0, 0x073f, 0x0001, 0x021f, 0x30c0, 0x0fe8, 0x0c08, 0xf01f, 0x9001, 0xa400, 0xa500, 0x1fff, 0x0501, 0xcffe, 0x3e0f, 0xf1f8, 0xfcf7, 0x83e0, 0x0f9f, 0x00f1, 0x8fe0, 0xf10f, 0x0002, 0x0a95, 0xa555, 0x1555, 0x00f1, 0x0f80, 0xff01, 0x400c, 0x2855, 0x4a15, 0x5215, 0x5285, 0x5485, 0x5020, 0x52a8, 0x5000, 0x8555, 0x8552, 0x8552, 0x8152, 0xa142, 0x01ff, 0x1810, 0x807e, 0x63c1, 0x7e7e, 0x0066, 0xd97e, 0x8098, 0x103e, 0x8010, 0xf180, 0xc3e7, 0x63c1, 0x1006, 0x4020, 0xc080, 0xf1f0, 0x2071, 0x2020, 0x2020, 0x4070, 0x1060, 0x7070, 0x6040, 0x7040, 0x5070, 0x5050, 0xff10, 0x0006, 0x0015, 0x06aa, 0x06aa, 0x1aaa, 0x1aa5, 0x1a94, 0x6950, 0x0f10, 0xc0f0, 0x5050, 0x4070, 0x7040, 0x7050, 0x4040, 0x5070, 0x5070, 0x7070, 0x3010, 0x7040, 0x1060, 0x5070, 0x7070, 0x4040, 0x4040, 0x0000
};

// [D_08C3588C] D_08C35C9C Huffman Window 1
u32 D_08c35c9c_window1[] = {
	0xfd9cffbb, 0xf4bf6f9d, 0xffe5b3be, 0xb779ddb3, 0xe497b6fd, 0xedb3bf3b, 0xbfdfbdff, 0x5f6e5edd, 0xefe4fb7b, 0xbef65da4, 0xa5db672f, 0xade5def7, 0x65bdfb6f, 0xef6f76db, 0x6feffdf7, 0xbe777b6f, 0x5b36ffed, 0xe4ffadef, 0x077ddfbd
};

// [D_08C358D8] D_08C35C9C Huffman Window 2
u32 D_08c35c9c_window2[] = {
	0x8a54954a, 0x4a4aa2aa, 0x52252955, 0xaa441554, 0x55554954, 0xa2a8a955, 0x8484a8aa, 0x410a4822, 0x55295215, 0x148a2a55, 0x52aa290a, 0x2aa52955, 0x522aa515, 0x01525548
};

// [D_08C35910] D_08C35C9C Huffman
struct Huffman D_08c35c9c_huffman[] = {
	/* Data */			D_08c35c9c_huffmandata,
	/* Size */			0x16a6,
	/* Count */			0x25c,
	/* Window 1 */		D_08c35c9c_window1,
	/* Window 2 */		D_08c35c9c_window2,
};

// [D_08C35920] D_08C35C9C RLE Data
u8 D_08c35c9c_rledata[] = {
	0x1, 0x18, 0x8, 0x5, 0xb, 0x8, 0x18, 0xd, 0x2, 0x3b, 0x6, 0x4, 0x7, 0x4, 0x1, 0x3, 0x7, 0x5, 0x1, 0x19, 0x17, 0x5, 0xb, 0x1c, 0x4, 0x8, 0x8, 0x5, 0x2, 0x3, 0x1, 0xa, 0x4, 0xc, 0x5, 0xd, 0x9, 0xf, 0x1, 0x8, 0x6, 0x7, 0x2, 0xe, 0x3, 0xf, 0x2, 0x6, 0x1, 0x35, 0x33, 0x5, 0x32, 0x2f, 0x11, 0x20, 0x1, 0x9, 0x16, 0x20, 0xb, 0x5, 0x8, 0x8, 0x2, 0x5, 0x3, 0x3, 0x1, 0x8, 0x1, 0x3, 0x1, 0xb, 0x5, 0xf, 0x5, 0x11, 0x4, 0xc, 0x1, 0x1e, 0x2, 0x1f, 0x1, 0x13, 0xd, 0x5, 0x5, 0x5, 0x9, 0x7, 0x11, 0x3, 0x4d, 0x20, 0x10, 0x2f, 0xb, 0x4, 0x2, 0x7, 0x8, 0x20, 0x1, 0x1a, 0x4, 0x9, 0x6, 0x9, 0x2, 0x3, 0x1, 0x9, 0x1, 0x3, 0x2, 0xc, 0x5, 0xd, 0x5, 0x11, 0x1, 0x10, 0xa, 0x3, 0x2, 0x20, 0x1, 0xa, 0x15, 0x20, 0x1b, 0x6, 0x2, 0x5, 0x1c, 0x4, 0xf, 0x9, 0x1, 0x3, 0xd, 0xb, 0x15, 0x2f, 0x10, 0x30, 0x1, 0x16, 0x4, 0x9, 0x6, 0x9, 0x4, 0xa, 0x3, 0xc, 0x3, 0xd, 0x5, 0x1b, 0x1, 0xd, 0xf, 0x5, 0xa, 0x14, 0x1, 0x10, 0x4, 0xb, 0x1, 0x3, 0xc, 0x10, 0x1b, 0x6, 0x30, 0xa, 0x7, 0x3, 0x2c, 0x2f, 0x11, 0x2f, 0x1, 0x18, 0x8, 0x3, 0xd, 0xd, 0x2, 0xf, 0x2, 0x4, 0xc, 0x3, 0xc, 0xd, 0x4, 0x6, 0x7, 0x18, 0x7, 0x3, 0x10, 0x18, 0x19, 0x3, 0x11, 0xb, 0xd, 0x3, 0x1, 0x7, 0xa, 0x8, 0xd, 0xa, 0x4, 0x6, 0x36, 0xd, 0x2, 0x20, 0x11, 0x2f, 0x1, 0x10, 0x49, 0x6, 0x3, 0xd, 0x11, 0x1e, 0x2, 0xf, 0x11, 0xb, 0x1f, 0x5, 0x10, 0x30, 0x9, 0x7, 0x1, 0x3, 0x1, 0x3, 0x1, 0x7, 0x26, 0x1a, 0x11, 0x1f, 0x7, 0x9, 0x1, 0x3, 0xd, 0xd, 0x3, 0xa, 0x6, 0x10, 0xf, 0xd, 0x16, 0xd, 0x10, 0xf, 0x12, 0x10, 0xc, 0xd, 0x2, 0x5, 0x28, 0x87, 0x3, 0x2e, 0x1a, 0xa, 0x6, 0x5, 0x1, 0x1f, 0x9, 0x7, 0x10, 0xf, 0x11, 0x17, 0x12, 0x7, 0x5, 0xb, 0xc, 0x4, 0x5, 0xb, 0x1, 0x13, 0x7, 0x15, 0x21, 0x2f, 0x1, 0x10, 0xf, 0x8, 0x9, 0xf, 0x1, 0x6, 0x19, 0x2e, 0x2, 0xc, 0x5, 0xf, 0x11, 0x6, 0x7, 0x7, 0x3, 0x8, 0x1, 0xe, 0x2, 0xb, 0x5, 0xc, 0x4, 0x3f, 0x11, 0x20, 0x2f, 0x22, 0x20, 0xe, 0x1, 0xf, 0x1d, 0x3, 0x1, 0x9, 0x7, 0xf, 0x11, 0x7, 0x3, 0x5, 0x1, 0x5, 0x4, 0x3, 0xa, 0x4, 0xf, 0x6, 0x1, 0x10, 0x10, 0x1c, 0x33, 0xd, 0xf, 0x12, 0x3, 0x9, 0x17, 0x20, 0x30, 0x7, 0x9, 0x5, 0x2a, 0x10, 0x14, 0xc, 0x1, 0xf, 0x11, 0x10, 0xf, 0x11, 0x20, 0xd, 0x3, 0x9, 0x17, 0x10, 0xa, 0xa, 0xf, 0x9, 0xc, 0x7, 0x10, 0x10, 0x31, 0x9, 0x67, 0x3, 0xd, 0xd, 0x22, 0x10, 0x1, 0xf, 0x11, 0xe, 0x12, 0x10, 0x10, 0xf, 0x13, 0xe, 0x2, 0xd, 0x1, 0x12, 0x4, 0x10, 0x6, 0x4, 0x7, 0x7, 0x2, 0x6, 0x2, 0x7, 0x14, 0xc, 0x1d, 0x3, 0x12, 0xe, 0x5b, 0x6, 0x2, 0xd, 0xd, 0x3, 0x11, 0x3, 0x1d, 0x12, 0xe, 0x12, 0x11, 0x4, 0x4, 0x4, 0x1, 0x7, 0xa, 0x5, 0x1a, 0x3, 0x1c, 0x3, 0x31, 0x3, 0x20, 0x7, 0x2, 0x4, 0x30, 0xc, 0x5, 0xb, 0x11, 0xb, 0x3, 0xd, 0x3, 0x8, 0x2, 0x3, 0x3, 0x7, 0x3, 0x3, 0x3, 0x39, 0x3, 0x5, 0x1d, 0x3, 0x25, 0xb, 0x2, 0x1f, 0xc, 0x3, 0xd, 0x3, 0x3, 0x3, 0x6, 0x4, 0xd, 0x3, 0x3c, 0x3, 0x2d, 0x4, 0x9, 0x3, 0x5, 0x8, 0x18, 0xb, 0x5, 0xc, 0x11, 0x8, 0x3, 0x3, 0x3, 0x7, 0x3, 0x3, 0x7, 0x3, 0x3, 0x3, 0x7, 0x3, 0x3, 0x3, 0x3, 0xf, 0x5, 0xb, 0x1, 0x3, 0x1, 0x8, 0x4, 0x3, 0x1, 0x4, 0xa, 0x2b, 0x3, 0xd, 0x3, 0x8, 0xa, 0x3, 0xd, 0x3, 0xd, 0x5, 0xa, 0x6, 0xb, 0x5, 0x3, 0x4, 0x4, 0x5, 0x3, 0x3, 0x5, 0x5, 0x9b, 0x7, 0x9, 0x28, 0x8, 0x4, 0xc, 0x3, 0xd, 0x7, 0x8, 0x9, 0x8, 0x5, 0x1, 0x3, 0x7, 0x5, 0x1, 0x3, 0x7, 0x7, 0x9, 0x5, 0x3, 0xd, 0x3, 0xd, 0x3, 0xd, 0x3, 0x4, 0xe, 0x5, 0xd, 0x3, 0xd, 0x3, 0xa, 0x6, 0x19, 0x3, 0xa, 0x6, 0x25, 0xb, 0xc, 0x4, 0x17, 0x4, 0x3c, 0xd, 0x1b, 0x5, 0x1, 0x7, 0x15, 0x3, 0x2c, 0x4, 0x19, 0x7, 0x9, 0x8, 0x10, 0x12, 0x1e, 0x12, 0x2e, 0x3, 0x8, 0x4, 0x1, 0x6, 0x16, 0x6, 0x1e, 0x4, 0xc, 0x3, 0xc, 0xb, 0x16, 0xc, 0x4, 0x6, 0x2a, 0x4, 0xc, 0x3, 0xa, 0x3, 0x20, 0x3, 0x5, 0x6, 0x7, 0x3, 0x7, 0xf, 0x2, 0xd, 0x2, 0x1c, 0x3c, 0x9, 0x6, 0x9, 0x3c, 0x4, 0xc, 0x4, 0x6, 0x1a, 0xb, 0x5, 0xb, 0x8, 0x6, 0x7, 0xa, 0x7, 0x5, 0x6, 0xd, 0x8, 0xf, 0x10, 0x2b, 0x7, 0x6, 0x8, 0x2a, 0x17, 0xa, 0x5, 0x6, 0xd, 0xf, 0x3, 0x5, 0x6, 0x7, 0x9, 0x6, 0x19, 0x1e, 0xf, 0x2b, 0x5, 0xb, 0x5, 0x5, 0x3, 0x4, 0x8, 0xc, 0x6, 0x51, 0x9, 0x2b, 0x9, 0x15, 0xb, 0x1, 0x3, 0x5, 0x7, 0x1, 0x4, 0x4, 0x7, 0x6, 0x1a, 0xd, 0x3, 0xa, 0x6, 0x2, 0xe, 0xd, 0x3, 0x1, 0x9, 0x1, 0x3, 0x3, 0x9, 0x1, 0x3, 0xf, 0x4, 0x1d, 0x12, 0x4, 0xc, 0x2b, 0x5, 0x1, 0x5, 0x5, 0x5, 0x1, 0xf, 0x1, 0x10, 0xa, 0x6, 0xa, 0x5, 0x1, 0x5, 0x5, 0x5, 0x1d, 0x4, 0xa, 0x5, 0xb, 0x6, 0xa, 0x5, 0x1, 0x5, 0x5, 0x6, 0xa, 0x5, 0x7, 0xe, 0x4, 0x9, 0x12, 0xc, 0x19, 0xa, 0x5, 0xb, 0xe, 0x10, 0x4, 0xb, 0x1, 0x3, 0x5, 0x7, 0x1, 0x4, 0x4, 0x7, 0x14, 0xf, 0xa, 0x5, 0xa, 0x6, 0xb, 0x7, 0x6, 0x8, 0xb, 0x5, 0xa, 0x8, 0xb, 0x7, 0x6, 0x7, 0x4, 0x9, 0xa, 0x6, 0x6, 0x23, 0x1a, 0xd, 0x1d, 0xb, 0x9, 0x5, 0xb, 0x4, 0x4, 0x5, 0x13, 0x3f, 0xd, 0x5, 0x5, 0x3, 0x13, 0x3, 0x4, 0xc, 0x18, 0x8, 0x8, 0x9, 0xa, 0x6, 0xa, 0x6, 0xa, 0x6, 0xa, 0x5, 0x1b, 0x6, 0xa, 0x6, 0xa, 0x6, 0xa, 0x6, 0xa, 0x6, 0xa, 0x0, 0x36, 0x0, 0x0, 0x0
};

// [D_08C35C9C] D_08C35C9C Graphics
struct CompressedGraphics D_08c35c9c = {
	/* Huffman Data */		D_08c35c9c_huffman,
	/* RLE Data */			D_08c35c9c_rledata,
	/* RLE Size */			0x378,
	/* RLE Offset */		0x2c00,
	/* Double Compressed */	TRUE,
};

u8 D_08c35cac[132] = {
	0x78, 0x00, 0x48, 0x00, 0x68, 0x00, 0x40, 0x00, 0x40, 0x00, 0x40, 0x00,
	0x40, 0x00, 0x40, 0x00, 0x2C, 0x00, 0x58, 0x00, 0x54, 0x00, 0x58, 0x00,
	0xA8, 0x00, 0x40, 0x00, 0xA8, 0x00, 0x40, 0x00, 0xC0, 0x00, 0x40, 0x00,
	0x60, 0x00, 0x58, 0x00, 0x70, 0x00, 0x58, 0x00, 0xC0, 0x00, 0x40, 0x00,
	0xC0, 0x00, 0x40, 0x00, 0x40, 0x00, 0x40, 0x00, 0xC0, 0x00, 0x40, 0x00,
	0x40, 0x00, 0x40, 0x00, 0x40, 0x00, 0x40, 0x00, 0xC0, 0x00, 0x40, 0x00,
	0xD8, 0x00, 0x20, 0x00, 0x58, 0x00, 0x90, 0x00, 0x40, 0x00, 0x90, 0x00,
	0x68, 0x00, 0x40, 0x00, 0xC0, 0x00, 0x40, 0x00, 0x36, 0x00, 0x1E, 0x00,
	0x78, 0x00, 0x40, 0x00, 0xC8, 0x00, 0x40, 0x00, 0xA8, 0x00, 0x32, 0x00,
	0xA8, 0x00, 0x32, 0x00, 0xA8, 0x00, 0x32, 0x00, 0x40, 0x00, 0x40, 0x00,
	0x40, 0x00, 0x40, 0x00, 0x78, 0x00, 0x48, 0x00, 0x60, 0x00, 0x88, 0x00
};

// // //  D_08C35F18  // // //

// [D_08C35D30] D_08C35F18 Data
u16 D_08c35f18_data[] = {
	0x0002, 0x002c, 0x0002, 0x002c, 0x0002, 0x002b, 0x002a, 0x0002, 0x0030, 0x002f, 0x0031, 0x0002, 0x002e, 0x002d, 0x0002, 0x001c, 0x006d, 0x006c, 0x0069, 0x0068, 0x006b, 0x006a, 0x0071, 0x0070, 0x0073, 0x0072, 0x006f, 0x006e, 0x001e, 0x0002, 0x0009, 0x0008, 0x0002, 0x001c, 0x0079, 0x0078, 0x0075, 0x0074, 0x0077, 0x0076, 0x007d, 0x007c, 0x007f, 0x007e, 0x007b, 0x007a, 0x001e, 0x0002, 0x0035, 0x0034, 0x0036, 0x0002, 0x002b, 0x002a, 0x0002, 0x002e, 0x002d, 0x0002, 0x0009, 0x0008, 0x0002, 0x000f, 0x000e, 0x000d, 0x0002, 0x000f, 0x000e, 0x000d, 0x0002, 0x0002, 0x0002, 0x000c, 0x0007, 0x0007, 0x0007, 0x000b, 0x000a, 0x005c, 0x005b, 0x005e, 0x005d, 0x005a, 0x0059, 0x0002, 0x0006, 0x0005, 0x0004, 0x0002, 0x0006, 0x0005, 0x0004, 0x0002, 0x0002, 0x0002, 0x0003, 0x0000, 0x0001, 0x0002, 0x0050, 0x0052, 0x0051, 0x004f, 0x004e, 0x0002, 0x0002, 0x0007, 0x0056, 0x0055, 0x0058, 0x0057, 0x0054, 0x0053, 0x0053, 0x0007, 0x0000, 0x0063, 0x0062, 0x0065, 0x0064, 0x0060, 0x005f, 0x0061, 0x0000, 0x0017, 0x0067, 0x0066, 0x0017, 0x0012, 0x0013, 0x0010, 0x0011, 0x0012, 0x0002, 0x0016, 0x0014, 0x0015, 0x0002, 0x0044, 0x0002, 0x0044, 0x0002, 0x008a, 0x0089, 0x008d, 0x008c, 0x0002, 0x0002, 0x008b, 0x0002, 0x0002, 0x0002, 0x0046, 0x0049, 0x0048, 0x004a, 0x0047, 0x0046, 0x0049, 0x0048, 0x004a, 0x0047, 0x0002, 0x0082, 0x0081, 0x0084, 0x0083, 0x0080, 0x0002, 0x0084, 0x0084, 0x0002, 0x0002, 0x0002, 0x0039, 0x003d, 0x003b, 0x003e, 0x003a, 0x0039, 0x003c, 0x003b, 0x0040, 0x003f, 0x0002, 0x0086, 0x0085, 0x0088, 0x0087, 0x0085, 0x0002, 0x0088, 0x0088, 0x0002, 0x0002, 0x0002, 0x0039, 0x0043, 0x0000, 0x0000, 0x0042, 0x0039, 0x0043, 0x0000, 0x0000, 0x0042, 0x0002
};

// [D_08C35ECC] D_08C35F18 RLE Data
u8 D_08c35f18_rledata[] = {
	0x1, 0x3, 0x2, 0x5, 0x2, 0x7, 0x3, 0xa, 0x2, 0xb, 0x2, 0x4, 0x3, 0xa, 0xf, 0x4, 0x3, 0xa, 0xf, 0x11, 0x2, 0xb, 0x2, 0x44, 0x3, 0x1d, 0x3, 0x1d, 0x3, 0xc, 0x4, 0x5, 0x13, 0x4, 0x4, 0x5, 0x8, 0x3, 0xa, 0x17, 0x9, 0x17, 0x9, 0x18, 0x2, 0x4, 0x2, 0x11, 0x2, 0x3, 0x2, 0x7, 0x1, 0x11, 0x2, 0x3, 0x2, 0x19, 0x2, 0x3, 0x2, 0xe, 0x15, 0x5, 0x6, 0x5, 0x10, 0x5, 0x6, 0x5, 0x10, 0x0, 0x85, 0x0, 0x0, 0x0
};

// [D_08C35F18] D_08C35F18 Graphics
struct CompressedGraphics D_08c35f18 = {
	/* Data */				{.raw = D_08c35f18_data},
	/* RLE Data */			D_08c35f18_rledata,
	/* RLE Size */			0x48,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

// // //  D_08C360B0  // // //

// [D_08C35F28] D_08C360B0 Data
u16 D_08c360b0_data[] = {
	0x0002, 0x002c, 0x0002, 0x002c, 0x0002, 0x002b, 0x002a, 0x0002, 0x0030, 0x002f, 0x0031, 0x0002, 0x002e, 0x002d, 0x0002, 0x001c, 0x001d, 0x001d, 0x0019, 0x0018, 0x001b, 0x001a, 0x0020, 0x001f, 0x0022, 0x0021, 0x001d, 0x001d, 0x001e, 0x0002, 0x0009, 0x0008, 0x0002, 0x001c, 0x001d, 0x001d, 0x0024, 0x0023, 0x0026, 0x0025, 0x0028, 0x0027, 0x0029, 0x001d, 0x001d, 0x001d, 0x001e, 0x0002, 0x0035, 0x0034, 0x0036, 0x0002, 0x0033, 0x0032, 0x0002, 0x0038, 0x0037, 0x0002, 0x002b, 0x002a, 0x0002, 0x002e, 0x002d, 0x0002, 0x0009, 0x0008, 0x0002, 0x000f, 0x000e, 0x000d, 0x0002, 0x000f, 0x000e, 0x000d, 0x0002, 0x0002, 0x0002, 0x000c, 0x0007, 0x0007, 0x0007, 0x000b, 0x000a, 0x0002, 0x0006, 0x0005, 0x0004, 0x0002, 0x0006, 0x0005, 0x0004, 0x0002, 0x0002, 0x0002, 0x0003, 0x0000, 0x0001, 0x0002, 0x0007, 0x0000, 0x0017, 0x0012, 0x0013, 0x0010, 0x0011, 0x0012, 0x0002, 0x0016, 0x0014, 0x0015, 0x0002, 0x0045, 0x0002, 0x0044, 0x0002, 0x0044, 0x0002, 0x004b, 0x004d, 0x004c, 0x0002, 0x0046, 0x0049, 0x0048, 0x004a, 0x0047, 0x0046, 0x0049, 0x0048, 0x004a, 0x0047, 0x0002, 0x0041, 0x0002, 0x0039, 0x003d, 0x003b, 0x003e, 0x003a, 0x0039, 0x003c, 0x003b, 0x0040, 0x003f, 0x0002, 0x0039, 0x0043, 0x0000, 0x0000, 0x0042, 0x0039, 0x0043, 0x0000, 0x0000, 0x0042, 0x0002
};

// [D_08C36060] D_08C360B0 RLE Data
u8 D_08c360b0_rledata[] = {
	0x1, 0x3, 0x2, 0x5, 0x2, 0x7, 0x3, 0xa, 0x2, 0xb, 0x2, 0x4, 0x3, 0xa, 0xf, 0x4, 0x3, 0xa, 0xf, 0x11, 0x2, 0xb, 0x2, 0x4, 0x3, 0x1d, 0x3, 0x1d, 0x3, 0x1d, 0x3, 0x1d, 0x3, 0xc, 0x4, 0x5, 0xd, 0xa, 0x4, 0x5, 0x8, 0x3, 0x2, 0x7, 0x1, 0x1f, 0x1, 0x1f, 0x1, 0x1f, 0x1, 0x11, 0x2, 0x3, 0x2, 0x7, 0x1, 0x11, 0x2, 0x3, 0x2, 0xe, 0x2, 0x9, 0x2, 0x3, 0x2, 0xd, 0x4, 0x7, 0xb, 0xb, 0x2, 0x8, 0xb, 0x15, 0xb, 0x0, 0x85, 0x0
};

// [D_08C360B0] D_08C360B0 Graphics
struct CompressedGraphics D_08c360b0 = {
	/* Data */				{.raw = D_08c360b0_data},
	/* RLE Data */			D_08c360b0_rledata,
	/* RLE Size */			0x4e,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

