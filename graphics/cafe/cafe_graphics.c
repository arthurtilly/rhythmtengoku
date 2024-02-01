#include "global.h"
#include "graphics.h"

// // //  D_08CBF0E8  // // //

// [D_08CBEFF4] D_08CBF0E8 Huffman Data
u16 D_08cbf0e8_huffmandata[] = {
	0xff10, 0x0000, 0x5550, 0xf110, 0x001f, 0x1e30, 0xfff1, 0x0400, 0x5104, 0x0010, 0xf010, 0x00f1, 0x07f0, 0x1111, 0x01ff, 0x0310, 0x6060, 0xcc0c, 0x6060, 0x3300, 0x0011, 0x0019, 0x0e00, 0x9f21, 0x5404, 0x4400, 0x40a9, 0x3f82, 0x8faa, 0x8fa0, 0x1f11, 0x0019, 0x7000, 0x9f21, 0x0004, 0x6a15, 0x8211, 0xaa01, 0x0afc, 0x08f2, 0x991f, 0x0000, 0x00f1, 0xde3e, 0xf0f1, 0x5000, 0x4205, 0xff1f, 0x0010, 0x70fc, 0xf1f0, 0x0001, 0x0025, 0x002a, 0x001f, 0x0710, 0x6030, 0xb0b0, 0xb030, 0xc0e0, 0x0600, 0x0d0d, 0x0d0c, 0x0307, 0x7190, 0x0000, 0xe500, 0x14f7, 0x4719, 0x9000, 0x40de, 0x914f, 0xa401, 0x5aff, 0x6fff, 0x5319, 0x0000, 0x40e5, 0x193f, 0x1400, 0x54ea, 0x7f41, 0x4917, 0xa400, 0xa437, 0x9f41, 0x9001, 0x05fc, 0xf1ff, 0x1359, 0x0000, 0x00f9, 0x913f, 0x1400, 0x15fe, 0x9991, 0x0000, 0x0000
};

// [D_08CBF0B8] D_08CBF0E8 Huffman Window 1
u32 D_08cbf0e8_window1[] = {
	0xbdb66d3d, 0x00475147
};

// [D_08CBF0C0] D_08CBF0E8 Huffman Window 2
u32 D_08cbf0e8_window2[] = {
	0x00ffaa85
};

// [D_08CBF0C4] D_08CBF0E8 Huffman
struct Huffman D_08cbf0e8_huffman[] = {
	/* Data */			D_08cbf0e8_huffmandata,
	/* Size */			0x9c,
	/* Count */			0x25,
	/* Window 1 */		D_08cbf0e8_window1,
	/* Window 2 */		D_08cbf0e8_window2,
};

// [D_08CBF0D4] D_08CBF0E8 RLE Data
u8 D_08cbf0e8_rledata[] = {
	0x1, 0x5, 0xb, 0x5, 0xa, 0x9, 0x8, 0x7, 0x29, 0x0, 0xa0, 0xb, 0x5, 0xa, 0x7, 0x40, 0x0, 0xa0, 0x0, 0x0
};

// [D_08CBF0E8] D_08CBF0E8 Graphics
struct CompressedGraphics D_08cbf0e8 = {
	/* Huffman Data */		D_08cbf0e8_huffman,
	/* RLE Data */			D_08cbf0e8_rledata,
	/* RLE Size */			0x10,
	/* RLE Offset */		0x400,
	/* Double Compressed */	TRUE,
};

// // //  D_08CC0C30  // // //

