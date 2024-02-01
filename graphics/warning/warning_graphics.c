#include "global.h"
#include "graphics.h"

// // //  D_08D1AD4C  // // //

// [D_08D1A330] D_08D1AD4C Huffman Data
u16 D_08d1ad4c_huffmandata[] = {
	0x9612, 0x0010, 0x830c, 0x0300, 0xf142, 0x4040, 0x2020, 0x5140, 0xf00d, 0x0800, 0x0404, 0x083f, 0x1f08, 0x8010, 0x80f3, 0xa1c6, 0x4091, 0x08b8, 0x8879, 0x0908, 0xff02, 0x1020, 0x0808, 0x1515, 0x419f, 0x0909, 0x7f01, 0x4140, 0x2422, 0x4030, 0x8080, 0xf840, 0xf121, 0x6488, 0x0fe0, 0xc182, 0x1827, 0x4040, 0x404e, 0x5040, 0x7104, 0x0901, 0x0101, 0x0401, 0x1fc4, 0x8484, 0xf087, 0xc10c, 0x0432, 0x0404, 0x5754, 0x5048, 0x5050, 0x1010, 0x107f, 0x1010, 0xb010, 0x0413, 0xc101, 0x0101, 0x01f9, 0x0101, 0x1011, 0x7c11, 0x9090, 0x1090, 0x4f20, 0x0240, 0x4102, 0x8181, 0x0101, 0x1901, 0x8cf0, 0xfc02, 0x1c20, 0x7010, 0x0988, 0x29fa, 0x29f8, 0x0828, 0x020e, 0x0202, 0x0202, 0x1002, 0x8f88, 0x8404, 0x020f, 0x8c04, 0x88bf, 0xafb8, 0x88b8, 0x088f, 0x120c, 0x0129, 0x4041, 0xf08f, 0x9101, 0x6790, 0x9090, 0x020c, 0x80f1, 0x0100, 0x810e, 0xc180, 0x4030, 0x0e30, 0x0101, 0x180e, 0x78a4, 0x4250, 0x0c42, 0x7909, 0x4c01, 0x0354, 0x040f, 0xc003, 0x4c50, 0x8103, 0x2060, 0xc523, 0x9090, 0x0f10, 0x0658, 0x0101, 0x0a09, 0x2506, 0x1825, 0x80f0, 0xf080, 0x8080, 0x80f0, 0xc000, 0x080f, 0x0404, 0xf448, 0xf446, 0xf454, 0xe444, 0xc08c, 0x1f0c, 0x02e0, 0x8043, 0xee03, 0x0330, 0x308d, 0x10e0, 0x8308, 0x50f0, 0x820a, 0x08b0, 0x493e, 0x4848, 0x2122, 0x1b25, 0xfffc, 0xfbfc, 0xfcfb, 0xfefe, 0xf6fe, 0xf7f9, 0xf347, 0xd3e5, 0xefdf, 0xaebf, 0xaaae, 0xdf7d, 0xcf9f, 0xee95, 0x8fdf, 0xf7d8, 0xf9c7, 0xc7d7, 0xa593, 0xbfb3, 0x13d7, 0x6567, 0xfafe, 0xd8bd, 0x6f1d, 0x3f6c, 0x3f7c, 0x395c, 0x2525, 0x4412, 0x13d0, 0x5a52, 0x5252, 0x919a, 0x97d1, 0x92b4, 0x98be, 0x1255, 0x8085, 0x808c, 0x8080, 0x8488, 0xfe04, 0x0c04, 0x0c04, 0x0c04, 0x8cf6, 0x8ef0, 0x8ef0, 0x8c84, 0x21f4, 0x21f3, 0x0bf8, 0x09f9, 0x02e9, 0x0ee4, 0x0ee2, 0xa4e4, 0x9ba4, 0xaaba, 0x9abb, 0x1b9a, 0x0788, 0x0fe0, 0x0204, 0x4483, 0xc104, 0x810f, 0x254f, 0x2325, 0xa071, 0x1292, 0x4128, 0x4241, 0xf102, 0xf107, 0xe10f, 0x1311, 0x1f05, 0x8408, 0x281f, 0x2424, 0x0834, 0x400f, 0x2040, 0xc720, 0x0780, 0x10e2, 0x4080, 0x4040, 0x4040, 0x8240, 0x1002, 0x2020, 0x4040, 0x4946, 0x0249, 0xc048, 0x0603, 0x0152, 0x7702, 0x8082, 0x1112, 0x2111, 0x0152, 0xc080, 0x4681, 0x0012, 0x0180, 0x0052, 0x1d18, 0xf125, 0x1401, 0x1444, 0x95a9, 0x0152, 0x2040, 0x90e0, 0xf152, 0x0400, 0xa808, 0x0152, 0xd110, 0x1113, 0x5225, 0x2211, 0x0152, 0x1c20, 0x4070, 0x2525, 0x0112, 0x301e, 0x09f0, 0x0125, 0xdfbc, 0x691c, 0x2221, 0x2211, 0x0152, 0x2850, 0x287c, 0x5252, 0x0012, 0x0780, 0x0125, 0x7fcc, 0xfbfc, 0xf152, 0x1000, 0x8000, 0x0152, 0x80c0, 0xa0c0, 0x6b12, 0xff10, 0x2020, 0x417e, 0x0101, 0xf800, 0x8000, 0x4140, 0x8041, 0x2f00, 0x2021, 0x2020, 0x4020, 0x0404, 0x0404, 0x0404, 0x8404, 0xf014, 0xf80b, 0x80c0, 0x0108, 0x0201, 0x1212, 0xf12a, 0xf422, 0x2221, 0x2424, 0x0104, 0x0f01, 0xe101, 0x1311, 0x0005, 0x080e, 0x020c, 0x0409, 0xf014, 0xb00c, 0x5861, 0x0444, 0x4084, 0x803c, 0x8380, 0x5144, 0x0157, 0x403d, 0x8020, 0x0407, 0x8f04, 0x4244, 0x0182, 0xc202, 0xc623, 0x0102, 0x2404, 0x0404, 0x2404, 0x0020, 0x0618, 0x0601, 0x4008, 0x1e28, 0x0808, 0x1404, 0x2224, 0x23f0, 0x17a0, 0x9010, 0x8040, 0x8be8, 0x4e80, 0x4040, 0x2122, 0x2f20, 0x2020, 0x2220, 0x0121, 0xa030, 0x00f0, 0x09e0, 0x2808, 0x2018, 0x33e1, 0xa925, 0x48c8, 0x0438, 0x18e8, 0x0800, 0x0ff1, 0xf080, 0x084f, 0x1ff2, 0x1fd2, 0x0ff2, 0x0232, 0x1814, 0x0136, 0x927c, 0x1011, 0x0208, 0x1f82, 0x8302, 0x1862, 0x10e3, 0xc020, 0xf300, 0x0818, 0x3e08, 0x3e28, 0x3e28, 0xf421, 0x5006, 0x4a55, 0x4a55, 0x2a55, 0x2055, 0xa055, 0xa054, 0xa054, 0x2214, 0x0212, 0xf090, 0x7058, 0x8080, 0xf412, 0x0004, 0x0040, 0x0090, 0x0090, 0x00a4, 0x00a4, 0x4441, 0x0a12, 0x3010, 0x0f00, 0x0e02, 0x8909, 0x0d15, 0x3d04, 0x0997, 0x10b7, 0x0ff1, 0xf101, 0x0f0f, 0xf421, 0x0009, 0x5514, 0x15a8, 0x15aa, 0x85aa, 0x85aa, 0x15aa, 0x5500, 0x52a0, 0x4aaa, 0x4aa0, 0x0041, 0x7f7c, 0x0621, 0x0f80, 0xddfc, 0xd01d, 0xdeed, 0xfefe, 0xeefe, 0xdede, 0x2221, 0x2b52, 0x8880, 0x048e, 0x8091, 0x4a43, 0x1e06, 0x4080, 0x1c82, 0x1010, 0x0080, 0x4080, 0x7080, 0x7418, 0xb2dc, 0xe802, 0x0c01, 0xc020, 0x0109, 0x0100, 0x0202, 0x0101, 0x898b, 0x10a9, 0xd010, 0x1010, 0xa090, 0xf850, 0x1551, 0x8063, 0xc040, 0x2521, 0x0003, 0x0a02, 0x0106, 0x280e, 0x295c, 0x1025, 0xd180, 0x9591, 0x9202, 0x9612, 0x8c50, 0x1070, 0xd07e, 0x0cb0, 0x4321, 0x707e, 0xfe7e, 0x7fc0, 0xbfbf, 0xf7cf, 0x7df9, 0xcfb0, 0xfc33, 0x04f1, 0x5f5f, 0xbfbf, 0xf1cf, 0xeded, 0x6e6d, 0xdfef, 0xeede, 0x7776, 0x7f7f, 0x7f7f, 0x0fc0, 0x00f6, 0xfefe, 0xef00, 0xefef, 0x7fef, 0xfff0, 0xfef0, 0xc0f0, 0xe0ff, 0xe0ef, 0x2def, 0x7da0, 0xfc95, 0xf6f6, 0xeff6, 0x6f1c, 0x2f6f, 0xaf6f, 0x1f7f, 0xef7c, 0xf417, 0xc0fe, 0x7c0f, 0x7c07, 0x0f7f, 0x5f3c, 0xbc0f, 0x66df, 0xe0fd, 0xc0fb, 0x4ef7, 0xd6e8, 0xc0f6, 0xedfb, 0xdfd6, 0xdf0f, 0xf50f, 0xfc07, 0xfd56, 0xdedf, 0xfe1f, 0x4dfd, 0xfdf3, 0xebf8, 0x65e8, 0xbe0f, 0xfe0f, 0xf7fd, 0x2322, 0x0412, 0x1910, 0x03f2, 0x990e, 0x1506, 0x0424, 0x2232, 0x0312, 0xc100, 0x1030, 0xc020, 0x0101, 0x2212, 0x0032, 0x4040, 0x1f12, 0x8080, 0x3444, 0x0804, 0x0408, 0x08f4, 0x1a22, 0x40f0, 0x0871, 0x9192, 0x9c0c, 0x0cb2, 0x52a1, 0x4081, 0x41c8, 0x704c, 0x7404, 0x0484, 0xa711, 0x9191, 0x1010, 0xf020, 0x0403, 0x0204, 0x8092, 0x89f0, 0x4080, 0x43f0, 0x0150, 0x8a07, 0x1212, 0x00f0, 0x0408, 0x2122, 0x0a32, 0x0408, 0x0404, 0x0202, 0xe702, 0xf112, 0x1010, 0xc0e7, 0x5453, 0x0454, 0x91cf, 0xd151, 0x0912, 0x0a00, 0x068c, 0x0201, 0x1e01, 0x0e29, 0x2926, 0x101e, 0xe010, 0xa203, 0x1ca2, 0x2222, 0x2223, 0x0012, 0x0932, 0x2122, 0x0032, 0x8080, 0x0021, 0x7dfe, 0x1122, 0x2221, 0x0032, 0x8080, 0x0412, 0x0170, 0x10f0, 0xe810, 0x090b, 0x0408, 0x2432, 0xe10e, 0x7808, 0x0404, 0x0404, 0x3078, 0x714f, 0x0101, 0x0171, 0x8400, 0x5457, 0x5454, 0x0794, 0x3800, 0x2324, 0xc020, 0x8403, 0x7847, 0x50d0, 0x5050, 0x50d0, 0x044c, 0x449e, 0x84c4, 0x0209, 0x0a0a, 0x040a, 0x7804, 0x0898, 0x8a7a, 0x8a8a, 0x8a8a, 0xa8a0, 0x5151, 0xa220, 0xa2a2, 0x4142, 0x0001, 0x1612, 0x1828, 0x01e8, 0x8488, 0x3344, 0xa920, 0x14a4, 0x4308, 0x2a46, 0x4021, 0x2232, 0x08c4, 0x409f, 0x4cc9, 0x0ec9, 0xcba8, 0x9ba8, 0x2520, 0xc123, 0x0408, 0x0202, 0x20fc, 0x1818, 0x0be8, 0x2552, 0x2225, 0x0312, 0x4380, 0x8a46, 0x8101, 0x1080, 0x1111, 0x0052, 0x06e0, 0x2a12, 0x0202, 0x0272, 0x1422, 0xe31c, 0x5240, 0x2252, 0x4803, 0x2448, 0x8023, 0x0182, 0xc01e, 0x020f, 0x0fe2, 0x4889, 0x3348, 0x2420, 0x8112, 0x2410, 0x8c44, 0x48c0, 0x0438, 0x2203, 0x1212, 0x20cc, 0xfc20, 0x2020, 0xfc10, 0xf810, 0x2054, 0x2023, 0x2020, 0xbf80, 0x8080, 0xf080, 0xe000, 0x0809, 0x493e, 0x9208, 0x0207, 0x0111, 0x8e78, 0x2828, 0x0f04, 0x1122, 0x1111, 0x0052, 0x0890, 0x0112, 0x94dc, 0x8cf6, 0xf512, 0x1000, 0x0851, 0x0112, 0x4040, 0xe04f, 0xf512, 0x0000, 0x0a10, 0x2552, 0x0312, 0x43e0, 0x4252, 0x0242, 0x24f8, 0x2522, 0x2552, 0x0412, 0x8080, 0x82f9, 0x2082, 0x33e1, 0xa925, 0xf512, 0x4000, 0xa000, 0x0112, 0x6980, 0x0018, 0xf512, 0x4000, 0x8222, 0x0112, 0xf080, 0x484f, 0xf512, 0x0001, 0x5555, 0x80a0, 0x0112, 0xafb0, 0xaeb8, 0xf512, 0x4001, 0x5445, 0x0a0a, 0x0312, 0x04f0, 0xc874, 0x0478, 0x4e38, 0xf512, 0x4000, 0x0210, 0x2255, 0x0112, 0x8c70, 0xfc02, 0xf512, 0x0000, 0x8204, 0x2225, 0x3012, 0x2e10, 0x8899, 0x7048, 0x4040, 0x4870, 0x3038, 0x4040, 0x0030, 0xf010, 0x1418, 0x5834, 0x0800, 0x2f90, 0x1020, 0xc810, 0xe400, 0x8989, 0xa1c1, 0x8081, 0x4f00, 0x9292, 0x0812, 0x3e00, 0x4848, 0x3248, 0x0200, 0x0202, 0x1202, 0x0c14, 0x0100, 0x02f9, 0x12e2, 0xe012, 0x0900, 0x0808, 0x2808, 0x1018, 0x0408, 0x0404, 0x7008, 0x8800, 0x0d12, 0x1f30, 0x9f10, 0x10f0, 0x0e70, 0x20ff, 0x0408, 0x603f, 0x1222, 0x0125, 0x6eee, 0x7daa, 0x0012, 0x2fe0, 0x0125, 0x7e88, 0x9a7c, 0x0112, 0x53f0, 0x0802, 0x1112, 0x1121, 0x0152, 0x7224, 0x302a, 0x0f12, 0xf980, 0x2020, 0x8280, 0x2c20, 0x0802, 0x8a88, 0x9284, 0x80a0, 0x8000, 0x9488, 0x86a8, 0xc48c, 0x800c, 0x4840, 0x2e48, 0x0929, 0xff12, 0x1400, 0x0000, 0x0000
};

