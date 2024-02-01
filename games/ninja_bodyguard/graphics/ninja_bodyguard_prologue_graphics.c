#include "global.h"
#include "graphics.h"

// // //  D_08C22EE4  // // //

// [D_08C229C4] D_08C22EE4 Huffman Data
u16 D_08c22ee4_huffmandata[] = {
	0x4130, 0x0003, 0x0050, 0x0090, 0x0040, 0x5cf0, 0x3012, 0x5403, 0x5554, 0xffaa, 0x5503, 0xc5c5, 0x1204, 0x5400, 0x3955, 0x1230, 0x4004, 0x80fe, 0x00ff, 0x00fe, 0x00f4, 0x00d0, 0x1000, 0x0020, 0x0080, 0x2103, 0x5401, 0x4e55, 0xea55, 0x0004, 0x0321, 0x5000, 0x40fe, 0x3104, 0x5400, 0x55ea, 0x0421, 0x4000, 0xfffe, 0x1340, 0x4004, 0x000a, 0x007d, 0x00f8, 0x00f8, 0x40fd, 0x3012, 0x5400, 0xabaa, 0x4210, 0x0003, 0x0039, 0x00e5, 0x00d5, 0x0025, 0x3322, 0x2104, 0x5401, 0x4eaa, 0x3eaa, 0x1233, 0x3111, 0x1240, 0x9000, 0x00ff, 0x4203, 0x5400, 0x7255, 0x4310, 0x0000, 0x0395, 0x4321, 0x0004, 0x4312, 0x2340, 0x0001, 0x07e4, 0x7e00, 0x4130, 0x0002, 0x0090, 0x0040, 0x00c0, 0x0042, 0x4310, 0x0001, 0x0025, 0x0956, 0x2340, 0xe400, 0x0002, 0x1114, 0x2340, 0x0431, 0x9400, 0xfaaf, 0x0000, 0x1240, 0x1230, 0x4000, 0xd0fe, 0x3401, 0x0000, 0xc009, 0x3021, 0x0000, 0x0c90, 0x0421, 0x0413, 0x9400, 0xeafe, 0x0000, 0x0021, 0x8080, 0x2322, 0x2111, 0x1304, 0x9400, 0x95ff, 0x4201, 0x0002, 0xc095, 0xe035, 0x6035, 0x3344, 0x4443, 0x0012, 0x3efe, 0x2220, 0x0002, 0x0040, 0x8080, 0x0321, 0x0008, 0x00f9, 0x00f4, 0x00f4, 0x00f4, 0x00f4, 0x00f4, 0x00f4, 0xfff4, 0xff6f, 0x2340, 0x9000, 0x0000, 0x3344, 0x0123, 0xa402, 0xa3ff, 0xa7ff, 0xa7ff, 0x1340, 0x5400, 0xfffe, 0x0231, 0x0001, 0x0009, 0x000b, 0x0421, 0x9001, 0x90ff, 0xd0ff, 0x4310, 0x0005, 0x0025, 0x0039, 0x0095, 0x0355, 0x0255, 0x0c00, 0x1230, 0x0001, 0x0064, 0x00d0, 0x2140, 0x4001, 0x9000, 0xb000, 0x2130, 0xe400, 0xa4a5, 0x0021, 0x1000, 0x3401, 0x0000, 0x0039, 0x4000, 0x4123, 0xa402, 0x01aa, 0x6aaa, 0x3daa, 0x2031, 0x0003, 0x00e9, 0xdf69, 0xb000, 0x900e, 0x1114, 0x0021, 0xc080, 0x0421, 0x0001, 0xe050, 0xf8ff, 0x2430, 0x0005, 0x0001, 0x000a, 0x0027, 0x000b, 0x0002, 0x001f, 0x4120, 0x4001, 0x80aa, 0xb0aa, 0x4301, 0x0000, 0x0025, 0x1240, 0xe401, 0xf8ff, 0xfcbf, 0x2431, 0x4000, 0x8002, 0x0042, 0x2310, 0x0000, 0x0009, 0x1042, 0xa401, 0xa7aa, 0xa8aa, 0x4230, 0x0001, 0x0001, 0x3f90, 0x3120, 0x9001, 0x9d6a, 0xa7aa, 0x1111, 0x4000, 0x1123, 0x0421, 0x4002, 0x00fe, 0x00fd, 0x00f4, 0x4031, 0x9000, 0xc000, 0x3421, 0x0000, 0x1d94, 0x0432, 0xe400, 0xfebd, 0x2140, 0x0000, 0x7a90, 0x3140, 0x9000, 0x90ea, 0x3021, 0x4002, 0x003a, 0x006a, 0x07aa, 0x0040, 0x00c0, 0x2340, 0x0001, 0x0140, 0xfa80, 0x3412, 0x5000, 0xfa55, 0x2103, 0x0007, 0x5555, 0x5eaa, 0x5eaa, 0x5eaa, 0x5eaa, 0x5eaa, 0x53aa, 0x54eb, 0x1340, 0x0001, 0x0040, 0x40e0, 0x1123, 0x1240, 0xe401, 0xa9bf, 0x00ff, 0x4213, 0x9401, 0x5557, 0x0957, 0x0312, 0x1401, 0xe1fe, 0xf8ff, 0x3420, 0x0000, 0x8025, 0x0032, 0x3410, 0x4000, 0xc002, 0x1111, 0x4042, 0x3333, 0x1354, 0x2130, 0x0001, 0x00a4, 0x00ac, 0x3124, 0xa400, 0xaa7f, 0x4021, 0x4001, 0xbeaa, 0x07aa, 0x4043, 0x0213, 0x5400, 0xff95, 0x1340, 0x4000, 0xfe90, 0x0014, 0xfffc, 0x4130, 0x0002, 0x0090, 0x0090, 0x00a0, 0x1140, 0x0132, 0x5005, 0xaaa1, 0xaa7d, 0xaa85, 0xaa4a, 0xaaf4, 0xaa82, 0x0432, 0x9401, 0xffe9, 0xffff, 0x0421, 0x9000, 0x40ff, 0x2103, 0x5001, 0x5eaa, 0x6aaa, 0x0432, 0xe401, 0xff87, 0xffe6, 0x3412, 0x5400, 0x5585, 0x0321, 0x0421, 0x0000, 0x00f9, 0x2103, 0x5401, 0x54aa, 0x552a, 0x0432, 0xe401, 0xfeff, 0x6fff, 0x0040, 0x7010, 0x1430, 0x0001, 0x0240, 0x01e0, 0x4230, 0x4001, 0x000e, 0xc006, 0x0311, 0x0040, 0x8080, 0x1340, 0x0003, 0x0000, 0x80a9, 0x40ff, 0x00ff, 0x1112, 0x0000, 0x0013, 0xfffe, 0x3211, 0x0324, 0x5400, 0xc0fa, 0x1100, 0x4211, 0x3240, 0x2031, 0x9001, 0x705a, 0x0075, 0x4211, 0x2230, 0x1234, 0x2140, 0x4000, 0x0040, 0x0321, 0x0000, 0x0664, 0x4031, 0xa402, 0xadfa, 0x6aaa, 0x3aaa, 0x4012, 0x5000, 0xfa55, 0x4013, 0x5402, 0x552a, 0x557a, 0x554a, 0x1124, 0x0021, 0x0800, 0x0321, 0x9000, 0xfd00, 0x2041, 0x0000, 0xc0a4, 0x2143, 0x1403, 0xaaaa, 0xc03a, 0xd52a, 0x1503, 0x1430, 0x0000, 0x0255, 0x4021, 0x0001, 0x00a9, 0x00ad, 0x1032, 0xa401, 0xa4fc, 0xa4fc, 0x0040, 0x1010, 0x0010, 0xf000, 0x2401, 0x0001, 0x2554, 0x1555, 0x4322, 0x0021, 0x0100, 0x1340, 0xe403, 0x40ff, 0x00fe, 0x00e4, 0x0006, 0x0321, 0xe400, 0x40ff, 0x2104, 0x5401, 0x53aa, 0x5eaa, 0x0030, 0x3010, 0x2130, 0x0003, 0x0054, 0x00e4, 0x00ec, 0x00e9, 0x4012, 0x5400, 0xc5ea, 0x4130, 0x4000, 0xc06a, 0x0412, 0x1401, 0x56fe, 0x57fe, 0x1043, 0xa402, 0xa3fd, 0xa3fd, 0xaaf2, 0x3340, 0x0040, 0x0100, 0x4203, 0x5400, 0x5e55, 0x2310, 0x0000, 0x0009, 0x0421, 0x0000, 0x3211, 0x1204, 0x5400, 0xfffe, 0x2130, 0xa400, 0xacaa, 0x1111, 0x2340, 0xa400, 0x00ff, 0x3140, 0x4005, 0xc0aa, 0x40aa, 0x00aa, 0x00ac, 0x00ac, 0x00a4, 0x1230, 0x9000, 0x0000, 0x3041, 0xa400, 0xa43a, 0x2140, 0x9000, 0xc003, 0x0432, 0x3210, 0x0005, 0x0029, 0x0025, 0x0035, 0x000f, 0x0395, 0x0355, 0x0021, 0x0170, 0x0124, 0xa402, 0x0faa, 0xffa9, 0xffa8, 0x1430, 0x9401, 0x0000, 0x556a, 0x4321, 0x0000, 0xaaa4, 0x0004, 0x0000
};