// [D_08CBF0F8] D_08CC0C30 Huffman Data
u16 D_08cc0c30_huffmandata[] = {
	0x78ea, 0x5003, 0x00a5, 0x0050, 0xa5aa, 0xfdaa, 0x88e7, 0x007e, 0x1e1e, 0x777e, 0xeee7, 0x00e8, 0x0300, 0x08ea, 0x5001, 0x00a5, 0x0050, 0x0000, 0x0289, 0xf070, 0x00f3, 0x0f01, 0x8888, 0x00a9, 0xe0fc, 0x0189, 0xf010, 0xf3f1, 0xfe87, 0x4002, 0x5a55, 0x2a55, 0x2a40, 0x0087, 0x80f0, 0x03e7, 0x7070, 0x7070, 0x7070, 0x7070, 0xce87, 0x0002, 0x6a55, 0xbf55, 0xff6a, 0xfcae, 0x1401, 0x54aa, 0x54aa, 0x0078, 0x0700, 0xc8e7, 0x0004, 0x0094, 0x0074, 0x00f4, 0x00f4, 0x00f4, 0xcce7, 0x037e, 0x1e1e, 0x1e1e, 0x1e1e, 0x1e1e, 0xaaaa, 0x0189, 0xf0f0, 0x0307, 0xff98, 0x0000, 0x0054, 0x029a, 0xf030, 0x01f1, 0x7f0f, 0x0089, 0xf070, 0x9888, 0x00e8, 0x70f0, 0x8888, 0x00ea, 0x00f8, 0x003e, 0xf9f6, 0xa38e, 0x0401, 0x55aa, 0x5da0, 0xee88, 0x008a, 0xc0f0, 0x3e8a, 0x0002, 0x9400, 0x54ba, 0x40a9, 0xe888, 0x008a, 0x80e0, 0x019a, 0xf070, 0x0703, 0x3fa9, 0x0000, 0x0050, 0x037a, 0xf8f8, 0xf8f8, 0xf8f8, 0xf8f8, 0xf3ea, 0x0006, 0x0005, 0x005a, 0x05aa, 0x5aaa, 0x0005, 0x005a, 0x05aa, 0x00e3, 0x00c0, 0xa83e, 0x5007, 0x0a55, 0xaa55, 0xff50, 0xfffc, 0xffc1, 0xff15, 0xff0f, 0x3f50, 0x3333, 0x038a, 0xf0c0, 0xc0fc, 0xcff0, 0x0c0f, 0xa7ec, 0x4003, 0x40fa, 0x40fa, 0x40fa, 0x55fa, 0x00a7, 0x0c0c, 0xeca7, 0x5002, 0x5000, 0x03aa, 0x03aa, 0xcccc, 0x007e, 0xfe0e, 0xfce7, 0x540c, 0x0055, 0x00a9, 0x00a9, 0x00a9, 0x0055, 0xa41a, 0xa41a, 0xa41a, 0xa415, 0x5400, 0x9000, 0x90aa, 0x90aa, 0xcccc, 0x00e7, 0xf0fc, 0x008e, 0xfe10, 0x00a8, 0xfe18, 0xa999, 0x008a, 0x0f00, 0x88aa, 0x029a, 0xf030, 0x00f1, 0x0f01, 0x9999, 0xa999, 0x0189, 0xf030, 0xf7f3, 0x018a, 0xf8f8, 0x0080, 0x9999, 0xaa99, 0x0289, 0xf010, 0xf7f0, 0x0300, 0xff98, 0x0000, 0x0054, 0x01e7, 0x8080, 0x8080, 0x7777, 0xe777, 0x003e, 0xe7fe, 0xa8e3, 0x940c, 0x0006, 0x0006, 0x001a, 0x001a, 0x006a, 0x01ab, 0x06af, 0x5abf, 0xff40, 0xff40, 0xff90, 0xff90, 0xffe4, 0xa88e, 0x008a, 0x1030, 0xaaaa, 0x03e7, 0xf0fe, 0xf0f0, 0xf0f0, 0xf0f0, 0x7ace, 0x5407, 0x54a8, 0x54a8, 0x53a8, 0x53a8, 0x53a1, 0x53a1, 0x4fa1, 0xff85, 0x01ce, 0x7f00, 0x7f7f, 0xf7ec, 0x0002, 0xa440, 0xa4aa, 0xa4aa, 0x01e7, 0x1010, 0x1010, 0x00a7, 0xf000, 0xfcea, 0xa406, 0xa400, 0xa400, 0xa400, 0xa900, 0xa900, 0xa900, 0x6a40, 0x038a, 0xf080, 0x80f8, 0x8ff0, 0x080f, 0x05a7, 0xc0c0, 0xc0c0, 0xc0c0, 0xc0c0, 0x0707, 0x0707, 0x7aa9, 0x0097, 0x7070, 0xf7f7, 0x0000, 0x0000, 0x0098, 0xf0fe, 0x7a98, 0x0001, 0x0040, 0xfeaa, 0x00a8, 0xf070, 0x00a9, 0xc0f8, 0x0089, 0x0100, 0xa798, 0x0001, 0xaa54, 0x55aa, 0xaa99, 0x0089, 0xf070, 0xe798, 0x5000, 0xaa00, 0xfce7, 0x0003, 0x5a90, 0x6a40, 0xa900, 0x9400, 0x01e7, 0xe0e0, 0xe0e0, 0x03ec, 0x8080, 0x8080, 0x8080, 0x8080, 0xcae7, 0x0003, 0x5a50, 0xd57f, 0xff1f, 0x7f07, 0x057e, 0x8f8e, 0x8f8f, 0xf7ff, 0xf7f7, 0xf7f7, 0xf7f7, 0xe777, 0x03ce, 0x7f7c, 0x7f7f, 0x607f, 0x6f6f, 0xfce7, 0x0003, 0x0055, 0x00a9, 0x00a9, 0x00a9, 0x00ce, 0xf00e, 0x03ae, 0x7f00, 0x7f7f, 0x7f7f, 0x7f7f, 0xfce7, 0x0003, 0x0054, 0x00a4, 0x00a4, 0x0005, 0xeeec, 0x007e, 0x07f8, 0xeeee, 0xccce, 0x01e7, 0xf0f0, 0xf3f0, 0xf7ec, 0xa402, 0xa455, 0xa455, 0xa455, 0x007e, 0x03f0, 0xfce7, 0x9002, 0x90aa, 0x90aa, 0x90aa, 0xcccc, 0x03ea, 0xc0f0, 0xc0c0, 0xc0c0, 0xc0c0, 0x0078, 0xf0f0, 0x00e7, 0x0808, 0xffe7, 0x4000, 0x4000, 0x0078, 0x0f00, 0xaec7, 0x0007, 0xfe55, 0xfe55, 0xfe55, 0xfe55, 0xfe55, 0xfe55, 0xfe55, 0xfe55, 0x007e, 0xf8f8, 0xa7ec, 0x4004, 0x00a9, 0x15a4, 0x5f90, 0x7f40, 0xff40, 0xccce, 0x007e, 0x1e1e, 0xac7e, 0x540e, 0x5481, 0x14a8, 0x852a, 0x850a, 0xa1ca, 0x55f2, 0x55a1, 0x55a1, 0x55a1, 0x55a1, 0x55a1, 0x55a1, 0x55a1, 0x55a1, 0x5554, 0x009a, 0x0700, 0x9999, 0xaa99, 0x0189, 0x7010, 0xf3f0, 0x8888, 0x029a, 0xf030, 0xf010, 0xf7f0, 0x0098, 0xf0fe, 0x8888, 0x9888, 0x0078, 0xf010, 0xce87, 0x5402, 0x0a55, 0x0b54, 0x0b00, 0x7777, 0x0098, 0xe0fc, 0x8888, 0x00e3, 0x0300, 0xa3e8, 0x5005, 0x00aa, 0x0fa5, 0xff50, 0xff40, 0xff43, 0x0f90, 0xee88, 0x008a, 0xc0f0, 0xfe3a, 0x0000, 0x0a55, 0x05e3, 0xe0c0, 0xc211, 0x75e4, 0x8060, 0x0601, 0xc438, 0xffe3, 0x5000, 0x4500, 0x009a, 0xf030, 0xaaa9, 0x00ea, 0xf010, 0x7777, 0xaaaa, 0x007e, 0x0100, 0x3ae7, 0x0005, 0x0040, 0xa5aa, 0x9faa, 0x7faa, 0xffaa, 0xffa9, 0x00ae, 0x00fe, 0xce73, 0x000f, 0xa955, 0xb955, 0xb955, 0xba55, 0xff95, 0xffe5, 0xffe5, 0xffe5, 0x555b, 0x556b, 0x55bf, 0x56ff, 0x56ff, 0x56ff, 0x56ff, 0x56ff, 0xc7e8, 0x0001, 0x0025, 0x0aa5, 0xa7ec, 0xa401, 0x90fa, 0x40fa, 0xaa77, 0x0087, 0xf0fe, 0xce87, 0x0004, 0x0240, 0x0b00, 0x2f00, 0x2f80, 0x2fe0, 0xcce7, 0x00e7, 0xc080, 0xfce7, 0x0004, 0x00a4, 0x00a9, 0x00a9, 0x00a9, 0x00a9, 0xccce, 0x00ea, 0xf070, 0xaeee, 0x007e, 0x0f00, 0xfaec, 0x0001, 0x00a9, 0x00a9, 0x00ae, 0x080e, 0x007e, 0xf070, 0xffe7, 0x4000, 0x0000, 0x03ea, 0xc0c0, 0xc0c0, 0xc0c0, 0xffc7, 0x029a, 0xf070, 0x00f3, 0x1f03, 0xff89, 0x0000, 0x0015, 0x008a, 0xc0f8, 0x019a, 0xf010, 0xf7f0, 0x0098, 0xe0fc, 0x01a8, 0x1030, 0xf3f0, 0xaaaa, 0x0189, 0xf070, 0xf0f3, 0xfae3, 0x0006, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0x00a9, 0xaaae, 0x07e3, 0x3810, 0x0c1c, 0x060e, 0x0303, 0x4c5e, 0x1e21, 0x0810, 0x0808, 0xa83e, 0x5406, 0x4255, 0x2a55, 0xab50, 0xff0a, 0xff4a, 0xff4a, 0xff4a, 0xe8aa, 0x008a, 0x80c0, 0x7cea, 0x0011, 0x00a9, 0x00a9, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0xa7a4, 0xa706, 0xa706, 0xa901, 0xa901, 0xa901, 0xa901, 0xa901, 0xff01, 0xffa7, 0xffa7, 0xcce7, 0x01e7, 0x80e0, 0x1010, 0xfce7, 0x0004, 0x0001, 0x0006, 0x0006, 0x0006, 0x0006, 0x77ec, 0x00e7, 0x00f0, 0x04fe, 0xf3f0, 0x00fc, 0xcfc0, 0xcfcf, 0xcfcf, 0xf7ef, 0x0000, 0x4055, 0x7eee, 0x028e, 0xf0c0, 0xf8e0, 0xfcff, 0x0078, 0xce08, 0x00e7, 0xfe08, 0xf78e, 0x5400, 0x5540, 0x7888, 0x03e7, 0x3030, 0x3030, 0x3030, 0x3030, 0xf7ef, 0x0001, 0x0555, 0x5aaa, 0x02f7, 0xfefe, 0xfefe, 0xfefe, 0xfef7, 0x5400, 0x5495, 0xefff, 0x037e, 0xf0f0, 0xf8f0, 0xfefc, 0xfefe, 0x7778, 0x02e7, 0x3e0e, 0x3e3e, 0x3e3e, 0xffe7, 0x5400, 0x5405, 0x0078, 0x8000, 0xfe78, 0x0000, 0x5095, 0x00e7, 0xef8e, 0xeeee, 0xe77e, 0x0178, 0x00fe, 0xf8c0, 0xfe78, 0x5400, 0x0255, 0x0178, 0xf0c0, 0xfffe, 0x018e, 0x8000, 0xfef0, 0x7888, 0x018e, 0xf080, 0xfffc, 0x0a7e, 0x1c1c, 0xfc1c, 0xfcfc, 0xfefc, 0x7f78, 0x7f7f, 0x7f7f, 0x7f7f, 0xf3f0, 0xf3f3, 0xf3f3, 0xee77, 0x008e, 0xf8c0, 0x888e, 0x0078, 0xf8c0, 0x008e, 0xf8c0, 0xf78e, 0x5400, 0xa955, 0x7788, 0x00e7, 0xef08, 0xf78e, 0x0000, 0xa955, 0x7888, 0x0ce7, 0xcf8c, 0x3f0f, 0x3030, 0x3030, 0x3030, 0x3030, 0x3030, 0x3030, 0x3030, 0x01f0, 0x0101, 0x0101, 0x0101, 0xff7e, 0x5407, 0xa955, 0xa92a, 0xa92a, 0xa92a, 0xa92a, 0xa92a, 0xa92a, 0xa92a, 0xefff, 0x03e7, 0x3030, 0x3030, 0x3c38, 0x373f, 0x8fe7, 0x0004, 0x0050, 0x40a5, 0x40aa, 0x90aa, 0x0faa, 0x00e7, 0xef8c, 0xeeee, 0xffff, 0x00e7, 0xe080, 0xeeee, 0xeffe, 0x008f, 0xfff0, 0x0078, 0xce08, 0xee77, 0xee77, 0x018e, 0xf080, 0xf8fe, 0x888e, 0x0078, 0xf8e0, 0xe777, 0x7777, 0x008e, 0xf0c0, 0x888e, 0x8888, 0x00e7, 0xe0e0, 0x00c7, 0xc0f8, 0xcc77, 0x00ec, 0xfee0, 0xac7e, 0x4005, 0xffaa, 0xff54, 0xff54, 0xff54, 0xff54, 0x0054, 0xcccc, 0x03ef, 0xf8f8, 0xc0c0, 0xc0c0, 0xc0c0, 0x00c7, 0xe000, 0xfe7c, 0x0001, 0x0055, 0xaa80, 0xcc77, 0x00ec, 0xf880, 0x00c7, 0xfc80, 0x03e7, 0xe0e0, 0xe0e0, 0xe0e0, 0xe0e0, 0x00c7, 0xfec0, 0x00ce, 0x10f0, 0x04fe, 0xf3f0, 0xf3f3, 0xf3f3, 0xf3f3, 0x0003, 0x037e, 0x0c08, 0xfccc, 0xfcfc, 0xfc0c, 0x77ee, 0xffe7, 0x027f, 0x1010, 0x1010, 0x1010, 0xff7f, 0x0000, 0x0001, 0x05ec, 0xf0f0, 0xe0ff, 0xe0fe, 0xcc0f, 0xcc0f, 0x880f, 0xeeee, 0x0078, 0xf8c0, 0xfe78, 0x5400, 0xa5a5, 0x008e, 0xf080, 0xf78e, 0x5000, 0xa555, 0x8888, 0x03e7, 0xf0cc, 0xf0f0, 0xf0f0, 0xf0f0, 0x0087, 0x73f0, 0x7777, 0x7778, 0x00e7, 0xef8e, 0x028e, 0xe080, 0x80fc, 0x00e0, 0x0e7e, 0xcfc0, 0xcfcf, 0xcfcf, 0xce01, 0xcfcf, 0xcfcf, 0xc1c7, 0x80c0, 0x9080, 0x9f9c, 0xc09f, 0xf3f3, 0xf3f3, 0xf3f3, 0xf3f3, 0x777e, 0x7777, 0x07ea, 0x8080, 0x8080, 0x8080, 0x8080, 0x0101, 0x0101, 0x0101, 0x0101, 0x00a7, 0xf0f0, 0xfea7, 0x0004, 0x0a55, 0x2f55, 0xbf55, 0xff55, 0xff56, 0xaaef, 0x037a, 0xc0c0, 0xc0c0, 0xc0c0, 0xc0c0, 0x00ed, 0xc0c0, 0xbecd, 0x0001, 0x0090, 0x009b, 0xcfeb, 0xfebd, 0x4001, 0x40b9, 0x50bb, 0xe7bf, 0x0400, 0xfaaa, 0xcde7, 0x0006, 0x0090, 0x0090, 0x0090, 0x0090, 0x0094, 0x0094, 0x7594, 0x7eee, 0x01ce, 0x0800, 0x0f08, 0xfbfe, 0x1001, 0x1000, 0x9502, 0xeebb, 0x00de, 0x003c, 0x00ce, 0xc448, 0xffec, 0x4001, 0x5515, 0xaaaa, 0x03e7, 0xf0f0, 0xf0f0, 0xf0f0, 0xf0f0, 0xf7ec, 0x4006, 0x40aa, 0x40aa, 0x40aa, 0x40aa, 0x40aa, 0x40aa, 0x40aa, 0x00a7, 0x0c00, 0xeda7, 0x5006, 0x5000, 0x5002, 0x500a, 0x502a, 0x502a, 0x502a, 0xd555, 0xf3ea, 0x0002, 0x0094, 0x40a9, 0x94aa, 0x3333, 0x01d7, 0xe0e0, 0xf8f8, 0x8ed7, 0x0004, 0xf855, 0xe07f, 0xe07f, 0xe0ff, 0xe0cf, 0xae78, 0x1000, 0x96ba, 0xf7de, 0x5400, 0x5528, 0x007e, 0xf7f0, 0x8de7, 0x4007, 0x07fa, 0x07fe, 0x01fe, 0x01cf, 0x01cf, 0x07c1, 0x0705, 0x0715, 0x00bd, 0x3010, 0xbe8d, 0x4002, 0xbffe, 0x8fc2, 0x8002, 0xf7a8, 0x5000, 0x54a9, 0x027a, 0x0e0e, 0x0e0e, 0x0e0e, 0x777a, 0xf8e3, 0x5000, 0x1599, 0x008e, 0xff7e, 0xe7a8, 0x5401, 0x5505, 0xeaaa, 0x3f7e, 0x0005, 0xaa81, 0xaaa8, 0x1555, 0x8555, 0xa155, 0xc03f, 0x008e, 0xff78, 0x3ea8, 0x400a, 0x5505, 0x5595, 0x95e9, 0xeafe, 0x55ff, 0x5aa5, 0x6ffa, 0x6fff, 0x5aff, 0x55bf, 0x556f, 0x3eea, 0x00e3, 0x0010, 0xf8e3, 0x5001, 0xa500, 0xaa54, 0x888e, 0x00a8, 0xef0c, 0xf3ea, 0x0001, 0x0050, 0x50a5, 0x00e3, 0x0030, 0xc8e3, 0x4001, 0x9400, 0xa950, 0xd7ec, 0x4010, 0x90aa, 0x90aa, 0x90aa, 0x90aa, 0x90aa, 0x90aa, 0x90aa, 0xaaaa, 0xaa06, 0xaa06, 0xaa01, 0xaa01, 0xaa01, 0xaa01, 0xaa01, 0xf501, 0xfdbf, 0x007d, 0x0c08, 0xfe7d, 0x5003, 0x5800, 0x5a00, 0x5a00, 0x5a00, 0x063e, 0x2c36, 0x586c, 0x31d9, 0xfff3, 0x7e7e, 0xfefe, 0xfefe, 0xf3e8, 0xa401, 0xa4aa, 0xffaa, 0xdfeb, 0x5005, 0x52aa, 0x52aa, 0x56aa, 0xf6aa, 0xf6aa, 0xf6aa, 0xdef7, 0x4008, 0x00f9, 0x00f8, 0x00fa, 0x80fa, 0x80fe, 0xa0fe, 0xa0fe, 0xa8ff, 0x55ff, 0xbd7f, 0x4006, 0x0c3a, 0x003a, 0x003a, 0x003e, 0x000e, 0x000e, 0x000e, 0xffbd, 0x003f, 0xfff0, 0xf8e3, 0x5001, 0xa540, 0xaa94, 0x888e, 0x00a8, 0xef8c, 0xfe3a, 0x0001, 0x0000, 0xa025, 0x013e, 0xfdc6, 0x3ffe, 0xa8e3, 0x0002, 0x50a5, 0xa5aa, 0xa5ea, 0x00a8, 0x8e08, 0xaf8a, 0x0000, 0x0001, 0x033e, 0x07fe, 0x7ff8, 0xdf9f, 0xbfdf, 0xfa7d, 0x5002, 0x50a5, 0x54a5, 0x54a5, 0x01a7, 0x0c0c, 0x0c0c, 0xaa77, 0x00d7, 0xe0f0, 0xfd7e, 0x5401, 0x54a9, 0x40a9, 0x00ed, 0x70f0, 0xf7ed, 0x0000, 0x8005, 0x033e, 0xff00, 0x9f7f, 0xf7ef, 0x1797, 0xf3ea, 0x0004, 0x4054, 0x90a9, 0xa4aa, 0xa4aa, 0xa4aa, 0x00e3, 0x1010, 0xaef3, 0x0007, 0xf955, 0xf955, 0xe555, 0xe555, 0xe555, 0xe555, 0xe555, 0xe555, 0x009f, 0xd1c0, 0xe7f9, 0x5407, 0x5eaa, 0x57aa, 0x57aa, 0x57aa, 0x57aa, 0x57aa, 0x07aa, 0x0eaa, 0x057a, 0xe0e0, 0xe0e0, 0xe0e0, 0xe0e0, 0xe0e0, 0xe0e0, 0x8e7a, 0x0004, 0x0254, 0x0254, 0xea54, 0x0054, 0x8080, 0xf3ea, 0x9000, 0x9091, 0x3eae, 0x037e, 0x18f0, 0xf8f8, 0xf8f8, 0xf8f8, 0x7eee, 0x7777, 0x04ce, 0xdfc0, 0xdfdf, 0xd0df, 0xdbd3, 0x0bdb, 0xf7ce, 0x4005, 0x0200, 0x0250, 0x0250, 0x0250, 0x0250, 0x0250, 0x00ce, 0x0c0c, 0xf7ce, 0x0003, 0x00a1, 0x00a1, 0x00a1, 0x00a1, 0x77ec, 0x01ce, 0xfef0, 0x8efe, 0xccce, 0x007e, 0x81f0, 0xeee7, 0x00ce, 0x07f0, 0xfce7, 0x5002, 0x0055, 0x0090, 0x0090, 0xce77, 0x017e, 0x8f80, 0x080f, 0x00ec, 0xff90, 0x01d8, 0xe1c0, 0xffe7, 0x8ecd, 0x0005, 0x9555, 0xe555, 0xf955, 0xfe55, 0xff95, 0xd796, 0xd8ea, 0x0005, 0x0005, 0x001a, 0x001a, 0x006a, 0x01aa, 0x01ab, 0x07a7, 0x3f00, 0x3f3f, 0x3f3f, 0x3f3f, 0x0f00, 0x0f00, 0x0f0f, 0x0f0f, 0xe37a, 0x0000, 0x0055, 0x78e3, 0x4004, 0x40fe, 0x40fe, 0x40fe, 0x94fe, 0xa9fe, 0xfa78, 0x5401, 0x5680, 0x56a0, 0x03e3, 0x2000, 0x0332, 0xf420, 0xb0a6, 0xfc7e, 0x0006, 0x2a55, 0x2a55, 0x2a55, 0x2a55, 0x2a55, 0x2a55, 0x2a55, 0x00e7, 0x0e00, 0xfce7, 0xa405, 0xa400, 0xa400, 0xa400, 0xa400, 0xa400, 0xa400, 0x00ce, 0x0f00, 0x00ae, 0xf7f0, 0xeaaa, 0x00ce, 0x1f00, 0xcccc, 0x00ae, 0xfe0e, 0x8dae, 0x5400, 0xaa55, 0xdc8e, 0x4001, 0x4069, 0x40d5, 0xe7d8, 0x4004, 0x500e, 0x514e, 0x514e, 0x514e, 0x510e, 0xaaaa, 0xeaaa, 0x007e, 0xf010, 0xae8d, 0x5403, 0x50fe, 0x50a9, 0x50a9, 0x10a9, 0xd7e8, 0x9002, 0x90cf, 0x90cf, 0x900f, 0x037e, 0xf0f0, 0xf0f0, 0xf0f0, 0xf0f0, 0x00ae, 0xf3f0, 0x73ea, 0xa406, 0xa900, 0xa900, 0xaa50, 0xaaa5, 0x5400, 0xa940, 0x0fff, 0x01ae, 0xc0c0, 0xc0c0, 0x00a7, 0xc0c0, 0xcea7, 0x0002, 0x5550, 0x55f9, 0x55f9, 0xccea, 0x01ec, 0x00e0, 0xf880, 0xffae, 0x0000, 0x5500, 0x03ec, 0x3e80, 0xfe32, 0x0808, 0xff08, 0xeccc, 0xeeee, 0x00ca, 0xfcc0, 0xf7ef, 0x0006, 0x00a9, 0x00a9, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0x7eff, 0x01a7, 0xc0c0, 0xc0c0, 0x7777, 0xaa77, 0x00c7, 0x0fe0, 0xfe9c, 0x0003, 0xfea5, 0xfea9, 0xfe55, 0xfea5, 0x9f8e, 0x5005, 0x55a1, 0x55a1, 0x55a1, 0xff85, 0x0f03, 0x4054, 0x9ec8, 0x0007, 0xfaa9, 0xfea5, 0xfea5, 0xffa5, 0xffa5, 0xffe5, 0xffea, 0xffa5, 0x0cce, 0xf4f4, 0x10f7, 0x1010, 0x00f0, 0x9f9f, 0xc09f, 0xf030, 0xd070, 0x00f0, 0x1bf0, 0x3b03, 0x0202, 0x0302, 0x7afe, 0x0004, 0x5500, 0x55f8, 0x55f1, 0x55f1, 0x55c5, 0x7eff, 0x01ef, 0x8080, 0x1080, 0x79ef, 0x0009, 0x0005, 0x0016, 0x001a, 0x005a, 0x067f, 0x1a7f, 0x5a9f, 0x6aa7, 0xaaa9, 0x0017, 0xfee7, 0x02ef, 0x7070, 0x7070, 0xf070, 0xfe7f, 0x0000, 0x9555, 0x018e, 0xf8c0, 0xfffe, 0xeeee, 0x88ee, 0x01ec, 0x00fc, 0xfcc0, 0x7aef, 0x0007, 0xaa40, 0xaafd, 0xaafd, 0xaafd, 0xaafd, 0xaafd, 0xaafd, 0xaafd, 0x777e, 0x0078, 0xf080, 0x7788, 0x00e7, 0xfff0, 0x888e, 0x8eee, 0x0078, 0xe080, 0x7fe8, 0x0002, 0x0090, 0xfc9f, 0xff9f, 0xfe77, 0x01e7, 0x8080, 0x8080, 0xfae7, 0x0003, 0x0155, 0x01aa, 0x01aa, 0x01aa, 0xfcef, 0x0001, 0x8090, 0x55aa, 0x00cf, 0xfec0, 0x00ec, 0x0fcc, 0xeeec, 0xeeec, 0x01fe, 0xf0f0, 0xf0f0, 0xeeee, 0xcccc, 0x02e7, 0x8080, 0x8080, 0x8080, 0x00c7, 0xfff8, 0x02e7, 0xf0f0, 0xf0f0, 0xf0f0, 0xdce7, 0x0003, 0x0055, 0x54a5, 0x54ff, 0x54ff, 0xddde, 0x00e7, 0xfcfc, 0xe777, 0xeeee, 0x00f7, 0xfc10, 0xe7fb, 0x5000, 0x5ca5, 0x00ef, 0x3030, 0xc7ef, 0x000b, 0x0019, 0x001a, 0x001a, 0x001a, 0xaa9f, 0xaa9f, 0xaa9f, 0xaa9f, 0xaa9f, 0xaa9f, 0xaa9f, 0xaa9f, 0x02ea, 0x8080, 0x8080, 0x8080, 0x00ce, 0xff80, 0x00a8, 0xfef0, 0x3cae, 0x0003, 0xaa50, 0xaa12, 0xaa12, 0x0312, 0x00e8, 0x0010, 0x008a, 0x1030, 0x01ea, 0x0808, 0x0808, 0x3cea, 0x5007, 0x9000, 0x9000, 0x9000, 0x5500, 0xaa05, 0xaa06, 0xff06, 0xff7f, 0xa8e3, 0x9003, 0xa400, 0xa400, 0xe900, 0xfa55, 0xf7ed, 0x0000, 0x40a5, 0x017e, 0x0e0c, 0x8f0e, 0xdef7, 0x0001, 0xf954, 0xe955, 0x00ef, 0xe0e0, 0x87ef, 0x0002, 0x0054, 0x0064, 0x00a4, 0x77ef, 0xa3e8, 0xa406, 0x93aa, 0x93aa, 0x4faa, 0x4faa, 0x0faa, 0x3fa9, 0xff94, 0xe88a, 0x39e7, 0x0002, 0x0090, 0x0090, 0x0040, 0xa8e3, 0x9006, 0x40ea, 0x01a5, 0x0490, 0x0190, 0x0090, 0x54a5, 0xa9ea, 0xaa88, 0x03e3, 0x8140, 0x0101, 0x38c0, 0xf007, 0x008a, 0x1010, 0xaaaa, 0xaaa8, 0x03ea, 0x1010, 0x1010, 0x1010, 0xf010, 0xfc7e, 0x0007, 0xa855, 0xa855, 0xa855, 0xa855, 0xa855, 0xa855, 0xa855, 0xa855, 0x01ef, 0x8080, 0x8080, 0x009f, 0xb390, 0x7ef9, 0x5005, 0x5000, 0x5002, 0x6402, 0x6a0b, 0x56af, 0x556f, 0x7fea, 0x000b, 0x0005, 0x005a, 0x01aa, 0x06aa, 0xf6aa, 0xf6aa, 0xf6aa, 0xf6aa, 0xf6aa, 0xfdaa, 0xfdaa, 0xfdaa, 0x008a, 0xc0e0, 0xfe7a, 0x0007, 0xffe5, 0xffe5, 0xffe5, 0xffe5, 0xffe5, 0xffe5, 0xffe5, 0xffe9, 0xfaec, 0x0006, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0x15a4, 0x10a4, 0xaaec, 0x03ec, 0x8080, 0x8080, 0x83bf, 0x0bfb, 0x017a, 0xe0e0, 0xe0e0, 0x97ae, 0x4001, 0x45a9, 0x4429, 0x9e7a, 0xaeec, 0x9e7a, 0x01ea, 0x8f80, 0x8c80, 0xccea, 0x03ce, 0x9f80, 0x9f9f, 0x9f9f, 0x9f9f, 0x01ea, 0x8080, 0xe080, 0xfcea, 0x0002, 0x00a4, 0x00a4, 0x00a4, 0xccea, 0x00a8, 0xe0e0, 0xaaaa, 0x00ec, 0x20e0, 0xface, 0x5001, 0x5551, 0x5521, 0xeaec, 0x02ec, 0x0ff8, 0x0808, 0x0808, 0xffee, 0xffff, 0x007a, 0xc0c0, 0xfe7a, 0x0007, 0x0250, 0x0b50, 0x2f50, 0xbf50, 0xff50, 0xff52, 0xff2f, 0xff2f, 0xefff, 0x007f, 0xfff0, 0xafe7, 0x4006, 0x9000, 0xa400, 0xa400, 0xa400, 0xa400, 0xa500, 0xfd55, 0xfaec, 0x0005, 0x00a9, 0x55a9, 0x00a5, 0x00a4, 0x00a4, 0x00a4, 0xaaec, 0x03ce, 0xfe00, 0x1efe, 0x7f00, 0x7f7f, 0xf7ec, 0x9002, 0x90aa, 0x95aa, 0x00aa, 0xeeec, 0x017e, 0xf8e0, 0xf8f8, 0xfc7e, 0x4000, 0xaa55, 0xeecc, 0x017e, 0xf1c0, 0xf1f1, 0xfce7, 0x5404, 0xa900, 0xa900, 0xa900, 0xa900, 0x5500, 0x01c7, 0x80f0, 0x0fff, 0xfec7, 0x4000, 0x5540, 0xeeee, 0x00c7, 0xfec0, 0x03ec, 0xfcfe, 0xfcfc, 0xfcfc, 0xfcff, 0xffe9, 0x0000, 0x05a4, 0xffe9, 0x00fe, 0xc0c0, 0xff8e, 0x5002, 0x5585, 0x5585, 0x5585, 0xfee8, 0x008e, 0xf8e0, 0x00e9, 0x0100, 0xf9e7, 0xa401, 0x90aa, 0x406a, 0xe99e, 0x00e7, 0xc1e0, 0xa7e9, 0xa400, 0xffaa, 0xee7a, 0x017a, 0xe0e0, 0xe0e0, 0xf9ea, 0x0002, 0x0054, 0x40a9, 0xf6aa, 0x08ef, 0x1010, 0x1030, 0x4020, 0x0080, 0x0401, 0x0804, 0x0201, 0x0402, 0x0804, 0x9aef, 0x4006, 0x4000, 0xffda, 0xffda, 0xff6a, 0xff6a, 0xfd95, 0x569a, 0xc7ae, 0x4400, 0x43a9, 0xfe7a, 0x5403, 0xffe5, 0xffe5, 0xff95, 0xfeaa, 0x7fe9, 0x0005, 0x00a9, 0x00a5, 0x00a4, 0xf4a4, 0x50ff, 0x00ff, 0x7eee, 0x00e9, 0x0080, 0xf79e, 0x5004, 0x0a55, 0xaa55, 0xaa50, 0x000a, 0xfff0, 0x027a, 0xf8f8, 0xf8f8, 0xf8f8, 0xfe7a, 0x4000, 0x4255, 0x00e7, 0x0708, 0xa7ef, 0x4001, 0xffa5, 0x7ff5, 0x7ae9, 0x9001, 0x401a, 0x0006, 0xfce7, 0x0005, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0xcce7, 0x04ce, 0x6f00, 0x6f6f, 0x6f6f, 0x6f6f, 0x0f60, 0xf7ae, 0x0002, 0xc094, 0xff14, 0xffc4, 0xffea, 0x00ef, 0x1010, 0xf7ef, 0x0001, 0x0090, 0x0040, 0x019e, 0xfefe, 0xf7f7, 0x79ae, 0x4001, 0x282a, 0x0f2a, 0x00a9, 0x00c0, 0xf8e9, 0x0001, 0x2a40, 0xaa40, 0xe988, 0x00e8, 0x8080, 0x7777, 0x9e77, 0x009f, 0x7c00, 0xf7e9, 0x0007, 0xdaa9, 0xf6a9, 0xf6a9, 0x36a9, 0x36a9, 0x36aa, 0x1aaa, 0x1aaa, 0x00ef, 0x4020, 0xae9f, 0x400d, 0x4020, 0x4121, 0x5121, 0x5121, 0x5521, 0xbf21, 0xbf55, 0xbf55, 0xbf55, 0x6f55, 0x6f55, 0x6f95, 0x6f95, 0x0495, 0x9f7e, 0x5002, 0x54ae, 0x50ae, 0x0aaf, 0x00f9, 0xfefe, 0x00e9, 0x80c0, 0xf79e, 0x540a, 0x5255, 0x0a00, 0xf0ff, 0x55ff, 0x5505, 0x5521, 0x15a8, 0x85aa, 0xa1aa, 0xa1aa, 0xa82a, 0xfe77, 0x039f, 0xfefe, 0x7efe, 0xbc7c, 0x80c0, 0xafe7, 0x0000, 0x05a5, 0xffea, 0xeee9, 0x04fe, 0x97e0, 0xff7f, 0xfdfe, 0xfcfe, 0xeff3, 0xffff, 0xffef, 0x00e7, 0x8080, 0xa97e, 0x540d, 0x5255, 0x0a55, 0xaa55, 0xaa54, 0xaa42, 0xa32a, 0xa32a, 0xa32a, 0xa3aa, 0x8faa, 0x3faa, 0xffaa, 0xffa8, 0xaaa3, 0xf9ef, 0x4002, 0x40aa, 0x402a, 0x000a, 0x00e9, 0x1010, 0xfe79, 0x0001, 0x0009, 0xc025, 0xee77, 0x00fe, 0x0fce, 0x9ae7, 0x0009, 0x9555, 0x0055, 0x00d0, 0x00d0, 0x00d0, 0x00d0, 0x00d0, 0x00f4, 0x00f4, 0x7ff4, 0x9fe7, 0x9006, 0x907f, 0x907f, 0xa47f, 0xa47f, 0xa47f, 0xa47f, 0x907f, 0x019f, 0x8030, 0xe381, 0xf999, 0x9ea8, 0x5006, 0x54fe, 0x55fe, 0x55fe, 0x55fe, 0x55fe, 0x55fe, 0x55fe, 0x999e, 0x019f, 0x80c0, 0x8080, 0x00fe, 0xfefe, 0x9fe7, 0xa408, 0x50aa, 0x7faa, 0x7f90, 0x7f90, 0x7f40, 0x7f40, 0x7f00, 0xff01, 0xff05, 0x7ee9, 0x029f, 0x3838, 0x3c38, 0x0c1c, 0x7e9f, 0x0400, 0x01a0, 0x7eff, 0x01f9, 0xc080, 0x01c0, 0xf9e7, 0x0002, 0x00a4, 0x14a4, 0x69a4, 0x99e7, 0x019e, 0xcfce, 0xbf9f, 0x78ea, 0x4004, 0x40fe, 0x40fe, 0x40fe, 0x94fe, 0xa97e, 0x9e7a, 0x9ea8, 0x4000, 0x50f9, 0x999e, 0x00bd, 0x3010, 0xeb8d, 0x4003, 0xeaa8, 0xeaab, 0xca83, 0xc003, 0xd8e7, 0x9007, 0x90ea, 0x90aa, 0x908a, 0x908a, 0x9082, 0xa442, 0x2440, 0xaf54, 0xdae8, 0xa402, 0x540f, 0x540f, 0x50cf, 0x7e8d, 0x100a, 0x10e5, 0x50e5, 0x50e5, 0x6af9, 0x6a15, 0x5a15, 0x1b05, 0x1b04, 0x1b04, 0x5b04, 0x5b04, 0xd888, 0x00d7, 0xe0e0, 0xcd7e, 0x9403, 0x94aa, 0x54aa, 0x54aa, 0x30aa, 0xf7e8, 0x9000, 0x9555, 0x00ce, 0x0808, 0xcccc, 0x00fe, 0x4040, 0xffbe, 0x0400, 0x0520, 0x00a7, 0xc0c0, 0xfa7d, 0x5404, 0x50a5, 0x40a5, 0x40a5, 0x40a5, 0x50a5, 0xaa77, 0x00de, 0x003c, 0x00ce, 0xc448, 0x87ec, 0x4000, 0x5515, 0xe8e7, 0x01ce, 0x0202, 0x0406, 0xdcfe, 0x9002, 0x1000, 0x10fc, 0x10ff, 0x02e7, 0x8080, 0xc0c0, 0xe0c0, 0x7e8d, 0x5406, 0x54f9, 0x75fe, 0x75fe, 0x7dfe, 0x7efe, 0xfaf9, 0xeaf9, 0x77e8, 0x00ec, 0x8000, 0xf8ec, 0x0004, 0x0090, 0x00a4, 0x40a9, 0x40aa, 0x9582, 0x8cc8, 0x00ea, 0x0300, 0xdae8, 0x9005, 0x90aa, 0x40aa, 0x00aa, 0x03a9, 0x03a9, 0x55a9, 0xeeee, 0x00d8, 0xe1c0, 0xfb8d, 0x4001, 0x0001, 0xfffa, 0xffeb, 0x00ef, 0x3030, 0xd7ef, 0x0003, 0x0019, 0x001a, 0x001a, 0x0016, 0xeddd, 0x017e, 0x0e0c, 0x8f0e, 0xdef7, 0x0000, 0xe955, 0x00ef, 0xe0e0, 0xd7ef, 0x0005, 0x0054, 0x0064, 0x00a9, 0x00a9, 0xffa9, 0xff07, 0x7fbd, 0xa405, 0xa400, 0xa900, 0xa900, 0xa940, 0xaa40, 0xaa50, 0xfde7, 0x0006, 0x0054, 0x0094, 0x0094, 0x0094, 0x0094, 0x0094, 0x0094, 0xdee7, 0xdebf, 0x4006, 0x00a5, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0xeeef, 0xfa7d, 0x5001, 0x54a5, 0x54a5, 0x01a7, 0x0c0c, 0x0c0c, 0xdea7, 0x5004, 0x5000, 0xfc02, 0xfc0a, 0xfc0a, 0xff0a, 0x7eee, 0x00ed, 0x3070, 0xfe7d, 0x4008, 0x4002, 0xabd5, 0xabfd, 0x2bff, 0x0bff, 0x0bff, 0x0bff, 0x0bff, 0x0bff, 0x007f, 0xff80, 0xff7f, 0x5400, 0x0005, 0x017d, 0xc080, 0xe0c0, 0xb7ed, 0x0002, 0x00a9, 0x00a5, 0x00a5, 0x77ee, 0x7fbd, 0x9007, 0x90aa, 0x90fa, 0x94aa, 0xa4aa, 0xa4aa, 0xa4aa, 0xa4aa, 0xffaa, 0x07de, 0x5006, 0x50aa, 0x50aa, 0x542a, 0x542a, 0x540a, 0x550a, 0x5502, 0xfe10, 0xa40e, 0xa4aa, 0xa4aa, 0xa4aa, 0xa4aa, 0xa4aa, 0xa4aa, 0xa4aa, 0x00aa, 0x5555, 0x00aa, 0x4054, 0x50a5, 0x90aa, 0x94aa, 0xa4aa, 0x001e, 0x0ff0, 0xfe10, 0xa401, 0x50aa, 0x00aa, 0xee11, 0x0010, 0x00c0, 0xfe10, 0x0002, 0x0055, 0x00a4, 0x0050, 0x00e1, 0xfefc, 0xc9ea, 0x9006, 0x40aa, 0x40aa, 0x40aa, 0x55aa, 0x50aa, 0x51a9, 0x57a9, 0x99ee, 0x00ef, 0x3010, 0xf9ef, 0x0001, 0x0015, 0x001a, 0xeee9, 0x00ef, 0xf0f0, 0xfeee, 0x00e9, 0x82ce, 0xffe9, 0x0000, 0x50a9, 0x00fe, 0x0e0e, 0xf8fe, 0x5403, 0x52a0, 0x52aa, 0x52aa, 0x4aaa, 0x00e9, 0x20c0, 0xe999, 0x008e, 0xf8e0, 0xf9ec, 0x5400, 0x50a5, 0x9eee, 0x02ec, 0xfcfc, 0xfcfc, 0xfcff, 0x00ef, 0x2020, 0xf9ef, 0x0004, 0x8010, 0x8010, 0x8212, 0xa212, 0xa212, 0xfef9, 0x009f, 0xf7c0, 0x7fe9, 0x9006, 0x9400, 0x9500, 0xa740, 0x27d0, 0x27f4, 0x27f4, 0x1ffd, 0xf9ea, 0x0009, 0x00a9, 0x00a9, 0x00a9, 0x00a9, 0x00a9, 0x00a9, 0x00a9, 0xaaa9, 0xaa7e, 0xaa7f, 0xefff, 0x00f9, 0xfcf8, 0x00e9, 0x1010, 0xfe79, 0x0003, 0x0009, 0xfc25, 0xffea, 0x2556, 0x017e, 0x7e7e, 0xfefe, 0x78ea, 0x4006, 0x40fe, 0x40fe, 0x40fe, 0x94fe, 0xa9fe, 0x2afe, 0x0afc, 0x777a, 0xf7e9, 0x4006, 0x40da, 0x40da, 0x40da, 0x406a, 0x406a, 0x40aa, 0x40aa, 0x7777, 0x049f, 0x7f7c, 0x3f3f, 0x00fe, 0x8080, 0x0080, 0x00fe, 0xfefe, 0xffe7, 0x029f, 0x8380, 0xc383, 0xc0c1, 0xf7ef, 0x0003, 0x5a50, 0xaa00, 0x5a05, 0x0605, 0x01ef, 0x6038, 0x0080, 0x79fe, 0x5403, 0xc559, 0xf059, 0xf059, 0x055a, 0x00f9, 0xfefe, 0xf7e9, 0x4004, 0x40aa, 0x40aa, 0x40aa, 0x40aa, 0x5055, 0x00ef, 0x0030, 0x9e7f, 0x0003, 0xf955, 0xf955, 0xf969, 0xf9be, 0x019e, 0xcfce, 0x3fdf, 0xf7a8, 0x5000, 0x54a9, 0x007a, 0x0e0e, 0x9e7a, 0x5403, 0x9400, 0xe400, 0xf800, 0xfe00, 0xffe9, 0x0000, 0x05a9, 0x00fe, 0x0e0e, 0xa8fe, 0x5403, 0x52a0, 0x52aa, 0x52aa, 0x4aaa, 0xf9ea, 0xa406, 0xa46a, 0xa46a, 0xa4aa, 0x90aa, 0x90aa, 0x40aa, 0x40aa, 0x00fe, 0xfcf0, 0x7777, 0x029e, 0xf700, 0xf7f7, 0xf7f7, 0xe999, 0x01fe, 0xfb00, 0xf7f7, 0xa9fe, 0x0003, 0x2a55, 0xaa54, 0xaa54, 0xaa54, 0x7afe, 0x5403, 0x3fea, 0x40ea, 0x552a, 0x554a, 0xffe9, 0x00ef, 0x1010, 0xffef, 0x0000, 0x0001, 0x009a, 0xf070, 0x8ea9, 0x5002, 0x2a80, 0xa0a3, 0x802b, 0x99e7, 0x9999, 0x00e7, 0xc070, 0xeeee, 0x009f, 0x8180, 0xff99, 0x01fe, 0xfefe, 0xfefe, 0x019e, 0xfefe, 0xf7f7, 0x7f9e, 0x0001, 0xa015, 0xa315, 0x01e7, 0x8080, 0x8080, 0xf9e7, 0x0004, 0x0040, 0x7f90, 0xff05, 0xff1f, 0xff7f, 0x00e9, 0x1010, 0xfe79, 0x0003, 0x0009, 0xc025, 0xfe95, 0xffe5, 0x00ea, 0x3010, 0x9efa, 0x0004, 0x00a5, 0x0255, 0x0955, 0x2f8a, 0x2faf, 0x00e9, 0x0090, 0x7a9e, 0x5410, 0x5255, 0x4a55, 0x2a55, 0xaa55, 0xaa0a, 0xaa52, 0xaa52, 0xaa4a, 0xaa2a, 0x0553, 0x0553, 0xc553, 0xc553, 0xc553, 0xf153, 0xf154, 0xf154, 0x007a, 0xe0e0, 0x9e7a, 0x0004, 0x0254, 0x0b54, 0x0b54, 0x0254, 0x0254, 0xfe7a, 0x5401, 0xfff9, 0xfffe, 0xf79e, 0x5406, 0x54a1, 0x54a9, 0x5429, 0x54ca, 0x54ca, 0x94f2, 0x96f2, 0x7afe, 0x5000, 0xfea8, 0x7ae9, 0xa40a, 0x90fe, 0x90fe, 0x40fe, 0x00fe, 0x00fd, 0x01f4, 0xaa50, 0xaa01, 0xaa01, 0xaa06, 0xaa06, 0x9eaa, 0x00ea, 0x8080, 0xf8ea, 0x0001, 0x5000, 0x1599, 0x008e, 0xff7e, 0xe7a8, 0x5401, 0x5505, 0xffaa, 0xffe7, 0x5002, 0xa5aa, 0x00aa, 0x0040, 0xfe77, 0x00a7, 0xf0f0, 0xfea7, 0x0006, 0x0255, 0x2b55, 0xbf55, 0xff55, 0xff56, 0xff5b, 0xff5b, 0x9aef, 0x9006, 0x90c0, 0x93c0, 0x93c3, 0x93f3, 0x93f3, 0x93ff, 0xa5aa, 0x9fe7, 0x0006, 0x0094, 0x40a5, 0xd0a7, 0xd0e7, 0xd0e7, 0xd0e7, 0xf4d7, 0xcae9, 0x1007, 0x4006, 0x0006, 0x001a, 0x001a, 0x0055, 0x005a, 0x0159, 0x0557, 0x00ef, 0x3010, 0x79ef, 0x0004, 0x0015, 0x001a, 0x0066, 0x0069, 0x15fd, 0x009e, 0x7320, 0xa7e9, 0x0014, 0x6a41, 0x6a41, 0xaa41, 0xaa40, 0xaa40, 0xaa40, 0xa900, 0xa900, 0x2400, 0x0900, 0x0900, 0x0900, 0x2900, 0x2500, 0x2400, 0x2401, 0x07ff, 0x07ff, 0x07ff, 0x1fff, 0x1fff, 0x00ea, 0x8080, 0xfe7a, 0x0002, 0x5500, 0x56e5, 0x56f9, 0x9fe7, 0xa404, 0xe407, 0xe417, 0xe417, 0xd077, 0xd07d, 0x9e7a, 0x0011, 0x00a4, 0x00f8, 0x82fe, 0xeaf6, 0xebdb, 0xebdb, 0xefdb, 0xfedb, 0xfe5b, 0xfe6b, 0xf86f, 0xf8af, 0xf8bf, 0xe0bf, 0xe0bf, 0xffff, 0xff5b, 0xfda5, 0x9fe7, 0x9404, 0xa43c, 0xa53c, 0xa530, 0xa531, 0xa541, 0x00ea, 0x6000, 0x09ea, 0x0005, 0x4069, 0x40aa, 0x00aa, 0x00a9, 0x00a9, 0xffa9
};

