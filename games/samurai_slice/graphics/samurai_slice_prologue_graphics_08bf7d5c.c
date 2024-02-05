#include "global.h"
#include "graphics.h"

// // //  D_08BF7D5C  // // //

// [D_08BF7AB8] D_08BF7D5C Data
u16 D_08bf7d5c_data[] = {
	0x105f, 0x0001, 0x0001, 0x105f, 0x10c5, 0x10c7, 0x10c6, 0x10cc, 0x10cb, 0x10ce, 0x10cd, 0x1000, 0x10c8, 0x10ca, 0x10c9, 0x10c3, 0x10c2, 0x10c4, 0x105f, 0x0001, 0x0001, 0x105f, 0x10b3, 0x10b2, 0x10b5, 0x10b4, 0x10ba, 0x10b9, 0x10bc, 0x10bb, 0x10b7, 0x10b6, 0x10b8, 0x10a6, 0x1000, 0x1000, 0x10b1, 0x10b0, 0x10af, 0x105f, 0x0001, 0x0001, 0x105f, 0x10c1, 0x10c0, 0x10bf, 0x1000, 0x1000, 0x1000, 0x10bd, 0x10be, 0x105f, 0x0001, 0x0001, 0x105f, 0x10d9, 0x10da, 0x1000, 0x1000, 0x1000, 0x10d8, 0x10d7, 0x105f, 0x0001, 0x0001, 0x105f, 0x10dd, 0x10dc, 0x1000, 0x1000, 0x1000, 0x10db, 0x105f, 0x0001, 0x0001, 0x105f, 0x10d1, 0x10cf, 0x1000, 0x1000, 0x10d0, 0x105f, 0x0001, 0x0001, 0x10d5, 0x10d4, 0x10d6, 0x105f, 0x10d2, 0x1000, 0x1000, 0x10d3, 0x105f, 0x0001, 0x0001, 0x107e, 0x107d, 0x1080, 0x107f, 0x105f, 0x107b, 0x1000, 0x1000, 0x107c, 0x105f, 0x0001, 0x0001, 0x105f, 0x105f, 0x1089, 0x1088, 0x1085, 0x1084, 0x1087, 0x1086, 0x105f, 0x108b, 0x108a, 0x108d, 0x108c, 0x105f, 0x1081, 0x1000, 0x1083, 0x1082, 0x105f, 0x0001, 0x0001, 0x105f, 0x105f, 0x105f, 0x1067, 0x1064, 0x1063, 0x1066, 0x1065, 0x106d, 0x106c, 0x106f, 0x106e, 0x1069, 0x1068, 0x106b, 0x106a, 0x105f, 0x1061, 0x105f, 0x1062, 0x105e, 0x105d, 0x1060, 0x105f, 0x0001, 0x0001, 0x105f, 0x1077, 0x1076, 0x1078, 0x107a, 0x1079, 0x1073, 0x1072, 0x1075, 0x1074, 0x1071, 0x1070, 0x105f, 0x0001, 0x0001, 0x105f, 0x10a0, 0x10a3, 0x1078, 0x10a2, 0x10a1, 0x1000, 0x109d, 0x109f, 0x109e, 0x109c, 0x109b, 0x105f, 0x0001, 0x0001, 0x105f, 0x10a9, 0x10ae, 0x1078, 0x1078, 0x1078, 0x10ab, 0x10aa, 0x10ad, 0x10ac, 0x10a6, 0x10a6, 0x10a8, 0x10a7, 0x10a5, 0x10a4, 0x105f, 0x0001, 0x0001, 0x105f, 0x1091, 0x1078, 0x1093, 0x1092, 0x108f, 0x108e, 0x1090, 0x105f, 0x0001, 0x0001, 0x105f, 0x1097, 0x1096, 0x1078, 0x1078, 0x109a, 0x1078, 0x1078, 0x1078, 0x1099, 0x1098, 0x1094, 0x105f, 0x1095, 0x105f, 0x0001, 0x0001, 0x105f, 0x10f5, 0x10f3, 0x10f2, 0x1078, 0x10f4, 0x10fa, 0x10f9, 0x10fc, 0x10fb, 0x10f7, 0x10f6, 0x105f, 0x10f8, 0x105f, 0x0001, 0x0001, 0x105f, 0x105f, 0x105f, 0x1100, 0x10ff, 0x1078, 0x1078, 0x10fe, 0x10fd, 0x105f, 0x105f, 0x1102, 0x1078, 0x1101, 0x105f, 0x0001, 0x0001, 0x105f, 0x10e2, 0x10e1, 0x10e4, 0x10e3, 0x10df, 0x10de, 0x10e0, 0x105f, 0x105f, 0x105f, 0x10e8, 0x10e7, 0x10e6, 0x10e5, 0x105f, 0x0001, 0x0001, 0x105f, 0x10ea, 0x10e9, 0x10ec, 0x10eb, 0x105f, 0x10f1, 0x10f0, 0x10ee, 0x10ed, 0x10ef, 0x105f, 0x0001
};

// [D_08BF7D08] D_08BF7D5C RLE Data
u8 D_08bf7d5c_rledata[] = {
	0x1, 0x1d, 0x3, 0x4, 0xf, 0xa, 0x3, 0x3, 0x12, 0x8, 0x3, 0xe, 0x9, 0x6, 0x3, 0x10, 0x8, 0x5, 0x3, 0x11, 0x7, 0x5, 0x3, 0x12, 0x6, 0x5, 0x6, 0x10, 0x5, 0x5, 0x7, 0xf, 0x5, 0x5, 0xb, 0x3, 0x5, 0x3, 0x5, 0x5, 0x1a, 0x6, 0x3, 0x5, 0x3, 0x5, 0x9, 0x7, 0x3, 0x6, 0x3, 0x4, 0x9, 0x7, 0x3, 0x6, 0x10, 0x7, 0x3, 0x6, 0x2, 0x5, 0x6, 0xa, 0x3, 0x5, 0xe, 0xa, 0x3, 0x3, 0xe, 0xc, 0x11, 0xf, 0x12, 0xe, 0x8, 0x5, 0x6, 0xd, 0x1, 0x0, 0x82, 0x0
};

// [D_08BF7D5C] D_08BF7D5C Graphics
struct CompressedGraphics D_08bf7d5c = {
	/* Data */				{.raw = D_08bf7d5c_data},
	/* RLE Data */			D_08bf7d5c_rledata,
	/* RLE Size */			0x52,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

