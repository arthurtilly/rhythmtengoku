#include "global.h"
#include "graphics.h"

// // //  D_08C2575C  // // //

// [D_08C24F70] D_08C2575C Huffman Data
u16 D_08c2575c_huffmandata[] = {
	0x0000, 0x03f5, 0xc0c0, 0x6060, 0x3060, 0x3030, 0xff25, 0x0002, 0xa955, 0x0a55, 0x02a5, 0x5ff2, 0x00f5, 0x1030, 0xfff5, 0x0000, 0x0001, 0x00f2, 0xc080, 0x2222, 0x5f22, 0x03f5, 0x60c0, 0x3060, 0x3030, 0x1818, 0xf2f5, 0x0006, 0x00a5, 0x00a5, 0x00a5, 0x00a5, 0x00a5, 0x00a5, 0x00a5, 0x22ff, 0x09f5, 0x1830, 0x1818, 0x0c18, 0x0c0c, 0x0c08, 0x0301, 0x3060, 0x3030, 0x1818, 0x0c18, 0x75f2, 0x0006, 0x00e4, 0x00e4, 0x00e4, 0x00e4, 0x00e4, 0x00e4, 0x00a4, 0x55f2, 0x01f7, 0x8006, 0x18e8, 0xff57, 0x0000, 0x5050, 0x00f5, 0xf78c, 0x5555, 0x00f2, 0xe080, 0xf5f2, 0x4001, 0x5095, 0x94a9, 0x01f5, 0x1030, 0x7000, 0x47f5, 0x0004, 0x0005, 0xfd2a, 0xfd2a, 0xfd2a, 0xfd02, 0x00f5, 0x07fc, 0xf2f4, 0x9003, 0x90aa, 0x90aa, 0x90aa, 0x55aa, 0x22ff, 0x00f5, 0x80e0, 0xf2f5, 0x0007, 0x0050, 0x0094, 0x0094, 0x0094, 0x0094, 0x0094, 0x0095, 0x00a5, 0x22ff, 0x10f5, 0xc0c0, 0x60c0, 0x6060, 0x3030, 0x6060, 0x3030, 0x1830, 0x1818, 0x0100, 0x0101, 0x0101, 0x0101, 0x8ccc, 0x868e, 0x8386, 0x8383, 0x3830, 0xf2f5, 0x4005, 0x1a05, 0x1a00, 0x1600, 0x0600, 0x0600, 0x0600, 0x1cf5, 0x1030, 0x1010, 0x8080, 0xc080, 0xc0c0, 0x03c0, 0x0103, 0x0101, 0x0808, 0x0c08, 0x0c0c, 0x1c0c, 0x1010, 0x8010, 0xc1c1, 0xc0c1, 0xe0e0, 0xc060, 0xc0c0, 0xc0c0, 0xc0c0, 0x00c0, 0x0808, 0x0c08, 0x0c0c, 0x1606, 0x1010, 0xf870, 0xdcd8, 0xf5f2, 0x0006, 0x0094, 0x00a4, 0x00a5, 0x40a9, 0x40a9, 0x40aa, 0x50aa, 0x0ff5, 0xc1c0, 0xe0c0, 0x6060, 0x3070, 0x0680, 0x0606, 0x0307, 0x0303, 0xe001, 0x70e0, 0x3070, 0x3830, 0x0718, 0x0607, 0x0606, 0x0606, 0xfff5, 0x0025, 0xfef0, 0x5324, 0x5403, 0x5655, 0x5355, 0x1555, 0x5755, 0x5642, 0x0400, 0x3042, 0x6527, 0x6403, 0x5015, 0xc00e, 0x5015, 0x6465, 0x2242, 0x4226, 0x03f5, 0x8080, 0x8080, 0x8080, 0x8080, 0x034f, 0x7e3e, 0xfe7e, 0xfefe, 0xfefe, 0x00f2, 0x3010, 0xff42, 0x0002, 0x0029, 0x0029, 0x00a5, 0xf444, 0x00f2, 0xcf00, 0x325f, 0x4007, 0x5502, 0x5542, 0x5542, 0x5542, 0x5542, 0x5542, 0x5550, 0xabaa, 0x2222, 0x2224, 0x035f, 0x7f7e, 0x7f7f, 0x7f7f, 0x7f7f, 0x002f, 0xf8f8, 0xf24f, 0x0404, 0x14aa, 0x14aa, 0x54a8, 0x54a0, 0x5481, 0x2ff4, 0x00f2, 0xf8c0, 0x005f, 0xf8c0, 0xf222, 0x005f, 0x8c00, 0x5555, 0x00f2, 0xe080, 0x75f2, 0x5008, 0x5555, 0xffa9, 0xff6a, 0xff6a, 0xff6a, 0xff6a, 0xff6a, 0xff6a, 0xff6a, 0xf555, 0x034f, 0xfefe, 0xfefe, 0xfefe, 0xfefe, 0x0075, 0xfef8, 0x01f7, 0x7c38, 0x7c7c, 0xf4f7, 0x4000, 0xaa05, 0x042f, 0xfcfc, 0xfcfc, 0xfcfc, 0xfcfc, 0xe0e1, 0x425f, 0x1401, 0x15a0, 0x1580, 0x2f4f, 0x00f2, 0xc0e0, 0xf222, 0x005f, 0x8c00, 0x7f25, 0x0006, 0x0029, 0x0029, 0x0029, 0x0029, 0x0029, 0xc029, 0xf029, 0x5ff2, 0x0175, 0x8c0c, 0x0fef, 0x00f5, 0x0808, 0xf7f5, 0x4004, 0x40a8, 0x40aa, 0x40aa, 0x40aa, 0x40aa, 0x0175, 0xc0c0, 0xfef0, 0x2f47, 0x0003, 0x9500, 0x55fe, 0x55fa, 0x55f9, 0x2ff4, 0x01f4, 0x80c0, 0x8080, 0x00f2, 0x1010, 0xf5f2, 0x0007, 0xaa94, 0xaa94, 0xaa94, 0xaa94, 0xaa94, 0xaa94, 0xaa94, 0xaa94, 0x00f2, 0xfef0, 0xffff, 0xf555, 0x01f2, 0x1010, 0xc030, 0xff57, 0x0006, 0x0090, 0x0090, 0x0a90, 0x2a90, 0x2a90, 0x0a90, 0x0090, 0xf577, 0x005f, 0xfcfc, 0xf75f, 0x5004, 0x5055, 0x90a5, 0x90aa, 0x90aa, 0x902a, 0xff77, 0x0075, 0xf080, 0x7775, 0x01f7, 0x8080, 0x0301, 0x02f2, 0xc0c0, 0x0080, 0xf080, 0xff22, 0x005f, 0x0f08, 0x003f, 0xef8c, 0x005f, 0xfef0, 0xf42f, 0x5006, 0x4255, 0x4255, 0x4255, 0x4255, 0x4255, 0x4255, 0x4255, 0x2222, 0x02f5, 0x8080, 0xc0c0, 0x6060, 0xf333, 0x055f, 0x8c00, 0xcf9f, 0xefcf, 0x7f7f, 0x7f7f, 0x7f7f, 0x47f5, 0x0001, 0xa040, 0x7d4a, 0xf42f, 0x5402, 0x50a8, 0x40a8, 0x42a8, 0x014f, 0x3e3e, 0xfe7e, 0xfff2, 0x025f, 0xcf8c, 0xcfcf, 0xcfcf, 0xfff5, 0x0000, 0x0005, 0x03f2, 0xc0c0, 0xc0c0, 0xc0c0, 0xc0c0, 0x0275, 0xfcfc, 0xfcfc, 0x0c7c, 0x00f5, 0xf8c0, 0x013f, 0x3c08, 0x010f, 0x005f, 0xfef0, 0x00f4, 0xffc0, 0xf75f, 0x0001, 0x5540, 0xa002, 0x7ff7, 0x0057, 0xef08, 0x00f5, 0xff0c, 0x003f, 0xff0c, 0xf333, 0x5577, 0x00f5, 0xcf08, 0x013f, 0xcf08, 0x10f7, 0x005f, 0x0f08, 0x22ff, 0x025f, 0x3f00, 0x8f1f, 0xe3c7, 0xf2f5, 0x5400, 0x5600, 0x005f, 0xcf0c, 0x5555, 0x003f, 0x0e70, 0xfff3, 0x015f, 0xef08, 0xcc0f, 0xf7f5, 0x0001, 0xaa85, 0x0a85, 0x005f, 0x0cfc, 0x723f, 0x0002, 0x0240, 0x4255, 0x0200, 0xffff, 0x5577, 0x00f5, 0xff8c, 0x003f, 0x738c, 0x065f, 0x8c00, 0xff7f, 0x7f7f, 0x3f3f, 0x9f9f, 0xfcfc, 0xfefe, 0x75f2, 0x0006, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0x00e4, 0x00e4, 0x75f2, 0xf2f4, 0x9406, 0x90aa, 0x90aa, 0x90aa, 0x90aa, 0x90aa, 0x90aa, 0x90aa, 0x2222, 0x0075, 0xf8c0, 0x7775, 0x00f7, 0x0800, 0x45f7, 0x4008, 0x0014, 0xfdaa, 0xfd82, 0xfd80, 0xfd80, 0xfd80, 0xfd81, 0xfd81, 0xfd80, 0x01f5, 0xc0c0, 0xe0c0, 0xf2f5, 0x0002, 0x0094, 0x0094, 0x0094, 0x2ff5, 0x04f5, 0x8080, 0x0680, 0x0306, 0x0303, 0x0101, 0xf75f, 0x5405, 0xaa55, 0xaa1a, 0xa81a, 0xa81a, 0xa81a, 0x6a1a, 0x00f5, 0xef08, 0x034f, 0xefe0, 0xefef, 0xefef, 0x01ef, 0xf75f, 0x0006, 0x0a90, 0x2a90, 0xaa90, 0xaa90, 0xaa90, 0xaa90, 0xaa90, 0x75ff, 0x03f7, 0x1030, 0x0800, 0xef68, 0x00e7, 0x5557, 0xf2f4, 0x9404, 0x94aa, 0x94aa, 0x94aa, 0x94aa, 0x94aa, 0x01f2, 0xf7f0, 0x0c0f, 0xf5f2, 0x5408, 0x9500, 0xa540, 0xa950, 0xaa50, 0xaa94, 0xaa95, 0x5000, 0xa400, 0xa400, 0x00f2, 0x3010, 0xf5f2, 0x0001, 0x4050, 0x95a5, 0x5555, 0x00f2, 0x0e00, 0x425f, 0x1404, 0x55a8, 0x55a0, 0x5580, 0x550c, 0x553c, 0x444f, 0x03f5, 0x3030, 0x1830, 0x0c18, 0x0c0c, 0xff57, 0x0001, 0x0095, 0x5495, 0x00f5, 0x8c08, 0x003f, 0x8c00, 0xfff3, 0x0000, 0x0000, 0x014f, 0xfefe, 0xfcfe, 0x534f, 0x4002, 0x0255, 0x0a05, 0x0000, 0x55ff, 0x00f7, 0x3c30, 0xf57f, 0x0001, 0x5054, 0x5595, 0x5555, 0x00f7, 0x0e0c, 0xff7f, 0x0000, 0x5055, 0x0057, 0xef08, 0x00f5, 0xce00, 0x004f, 0x07f0, 0x005f, 0xf800, 0x5555, 0x5555, 0x012f, 0xfcfc, 0xc0fc, 0x005f, 0x3f00, 0x74f5, 0x0007, 0xa940, 0xa940, 0xa940, 0xa940, 0xa943, 0xa943, 0xa943, 0xa943, 0xf2f4, 0x0002, 0x00a9, 0x00a5, 0x0094, 0x2f44, 0x00f4, 0x80c0, 0x4444, 0x0175, 0x8080, 0xfcf0, 0x5f27, 0x0008, 0xe900, 0xe90f, 0xe90f, 0xe90f, 0xe90f, 0xe90f, 0xe90f, 0xe90f, 0x000f, 0x02f2, 0xc080, 0xc0c0, 0xfce0, 0x005f, 0xfce0, 0x00f7, 0xc0c0, 0x4f57, 0x0007, 0xbe95, 0xbe95, 0xfe95, 0xfe95, 0xfe95, 0xfe95, 0xfe95, 0xfe95, 0x01f2, 0x0100, 0x0303, 0xf2f4, 0x9402, 0x90aa, 0x50aa, 0x40aa, 0x002f, 0x003e, 0x555f, 0x55ff, 0x0075, 0xfff0, 0x017f, 0x7078, 0xf070, 0x7fff, 0x0027, 0xfff0, 0x00f2, 0xffce, 0x015f, 0xf7c6, 0xf7f7, 0xf555, 0x02f2, 0x0100, 0x0301, 0x0707, 0xf24f, 0x0400, 0x04aa, 0x012f, 0x73fe, 0xf7f0, 0xffff, 0xfff2, 0x005f, 0xef08, 0xff75, 0x0001, 0xa550, 0x9550, 0x0275, 0xfcfc, 0xfcfc, 0xfcfc, 0x475f, 0x4007, 0x1655, 0x16fc, 0x16fc, 0x16fc, 0x16fc, 0x16fc, 0x15fc, 0x05fc, 0x4fff, 0x037f, 0xfefc, 0x0139, 0x9f9f, 0x8f9f, 0x2f57, 0x4000, 0x5402, 0xf3f2, 0x5401, 0x50aa, 0x40a9, 0xf3ff, 0x00f2, 0xfef8, 0x005f, 0xfce0, 0xff35, 0x0001, 0x5500, 0xa9aa, 0x005f, 0xce08, 0x5555, 0x00f2, 0xe080, 0xf222, 0xffff, 0x0175, 0xf080, 0xfcfc, 0xff75, 0x5000, 0x5095, 0xff77, 0x00f3, 0xfce0, 0x005f, 0xfce0, 0x5557, 0x00f5, 0xcf08, 0x013f, 0xef08, 0x73ff, 0x005f, 0x0c00, 0x013f, 0xffce, 0x10f7, 0x005f, 0xef08, 0x4f75, 0x0008, 0x0000, 0xfe81, 0xfe81, 0xfe81, 0xfe81, 0xfe81, 0xfe81, 0xfe81, 0xfe81, 0x0075, 0xfce0, 0x027f, 0xfcfe, 0xc3e7, 0xe7c3, 0x5f27, 0x0006, 0x0fe9, 0x0fe9, 0x0fe9, 0x0fe9, 0xffe9, 0xffe9, 0xafe9, 0xfff2, 0x007f, 0xfff0, 0x0057, 0xef0c, 0x00f5, 0xef8c, 0x003f, 0xff8c, 0xf333, 0x0000
};