// [D_08D1AAA0] D_08D1AD4C Huffman Window 1
u32 D_08d1ad4c_window1[] = {
	0x7e9a7f35, 0xf34dab7b, 0xb7fe5f34, 0x0000039e
};

// [D_08D1AAB0] D_08D1AD4C Huffman Window 2
u32 D_08d1ad4c_window2[] = {
	0x01520280, 0x55528000, 0x00000040
};

// [D_08D1AABC] D_08D1AD4C Huffman
struct Huffman D_08d1ad4c_huffman[] = {
	/* Data */			D_08d1ad4c_huffmandata,
	/* Size */			0xce0,
	/* Count */			0x6a,
	/* Window 1 */		D_08d1ad4c_window1,
	/* Window 2 */		D_08d1ad4c_window2,
};

// [D_08D1AACC] D_08D1AD4C RLE Data
u8 D_08d1ad4c_rledata[] = {
	0x1, 0x5, 0xb, 0x3, 0xd, 0x3, 0xd, 0x3, 0xd, 0x4, 0xc, 0x3, 0xd, 0xe, 0x2, 0x5, 0xa, 0x4, 0xc, 0x4, 0xd, 0x5, 0x4, 0x3, 0x4, 0x4, 0xc, 0x3, 0xc, 0x4, 0xd, 0x4, 0xc, 0x3, 0xd, 0x6, 0x3, 0xc, 0xa, 0x4, 0xd, 0x4, 0xc, 0x3, 0xd, 0x3, 0xd, 0x4, 0xc, 0x5, 0xb, 0x5, 0xa, 0xc, 0x5, 0x11, 0x51, 0xe, 0x6, 0x9, 0x7, 0xd, 0x3, 0x9, 0x7, 0xa, 0x5, 0xb, 0x5, 0xa, 0x7, 0x9, 0x1, 0x4, 0x2, 0x9, 0x6, 0xb, 0x5, 0xb, 0x6, 0x9, 0x7, 0x9, 0x7, 0xa, 0x6, 0x9, 0x6, 0xf, 0x2, 0x9, 0x7, 0xa, 0x5, 0xb, 0x5, 0xa, 0x6, 0xa, 0x7, 0x9, 0x1, 0x3, 0x3, 0xa, 0x4, 0xb, 0x6, 0xa, 0x7, 0x9, 0x15, 0x5, 0x19, 0xd, 0x3, 0xd, 0x3, 0xd, 0x3, 0xd, 0x3, 0xd, 0x3, 0xd, 0x3, 0xd, 0x3, 0xd, 0x3, 0xd, 0x2, 0xe, 0x2, 0xe, 0x3, 0xd, 0x3, 0xd, 0x2, 0xe, 0x3, 0xd, 0x3, 0xd, 0x3, 0xf, 0x5, 0x5, 0x10, 0x7, 0xa, 0x5, 0xb, 0xb, 0x4, 0x7, 0xa, 0x6, 0xa, 0x5, 0xb, 0x5, 0xb, 0x5, 0xb, 0x3, 0xd, 0x5, 0xb, 0x3, 0xd3, 0x3, 0xd, 0xd, 0x3, 0xd, 0x3, 0xd, 0x2, 0xf, 0x2, 0xf, 0x21, 0xd, 0x3, 0xd, 0x3, 0xe, 0x2, 0x5, 0xb, 0x5, 0xb, 0x6, 0xa, 0x5, 0xb, 0x5, 0xa, 0x6, 0xb, 0xe, 0x2, 0xd, 0x3, 0x5, 0xb, 0x4, 0xc, 0x4, 0xc, 0x6, 0x4a, 0xd, 0x3, 0xd, 0x3, 0xd, 0x2, 0x10, 0x54, 0x3, 0x10, 0x3, 0x15, 0x3, 0xc, 0x5, 0x5f, 0x5, 0x2, 0x7, 0x1f, 0x6, 0x8, 0x6, 0xc, 0x4, 0xc, 0x4, 0xc, 0x5, 0xa, 0x5, 0x7, 0x4, 0x1, 0x5, 0x9, 0x5, 0xd, 0x3, 0x1d, 0x4, 0xa, 0x4, 0xe, 0x5, 0x2, 0x4, 0x5, 0x4, 0xc, 0x3, 0xb, 0x5, 0xb, 0x9, 0x2, 0x4, 0xf, 0x3, 0xd, 0x9, 0x3, 0xc, 0xc, 0x4, 0xc, 0x5, 0x5, 0x4, 0x2, 0x6, 0xa, 0x5, 0xb, 0x5, 0x2, 0x6, 0x2, 0x7, 0xa, 0x5, 0xb, 0x4, 0xc, 0x3, 0xc, 0x6, 0xb, 0x6, 0xa, 0x4, 0xc, 0x5, 0x17, 0x5, 0xb, 0x6, 0x9, 0x6, 0xb, 0x5, 0xb, 0x3, 0xb, 0x5, 0xb, 0x5, 0xa, 0x9, 0x2, 0x3, 0x3, 0x5, 0xb, 0x5, 0xb, 0x5, 0xa, 0x7, 0xa, 0xd, 0x3, 0x7, 0x9, 0x7, 0x8, 0x6, 0xb, 0x5, 0xb, 0x5, 0xb, 0x5, 0xb, 0x6, 0xa, 0x5, 0xb, 0x7, 0x2, 0x4, 0x3, 0xd, 0x8, 0x8, 0x8, 0x8, 0x9, 0x7, 0x8, 0x8, 0x8, 0x8, 0x9, 0x7, 0x9, 0xc, 0x4, 0x7, 0x9, 0x7, 0x3, 0xd, 0x8, 0x8, 0x9, 0x7, 0x9, 0x4, 0x2, 0x7, 0x9, 0x9, 0x6, 0xa, 0x6, 0x8, 0x8, 0xa, 0x7, 0xa, 0x4, 0x8, 0x4, 0x4, 0x2, 0x9, 0x7, 0xa, 0x4, 0xc, 0x6, 0xa, 0x5, 0xa, 0x7, 0x9, 0x6, 0xa, 0x6, 0x13, 0x7, 0x8, 0x8, 0x8, 0x9, 0x7, 0x9, 0xa, 0x6, 0xd, 0x3, 0x7, 0x9, 0x7, 0x8, 0x8, 0x9, 0x7, 0x9, 0x7, 0x16, 0x4, 0xd, 0x3, 0x6, 0x4, 0x3, 0x3, 0x3, 0x4, 0xd, 0xa, 0x6, 0xa, 0x6, 0xa, 0x7, 0x9, 0x7, 0x9, 0x7, 0x8, 0x7, 0x7, 0xa, 0x5, 0xa, 0xa, 0x7, 0x9, 0x6, 0xc, 0x3, 0x7, 0x3, 0x3, 0xd, 0x3, 0x22, 0x5, 0x6, 0x3, 0x7, 0x3, 0x3, 0x4, 0x16, 0x3, 0x3, 0x4, 0xc, 0x3, 0x3, 0x7, 0x3, 0x3, 0xd, 0x3, 0x3, 0x5, 0x5, 0x3, 0x17, 0x7, 0x9, 0x7, 0x9, 0x7, 0x9, 0x7, 0x9, 0xd, 0x3, 0x7, 0x9, 0x7, 0x9, 0x7, 0x9, 0x7, 0x9, 0x7, 0x9, 0x4, 0xc, 0x8, 0x8, 0x5, 0xb, 0x7, 0x9, 0x7, 0x9, 0x7, 0x9, 0x8, 0x8, 0x7, 0x9, 0x7, 0x9, 0x7, 0x8, 0x8, 0x8, 0x8, 0x9, 0x7, 0x9, 0xe, 0xa, 0x6, 0xa, 0x6, 0xa, 0x6, 0xa, 0x7, 0x9, 0x7, 0x5, 0x3, 0x1, 0x6, 0xa, 0x6, 0xa, 0x8, 0x2, 0xd, 0x3, 0x5, 0x3, 0x3, 0xc, 0x5, 0xc, 0x3, 0xb, 0x7, 0x4, 0x4, 0x3, 0x4, 0xa, 0x5, 0xd, 0x5, 0xb, 0x3, 0xd, 0x3, 0xd, 0x3, 0xb, 0x6, 0x5, 0x3, 0x4, 0x4, 0xc, 0x5, 0x16, 0x8, 0x1d, 0x3, 0x22, 0x4, 0xc, 0x4, 0x31, 0x4, 0x1e, 0x10, 0x2, 0xb, 0x5, 0xd, 0x3, 0xd, 0x3, 0xb, 0x5, 0xd, 0xb, 0x4, 0xc, 0x3, 0x5, 0xb, 0xd, 0x4, 0x4, 0xc, 0x4, 0xc, 0x4, 0xb, 0x5, 0xb, 0x6, 0x3, 0x2b, 0x0
};