// [D_08C22E44] D_08C22EE4 Huffman Window 1
u32 D_08c22ee4_window1[] = {
	0x9b1cbf6f, 0xffdc995c, 0x7ff8f7f6, 0xfdfbdc2f, 0x7fef88a6, 0x7df63bff, 0x00000000
};

// [D_08C22E60] D_08C22EE4 Huffman Window 2
u32 D_08c22ee4_window2[] = {
	0xcdffffef, 0xbfffeeff, 0xd6ffdfff, 0xfdf74fdf, 0x000000ef
};

// [D_08C22E74] D_08C22EE4 Huffman
struct Huffman D_08c22ee4_huffman[] = {
	/* Data */			D_08c22ee4_huffmandata,
	/* Size */			0x2e5,
	/* Count */			0xc1,
	/* Window 1 */		D_08c22ee4_window1,
	/* Window 2 */		D_08c22ee4_window2,
};

// [D_08C22E84] D_08C22EE4 RLE Data
u8 D_08c22ee4_rledata[] = {
	0x1, 0x1a, 0x6, 0x6, 0x5, 0x4, 0x1, 0x5, 0x3, 0x4, 0x4, 0x20, 0x20, 0x3, 0xd, 0x5, 0xa, 0x6, 0xb, 0xd, 0x15, 0x9, 0x9, 0x36, 0x29, 0x4, 0x19, 0xba, 0x26, 0x14, 0x8, 0x4, 0x12, 0x6, 0x12, 0x4, 0x2d, 0x5, 0x6, 0x5, 0x15, 0x4f, 0x17, 0x5, 0x13, 0xb6, 0x27, 0x3, 0x2, 0x9, 0x7, 0x8, 0x12, 0x6, 0x4, 0x8, 0x6, 0x8, 0x12, 0x3, 0x10, 0x11, 0x2, 0xd, 0x2, 0x0, 0x40, 0x2, 0x3, 0x2f, 0xb, 0x7, 0x6, 0x22, 0x5, 0xd, 0xf, 0xb, 0x9, 0xd, 0x45, 0xb, 0xf2, 0x36, 0x0, 0xc8, 0x35, 0x7, 0x4, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc5, 0x0
};

// [D_08C22EE4] D_08C22EE4 Graphics
struct CompressedGraphics D_08c22ee4 = {
	/* Huffman Data */		D_08c22ee4_huffman,
	/* RLE Data */			D_08c22ee4_rledata,
	/* RLE Size */			0x58,
	/* RLE Offset */		0x1000,
	/* Double Compressed */	TRUE,
};

// // //  D_08C23A3C  // // //