// [D_08CC08B4] D_08CC0C30 Huffman Window 1
u32 D_08cc0c30_window1[] = {
	0xebd7fd65, 0x6576f7f6, 0xdfefface, 0xeff797df, 0x7e5f6b34, 0xdb6fff5b, 0x6f3ebdee, 0x253276dd, 0x37b9fddb, 0xeff6eee7, 0xbffdbf7f, 0xe5fff7fd, 0x7afffed5, 0x6fcb3bfe, 0xbc9f6567, 0xcdaffffc, 0xb2d7477f, 0xf6eddedb, 0xfcbf6ff7, 0xdbaf7c9b, 0xbddef7d6, 0xbf75fb6d, 0x776fadef, 0xaffffb5f, 0xbfffea7b, 0x001fffef
};

// [D_08CC091C] D_08CC0C30 Huffman Window 2
u32 D_08cc0c30_window2[] = {
	0xa9412c89, 0xa252402a, 0x55149268, 0x24ae8a90, 0x94a89541, 0x09002a80, 0x52f20290, 0xf5aad6bb, 0x14d552aa, 0xa4dc2bb1, 0x40d12ae4, 0xd91eb88a, 0x94aad244, 0x6955d5ea, 0xbdaa5aca, 0x5f555529, 0x3494aaf5, 0x5636aa8d, 0xaf6beaa8, 0x0000005e
};