// [D_08C25660] D_08C2575C Huffman Window 1
u32 D_08c2575c_window1[] = {
	0xedfbb676, 0xdadcde7b, 0xd6cf7daf, 0x73bfef5e, 0x7deaf3d7, 0xcfdbfb7d, 0xf3bb3feb, 0xeffb65ee, 0x00010021
};

// [D_08C25684] D_08C2575C Huffman Window 2
u32 D_08c2575c_window2[] = {
	0x1caaa54a, 0x49494425, 0x20204c81, 0x9554a98a, 0x4051302a, 0x0120226a
};

// [D_08C2569C] D_08C2575C Huffman
struct Huffman D_08c2575c_huffman[] = {
	/* Data */			D_08c2575c_huffmandata,
	/* Size */			0x731,
	/* Count */			0x103,
	/* Window 1 */		D_08c2575c_window1,
	/* Window 2 */		D_08c2575c_window2,
};

// [D_08C256AC] D_08C2575C RLE Data
u8 D_08c2575c_rledata[] = {
	0x1, 0xf, 0x1, 0xf, 0x1c, 0x4, 0x2, 0xe, 0x1, 0x1a, 0x35, 0xd, 0x4, 0xb, 0x48, 0xc, 0xc, 0x4, 0x61, 0xa, 0x15, 0xc, 0x4, 0x3, 0x17, 0x7, 0x17, 0x8, 0x36, 0x13, 0x27, 0xf, 0x38, 0x11, 0x2, 0xf, 0x2, 0x6, 0x30, 0x3, 0x1e, 0xe, 0x1, 0xc, 0x24, 0x4, 0x7, 0x4, 0x6, 0xa, 0x1, 0xe, 0x2, 0xa, 0x29, 0x12, 0xb, 0xf, 0x10, 0x6, 0xb, 0xe, 0x2, 0x8, 0x18, 0x4, 0x5, 0x6, 0x11, 0xe, 0x2, 0x8, 0x18, 0xb, 0x15, 0xa, 0x6, 0x9, 0x6, 0xf, 0x27, 0x3, 0x1d, 0x3, 0x3, 0x4, 0x11, 0x4, 0x11, 0xa, 0x8, 0x9, 0x5b, 0x4, 0x7, 0x9, 0x36, 0xa, 0xa, 0x6, 0x4, 0xc, 0x1e, 0x3, 0x17, 0x8, 0x21, 0x4, 0x2c, 0xa, 0x76, 0xa, 0x6, 0xb, 0x4, 0x5, 0x5, 0x6, 0x41, 0x3, 0x4, 0x3, 0x16, 0x7, 0x15, 0x3, 0x1d, 0x3, 0x1, 0xe, 0x2, 0x8, 0x18, 0xf, 0x1, 0x8, 0x8, 0x4, 0x7, 0x4, 0x1, 0xb, 0x2a, 0xa, 0xd, 0x3, 0x21, 0xc, 0x4, 0x6, 0x1b, 0xe, 0x14, 0x8, 0x5, 0x5, 0x22, 0x8, 0x1, 0xa, 0x6, 0x4, 0x13, 0x8, 0x34, 0x8, 0x4, 0x4, 0x9, 0x3, 0x21, 0x0, 0xe0, 0x0, 0x0, 0x0
};

// [D_08C2575C] D_08C2575C Graphics
struct CompressedGraphics D_08c2575c = {
	/* Huffman Data */		D_08c2575c_huffman,
	/* RLE Data */			D_08c2575c_rledata,
	/* RLE Size */			0xac,
	/* RLE Offset */		0xc00,
	/* Double Compressed */	TRUE,
};

u8 D_08c2576c[12] = {
	0x50, 0x00, 0x20, 0x00, 0x40, 0x00, 0x40, 0x00, 0x78, 0x00, 0x78, 0x00
};