// [D_08C22EF4] D_08C23A3C Huffman Data
u16 D_08c23a3c_huffmandata[] = {
	0x01f0, 0x01f0, 0x80fc, 0x2bf0, 0x0004, 0x0055, 0x00a4, 0x00a4, 0x0054, 0x00fd, 0x012f, 0xa405, 0xa403, 0xa400, 0x00c0, 0xf045, 0xf255, 0xf000, 0xf0fb, 0x0003, 0x00a4, 0x00a4, 0x00a4, 0x55a9, 0x0000, 0x01fb, 0x4020, 0x0d01, 0xfbf1, 0xa400, 0xa4aa, 0x04fb, 0x0010, 0x4860, 0xa848, 0x90a0, 0xd150, 0x2bf0, 0x5406, 0x5000, 0x06aa, 0x06aa, 0x06aa, 0x06aa, 0x06aa, 0x0555, 0x01f2, 0x5000, 0x00f6, 0x010f, 0xfffc, 0xc7f7, 0xf000, 0x01fb, 0x887c, 0x0031, 0xf0fb, 0x0001, 0x0001, 0x0006, 0xbbf0, 0x00fb, 0x0810, 0xfffb, 0x4000, 0x4001, 0x00fe, 0x3040, 0xeeee, 0xeefc, 0x00fe, 0x0010, 0xfcfe, 0x4000, 0x9000, 0x03fe, 0x0818, 0x060c, 0x0303, 0x0101, 0xfef0, 0x0000, 0x00a4, 0xe0ff, 0x02f0, 0x0810, 0x040c, 0x0306, 0x000e, 0x3010, 0xc0fe, 0x4002, 0xd0aa, 0x76aa, 0x7daa, 0x06ef, 0xfefc, 0xf7fb, 0xf9f3, 0x7cfd, 0xfbfe, 0xfe7d, 0xf7ff, 0x0cfe, 0x5405, 0x1900, 0x0640, 0x0190, 0x0064, 0x0019, 0x7fff, 0xfdf0, 0x0007, 0x0090, 0x40a4, 0x9069, 0xa51a, 0xaa1a, 0xaa06, 0x1901, 0x0600, 0x01f0, 0x8010, 0x60c0, 0x0000, 0x0fdf, 0x00f0, 0x0c08, 0xfdf0, 0x1400, 0x1900, 0x00f0, 0x1030, 0xfdf0, 0x4009, 0x9401, 0xa900, 0x1500, 0x0640, 0x0190, 0x01a4, 0x0069, 0x001a, 0x4006, 0x9006, 0x01f0, 0x0810, 0x0304, 0x00fd, 0x03f0, 0x0810, 0xc081, 0x60c0, 0x3060, 0x0000, 0x00fd, 0x03f0, 0x8010, 0x1080, 0x0818, 0x060c, 0xc0df, 0x8409, 0xa1aa, 0xa12a, 0x2a4a, 0x2aa3, 0xcaa8, 0x32a8, 0x32aa, 0x8caa, 0x87aa, 0xa3aa, 0x04f0, 0x0800, 0x040c, 0x0302, 0xc081, 0x8300, 0xfc0f, 0x5400, 0x5505, 0xfcf0, 0x04f0, 0x3060, 0x1010, 0x6040, 0x1020, 0x8c08, 0xfdf0, 0x1405, 0x0040, 0x0069, 0x4019, 0x901a, 0xa406, 0xa441, 0x00df, 0x7e68, 0xdddd, 0x01f0, 0x2040, 0x3020, 0xfdf0, 0x0000, 0x4005, 0x00fd, 0x04f0, 0x1818, 0x4040, 0x6040, 0x2020, 0x1810, 0x00fe, 0xd8a0, 0xc0fe, 0x5004, 0x1414, 0x0594, 0x41a5, 0x01a7, 0x01a0, 0x00e0, 0x3070, 0xcef0, 0x4000, 0xd002, 0xdcf0, 0x0001, 0x00e4, 0x40f9, 0xfddc, 0x04fe, 0x0100, 0x0c08, 0x8386, 0x60c1, 0x1030, 0x0cfe, 0x0002, 0x0040, 0x7f90, 0x9ffd, 0x000f, 0x9f3e, 0xfcf0, 0x0000, 0x0019, 0x00fc, 0x00f0, 0x1810, 0xcf00, 0x01f0, 0x2000, 0x0810, 0xfcf0, 0x5402, 0x1900, 0x0600, 0x0140, 0xcf00, 0x00f0, 0x060c, 0xd0cf, 0x8401, 0xa1aa, 0xa3aa, 0x04f0, 0x1810, 0x070c, 0x4081, 0x3040, 0x0810, 0xdcf0, 0x9000, 0xe400, 0x00fe, 0x1020, 0x000e, 0x7030, 0xeeee, 0x0000, 0x03fe, 0x4080, 0x1830, 0x060c, 0x0100, 0x04f0, 0x2010, 0x0c18, 0x0206, 0x0181, 0x0c08, 0x01e0, 0x0e0e, 0x080c, 0x080f, 0xfdfe, 0xf7f7, 0xf9f3, 0xdcf9, 0xefef, 0x3f7f, 0xdfbf, 0xefdf, 0x7fef, 0xfdf0, 0x0000, 0x0090, 0xfdf0, 0x01f0, 0x4040, 0x8080, 0xf0fe, 0x0001, 0x8004, 0x0100, 0x01f0, 0x4080, 0x3060, 0x000e, 0xc0c0, 0xcf0e, 0x0004, 0x0054, 0x4065, 0x5459, 0x955a, 0xe556, 0xfd0f, 0x540b, 0x054a, 0xa14a, 0xa852, 0x2a04, 0x4aa0, 0x12aa, 0x84aa, 0xa12a, 0xa14a, 0xa852, 0xaa14, 0x2a85, 0xddf0, 0x00fd, 0x021c, 0xf0df, 0x5413, 0x5555, 0x54aa, 0x552a, 0x152a, 0x154a, 0x8552, 0xa154, 0xa155, 0xa855, 0x2aa1, 0x4aa8, 0x4aaa, 0x52aa, 0x54aa, 0x152a, 0x152a, 0x454a, 0x852a, 0x214a, 0x4852, 0x01df, 0xe6ce, 0xfbfb, 0xf0fd, 0x1004, 0x0600, 0x0190, 0x00a4, 0x4069, 0x901a, 0x00df, 0xdf3c, 0xf0fd, 0x0002, 0x4004, 0x1a90, 0x05a4, 0xff0f, 0x00fd, 0x8030, 0xf0fd, 0x0004, 0x0090, 0x0090, 0x40a9, 0x90aa, 0xa4aa, 0x00f0, 0x0010, 0xfdf0, 0x4008, 0x9000, 0x9000, 0xa900, 0xaa40, 0x6a40, 0x1a90, 0x1aa4, 0x06a9, 0x06aa, 0xdddd, 0x000f, 0xefee, 0xfdf0, 0x4004, 0x9000, 0xa400, 0xa900, 0xa900, 0xaa40, 0xdf00, 0x01fd, 0x2040, 0x1020, 0xf0fd, 0x0005, 0x0040, 0x00a4, 0x40a9, 0x90aa, 0xa4aa, 0xa4aa, 0x00f0, 0x0810, 0xfdf0, 0x9002, 0x1a90, 0x1a90, 0x46a4, 0x01df, 0xce9e, 0xefef, 0xf0fd, 0x4007, 0x0100, 0x01a4, 0x00a9, 0x40a9, 0x40aa, 0x90aa, 0x90aa, 0xa46a, 0xdf00, 0x01df, 0xefee, 0x77f7, 0xf0fd, 0x1003, 0x1090, 0x04a4, 0x04a4, 0xa4a9, 0x01f0, 0x1010, 0x8080, 0xfdf0, 0x0021, 0x9090, 0xa406, 0xa906, 0x6a01, 0x6a00, 0x1a40, 0x1a90, 0x06a4, 0x90a9, 0xa446, 0xa991, 0x6991, 0x6a90, 0x1aa4, 0x16a4, 0x01a9, 0xa4a9, 0x6901, 0x1a00, 0x1a40, 0x0640, 0x0190, 0x01a4, 0x00a4, 0xa4a9, 0xa906, 0xaa01, 0x6a01, 0x6a40, 0x1a40, 0x1a90, 0x06a4, 0x1aa9, 0x1aa9, 0x02df, 0xbf3e, 0xdfbf, 0xd7df, 0xf0fd, 0x000a, 0x5aa4, 0x46a4, 0x91a4, 0x91a9, 0xa469, 0xa419, 0xa906, 0xa901, 0x0069, 0x001a, 0x0006, 0xddf0, 0x02fd, 0x0810, 0x0408, 0x2844, 0xc0fd, 0x4013, 0x9004, 0xa401, 0xa900, 0xaa40, 0xaa40, 0xaa90, 0x901a, 0xa405, 0xa900, 0xaa40, 0xaa90, 0x6aa4, 0x1aa9, 0x06aa, 0x036a, 0x401a, 0x4006, 0x9001, 0x9001, 0x6400, 0x00fd, 0x2060, 0xf0fd, 0xa408, 0xa46a, 0xa91a, 0xaa06, 0xaa41, 0x6a91, 0x1a90, 0x06a4, 0xa4a4, 0xa4aa, 0x00f0, 0x0810, 0xfdf0, 0x900b, 0xa400, 0xa900, 0xaa40, 0x6a90, 0x9000, 0xa400, 0xa900, 0x6a40, 0x6a40, 0x9a90, 0xa6a4, 0xa6a9, 0x00fd, 0x01df, 0xcf1e, 0xf7ef, 0xe0fd, 0x9002, 0x9000, 0xa400, 0xa900, 0xcfe0, 0x5002, 0x00b9, 0x0069, 0x806e, 0xd0fc, 0xa403, 0xa4da, 0xa9f6, 0xaa76, 0xaa7d, 0x0cfe, 0x0002, 0x0040, 0x3f90, 0x7f65, 0x0efd, 0x9001, 0xf517, 0x5f41, 0x00fc, 0x00f0, 0x1010, 0xcdf0, 0x0009, 0x0040, 0x0090, 0x00a4, 0x401d, 0xd007, 0xa406, 0x6901, 0x6a00, 0x1a00, 0x0600, 0x0000, 0x00fe, 0x1c30, 0xdecf, 0x1014, 0x85aa, 0xa12a, 0xa82a, 0xaa4a, 0xaa12, 0x0a84, 0x12aa, 0x84aa, 0xa1aa, 0xa82a, 0xa842, 0x2a54, 0xca15, 0x0a3f, 0x802a, 0xa142, 0x2854, 0x4a15, 0x5285, 0x7ca1, 0x3fa8, 0xecf0, 0x4000, 0xfff6, 0xeefc, 0x00fe, 0x0010, 0xdcfe, 0x4003, 0x9400, 0xa940, 0x6a94, 0x16a9, 0xf0fd, 0x4002, 0x90aa, 0x90aa, 0xa4aa, 0x00f0, 0x0010, 0xfdf0, 0x4001, 0x9000, 0xa400, 0x00f0, 0x1830, 0xfdf0, 0x900a, 0x6401, 0x6900, 0x1a00, 0x0600, 0x0600, 0x4000, 0x90aa, 0xa46a, 0xa96a, 0xaa1a, 0xaa46, 0xdf0f, 0x00fd, 0x0830, 0xfd0f, 0x5401, 0x15a0, 0x85aa, 0x00fd, 0x8030, 0xc0fd, 0x0021, 0x0090, 0xaaa4, 0xaa6a, 0xaa1a, 0xaa1a, 0xaa06, 0xaa46, 0x6a41, 0x6a40, 0xa490, 0xa96a, 0xa9da, 0xa906, 0xaa46, 0x6a41, 0x1a90, 0x0690, 0xaaa4, 0xaa1a, 0xaa06, 0xaa41, 0x6a41, 0x1a90, 0x0650, 0x0114, 0xa904, 0xa946, 0x6a91, 0x1690, 0x01a4, 0x40a9, 0x40aa, 0x90aa, 0xa4aa, 0x00f0, 0x1010, 0xfdf0, 0x4006, 0x9000, 0x9000, 0x6400, 0x1900, 0x1a40, 0x0014, 0x0019, 0x00fd, 0x00f0, 0x1c18, 0xfdf0, 0x6402, 0x1400, 0x1900, 0x4640, 0x00f0, 0x8000, 0xdcf0, 0x000c, 0x0090, 0x0064, 0x0019, 0x4019, 0x9006, 0x0501, 0x0690, 0x01f4, 0x00f4, 0x407d, 0x407f, 0xd01f, 0xf41f, 0x00fd, 0x03fd, 0x0204, 0x0102, 0x4081, 0x2040, 0xedf0, 0x900e, 0x9001, 0xa401, 0x6401, 0x6400, 0x6940, 0x6940, 0x6a90, 0x90a4, 0x5001, 0x6400, 0x6900, 0x6a00, 0x1a00, 0x1a00, 0x1a00, 0xcef0, 0x4000, 0x01d2, 0xdcf0, 0xe40a, 0x7901, 0x1e00, 0x1e00, 0x0740, 0x0790, 0x01f4, 0x90fd, 0x901f, 0xe41f, 0xf907, 0xfe57, 0x00df, 0x3e7c, 0xcefd, 0x0005, 0x0014, 0xa9da, 0xa9f6, 0xaa7d, 0xaa9f, 0x6aa7, 0xd0ef, 0x5402, 0xaac9, 0x2af0, 0x553f, 0x0cfe, 0x6402, 0xd940, 0xf690, 0x7da5, 0xc0fd, 0x4019, 0x946a, 0xa9da, 0xaa36, 0xaa0d, 0xaa36, 0x5a4d, 0xf693, 0x0da4, 0x03a9, 0x40a9, 0x90aa, 0xa9aa, 0xaa76, 0xaa96, 0x6a9d, 0xdaa7, 0x76a9, 0x76aa, 0x91aa, 0x6aaa, 0xd69f, 0x3da4, 0x43a9, 0x90aa, 0x90aa, 0xa4aa, 0x00f0, 0x0810, 0xcdf0, 0x6407, 0x1900, 0x0640, 0x0690, 0x01a4, 0x4069, 0xd069, 0xb41a, 0x4540, 0xfbf0, 0x9000, 0xa49a, 0x01fb, 0x2030, 0x7020, 0xbbbb, 0xf000, 0x00bf, 0xf7f0, 0xf0fb, 0x9401, 0xa900, 0xaa40, 0x0ffb, 0x00f0, 0xc010, 0xfbf0, 0x400c, 0x40a5, 0x406a, 0x561a, 0x01aa, 0x40a9, 0x40aa, 0x906a, 0x9019, 0x9056, 0x40aa, 0xaa55, 0x6a01, 0x1a00, 0x02f0, 0x1030, 0xe010, 0x31ff, 0xfbf0, 0x0003, 0xaa40, 0xaa40, 0xaa90, 0xaaa4, 0xbbf0, 0x00fb, 0x1010, 0xbbbb, 0xbbbf, 0x000b, 0xfff0, 0x00f0, 0x0f0c, 0x0fff, 0x0000, 0x00bf, 0xf9fe, 0xf0fb, 0x4008, 0x0055, 0xaaa4, 0xaa55, 0xa900, 0xa400, 0xa400, 0xa400, 0xa400, 0xa900, 0x03e0, 0xe0c0, 0xf0e0, 0xf8f0, 0xfcf8, 0x00f0, 0x0f80, 0xffff, 0x00ff, 0x0a0e, 0xc0e0, 0x80c0, 0xf080, 0x1ffe, 0x070f, 0x0103, 0x7f01, 0xcfef, 0x8fcf, 0x0f0f, 0x080c, 0x03ef, 0xc3f0, 0x1f07, 0x0fef, 0x0fcf, 0x001f, 0x0808, 0x00ef, 0xf8f8, 0x12ef, 0x4004, 0x2a55, 0x2f55, 0x2f55, 0x2f40, 0x0000, 0x20fe, 0x5400, 0xd55a, 0x1f00, 0x2111, 0x02f0, 0xfcfc, 0xfcfc, 0xe0f8, 0x2f0f, 0x0000, 0x0040, 0x030e, 0xe0e0, 0xc0c0, 0x80c0, 0x8080, 0x00fe, 0x7030, 0x2ffe, 0x0000, 0x0055, 0x00f0, 0x0100, 0xfef0, 0x4001, 0x5554, 0x5581, 0xffff, 0x00e0, 0xfefc, 0xffe0, 0x01ef, 0x080e, 0x7c0f, 0x02f0, 0xfcfc, 0xfcfc, 0xfcfc, 0x21f0, 0x9000, 0x90d6, 0x211f, 0x000f, 0x8080, 0xffff, 0x1c0e, 0xfcfe, 0xf8fc, 0xf0f8, 0xe0f0, 0x0f3f, 0x01ff, 0xf0ff, 0xf073, 0x8f07, 0x0e0f, 0xcff8, 0x0f0f, 0x7f0e, 0x1f3f, 0x0f1f, 0x0307, 0x8fef, 0x0f0f, 0xfc0e, 0x30f3, 0x3010, 0x8fe0, 0x0e0f, 0xef08, 0x8fcf, 0xff0f, 0xf3f3, 0xf7f7, 0x1010, 0x0fae, 0x0001, 0xfe55, 0xff95, 0x0faa, 0x00f0, 0x1030, 0xabf0, 0x000e, 0x0001, 0xfffe, 0xff7f, 0xff17, 0x7f01, 0x1700, 0x0100, 0x5700, 0x01ff, 0x40fd, 0x40ff, 0xd07f, 0xd01d, 0xd057, 0x40ff, 0x00ef, 0x73f0, 0xaebf, 0x5001, 0x352a, 0x8f2a, 0xb0fe, 0x4000, 0xd065, 0xaefb, 0x1001, 0xffc6, 0xfff5, 0xaafb, 0x00fa, 0x7020, 0xf0ea, 0x0000, 0xffe5, 0x03e0, 0xf0f0, 0xf0f0, 0xe0e0, 0xc0e0, 0xb0fa, 0xa40e, 0x55aa, 0x00aa, 0x00a9, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0x6aa9, 0x6a03, 0xda03, 0x3600, 0x3600, 0x0d00, 0x0d00, 0x0d00, 0x01fa, 0x6010, 0x0f80, 0x02fe, 0xc000, 0x70f0, 0xffe0, 0x0eef, 0xeeff, 0x050e, 0x0808, 0x0c0c, 0x0e0c, 0x0101, 0x0703, 0x3f0f, 0x0000, 0xe000, 0x00f0, 0x4040, 0x0000, 0x00f0, 0x06e0, 0xf1f0, 0x3070, 0x1030, 0xc7f0, 0x8fcf, 0x0f8f, 0x0f0f, 0xafe0, 0x5402, 0x5400, 0x5b95, 0x5b95, 0x00fe, 0x0018, 0x020e, 0x8080, 0xc0c0, 0xfefe, 0x06ef, 0xf0fc, 0x80c0, 0xf060, 0xf0fc, 0xe1f0, 0x7000, 0xe0f0, 0xfef0, 0x5401, 0x50a5, 0x54a5, 0x02ef, 0x0e0c, 0x0701, 0x1f0f, 0xeeee, 0xfeee, 0x01f0, 0xf0f8, 0xc0e0, 0x0000, 0xf000, 0x030e, 0xfefe, 0xfefe, 0xfefe, 0xfefe, 0x05ef, 0x0780, 0xcf3f, 0x1f0f, 0x0e0f, 0x0c0e, 0x0808, 0x03f0, 0xf0c0, 0xfcf8, 0xfcfc, 0xf8fc, 0x000e, 0x8080, 0x01fe, 0x8010, 0x8020, 0x030e, 0x7030, 0x7070, 0x7070, 0xf070, 0xeeee, 0x02fa, 0x8486, 0x0a84, 0x090a, 0x20af, 0x4402, 0x0454, 0xcf02, 0xffa0, 0xa0f1, 0xa405, 0xa555, 0xa7ff, 0xa7ff, 0xa7ff, 0xa9ff, 0xaa55, 0xbf0e, 0x5400, 0x55f9, 0xabf0, 0xe400, 0x5400, 0x12f0, 0x0003, 0x00a9, 0x54f9, 0x55f9, 0x15f9, 0x01af, 0xfdf0, 0x2feb, 0xff1a, 0x0000, 0x0009, 0xaaf1, 0x00fa, 0x0010, 0xaaaa, 0x02fe, 0xf080, 0xc010, 0x8181, 0xffef, 0x5400, 0x1555, 0x03e0, 0xfcfc, 0xfcfc, 0xfcfc, 0xfcfc, 0x0baf, 0x5005, 0x5655, 0x5855, 0x6355, 0x6355, 0x5855, 0x5615, 0x00fa, 0x0818, 0x20fa, 0xa404, 0xa400, 0xa400, 0xa400, 0xa400, 0xa555, 0x01f2, 0x5000, 0x00f6, 0x00ff, 0x020e, 0xfefe, 0xfefe, 0xfefe, 0x0f0e, 0x5400, 0x5455, 0x01f0, 0x000c, 0x3808, 0xabf0, 0x4002, 0x955a, 0x6a7f, 0x00fd, 0x0000
};