// [D_08CC096C] D_08CC0C30 Huffman
struct Huffman D_08cc0c30_huffman[] = {
	/* Data */			D_08cc0c30_huffmandata,
	/* Size */			0x1656,
	/* Count */			0x335,
	/* Window 1 */		D_08cc0c30_window1,
	/* Window 2 */		D_08cc0c30_window2,
};

// [D_08CC097C] D_08CC0C30 RLE Data
u8 D_08cc0c30_rledata[] = {
	0x5, 0xb, 0x1, 0x5, 0x13, 0x7, 0x1, 0xf, 0x1, 0x7, 0x5, 0x3, 0x7, 0x9, 0x5, 0x17, 0x7, 0x1b, 0x2, 0xa, 0x7, 0xf, 0x3, 0xd, 0x11, 0x5, 0x2b, 0xf, 0x1, 0xb, 0x5, 0x5, 0x5, 0x5, 0x1, 0x5, 0x5, 0x5, 0x7, 0xb, 0x5, 0x17, 0x2, 0xa, 0x21, 0x11, 0x5, 0x5, 0x5, 0x5, 0x10, 0x10, 0x1, 0x7, 0x19, 0x9, 0x6, 0xb, 0x8, 0xd, 0x1, 0x5, 0x5, 0x5, 0x7, 0x9, 0x19, 0x5, 0xb, 0x7, 0xb, 0x5, 0x9, 0x5, 0x9, 0x7, 0x7, 0x3, 0x5, 0x3, 0x9, 0x3, 0x7, 0xb, 0x2, 0xa, 0x9, 0x3, 0x7, 0x3, 0x7, 0x9, 0x1, 0x6, 0xb, 0xb, 0x44, 0x5, 0x2d, 0xd, 0x1, 0x5, 0x5, 0x5, 0x7, 0x9, 0x27, 0x7, 0x3, 0x9, 0x3, 0x7, 0xf, 0x3, 0x5, 0x3, 0x23, 0xe, 0x3e, 0x3, 0x11, 0xa, 0x6, 0xb, 0x5, 0xb, 0x15, 0x5, 0x1b, 0x5, 0xf, 0xb, 0x41, 0xd, 0x9, 0x7, 0x2, 0xa, 0x7, 0xb, 0x4, 0x6, 0x7, 0x7, 0x7, 0x11, 0x5, 0x9, 0xb, 0xb, 0x17, 0x9, 0x5, 0x3, 0x19, 0xb, 0x5, 0x3, 0x3, 0x3, 0x1, 0x5, 0x1, 0x3, 0x7, 0x5, 0x1, 0x5, 0xb, 0x3, 0x3, 0x9, 0x21, 0x5, 0x2b, 0x7, 0x29, 0x7, 0x5, 0x3, 0x7, 0x7, 0x7, 0x17, 0x7, 0x5, 0x5, 0x11, 0x2, 0xa, 0x7, 0x3, 0x5, 0x8, 0x2, 0xd, 0x29, 0x5, 0x7, 0x3, 0x15, 0x4, 0x2a, 0x5, 0x11, 0xd, 0x3, 0xf, 0x3, 0xb, 0x2, 0xe, 0x13, 0xc, 0x4, 0xa, 0x7, 0x7, 0x8, 0x4, 0x3, 0x7, 0x12, 0xb, 0x40, 0x13, 0x3, 0xe, 0x8, 0x8, 0x2, 0x7, 0xf, 0x7, 0x2, 0x8, 0x28, 0x4, 0xd, 0xf, 0x5, 0x7, 0x4, 0x6, 0x5, 0x5, 0x7, 0x8, 0x1, 0x6, 0x5, 0x4, 0x3, 0xd, 0x51, 0x6, 0xf, 0xa, 0x1, 0xf, 0x7, 0x9, 0xa, 0x11, 0x9, 0x7, 0x6, 0x4, 0x5, 0x6, 0x6, 0xa, 0x1, 0x6, 0x3, 0x13, 0x5, 0xe, 0xc, 0x4, 0x4, 0xc, 0x1, 0x4, 0x10, 0xb, 0x1, 0x6, 0x1, 0x12, 0x2, 0x4, 0x2, 0xb, 0x4, 0x8, 0x3, 0x4, 0x11, 0xc, 0x3, 0x3, 0x1, 0xc, 0x1, 0x6, 0x1, 0x8, 0x2, 0xe, 0x21, 0xc, 0x14, 0x8, 0x1, 0x6, 0x1, 0xc, 0x7, 0xc, 0x1, 0x4, 0x2, 0x9, 0x1, 0x4, 0x3, 0x8, 0x1, 0x8, 0x3, 0x4, 0x4, 0xc, 0x1, 0x6, 0x7, 0x3, 0x5, 0x7, 0x1d, 0xd, 0x5, 0x4, 0x1, 0xc, 0x24, 0x4, 0xc, 0xe, 0x13, 0xe, 0x7b, 0x3, 0x33, 0x6, 0xa, 0x6, 0x1a, 0xc, 0x14, 0x5, 0x24, 0x6, 0x1, 0x5, 0x6, 0x4, 0x1, 0xa, 0xe, 0x10, 0x8, 0x3, 0x1c, 0x3, 0x7e, 0xe, 0x39, 0x8, 0x61, 0xb, 0x35, 0x7, 0x7, 0x3, 0x1, 0xd, 0x1b, 0x5, 0xb, 0x5, 0x1a, 0x6, 0x9, 0x7, 0x5, 0xb, 0x3, 0xb, 0x9, 0x9, 0x7, 0x9, 0x5, 0x3, 0x9, 0x4, 0xc, 0x3, 0x1f, 0xd, 0x53, 0x7, 0x9, 0x5, 0x9, 0xf, 0x13, 0x5, 0x3, 0x5, 0x11, 0x5, 0x1, 0x9, 0x1, 0x3, 0x1, 0xb, 0x1, 0x3, 0x18, 0x4, 0x1, 0xc, 0x24, 0x5, 0x1, 0x8, 0x4, 0x3, 0x3, 0x7, 0xa, 0x6, 0x1, 0x6, 0x3, 0x6, 0x1d, 0x3, 0x1, 0xe, 0x12, 0xa, 0x2c, 0xa, 0x30, 0x5, 0x14, 0x6, 0x11, 0xe, 0x2, 0x8, 0x8, 0xe, 0x3, 0xe, 0x6, 0xa, 0x1, 0xe, 0x12, 0x6, 0x5, 0x4, 0x6, 0x7, 0x14, 0x7, 0xc, 0xb, 0x2, 0x4, 0x3, 0xf, 0x3, 0x6, 0x1, 0xa, 0x3, 0x3, 0x9, 0x6, 0x2d, 0x5, 0x3, 0xb, 0x34, 0x4, 0x19, 0x8, 0x8, 0x9, 0x7, 0x4, 0x17, 0x4, 0x27, 0x9, 0x21, 0x3, 0x6, 0x6, 0x29, 0x7, 0x11, 0x7, 0x1d, 0xb, 0x41, 0x7, 0x2d, 0xb, 0x6, 0xa, 0x12, 0xe, 0x17, 0x9, 0x36, 0xa, 0x1, 0x4, 0xc, 0x5, 0x15, 0xe, 0x1, 0x6, 0x1, 0xb, 0x8, 0xb, 0x2, 0x4, 0x3, 0x8, 0x21, 0xc, 0x29, 0x8, 0x2, 0x6, 0x11, 0xa, 0x40, 0xb, 0x15, 0xb, 0x5, 0x8, 0x28, 0xd, 0xe, 0x5, 0x4, 0xb, 0x4, 0x3, 0x1e, 0xb, 0x3c, 0x4, 0xc, 0x4, 0x31, 0x5, 0x32, 0x8, 0x1, 0x3, 0xd, 0x7, 0x1, 0x7, 0x3, 0x5, 0x1, 0x8, 0x20, 0xe, 0x2, 0x9, 0x49, 0x8, 0x26, 0x3, 0x3d, 0x4, 0x36, 0x5, 0x11, 0x4, 0x3e, 0x3, 0x6, 0x4, 0x1a, 0x6, 0x77, 0x9, 0x41, 0x3, 0x3, 0x9, 0x1, 0x4, 0xe, 0x3, 0x11, 0x9, 0x2, 0xc, 0x13, 0x3, 0x13, 0xa, 0x15, 0x7, 0x24, 0x3, 0x3, 0xa, 0x29, 0x6, 0x1, 0x5, 0x14, 0x6, 0x25, 0x6, 0x21, 0x3, 0x1d, 0x4, 0x51, 0xd, 0x33, 0x3, 0xd, 0xd, 0x2, 0xe, 0x3, 0xb, 0xc, 0x8, 0x4, 0x3, 0xa, 0x4, 0x12, 0x9, 0x1, 0x3, 0xd, 0x5, 0x25, 0x5, 0x24, 0xc, 0x3a, 0x6, 0x1, 0x6, 0x5, 0x4, 0x1, 0xc, 0x24, 0xe, 0x22, 0x3, 0x13, 0x9, 0x81, 0xdf, 0x0, 0x0
};