// [D_08D1AD4C] D_08D1AD4C Graphics
struct CompressedGraphics D_08d1ad4c = {
	/* Huffman Data */		D_08d1ad4c_huffman,
	/* RLE Data */			D_08d1ad4c_rledata,
	/* RLE Size */			0x27f,
	/* RLE Offset */		0x1600,
	/* Double Compressed */	TRUE,
};

u8 D_08d1ad5c[4] = {
	0x78, 0x00, 0x98, 0x00
};


// // //  D_08D1B00C  // // //

// [D_08D1AD60] D_08D1B00C Data
u16 D_08d1b00c_data[] = {
	0x001a, 0x00b7, 0x00b6, 0x00b0, 0x00b1, 0x00ae, 0x00af, 0x00b4, 0x00b5, 0x00b2, 0x00b3, 0x00b8, 0x00b9, 0x001a, 0x00a3, 0x00a1, 0x00a2, 0x00a6, 0x00a7, 0x00a4, 0x00a5, 0x00a0, 0x009a, 0x009b, 0x0098, 0x0099, 0x009e, 0x009f, 0x009c, 0x009d, 0x00a8, 0x00ac, 0x00ad, 0x00ab, 0x001a, 0x00a9, 0x00aa, 0x00ca, 0x00cb, 0x00c8, 0x00c9, 0x00ce, 0x00cf, 0x00cc, 0x00cd, 0x00c7, 0x00c1, 0x00c2, 0x00bf, 0x00c0, 0x00c5, 0x00c6, 0x00c3, 0x00c4, 0x00d0, 0x001a, 0x00ba, 0x00bd, 0x00be, 0x00bb, 0x00bc, 0x0055, 0x0056, 0x0053, 0x0054, 0x001a, 0x0059, 0x0057, 0x0058, 0x0052, 0x0050, 0x0051, 0x004f, 0x001a, 0x0063, 0x0066, 0x0067, 0x0064, 0x0065, 0x0062, 0x005c, 0x005d, 0x005a, 0x005b, 0x0060, 0x0061, 0x005e, 0x005f, 0x004e, 0x001d, 0x001e, 0x001b, 0x001c, 0x003b, 0x003c, 0x001f, 0x003a, 0x001a, 0x003d, 0x0048, 0x0049, 0x0046, 0x0047, 0x004c, 0x004d, 0x004a, 0x004b, 0x0045, 0x0040, 0x0041, 0x003e, 0x003f, 0x0044, 0x001a, 0x0042, 0x0043, 0x0083, 0x0084, 0x0082, 0x004d, 0x0085, 0x001a, 0x0081, 0x007f, 0x0080, 0x0086, 0x0092, 0x0093, 0x0090, 0x0091, 0x0096, 0x0097, 0x0094, 0x0095, 0x008f, 0x0089, 0x008a, 0x0087, 0x0088, 0x008d, 0x008e, 0x008b, 0x008c, 0x007e, 0x006d, 0x006e, 0x001a, 0x0069, 0x001a, 0x0068, 0x006c, 0x0069, 0x006a, 0x006b, 0x006f, 0x0078, 0x0079, 0x0076, 0x0077, 0x007c, 0x007d, 0x007a, 0x007b, 0x0075, 0x006c, 0x001a, 0x0070, 0x0071, 0x0073, 0x0074, 0x0072, 0x001a, 0x0135, 0x0134, 0x012e, 0x012f, 0x012c, 0x012d, 0x0132, 0x0133, 0x0130, 0x0131, 0x0136, 0x013e, 0x013f, 0x013c, 0x013d, 0x0141, 0x0142, 0x0140, 0x0130, 0x013b, 0x0139, 0x013a, 0x0137, 0x0138, 0x001a, 0x011d, 0x0120, 0x0121, 0x011e, 0x011f, 0x011c, 0x0116, 0x0117, 0x0114, 0x0115, 0x011a, 0x011b, 0x0118, 0x0119, 0x0122, 0x0126, 0x0127, 0x0124, 0x0125, 0x012a, 0x012b, 0x0128, 0x0129, 0x0123, 0x001a, 0x0157, 0x0158, 0x0155, 0x0156, 0x015b, 0x015c, 0x0159, 0x015a, 0x0154, 0x0151, 0x0152, 0x014f, 0x0150, 0x0153, 0x001a, 0x015f, 0x015d, 0x015e, 0x014e, 0x0148, 0x0149, 0x0146, 0x0147, 0x014c, 0x014d, 0x014a, 0x014b, 0x0145, 0x0143, 0x0144, 0x001a, 0x00f7, 0x00f6, 0x00f0, 0x00f1, 0x00ee, 0x00ef, 0x00f4, 0x00f5, 0x00f2, 0x00f3, 0x00ed, 0x00d8, 0x00d9, 0x00d6, 0x00d7, 0x00dc, 0x00dd, 0x00da, 0x00db, 0x00d5, 0x00d3, 0x00d4, 0x00d1, 0x00d2, 0x001a, 0x00e7, 0x00e8, 0x00eb, 0x00ec, 0x00e9, 0x00ea, 0x00e6, 0x00e0, 0x00e1, 0x00de, 0x00df, 0x00e4, 0x00e5, 0x00e2, 0x00e3, 0x0101, 0x0102, 0x00ff, 0x0100, 0x0105, 0x0106, 0x0103, 0x0104, 0x00fe, 0x00fc, 0x00fd, 0x001a, 0x010f, 0x0112, 0x0113, 0x0110, 0x0111, 0x010e, 0x0109, 0x010a, 0x0107, 0x0108, 0x0107, 0x010d, 0x010b, 0x010c, 0x00fb, 0x00f9, 0x00fa, 0x00f8, 0x001a
};

// [D_08D1AFE8] D_08D1B00C RLE Data
u8 D_08d1b00c_rledata[] = {
	0x1, 0x6, 0xd, 0x11, 0x15, 0xb, 0x15, 0x2f, 0x12, 0x8, 0x18, 0x8, 0x18, 0x8, 0x19, 0x7, 0x19, 0x7, 0x19, 0x7, 0x19, 0x7, 0xf, 0x11, 0x10, 0x30, 0x19, 0x6, 0x1b, 0x9, 0x13, 0x0, 0xe8, 0x0, 0x0, 0x0
};

// [D_08D1B00C] D_08D1B00C Graphics
struct CompressedGraphics D_08d1b00c = {
	/* Data */				{.raw = D_08d1b00c_data},
	/* RLE Data */			D_08d1b00c_rledata,
	/* RLE Size */			0x20,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