// [D_08C238FC] D_08C23A3C Huffman Window 1
u32 D_08c23a3c_window1[] = {
	0xfef3b7ef, 0xdfb7797c, 0xefdf3f6b, 0xfdfbf6f7, 0xdfbfbb7e, 0x65ecfffb, 0xaebf9f9e, 0x3f927efd, 0xefebfdf9, 0x00000001
};

// [D_08C23924] D_08C23A3C Huffman Window 2
u32 D_08c23a3c_window2[] = {
	0x29a529ae, 0x02a5692a, 0x55555565, 0x5556d7d5, 0x810a9bdd, 0x415d48a5, 0x56a5f004
};

// [D_08C23940] D_08C23A3C Huffman
struct Huffman D_08c23a3c_huffman[] = {
	/* Data */			D_08c23a3c_huffmandata,
	/* Size */			0xa09,
	/* Count */			0x121,
	/* Window 1 */		D_08c23a3c_window1,
	/* Window 2 */		D_08c23a3c_window2,
};

// [D_08C23950] D_08C23A3C RLE Data
u8 D_08c23a3c_rledata[] = {
	0x1, 0x1d, 0x3, 0xd, 0x3, 0xc, 0x44, 0xe, 0x16, 0x3, 0x19, 0x3, 0x2d, 0x5, 0xe, 0xb, 0x2, 0x4, 0xc, 0xa, 0x2b, 0x3, 0x28, 0x4, 0x1b, 0x6, 0x2, 0x5, 0x43, 0x3, 0x3e, 0x4, 0x1f, 0x5, 0x11, 0x3, 0x44, 0x1c, 0x4, 0x9, 0x6, 0x5, 0xf, 0xc, 0x1, 0x9, 0x2, 0xd, 0x7, 0xb, 0x6, 0xc, 0xc, 0x6, 0x2, 0xe, 0x2, 0x4, 0x11, 0x13, 0x8, 0x3, 0x6, 0x11, 0x6, 0xc, 0x4, 0xc, 0x4, 0xd, 0x3, 0xe, 0x2, 0x8, 0x7f, 0x3, 0x3d, 0x7, 0x47, 0x5, 0xf6, 0x4, 0x11, 0x5, 0x8d, 0x3, 0x0, 0x47, 0x4, 0xb, 0x9, 0x1f, 0x4, 0xa, 0xa, 0x19, 0x7, 0x7, 0x9, 0x21, 0xd, 0x3, 0xd, 0xd, 0x5, 0x1, 0xd, 0xe, 0x4, 0x1, 0xe, 0x2, 0x5, 0xf, 0xb, 0x9, 0x3, 0x4, 0x6, 0x2, 0x8, 0x1, 0x8, 0x4, 0x3, 0x21, 0xd, 0x13, 0x9, 0xa, 0x3, 0x3, 0x3, 0xc, 0x3, 0x15, 0x6, 0x4, 0x5, 0x11, 0xc, 0x7, 0xc, 0x3, 0xd, 0x1, 0x6, 0x3, 0x6, 0x1, 0x3, 0x2, 0xa, 0x1, 0x9, 0xb, 0xb, 0x1, 0x5, 0x3, 0x7, 0x1, 0xa, 0xd, 0x8, 0x1, 0x5, 0xb, 0x4, 0x7, 0x4, 0x2, 0xe, 0x9, 0x7, 0x1, 0x7, 0x11, 0x7, 0x1, 0xb, 0xc, 0x4, 0x6, 0x3, 0x1c, 0x8, 0x4e, 0x9, 0x9, 0x7, 0x11, 0x5, 0xf, 0x15, 0x12, 0x4, 0x1, 0xe, 0x25, 0xc, 0x9, 0x4, 0x3, 0x8, 0x19, 0x5, 0x13, 0x6, 0x18, 0xb, 0x6, 0x8, 0x1, 0x10, 0xa, 0x5, 0x15, 0xb, 0x2, 0x7, 0x2, 0x14, 0x4, 0xd, 0x51, 0xc, 0x4, 0xd, 0x9, 0x8, 0x46, 0x3, 0x9, 0x1f, 0x0
};