// [D_08CC0C30] D_08CC0C30 Graphics
struct CompressedGraphics D_08cc0c30 = {
	/* Huffman Data */		D_08cc0c30_huffman,
	/* RLE Data */			D_08cc0c30_rledata,
	/* RLE Size */			0x2b2,
	/* RLE Offset */		0x2200,
	/* Double Compressed */	TRUE,
};

u8 D_08cc0c40[16] = {
	0x78, 0x00, 0x78, 0x00, 0x78, 0x00, 0x78, 0x00, 0x78, 0x00, 0x78, 0x00,
	0x40, 0x00, 0x40, 0x00
};

// // //  D_08CC0CF0  // // //

// [D_08CC0C50] D_08CC0CF0 Data
u16 D_08cc0cf0_data[] = {
	0x0003, 0x01cd, 0x01cc, 0x05cc, 0x05cd, 0x0003, 0x01cb, 0x0085, 0x05cb, 0x0003, 0x01cf, 0x01ce, 0x01d0, 0x0085, 0x05cb, 0x0003, 0x01cb, 0x0085, 0x05cb, 0x0003, 0x01cb, 0x0085, 0x05cb, 0x0003, 0x01cb, 0x0085, 0x05cb, 0x0003, 0x01cb, 0x0085, 0x05cb, 0x0003, 0x01cb, 0x0085, 0x05cb, 0x0003, 0x01cb, 0x0085, 0x05cb, 0x0003, 0x01cb, 0x0085, 0x05cb, 0x0003, 0x01cb, 0x0085, 0x05cb, 0x0003, 0x09cd, 0x09cc, 0x0dcc, 0x0dcd, 0x0003
};