// [D_08C23A3C] D_08C23A3C Graphics
struct CompressedGraphics D_08c23a3c = {
	/* Huffman Data */		D_08c23a3c_huffman,
	/* RLE Data */			D_08c23a3c_rledata,
	/* RLE Size */			0xea,
	/* RLE Offset */		0xe00,
	/* Double Compressed */	TRUE,
};

u8 D_08c23a4c[4] = {
	0x78, 0x00, 0x82, 0x00
};

// // //  D_08C23CD0  // // //

// [D_08C23A50] D_08C23CD0 Data
u16 D_08c23cd0_data[] = {
	0x0000, 0x009e, 0x00a1, 0x00a2, 0x009f, 0x00a0, 0x00a4, 0x00a5, 0x00a3, 0x0000, 0x008e, 0x00a9, 0x00aa, 0x002b, 0x00ab, 0x00ac, 0x0000, 0x00a6, 0x00a7, 0x002b, 0x0090, 0x00a8, 0x0000, 0x008e, 0x008d, 0x002b, 0x0090, 0x008f, 0x0000, 0x0089, 0x008a, 0x0000, 0x0088, 0x002b, 0x008b, 0x008c, 0x0000, 0x009b, 0x009c, 0x0099, 0x009a, 0x0098, 0x002b, 0x009d, 0x0000, 0x0095, 0x0096, 0x0093, 0x0094, 0x0091, 0x0092, 0x002b, 0x0097, 0x0000, 0x00cc, 0x00ca, 0x00cb, 0x00c8, 0x00c9, 0x002b, 0x00cd, 0x0000, 0x00c6, 0x00c4, 0x00c5, 0x00c2, 0x00c3, 0x002b, 0x00c7, 0x0000, 0x0002, 0x0001, 0x0000, 0x00d9, 0x002b, 0x002b, 0x00d8, 0x00d7, 0x002b, 0x00dc, 0x00dd, 0x00da, 0x00db, 0x0000, 0x00d1, 0x002b, 0x002b, 0x00d0, 0x00ce, 0x00cf, 0x002b, 0x00d6, 0x00d4, 0x00d5, 0x00d2, 0x00d3, 0x0000, 0x00b4, 0x002b, 0x00b8, 0x00b9, 0x00b6, 0x00b7, 0x00b5, 0x0000, 0x00ad, 0x00ae, 0x002b, 0x00b2, 0x00b3, 0x00b0, 0x00b1, 0x00af, 0x0000, 0x00bf, 0x002b, 0x00c0, 0x00c1, 0x0000, 0x00bb, 0x00ba, 0x002b, 0x00be, 0x00bd, 0x0000, 0x00bc, 0x0000, 0x0032, 0x0033, 0x0030, 0x0031, 0x0000, 0x0035, 0x0000, 0x0034, 0x002d, 0x002b, 0x002b, 0x002c, 0x002b, 0x002b, 0x002e, 0x002f, 0x002b, 0x003e, 0x002b, 0x003d, 0x0040, 0x0000, 0x003f, 0x0000, 0x0038, 0x0039, 0x0036, 0x0037, 0x003b, 0x003c, 0x0000, 0x003a, 0x0016, 0x0017, 0x0014, 0x0015, 0x001a, 0x001b, 0x0018, 0x0019, 0x000e, 0x000f, 0x000c, 0x000d, 0x0012, 0x0013, 0x0010, 0x0011, 0x0025, 0x0026, 0x0023, 0x0024, 0x0029, 0x002a, 0x0027, 0x0028, 0x001e, 0x001f, 0x001c, 0x001d, 0x0021, 0x0022, 0x0000, 0x0020, 0x0069, 0x006a, 0x0067, 0x0068, 0x006d, 0x006e, 0x006b, 0x006c, 0x0061, 0x0062, 0x005f, 0x0060, 0x0065, 0x0066, 0x0063, 0x0064, 0x0078, 0x0079, 0x0076, 0x0077, 0x007c, 0x007d, 0x007a, 0x007b, 0x0071, 0x0072, 0x006f, 0x0070, 0x0074, 0x0075, 0x0000, 0x0073, 0x004b, 0x004c, 0x0049, 0x004a, 0x004f, 0x0050, 0x004d, 0x004e, 0x0043, 0x0044, 0x0041, 0x0042, 0x0047, 0x0048, 0x0045, 0x0046, 0x0059, 0x005a, 0x0057, 0x0058, 0x005d, 0x005e, 0x005b, 0x005c, 0x0053, 0x0054, 0x0051, 0x0052, 0x0055, 0x0056, 0x0000, 0x0002, 0x0001, 0x0000, 0x0008, 0x000a, 0x000b, 0x0009, 0x0000, 0x0003, 0x0004, 0x0006, 0x0007, 0x0005, 0x0000, 0x0085, 0x0083, 0x0084, 0x0086, 0x0087, 0x0000, 0x0080, 0x007e, 0x007f, 0x0081, 0x0082, 0x0000, 0x0082, 0x0000
};

// [D_08C23C84] D_08C23CD0 RLE Data
u8 D_08c23cd0_rledata[] = {
	0x1, 0x2a, 0x9, 0x15, 0x4, 0x6, 0x3, 0x12, 0x3, 0x9, 0x3, 0x10, 0x3, 0xb, 0x3, 0xc, 0x5, 0xd, 0x3, 0xb, 0x6, 0xd, 0x2, 0xb, 0x7, 0xc, 0x2, 0xc, 0x6, 0xc, 0x2, 0xc, 0x6, 0xd, 0x5, 0x9, 0x6, 0xc, 0x5, 0x9, 0x7, 0xa, 0x6, 0x9, 0x2, 0xe, 0x6, 0xa, 0x3, 0xd, 0x6, 0xb, 0x2, 0xd, 0x3, 0xe, 0x3, 0xb, 0x3, 0x4, 0x2, 0x3, 0x7f, 0x2e, 0x3, 0x1b, 0x5, 0x1a, 0x6, 0x19, 0x6, 0x1a, 0x6, 0x18, 0x2, 0xb6
};

// [D_08C23CD0] D_08C23CD0 Graphics
struct CompressedGraphics D_08c23cd0 = {
	/* Data */				{.raw = D_08c23cd0_data},
	/* RLE Data */			D_08c23cd0_rledata,
	/* RLE Size */			0x4c,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

// // //  D_08C24200  // // //

// [D_08C23CE0] D_08C24200 Huffman Data
u16 D_08c24200_huffmandata[] = {
	0x4130, 0x0003, 0x0050, 0x0090, 0x0040, 0x5cf0, 0x3012, 0x5403, 0x5554, 0xffaa, 0x5503, 0xc5c5, 0x1204, 0x5400, 0x3955, 0x1230, 0x4004, 0x80fe, 0x00ff, 0x00fe, 0x00f4, 0x00d0, 0x1000, 0x0020, 0x0080, 0x2103, 0x5401, 0x4e55, 0xea55, 0x0004, 0x0321, 0x5000, 0x40fe, 0x3104, 0x5400, 0x55ea, 0x0421, 0x4000, 0xfffe, 0x1340, 0x4004, 0x000a, 0x007d, 0x00f8, 0x00f8, 0x40fd, 0x3012, 0x5400, 0xabaa, 0x4210, 0x0003, 0x0039, 0x00e5, 0x00d5, 0x0025, 0x3322, 0x2104, 0x5401, 0x4eaa, 0x3eaa, 0x1233, 0x3111, 0x1240, 0x9000, 0x00ff, 0x4203, 0x5400, 0x7255, 0x4310, 0x0000, 0x0395, 0x4321, 0x0004, 0x4312, 0x2340, 0x0001, 0x07e4, 0x7e00, 0x4130, 0x0002, 0x0090, 0x0040, 0x00c0, 0x0042, 0x4310, 0x0001, 0x0025, 0x0956, 0x2340, 0xe400, 0x0002, 0x1114, 0x2340, 0x0431, 0x9400, 0xfaaf, 0x0000, 0x1240, 0x1230, 0x4000, 0xd0fe, 0x3401, 0x0000, 0xc009, 0x3021, 0x0000, 0x0c90, 0x0421, 0x0413, 0x9400, 0xeafe, 0x0000, 0x0021, 0x8080, 0x2322, 0x2111, 0x1304, 0x9400, 0x95ff, 0x4201, 0x0002, 0xc095, 0xe035, 0x6035, 0x3344, 0x4443, 0x0012, 0x3efe, 0x2220, 0x0002, 0x0040, 0x8080, 0x0321, 0x0008, 0x00f9, 0x00f4, 0x00f4, 0x00f4, 0x00f4, 0x00f4, 0x00f4, 0xfff4, 0xff6f, 0x2340, 0x9000, 0x0000, 0x3344, 0x0123, 0xa402, 0xa3ff, 0xa7ff, 0xa7ff, 0x1340, 0x5400, 0xfffe, 0x0231, 0x0001, 0x0009, 0x000b, 0x0421, 0x9001, 0x90ff, 0xd0ff, 0x4310, 0x0005, 0x0025, 0x0039, 0x0095, 0x0355, 0x0255, 0x0c00, 0x1230, 0x0001, 0x0064, 0x00d0, 0x2140, 0x4001, 0x9000, 0xb000, 0x2130, 0xe400, 0xa4a5, 0x0021, 0x1000, 0x3401, 0x0000, 0x0039, 0x4000, 0x4123, 0xa402, 0x01aa, 0x6aaa, 0x3daa, 0x2031, 0x0003, 0x00e9, 0xdf69, 0xb000, 0x900e, 0x1114, 0x0021, 0xc080, 0x0421, 0x0001, 0xe050, 0xf8ff, 0x2430, 0x0005, 0x0001, 0x000a, 0x0027, 0x000b, 0x0002, 0x001f, 0x4120, 0x4001, 0x80aa, 0xb0aa, 0x4301, 0x0000, 0x0025, 0x1240, 0xe401, 0xf8ff, 0xfcbf, 0x2431, 0x4000, 0x8002, 0x0042, 0x2310, 0x0000, 0x0009, 0x1042, 0xa401, 0xa7aa, 0xa8aa, 0x4230, 0x0001, 0x0001, 0x3f90, 0x3120, 0x9001, 0x9d6a, 0xa7aa, 0x1111, 0x4000, 0x1123, 0x0421, 0x4002, 0x00fe, 0x00fd, 0x00f4, 0x4031, 0x9000, 0xc000, 0x3421, 0x0000, 0x1d94, 0x0432, 0xe400, 0xfebd, 0x2140, 0x0000, 0x7a90, 0x3140, 0x9000, 0x90ea, 0x3021, 0x4002, 0x003a, 0x006a, 0x07aa, 0x0040, 0x00c0, 0x2340, 0x0001, 0x0140, 0xfa80, 0x3412, 0x5000, 0xfa55, 0x2103, 0x0007, 0x5555, 0x5eaa, 0x5eaa, 0x5eaa, 0x5eaa, 0x5eaa, 0x53aa, 0x54eb, 0x1340, 0x0001, 0x0040, 0x40e0, 0x1123, 0x1240, 0xe401, 0xa9bf, 0x00ff, 0x4213, 0x9401, 0x5557, 0x0957, 0x0312, 0x1401, 0xe1fe, 0xf8ff, 0x3420, 0x0000, 0x8025, 0x0032, 0x3410, 0x4000, 0xc002, 0x1111, 0x4042, 0x3333, 0x1354, 0x2130, 0x0001, 0x00a4, 0x00ac, 0x3124, 0xa400, 0xaa7f, 0x4021, 0x4001, 0xbeaa, 0x07aa, 0x4043, 0x0213, 0x5400, 0xff95, 0x1340, 0x4000, 0xfe90, 0x0014, 0xfffc, 0x4130, 0x0002, 0x0090, 0x0090, 0x00a0, 0x1140, 0x0132, 0x5005, 0xaaa1, 0xaa7d, 0xaa85, 0xaa4a, 0xaaf4, 0xaa82, 0x0432, 0x9401, 0xffe9, 0xffff, 0x0421, 0x9000, 0x40ff, 0x2103, 0x5001, 0x5eaa, 0x6aaa, 0x0432, 0xe401, 0xff87, 0xffe6, 0x3412, 0x5400, 0x5585, 0x0321, 0x0421, 0x0000, 0x00f9, 0x2103, 0x5401, 0x54aa, 0x552a, 0x0432, 0xe401, 0xfeff, 0x6fff, 0x0040, 0x7010, 0x1430, 0x0001, 0x0240, 0x01e0, 0x4230, 0x4001, 0x000e, 0xc006, 0x0311, 0x0040, 0x8080, 0x1340, 0x0003, 0x0000, 0x80a9, 0x40ff, 0x00ff, 0x1112, 0x0000, 0x0013, 0xfffe, 0x3211, 0x0324, 0x5400, 0xc0fa, 0x1100, 0x4211, 0x3240, 0x2031, 0x9001, 0x705a, 0x0075, 0x4211, 0x2230, 0x1234, 0x2140, 0x4000, 0x0040, 0x0321, 0x0000, 0x0664, 0x4031, 0xa402, 0xadfa, 0x6aaa, 0x3aaa, 0x4012, 0x5000, 0xfa55, 0x4013, 0x5402, 0x552a, 0x557a, 0x554a, 0x1124, 0x0021, 0x0800, 0x0321, 0x9000, 0xfd00, 0x2041, 0x0000, 0xc0a4, 0x2143, 0x1403, 0xaaaa, 0xc03a, 0xd52a, 0x1503, 0x1430, 0x0000, 0x0255, 0x4021, 0x0001, 0x00a9, 0x00ad, 0x1032, 0xa401, 0xa4fc, 0xa4fc, 0x0040, 0x1010, 0x0010, 0xf000, 0x2401, 0x0001, 0x2554, 0x1555, 0x4322, 0x0021, 0x0100, 0x1340, 0xe403, 0x40ff, 0x00fe, 0x00e4, 0x0006, 0x0321, 0xe400, 0x40ff, 0x2104, 0x5401, 0x53aa, 0x5eaa, 0x0030, 0x3010, 0x2130, 0x0003, 0x0054, 0x00e4, 0x00ec, 0x00e9, 0x4012, 0x5400, 0xc5ea, 0x4130, 0x4000, 0xc06a, 0x0412, 0x1401, 0x56fe, 0x57fe, 0x1043, 0xa402, 0xa3fd, 0xa3fd, 0xaaf2, 0x3340, 0x0040, 0x0100, 0x4203, 0x5400, 0x5e55, 0x2310, 0x0000, 0x0009, 0x0421, 0x0000, 0x3211, 0x1204, 0x5400, 0xfffe, 0x2130, 0xa400, 0xacaa, 0x1111, 0x2340, 0xa400, 0x00ff, 0x3140, 0x4005, 0xc0aa, 0x40aa, 0x00aa, 0x00ac, 0x00ac, 0x00a4, 0x1230, 0x9000, 0x0000, 0x3041, 0xa400, 0xa43a, 0x2140, 0x9000, 0xc003, 0x0432, 0x3210, 0x0005, 0x0029, 0x0025, 0x0035, 0x000f, 0x0395, 0x0355, 0x0021, 0x0170, 0x0124, 0xa402, 0x0faa, 0xffa9, 0xffa8, 0x1430, 0x9401, 0x0000, 0x556a, 0x4321, 0x0000, 0xaaa4, 0x0004, 0x0000
};

// [D_08C24160] D_08C24200 Huffman Window 1
u32 D_08c24200_window1[] = {
	0x9b1cbf6f, 0xffdc995c, 0x7ff8f7f6, 0xfdfbdc2f, 0x7fef88a6, 0x7df63bff, 0x00000000
};

// [D_08C2417C] D_08C24200 Huffman Window 2
u32 D_08c24200_window2[] = {
	0xcdffffef, 0xbfffeeff, 0xd6ffdfff, 0xfdf74fdf, 0x000000ef
};

// [D_08C24190] D_08C24200 Huffman
struct Huffman D_08c24200_huffman[] = {
	/* Data */			D_08c24200_huffmandata,
	/* Size */			0x2e5,
	/* Count */			0xc1,
	/* Window 1 */		D_08c24200_window1,
	/* Window 2 */		D_08c24200_window2,
};

// [D_08C241A0] D_08C24200 RLE Data
u8 D_08c24200_rledata[] = {
	0x1, 0x1a, 0x6, 0x6, 0x5, 0x4, 0x1, 0x5, 0x3, 0x4, 0x4, 0x20, 0x20, 0x3, 0xd, 0x5, 0xa, 0x6, 0xb, 0xd, 0x15, 0x9, 0x9, 0x36, 0x29, 0x4, 0x19, 0xba, 0x26, 0x14, 0x8, 0x4, 0x12, 0x6, 0x12, 0x4, 0x2d, 0x5, 0x6, 0x5, 0x15, 0x4f, 0x17, 0x5, 0x13, 0xb6, 0x27, 0x3, 0x2, 0x9, 0x7, 0x8, 0x12, 0x6, 0x4, 0x8, 0x6, 0x8, 0x12, 0x3, 0x10, 0x11, 0x2, 0xd, 0x2, 0x0, 0x40, 0x2, 0x3, 0x2f, 0xb, 0x7, 0x6, 0x22, 0x5, 0xd, 0xf, 0xb, 0x9, 0xd, 0x45, 0xb, 0xf2, 0x36, 0x0, 0xc8, 0x35, 0x7, 0x4, 0x0, 0x0, 0x0, 0x0, 0x0, 0xc5, 0x0
};

// [D_08C24200] D_08C24200 Graphics
struct CompressedGraphics D_08c24200 = {
	/* Huffman Data */		D_08c24200_huffman,
	/* RLE Data */			D_08c24200_rledata,
	/* RLE Size */			0x58,
	/* RLE Offset */		0x1000,
	/* Double Compressed */	TRUE,
};

// // //  D_08C24604  // // //

// [D_08C24210] D_08C24604 Huffman Data
u16 D_08c24604_huffmandata[] = {
	0x534c, 0x0001, 0xaa55, 0xffaa, 0x4444, 0x0053, 0xff00, 0x5335, 0x014f, 0x8080, 0xc0c0, 0xffff, 0x3fff, 0x015f, 0x9c86, 0xfff8, 0x5fcf, 0x0000, 0x5500, 0x00f4, 0xf0e0, 0xf3f4, 0x4000, 0x5955, 0x005f, 0x6010, 0x345f, 0x0005, 0x0014, 0xffaa, 0x55ff, 0xaa15, 0x3f02, 0x0100, 0x00ef, 0x00f0, 0x3f35, 0x0000, 0x5555, 0x00ec, 0xf0f8, 0xe35f, 0x0001, 0x5500, 0xaaaa, 0xeeee, 0x005f, 0xff00, 0x0035, 0xf006, 0x6fc3, 0x0002, 0xaa55, 0xffaa, 0x0000, 0xcccc, 0x006f, 0xff00, 0x0036, 0xf006, 0x5fc3, 0x0002, 0xaa55, 0xffaa, 0x0000, 0xcccc, 0x005f, 0xff00, 0x0035, 0xf006, 0x3333, 0x00cf, 0xf0f0, 0x015f, 0xfc00, 0xf0fc, 0xf35f, 0x0000, 0x0055, 0x3fff, 0x00fe, 0xf8f8, 0x016f, 0x0700, 0x3f07, 0xf3f6, 0x0000, 0xaa50, 0xff33, 0x01ef, 0x1010, 0x00f0, 0xff36, 0x0000, 0x5555, 0x03fa, 0x8040, 0x8080, 0xc0ff, 0x080f, 0xfffa, 0x00ef, 0xf080, 0xfafe, 0x9400, 0xa400, 0xefff, 0x00af, 0x020c, 0xbcaf, 0x1000, 0xf200, 0x3cfb, 0x9000, 0x9ff6, 0xf5fc, 0xa406, 0xa41a, 0xa41a, 0xa41a, 0xa41a, 0xa41a, 0x551a, 0x5515, 0xcf5f, 0x03cf, 0xf0f0, 0xf8f8, 0xfefc, 0x8080, 0xfc5f, 0x0000, 0x5085, 0xcf55, 0x09cf, 0xfe7e, 0xf3f3, 0xf7f7, 0x7010, 0x01f0, 0x030f, 0x0703, 0x3f0f, 0x00ff, 0x0f01, 0xf5fc, 0xa404, 0xa41a, 0xa41a, 0xa41a, 0xa41a, 0xa41a, 0xcf55, 0x00f5, 0xff00, 0x35fc, 0xa402, 0xa41a, 0xa41a, 0xf41a, 0xbcf3, 0x9001, 0x9ff6, 0x9ff6, 0x005f, 0x00f8, 0x02cf, 0xe0f0, 0xe0e0, 0xe0e0, 0x005f, 0x000e, 0x02cf, 0x0c0c, 0x1c0c, 0x3c1c, 0x00f5, 0xffc0, 0x02fc, 0xe0c0, 0xe0e0, 0xe0e0, 0x38ce, 0x70f0, 0x3070, 0x1010, 0xe0f0, 0xc0e0, 0x8080, 0xf7f0, 0xf3f3, 0x31f1, 0xc010, 0xf080, 0xfcfe, 0xf8fc, 0x0ff0, 0x070f, 0x0707, 0x0303, 0xf003, 0xe0f0, 0xe0e0, 0xc0c0, 0x7fc0, 0x3f7f, 0x3f3f, 0x1f1f, 0xfe0f, 0xfcfe, 0xfcfc, 0xf8f8, 0xfff0, 0x7f01, 0x031f, 0x1f00, 0x8f03, 0x0c0f, 0x8fef, 0x0c0f, 0x0ff0, 0x7f08, 0x1f3f, 0x070f, 0x8fef, 0x0f0f, 0xfc0e, 0x70f3, 0xf3f0, 0x1070, 0x0fc0, 0x0e0f, 0xef08, 0x0fcf, 0xfe0f, 0xf1f0, 0xf3f1, 0xf3f3, 0x07f7, 0x8f8f, 0xcccc, 0xccef, 0x02fc, 0xf070, 0x60f1, 0x8380, 0xffcc, 0xcfff, 0x01ef, 0xc0e0, 0x0ff0, 0xf9ef, 0x5005, 0x5500, 0x5521, 0x5521, 0x5521, 0x5581, 0x5505, 0x00fa, 0xfefe, 0x9efa, 0x4002, 0x4036, 0x0536, 0x0076, 0x07ec, 0xfcfc, 0xf8fc, 0xf8f8, 0xf0f0, 0x3f3f, 0x1f3f, 0x1f1f, 0x0f0f, 0x00fe, 0xc070, 0xeeee, 0xf9fe, 0x00fe, 0xf030, 0xffff, 0x03ec, 0xe0e0, 0xc0c0, 0xf080, 0xfcfe, 0xfffc, 0x0000, 0x0015, 0x00fa, 0xfafc, 0xfcaf, 0x1402, 0x5580, 0x55a8, 0x55a8, 0xccfa, 0x00fa, 0x00c0, 0x01cf, 0xfcc0, 0x00fe, 0x01fe, 0xc080, 0xf8f8, 0xfeee, 0x00af, 0x5db0, 0xfeaf, 0x5404, 0x5548, 0x552a, 0x152a, 0x40aa, 0x54aa, 0xeeee, 0x03af, 0x3cb6, 0xefdf, 0x5de3, 0xcd9e, 0xaafa, 0x01fe, 0x1cf0, 0xdd0c, 0xa9ef, 0x0408, 0x04a0, 0x00f8, 0x00f8, 0x55f1, 0x15c1, 0x80f8, 0xea3e, 0x3f43, 0x4f54, 0x00fe, 0x3030, 0x02ce, 0x1010, 0x7030, 0xf070, 0xeeee, 0x00cf, 0xfefc, 0xcccf, 0xcccc, 0x03af, 0x0602, 0x0105, 0x0001, 0x0703, 0x02cf, 0x10e0, 0x80c0, 0xf000, 0x07af, 0x0706, 0xa107, 0xad51, 0xb7ae, 0xe080, 0x9fb8, 0xfaff, 0xbd79, 0x01fe, 0xc0c0, 0xe0c0, 0x9afe, 0x5402, 0xb4a5, 0xb4a9, 0x94aa, 0x5efa, 0x0003, 0x00d9, 0x0159, 0x00d9, 0x5569, 0x0fec, 0xfefc, 0xfefe, 0xfefe, 0xfefe, 0x7f3f, 0x7f7f, 0x7f7f, 0x7f7f, 0xfefe, 0xfefe, 0xfefe, 0xfcfe, 0x7f7f, 0x7f7f, 0x7f7f, 0x3f7f, 0x0000
};

// [D_08C2452C] D_08C24604 Huffman Window 1
u32 D_08c24604_window1[] = {
	0xedddff95, 0xffb6f6ee, 0xd6ef4fc9, 0x00001fcb
};

// [D_08C2453C] D_08C24604 Huffman Window 2
u32 D_08c24604_window2[] = {
	0x94849551, 0x285006ae, 0x00006024
};

// [D_08C24548] D_08C24604 Huffman
struct Huffman D_08c24604_huffman[] = {
	/* Data */			D_08c24604_huffmandata,
	/* Size */			0x3b3,
	/* Count */			0x6e,
	/* Window 1 */		D_08c24604_window1,
	/* Window 2 */		D_08c24604_window2,
};

// [D_08C24558] D_08C24604 RLE Data
u8 D_08c24604_rledata[] = {
	0x1, 0xf, 0x1, 0x7, 0x3, 0x5, 0x1, 0x7, 0x5, 0x3, 0x1, 0x10, 0x14, 0xb, 0x6, 0xe, 0x4, 0x4, 0x5, 0x7, 0x3, 0x4, 0x2, 0x6, 0x5, 0x4, 0x1, 0x3, 0x3, 0x7, 0x9, 0x7, 0x3, 0x3, 0x5, 0x3, 0x5, 0x3, 0x3, 0x7, 0x3, 0x3, 0x5, 0x3, 0x5, 0x3, 0x3, 0x7, 0x3, 0x3, 0x5, 0x3, 0x29, 0xb, 0x1, 0x3, 0x3, 0x7, 0xf, 0x3, 0x1, 0x4, 0x4, 0x8, 0x2, 0xd, 0xb, 0x5, 0x11, 0xc, 0xf, 0x4, 0x1, 0x8, 0xb, 0xd, 0x8, 0x7, 0x1, 0x9, 0x7, 0x3, 0x1, 0xb, 0x1, 0x3, 0x11, 0xb, 0x1, 0x3, 0x4d, 0xf, 0xc, 0x5, 0xc, 0x3, 0x1, 0x6, 0xd, 0xd, 0x4, 0xb, 0x1, 0x5, 0x4e, 0xc, 0x1, 0x8, 0x8, 0x4, 0x3, 0x8, 0x1, 0x3, 0x5, 0x7, 0x1, 0x7, 0xd, 0xb, 0x1, 0x6, 0xa, 0x5, 0xb, 0xa, 0xd, 0x8, 0x9, 0x7, 0x1, 0x7, 0x25, 0x3, 0x1, 0x8, 0xc, 0xb, 0x5, 0xb, 0xb, 0x5, 0x4, 0x5, 0x28, 0xd, 0x2, 0xd, 0x4, 0xb, 0xf, 0x5, 0x1, 0xb, 0x5, 0xd, 0x16, 0x8, 0x5, 0x6, 0x49, 0x4, 0x12, 0xa, 0x15, 0x4, 0x28, 0x8, 0x58, 0x0, 0xf0, 0x0
};

// [D_08C24604] D_08C24604 Graphics
struct CompressedGraphics D_08c24604 = {
	/* Huffman Data */		D_08c24604_huffman,
	/* RLE Data */			D_08c24604_rledata,
	/* RLE Size */			0xaa,
	/* RLE Offset */		0x800,
	/* Double Compressed */	TRUE,
};

u8 D_08c24614[4] = {
	0x78, 0x00, 0x82, 0x00
};

// // //  D_08C24804  // // //

// [D_08C24618] D_08C24804 Data
u16 D_08c24804_data[] = {
	0x0000, 0x0034, 0x0035, 0x0033, 0x0028, 0x0028, 0x0038, 0x0036, 0x0037, 0x0000, 0x003b, 0x003c, 0x0028, 0x003d, 0x003e, 0x0000, 0x0039, 0x002c, 0x0028, 0x002d, 0x003a, 0x0000, 0x002b, 0x002c, 0x0028, 0x002d, 0x002e, 0x0000, 0x0029, 0x0028, 0x002a, 0x0000, 0x0031, 0x0028, 0x0032, 0x0000, 0x002f, 0x0028, 0x0030, 0x0000, 0x005d, 0x0028, 0x005e, 0x0000, 0x0028, 0x0000, 0x0028, 0x0000, 0x005f, 0x0028, 0x0060, 0x0000, 0x0046, 0x0028, 0x0049, 0x004a, 0x0048, 0x0028, 0x0047, 0x0000, 0x003f, 0x0028, 0x0044, 0x0045, 0x0042, 0x0043, 0x0040, 0x0041, 0x0000, 0x0055, 0x0028, 0x005b, 0x005c, 0x0059, 0x005a, 0x0057, 0x0058, 0x0056, 0x0000, 0x004b, 0x004c, 0x0028, 0x0050, 0x0053, 0x0054, 0x0051, 0x0052, 0x004e, 0x004f, 0x004d, 0x0000, 0x000d, 0x000e, 0x000d, 0x000d, 0x000e, 0x000d, 0x000d, 0x000e, 0x000f, 0x000b, 0x000c, 0x000a, 0x000a, 0x000c, 0x000a, 0x000a, 0x000c, 0x0014, 0x0014, 0x0012, 0x0013, 0x0017, 0x0018, 0x0015, 0x0016, 0x0003, 0x0011, 0x000f, 0x0010, 0x000f, 0x000f, 0x0010, 0x0001, 0x0002, 0x0001, 0x0001, 0x0002, 0x0001, 0x0001, 0x0002, 0x0001, 0x0001, 0x0002, 0x0001, 0x0001, 0x0002, 0x0001, 0x0001, 0x0002, 0x0008, 0x0009, 0x0006, 0x0007, 0x0003, 0x0004, 0x0001, 0x0002, 0x0001, 0x0001, 0x0002, 0x0005, 0x0024, 0x0005, 0x0005, 0x0024, 0x0005, 0x0005, 0x0024, 0x0005, 0x0005, 0x0024, 0x0005, 0x0005, 0x0024, 0x0005, 0x0005, 0x0024, 0x0027, 0x0003, 0x0003, 0x0026, 0x0003, 0x0025, 0x0005, 0x0024, 0x0005, 0x0005, 0x0024, 0x0000, 0x0019, 0x0000, 0x0000, 0x0019, 0x0000, 0x0000, 0x0019, 0x0000, 0x0000, 0x0019, 0x0000, 0x0000, 0x0019, 0x0000, 0x0000, 0x0019, 0x001e, 0x001f, 0x001c, 0x001d, 0x0022, 0x0023, 0x0020, 0x0021, 0x001a, 0x001b, 0x0000, 0x0019, 0x0000, 0x0000, 0x0019, 0x0000
};

// [D_08C247C0] D_08C24804 RLE Data
u8 D_08c24804_rledata[] = {
	0x1, 0x2b, 0x9, 0x15, 0x3, 0x7, 0x3, 0x12, 0x3, 0x9, 0x3, 0x10, 0x3, 0xb, 0x3, 0xf, 0x2, 0xd, 0x2, 0xe, 0x2, 0xf, 0x2, 0xd, 0x2, 0xf, 0x2, 0xd, 0x2, 0xf, 0x2, 0xd, 0x1, 0x11, 0x1, 0xd, 0x1, 0x11, 0x1, 0xd, 0x2, 0xf, 0x2, 0xd, 0x2, 0xb, 0x6, 0xd, 0x2, 0xb, 0x7, 0xd, 0x2, 0xa, 0x8, 0xc, 0x3, 0x8, 0x9, 0x4, 0x36, 0x4, 0x1c, 0x4, 0x27, 0x0, 0x80, 0x0
};

// [D_08C24804] D_08C24804 Graphics
struct CompressedGraphics D_08c24804 = {
	/* Data */				{.raw = D_08c24804_data},
	/* RLE Data */			D_08c24804_rledata,
	/* RLE Size */			0x42,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