// [D_08CC0CBA] D_08CC0CF0 RLE Data
u8 D_08cc0cf0_rledata[] = {
	0x1, 0xc2, 0x2, 0x14, 0x3, 0x7, 0x2, 0x15, 0x2, 0x5, 0x4, 0x15, 0x2, 0x7, 0x2, 0x15, 0x2, 0x7, 0x2, 0x15, 0x2, 0x7, 0x2, 0x15, 0x2, 0x7, 0x2, 0x15, 0x2, 0x7, 0x2, 0x15, 0x2, 0x7, 0x2, 0x15, 0x2, 0x7, 0x2, 0x15, 0x2, 0x7, 0x2, 0x15, 0x2, 0x7, 0x2, 0x14, 0x3, 0x0, 0xc5, 0x0, 0x0, 0x0
};

// [D_08CC0CF0] D_08CC0CF0 Graphics
struct CompressedGraphics D_08cc0cf0 = {
	/* Data */				{.raw = D_08cc0cf0_data},
	/* RLE Data */			D_08cc0cf0_rledata,
	/* RLE Size */			0x32,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

// // //  D_08CC1158  // // //

// [D_08CC0D00] D_08CC1158 Data
u16 D_08cc1158_data[] = {
	0x0000, 0x0002, 0x0001, 0x000a, 0x0009, 0x000b, 0x000b, 0x0008, 0x0005, 0x0004, 0x0007, 0x0006, 0x001c, 0x001b, 0x0011, 0x001a, 0x0019, 0x0020, 0x001f, 0x0022, 0x0021, 0x0011, 0x0011, 0x001d, 0x001e, 0x001e, 0x0003, 0x0003, 0x0011, 0x0011, 0x0010, 0x000d, 0x000c, 0x000f, 0x000e, 0x0018, 0x0017, 0x000b, 0x000b, 0x0016, 0x0013, 0x0012, 0x0015, 0x0014, 0x0065, 0x0011, 0x0062, 0x0061, 0x0064, 0x0063, 0x0069, 0x0068, 0x001d, 0x001e, 0x001e, 0x0003, 0x0003, 0x0067, 0x0066, 0x0056, 0x0055, 0x0058, 0x0057, 0x0054, 0x0011, 0x0051, 0x0053, 0x0052, 0x005f, 0x005e, 0x000b, 0x0060, 0x005d, 0x005a, 0x0059, 0x005c, 0x005b, 0x0011, 0x0011, 0x007f, 0x007e, 0x007d, 0x007c, 0x007b, 0x001d, 0x001e, 0x001e, 0x0003, 0x0003, 0x001e, 0x001e, 0x0081, 0x0080, 0x0083, 0x0082, 0x0070, 0x006f, 0x0071, 0x001e, 0x006e, 0x006b, 0x006a, 0x006d, 0x006c, 0x0078, 0x0077, 0x007a, 0x0079, 0x0076, 0x0073, 0x0072, 0x0075, 0x0074, 0x0034, 0x0033, 0x0035, 0x001d, 0x001e, 0x001e, 0x0003, 0x0003, 0x0032, 0x0038, 0x0037, 0x003a, 0x0039, 0x001e, 0x001e, 0x001e, 0x0036, 0x001e, 0x0028, 0x0027, 0x002a, 0x0029, 0x0026, 0x0011, 0x0023, 0x0025, 0x0024, 0x002f, 0x002e, 0x0031, 0x0030, 0x002d, 0x002c, 0x002b, 0x0011, 0x001d, 0x001e, 0x001e, 0x0003, 0x0003, 0x0048, 0x0045, 0x0044, 0x0047, 0x0046, 0x004e, 0x004d, 0x0050, 0x004f, 0x004c, 0x004a, 0x0049, 0x0011, 0x004b, 0x003e, 0x0011, 0x003b, 0x003d, 0x003c, 0x0041, 0x0040, 0x0043, 0x0042, 0x003f, 0x001e, 0x001e, 0x0003, 0x0003, 0x0084, 0x0110, 0x010f, 0x0112, 0x0111, 0x010e, 0x010b, 0x010a, 0x010d, 0x018e, 0x0190, 0x018f, 0x0011, 0x00d7, 0x003e, 0x0011, 0x0107, 0x0106, 0x001e, 0x0003, 0x0003, 0x001e, 0x001e, 0x00bb, 0x0109, 0x0108, 0x0108, 0x0124, 0x0124, 0x0125, 0x0123, 0x01a3, 0x01a3, 0x01a4, 0x0121, 0x0128, 0x0011, 0x0127, 0x0126, 0x011a, 0x0119, 0x001e, 0x001e, 0x0118, 0x0117, 0x0116, 0x0003, 0x0003, 0x001e, 0x011c, 0x011e, 0x011d, 0x011b, 0x001e, 0x001e, 0x001e, 0x00df, 0x001e, 0x003e, 0x0011, 0x0011, 0x00e2, 0x00ee, 0x00ed, 0x00f0, 0x00ef, 0x00ec, 0x00e9, 0x00e8, 0x00eb, 0x00ea, 0x00d9, 0x0011, 0x00da, 0x0003, 0x0003, 0x001e, 0x0057, 0x00d8, 0x00d7, 0x00e0, 0x001e, 0x001e, 0x001e, 0x00df, 0x001e, 0x003e, 0x0101, 0x0100, 0x00fd, 0x00fb, 0x00fa, 0x00fc, 0x0011, 0x0011, 0x0011, 0x0105, 0x0104, 0x0103, 0x0102, 0x0011, 0x00da, 0x0003, 0x0003, 0x001e, 0x00f2, 0x00d8, 0x00d7, 0x00f1, 0x001e, 0x001e, 0x001e, 0x00df, 0x001e, 0x003e, 0x00f5, 0x00f4, 0x015d, 0x015c, 0x015e, 0x0011, 0x0105, 0x015b, 0x0162, 0x0161, 0x0163, 0x00da, 0x0003, 0x0003, 0x001e, 0x0160, 0x015f, 0x0152, 0x0151, 0x001e, 0x001e, 0x001e, 0x00df, 0x001e, 0x003e, 0x015a, 0x0157, 0x0154, 0x0153, 0x0156, 0x0155, 0x0175, 0x0174, 0x0011, 0x0105, 0x0173, 0x0170, 0x00a9, 0x0172, 0x0171, 0x0003, 0x0003, 0x001e, 0x0179, 0x0178, 0x0177, 0x0176, 0x001e, 0x001e, 0x001e, 0x00df, 0x001e, 0x003e, 0x0165, 0x016d, 0x016c, 0x016f, 0x016e, 0x016b, 0x0168, 0x0167, 0x016a, 0x0169, 0x013a, 0x0139, 0x00a9, 0x00a9, 0x0138, 0x0003, 0x0003, 0x001e, 0x001e, 0x00bb, 0x000d, 0x001e, 0x00df, 0x001e, 0x0130, 0x012f, 0x012d, 0x012a, 0x0129, 0x012c, 0x012b, 0x0135, 0x0134, 0x0137, 0x0136, 0x0133, 0x0132, 0x0131, 0x00a9, 0x00a9, 0x00a9, 0x0003, 0x0003, 0x0146, 0x001e, 0x00bb, 0x000d, 0x001e, 0x014d, 0x017b, 0x017a, 0x017d, 0x017c, 0x014a, 0x0149, 0x0140, 0x013f, 0x0085, 0x013e, 0x013d, 0x0144, 0x0143, 0x0145, 0x00a9, 0x00a9, 0x0141, 0x0003, 0x0003, 0x0142, 0x001e, 0x00bb, 0x000d, 0x00bc, 0x00ba, 0x00b7, 0x00b6, 0x00b9, 0x00b8, 0x00be, 0x00bd, 0x00bf, 0x0085, 0x00ac, 0x00ae, 0x00ad, 0x00ab, 0x00a8, 0x00a7, 0x00aa, 0x00a9, 0x00b5, 0x00b4, 0x0003, 0x0003, 0x00b3, 0x00b0, 0x00af, 0x00b2, 0x00b1, 0x00c9, 0x00c8, 0x00ca, 0x0085, 0x00d0, 0x00cf, 0x00cc, 0x00cb, 0x00ce, 0x00cd, 0x00c2, 0x00c1, 0x00c3, 0x00a9, 0x00a9, 0x00c0, 0x0085, 0x0003, 0x0003, 0x00c5, 0x00c4, 0x00c7, 0x00c6, 0x0085, 0x008a, 0x008c, 0x008b, 0x0092, 0x0091, 0x0085, 0x0093, 0x0090, 0x008d, 0x008d, 0x008f, 0x008e, 0x0087, 0x0086, 0x0088, 0x0003, 0x0003, 0x0085, 0x0089, 0x009e, 0x009d, 0x00a0, 0x009f, 0x009c, 0x0085, 0x0099, 0x009b, 0x009a, 0x00a4, 0x00a3, 0x00a6, 0x00a5, 0x001e, 0x001e, 0x00a1, 0x00a2, 0x0003, 0x0003, 0x0085, 0x0098, 0x0097, 0x0096, 0x0095, 0x0094, 0x0085, 0x0085, 0x00d4, 0x00d3, 0x00d6, 0x00d5, 0x0048, 0x00a4, 0x00d1, 0x00d2, 0x00a5, 0x001e, 0x001e, 0x001e, 0x008d, 0x0003
};

// [D_08CC1128] D_08CC1158 RLE Data
u8 D_08cc1158_rledata[] = {
	0xf, 0x4, 0x1f, 0x3, 0x7b, 0x4, 0x1c, 0x7, 0x3, 0x4, 0x12, 0x5, 0x15, 0x4, 0x1c, 0x4, 0x1c, 0x4, 0x7, 0x3, 0x12, 0x4, 0x1c, 0x4, 0x17, 0x3, 0x2, 0x3, 0x18, 0x3, 0xa, 0x4, 0x18, 0x6, 0x15, 0x8, 0x14, 0xa, 0x12, 0xb, 0x15, 0x9, 0x15, 0x0, 0x82, 0x0, 0x0, 0x0
};

// [D_08CC1158] D_08CC1158 Graphics
struct CompressedGraphics D_08cc1158 = {
	/* Data */				{.raw = D_08cc1158_data},
	/* RLE Data */			D_08cc1158_rledata,
	/* RLE Size */			0x2c,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};