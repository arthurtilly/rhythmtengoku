#include "global.h"
#include "graphics.h"

// // //  D_08C9D2E8  // // //

// [D_08C9BE58] D_08C9D2E8 Huffman Data
u16 D_08c9d2e8_huffmandata[] = {
	0x13d0, 0x0001, 0x5a55, 0xaf55, 0x003d, 0x8040, 0xf31d, 0x0003, 0x0255, 0x0955, 0x2555, 0x9555, 0x00d1, 0xcff0, 0x4f1d, 0x0002, 0x8055, 0xe0fe, 0xf8fe, 0x00f4, 0x2232, 0xfd4f, 0x0001, 0x0500, 0x014a, 0xf4fd, 0x00df, 0xf7f8, 0xf4fd, 0x9401, 0x5900, 0x0640, 0x001d, 0xf0f0, 0x0213, 0xf8f8, 0xf8fc, 0xe7f1, 0xc13f, 0x4000, 0x3fa5, 0x0113, 0xf7fc, 0xf7f7, 0xfcf1, 0x4000, 0x9500, 0x02d3, 0x0100, 0x0303, 0x0103, 0xf1d3, 0x5000, 0x2955, 0x001d, 0xf010, 0xf3d1, 0x5400, 0x8000, 0x01d4, 0xbdee, 0x77bb, 0x143d, 0x0001, 0x0201, 0x0804, 0xd111, 0x023d, 0x0202, 0x0404, 0x0808, 0x1133, 0x033d, 0x3030, 0x1030, 0x2010, 0x1020, 0xf13d, 0x0000, 0x00a9, 0x1111, 0x004d, 0x9090, 0x134d, 0x0003, 0x8010, 0x8010, 0xe004, 0xf801, 0x01df, 0xc080, 0xf0e0, 0xf4df, 0x4000, 0x5495, 0x004d, 0x8204, 0xddd4, 0x011d, 0xf030, 0x10f1, 0x1ddd, 0x1111, 0x004d, 0x0202, 0xf4fa, 0x5000, 0x94aa, 0x01f4, 0x0e1c, 0xefcf, 0xa4df, 0x0001, 0x2a40, 0x2afc, 0xaaff, 0x00f4, 0x02c4, 0x1d4f, 0x5411, 0x0555, 0x152a, 0x44aa, 0x52aa, 0x54aa, 0x552a, 0x052a, 0x50aa, 0x54aa, 0xa8aa, 0xa1aa, 0x840a, 0x1350, 0x5305, 0x14e0, 0x84e5, 0xa184, 0xa812, 0x34fd, 0x9000, 0x7fff, 0x4fd1, 0x0002, 0x96e9, 0xe9ae, 0xbe5b, 0xd13f, 0x5001, 0xaa55, 0xaaa0, 0x14fd, 0x6402, 0x90a9, 0xa55a, 0x5af5, 0x01f1, 0x1030, 0x7030, 0xffc1, 0x0003, 0x0095, 0x0255, 0x0a55, 0x2955, 0x00fc, 0xe1e0, 0xfcf5, 0xa402, 0xa45a, 0xa46a, 0xa96a, 0xfccc, 0x003d, 0x0100, 0xfd31, 0x9400, 0xc0ea, 0x314f, 0x4003, 0x04aa, 0xa12a, 0xa840, 0xaa04, 0x1111, 0xdd33, 0x0031, 0x00c0, 0xd4f1, 0x4003, 0x9005, 0xe41b, 0xf46b, 0xf96b, 0x1d43, 0x6403, 0xf0ff, 0x0aff, 0xaafc, 0xa9c2, 0x3ddd, 0x004d, 0x110e, 0x1f31, 0x0000, 0x5555, 0x004d, 0x0fc0, 0x314d, 0x0003, 0x5000, 0xeaaa, 0x3faa, 0x00fa, 0xdd31, 0x003d, 0x1010, 0x014d, 0x0800, 0x01c6, 0x003d, 0x0800, 0xf13d, 0x9400, 0xa94f, 0x1f44, 0x1111, 0x02df, 0xf0e0, 0xfef8, 0xfeff, 0xfdf4, 0xa400, 0x916a, 0x4ffd, 0x01f4, 0xf8e0, 0xfefc, 0x4fff, 0x00df, 0xff70, 0xf13d, 0x0004, 0x40a9, 0x90aa, 0xa4aa, 0xa9aa, 0xeaaa, 0x5f1c, 0x0004, 0x0025, 0x0009, 0xa009, 0xf809, 0xf809, 0x5cbf, 0xa400, 0x94f2, 0xffcc, 0x00fd, 0xe000, 0xc6fd, 0x0003, 0x40e9, 0x4056, 0x90e9, 0x9556, 0x64af, 0x4400, 0x44ca, 0xf4fd, 0x0002, 0x4005, 0x005a, 0x0001, 0xddf4, 0x01fd, 0x1030, 0x8010, 0xf14f, 0x0000, 0x5540, 0x44f1, 0x01f4, 0x8e10, 0xefcf, 0x00df, 0xcff0, 0x1fdc, 0x5402, 0x9460, 0xf88a, 0xbca0, 0xa4cf, 0x5001, 0x4c80, 0x4ca8, 0x444f, 0x4d31, 0x0006, 0x00e9, 0x00e9, 0x00e9, 0x00e9, 0x00e9, 0x00a9, 0x00a9, 0xdd31, 0x0331, 0xf010, 0x70f0, 0xf070, 0xf0f0, 0x02d4, 0xfefe, 0xfefe, 0xe7f7, 0x04d1, 0xfcc0, 0xe0ff, 0x0080, 0xff03, 0xc0e0, 0x003d, 0x8000, 0xf3d1, 0x0006, 0x0095, 0x0095, 0x0095, 0x0095, 0x0025, 0x0025, 0x5565, 0x0331, 0xfefe, 0xfcfe, 0xf8f8, 0x80c0, 0x27f1, 0x000d, 0x0001, 0x0406, 0x1906, 0x6a56, 0xaea6, 0xf7da, 0x4069, 0x4069, 0x41a9, 0x41a9, 0x41a9, 0x46a9, 0x56a9, 0x76aa, 0x27fb, 0x6406, 0x64bf, 0xa4bf, 0xa4bd, 0xa4fd, 0xa4f6, 0xa4da, 0xa46b, 0x7772, 0xfd41, 0x0008, 0x00d9, 0x00e4, 0x0024, 0x0024, 0x00a9, 0x4059, 0x4002, 0x0002, 0x0003, 0x21f7, 0xa401, 0x90aa, 0x43aa, 0x001f, 0x7efe, 0x21f7, 0xa401, 0x5016, 0xfd01, 0x2bf7, 0xa406, 0x93f4, 0x93f4, 0x9fd0, 0x7f40, 0x7d00, 0xf400, 0x5003, 0x01bf, 0xfefe, 0xfeff, 0x5bf7, 0xa407, 0x90aa, 0x90aa, 0x41aa, 0xaaaa, 0xa9fd, 0xa4fd, 0xa456, 0x90aa, 0x72fb, 0x4001, 0x407e, 0x41fe, 0x7722, 0xb4f7, 0x9403, 0x41ff, 0x01ff, 0x01ff, 0x01ff, 0x27fb, 0x0002, 0x00e4, 0x01e4, 0x00a4, 0x77fb, 0xbc5f, 0x5400, 0x03a8, 0x00bc, 0xf3f0, 0xf5fb, 0x5400, 0xa900, 0x00fb, 0x0800, 0x17fb, 0x4006, 0x4001, 0x4006, 0x4006, 0x401a, 0x401a, 0x1d6a, 0x7600, 0xf72b, 0x0005, 0x00f9, 0x03a9, 0x03a5, 0x03a5, 0x0e95, 0x0e97, 0x00f1, 0x4040, 0xc7f1, 0x0003, 0x0064, 0x0064, 0x0065, 0x06a7, 0x27fc, 0x11f7, 0x27fc, 0x11f7, 0x2fcc, 0x1f77, 0x2fbb, 0x1f72, 0x72fb, 0x9001, 0x907e, 0x907a, 0xbc72, 0x5000, 0xffaa, 0xbbbf, 0xbbbb, 0x02f1, 0x0100, 0x0101, 0x0a02, 0x7f7f, 0x00f1, 0xc000, 0x1111, 0x7f11, 0x00f1, 0x80c0, 0x67f1, 0x400b, 0x4050, 0x9064, 0x9069, 0xa419, 0xa406, 0xa406, 0x0015, 0x0074, 0x01d0, 0x07f4, 0x07fd, 0x17f5, 0x1f6d, 0x6400, 0x6592, 0xf66f, 0x5f11, 0x01f5, 0x0830, 0x1808, 0x61f5, 0x9002, 0x9556, 0x7d06, 0x7f41, 0xfd41, 0x4001, 0x4002, 0x40c2, 0x5ffd, 0x4111, 0x55fd, 0x5f41, 0x4001, 0x40be, 0x002a, 0xf1d4, 0xa400, 0x54aa, 0x7fff, 0xf1f7, 0x017f, 0xef9e, 0x3cf3, 0xf2f7, 0x4001, 0x1505, 0x00a0, 0x2227, 0x00f1, 0x0300, 0xf1f7, 0x5000, 0x0059, 0x77ff, 0x0072, 0x80fc, 0x17f2, 0x0002, 0x5554, 0xa0a9, 0x80d6, 0xf777, 0x0072, 0x80e0, 0xff27, 0x5403, 0x4255, 0xa855, 0x016a, 0x0280, 0x0027, 0xc78e, 0x7722, 0x2222, 0x017f, 0x3e64, 0xf3ce, 0x77ff, 0x0027, 0xce08, 0xb7f2, 0x0012, 0x0000, 0xa6a5, 0x296a, 0x029a, 0x40a5, 0x902a, 0x4002, 0x9400, 0x0000, 0xa0a7, 0x80a7, 0x009f, 0x009d, 0x00a6, 0x002a, 0xfda9, 0xf6a2, 0xda82, 0x6800, 0x0072, 0x80c0, 0xf777, 0x0172, 0xe0f0, 0xe080, 0xff27, 0x4002, 0x5015, 0x5556, 0x5558, 0x00f7, 0xe01c, 0x0072, 0x00fc, 0xf2f7, 0x9002, 0x9096, 0x4046, 0x0206, 0x777f, 0x0072, 0x30b8, 0xff72, 0x0000, 0x6515, 0x0527, 0x9808, 0xefbb, 0xf7f7, 0xf3f3, 0x61fd, 0x9f38, 0x2222, 0x00f1, 0xc080, 0x67f1, 0x0007, 0x0064, 0x0019, 0x401a, 0x9416, 0x17f5, 0x1f7d, 0x07f7, 0x015f, 0x1f6f, 0x00f1, 0x0c20, 0x57f1, 0x6400, 0x9950, 0x6f55, 0x00f6, 0x7070, 0xd16f, 0x5401, 0x1052, 0x1213, 0x1ff4, 0x1f6f, 0x00f1, 0x3a22, 0x271f, 0x5404, 0x14a8, 0x14aa, 0x85aa, 0xa1ea, 0xa8fa, 0x0027, 0x8f0e, 0x71f2, 0x0006, 0xff69, 0xffd9, 0xfff7, 0x7f3f, 0x7f0f, 0x9fc0, 0x7ff0, 0x7722, 0x0017, 0xfff0, 0xf7f1, 0x4001, 0x9000, 0xa400, 0x11f1, 0x007f, 0xbf2e, 0xbf27, 0x4001, 0x5008, 0x0bea, 0x00f7, 0x0018, 0x0272, 0xe0f8, 0x0fc0, 0x080f, 0x00f1, 0xe038, 0x47f1, 0x0001, 0x0064, 0x0054, 0xfd41, 0x9006, 0x90aa, 0x4095, 0x4082, 0x4002, 0x40aa, 0x0056, 0x0009, 0x11d4, 0x1cbf, 0x540e, 0x54a9, 0x54a9, 0x54a5, 0x54a5, 0x53a5, 0x5395, 0x5395, 0xf295, 0xcaff, 0xcaff, 0x2aff, 0xaaff, 0xaafc, 0xaafc, 0xaaf2, 0x11fc, 0x03fc, 0x0e08, 0x1809, 0xe130, 0x0101, 0x15fc, 0x5406, 0xa900, 0xa900, 0xa900, 0xfd01, 0xf405, 0xd004, 0xd004, 0x02fc, 0x8382, 0x080d, 0xc080, 0xb5cf, 0x540b, 0x52a1, 0x52a1, 0x12a1, 0x5405, 0x557c, 0x557c, 0x557c, 0x55fc, 0x55fc, 0x55fc, 0x55fc, 0x57fc, 0x43df, 0x9403, 0x94d9, 0x94d9, 0xd4d9, 0xfcd6, 0xf14d, 0x4003, 0xd05e, 0xd55e, 0xb57a, 0xabaa, 0xdfc1, 0x0001, 0x0009, 0xfeff, 0x34fd, 0x4001, 0x4006, 0x5f06, 0xf41f, 0x0001, 0x2aa1, 0xaaa0, 0x00d3, 0xfefe, 0xfd31, 0xa401, 0x50aa, 0x00aa, 0xd333, 0x0031, 0x0080, 0xd31f, 0x0004, 0x5500, 0x55a9, 0x56fe, 0x56ee, 0x00fe, 0x004d, 0x0806, 0xf13d, 0x0004, 0x0040, 0x5094, 0xbfa9, 0xc3aa, 0x2bab, 0x11fd, 0x02f1, 0x3080, 0x1010, 0x1010, 0xdf41, 0x0007, 0x3065, 0x3ffa, 0x3574, 0x3034, 0x3ff4, 0x35d0, 0x70d0, 0xc0d0, 0xfffd, 0xf1c6, 0x5000, 0xff0e, 0x5a6f, 0x1002, 0x1022, 0x0322, 0x3caa, 0x5daf, 0x5400, 0x03f2, 0x15f4, 0x9000, 0xffaa, 0xf1d4, 0x5400, 0xf4aa, 0x5f41, 0x0001, 0x00f9, 0x00f9, 0x1fd4, 0xa402, 0xf4ff, 0x54ff, 0x04ff, 0xa1fc, 0x1403, 0x41aa, 0x47aa, 0x47aa, 0x97aa, 0x01f1, 0x1030, 0xc010, 0x1111, 0x7f11, 0x00f1, 0x09c8, 0xc71f, 0x8402, 0x8454, 0xff54, 0xff4f, 0x1fcc, 0x01fc, 0x8080, 0xe080, 0xf5fc, 0x0001, 0x01a9, 0x01a9, 0x01f1, 0x1010, 0x8010, 0xf71f, 0x5000, 0x5215, 0x00f1, 0xe038, 0x37f1, 0x0001, 0x0064, 0xfc54, 0xcf14, 0x0004, 0xaa55, 0xd655, 0xdb55, 0xee55, 0x5455, 0x00d1, 0x1010, 0x4fd1, 0x0000, 0xaa01, 0xf14d, 0xcc66, 0x6fd1, 0x314f, 0x0002, 0x8001, 0x1555, 0x3555, 0xfff3, 0x001f, 0xefe8, 0xff41, 0x0001, 0x0095, 0x002a, 0x0034, 0x007c, 0x143f, 0xa404, 0x93aa, 0x8f91, 0x8f8c, 0xa88c, 0x03aa, 0x004f, 0x0ff0, 0xfc1f, 0x0000, 0xaa55, 0xfffc, 0x02cb, 0xfefe, 0xf8fc, 0xe0f0, 0xf1cb, 0x0008, 0x0e50, 0x0e00, 0x3a00, 0x3a00, 0x3a00, 0x3a00, 0x3a00, 0x3a00, 0xc000, 0xfbdf, 0x5401, 0x52aa, 0x4aaa, 0x00fb, 0x0e80, 0x005f, 0x7f0e, 0x5555, 0xf555, 0x01fb, 0x8080, 0x0101, 0xfbf5, 0x0004, 0x00a4, 0x00a9, 0x40a9, 0x90aa, 0xa4aa, 0x00fb, 0x0010, 0x5fdb, 0x0003, 0xee59, 0xbe55, 0xfa95, 0xe596, 0xdffb, 0x00fd, 0x0838, 0x5bfd, 0x4005, 0x9400, 0xff50, 0xfd90, 0x5691, 0xaaa5, 0xaaa7, 0xbbf5, 0x00fb, 0x1010, 0x5dfb, 0x0007, 0x9000, 0x9000, 0x5000, 0xf400, 0xf400, 0xfd00, 0xfd00, 0xd500, 0x02fb, 0x8080, 0x8080, 0x8000, 0xd5fb, 0x0016, 0x0090, 0x0090, 0x00a4, 0x00a4, 0x00a4, 0x1750, 0x1f00, 0x1f00, 0x0700, 0x0100, 0x7f00, 0x7d40, 0xfdd0, 0x7df5, 0x7dd9, 0x9f6a, 0x9f6a, 0x9f1a, 0x006a, 0x0040, 0x5490, 0xfda4, 0x7da9, 0xf555, 0x04bf, 0xfefe, 0xf9fc, 0x7e7c, 0xf3f9, 0xfeff, 0xfbf6, 0xa401, 0x90aa, 0xa4aa, 0x00fb, 0x3010, 0xc5fb, 0x0002, 0x0019, 0x0059, 0x0069, 0xcccf, 0x66cc, 0x00fb, 0x38fe, 0x015f, 0xc738, 0xfeff, 0x6c5f, 0x5400, 0xfa55, 0xff66, 0x015f, 0xff40, 0xf7f0, 0xcbf5, 0x400e, 0x9000, 0xd06a, 0x41aa, 0x01aa, 0x06aa, 0x1aaa, 0x06aa, 0x01aa, 0x0559, 0xaa55, 0xa900, 0xa400, 0x9000, 0x9000, 0x9014, 0xbd5f, 0x5000, 0x4c21, 0xdddf, 0x00fb, 0xc080, 0x6cbf, 0x4000, 0x3ea0, 0x006c, 0xe0e0, 0x00bf, 0xf8fe, 0x6bcf, 0x8401, 0x04aa, 0x44aa, 0xff66, 0x005f, 0xf786, 0xfbf5, 0x9403, 0xa940, 0xaa94, 0xaaa9, 0xa901, 0x55fb, 0x02bf, 0xef3e, 0xefef, 0xefef, 0xff6b, 0x0007, 0x0025, 0x00a5, 0x0265, 0x0265, 0x0265, 0x0295, 0x00a5, 0x0009, 0x026c, 0xe0e0, 0xe0e0, 0xe0e0, 0xb6fc, 0x5008, 0x0055, 0xffa0, 0xff11, 0x7f15, 0x7f10, 0x7f10, 0x7f10, 0xff04, 0xff15, 0xf5fb, 0x4001, 0x6aa4, 0x6aa4, 0x55fb, 0x00f5, 0x1018, 0xbfd5, 0x0003, 0x0029, 0xaa95, 0x5be5, 0xa096, 0xddfb, 0x01bf, 0xfe3c, 0xf7f7, 0xdfbb, 0x01fb, 0x0fe0, 0xf0fe, 0xffcb, 0x5000, 0x9555, 0x00bf, 0xfff0, 0x00cb, 0xef8c, 0xfbfc, 0x0001, 0xaa55, 0x0a55, 0x00bf, 0xf0f0, 0xffff, 0x01bc, 0xfce0, 0xf8fc, 0xbccc, 0x00fb, 0x0ff0, 0xcccc, 0x00fb, 0xff00, 0x00cb, 0x3f80, 0x00bf, 0xe000, 0x00cb, 0xfcf0, 0xcfff, 0x00bc, 0x0030, 0x02fc, 0x1010, 0x3030, 0xf030, 0x02bf, 0x1010, 0xf7f0, 0xf7f7, 0x07bc, 0x00f8, 0x1f87, 0xf008, 0xfef1, 0xc0fe, 0x0fcf, 0xfcff, 0x80e0, 0x01fc, 0x0700, 0x0f07, 0xffbc, 0x0000, 0x0050, 0x00bf, 0xf0f0, 0xffff, 0x00cb, 0x03f0, 0xbbbf, 0x01cb, 0xcf00, 0x0f8f, 0xf5fb, 0x4004, 0x9469, 0xa96a, 0x6a16, 0x1601, 0x0100, 0x00bc, 0x00f0, 0x00cf, 0xf7f0, 0xfccc, 0x00bc, 0x0030, 0x00fc, 0x07f0, 0x00cb, 0x0080, 0x6fcb, 0x5001, 0x9055, 0xd55a, 0xf666, 0x00bf, 0x6280, 0x015f, 0xe39c, 0x7f7f, 0xcbf5, 0x0004, 0xaa40, 0xaad1, 0xaa41, 0xaa06, 0xaa06, 0x5fbb, 0x00fb, 0x8080, 0x5cfb, 0x0009, 0x4040, 0x40a6, 0x90a5, 0x90a6, 0x90a6, 0x90a6, 0x40a9, 0x00a5, 0x009d, 0x0005, 0x6bfd, 0x9009, 0x90aa, 0xa4aa, 0xa7aa, 0x5faa, 0xf7aa, 0xf7a9, 0xf769, 0xdf19, 0x5719, 0xa91a, 0xdffb, 0x026c, 0xf8f8, 0xf8f8, 0xf8f8, 0xfc6f, 0x0000, 0x6a50, 0x6666, 0x00db, 0x8080, 0x03cb, 0xf7f0, 0xf3f7, 0xf3f3, 0xf1f1, 0xbbbb, 0x01fc, 0xe1c0, 0x1383, 0xcfff, 0x01bd, 0xfefc, 0xfcfc, 0xbbdb, 0x03cb, 0xf8f0, 0x80f0, 0xefe0, 0xcfcf, 0xcccc, 0xbbbb, 0x04fc, 0xff70, 0x7f7f, 0xe0f0, 0x8080, 0x3080, 0xbfdc, 0x0002, 0x0025, 0x0025, 0xf009, 0x00fc, 0x0100, 0xdcf6, 0xa405, 0xa4aa, 0x946a, 0x41da, 0x41da, 0x40da, 0x2ad6, 0xf666, 0x026c, 0xf8f8, 0xfcf8, 0xfcfc, 0x66cc, 0xf666, 0x03bf, 0xfcfc, 0xfcfc, 0xfefc, 0xfefe, 0x01fc, 0xfefe, 0xfffe, 0x01bf, 0x0202, 0x0d01, 0xffbc, 0x0001, 0x0040, 0x5098, 0x01fb, 0x0c0e, 0x0101, 0x5bfd, 0xa402, 0xfdaa, 0xfd9f, 0xfd9f, 0xbf55, 0x00f5, 0x8080, 0xbdf5, 0x0001, 0x5594, 0xdaa9, 0xdffb, 0x01fb, 0x8080, 0x8080, 0x5cfb, 0x0007, 0x4040, 0x4056, 0x4096, 0x40a6, 0x40a6, 0x00a6, 0x00a9, 0x40a5, 0xcff5, 0x01db, 0x1800, 0x7038, 0xbbbb, 0xbdbb, 0x01fb, 0xf7f0, 0x0107, 0xfbf6, 0xa400, 0x90aa, 0xbbbb, 0x00cf, 0x1018, 0xbfff, 0x02fc, 0xfcfc, 0xfefe, 0x0fc0, 0x00bf, 0xffc0, 0x6cfb, 0x5000, 0xa515, 0xf66c, 0x006c, 0xe0e0, 0x01bf, 0xf0f0, 0xf8ff, 0xfbcf, 0x8401, 0x04aa, 0x44aa, 0x01bf, 0xefe0, 0xcfef, 0xfcfb, 0x0001, 0x5554, 0x5664, 0xfcfb, 0x01fc, 0x9a9e, 0xdb9a, 0xfffc, 0x5400, 0x5411, 0x01fb, 0x4040, 0x80c0, 0xbbbb, 0xfbbb, 0x03cf, 0xf8fc, 0xf0f8, 0xe0e0, 0xc1c1, 0x02db, 0x8380, 0x0703, 0x0406, 0x00cb, 0x0f00, 0x00fb, 0x0808, 0xfcfb, 0x4001, 0x4000, 0x4aaa, 0x07bc, 0xc700, 0x000f, 0xfe8f, 0x80f3, 0x0fff, 0x0e0f, 0xf80e, 0xf8fe, 0xbbbc, 0xbbbb, 0x03cf, 0xf8f8, 0xf8f8, 0xf8f8, 0xfcfc, 0xffbf, 0x0000, 0x0001, 0x00bc, 0x8080, 0x01db, 0x8080, 0x60c0, 0xc6bf, 0x5402, 0x5255, 0x0155, 0xbc50, 0xff66, 0x006c, 0xf8f8, 0x00fb, 0x8380, 0xfbfc, 0x6400, 0x146a, 0xfbbb, 0x05fc, 0xd3d2, 0xc3c3, 0xc3c3, 0xc3c3, 0xec73, 0x01c8, 0x00cb, 0xfefe, 0x02db, 0x3030, 0xc010, 0xe1e1, 0xbbbd, 0xbddb, 0x04cb, 0x0ff0, 0x070f, 0x070f, 0x7f0f, 0x3f7f, 0xbbbb, 0xcccc, 0x01db, 0xc1c0, 0x0783, 0xfcf6, 0x5001, 0x0495, 0x016a, 0xcccc, 0x00df, 0xba00, 0x5edf, 0x4401, 0x1845, 0x1391, 0xfdff, 0x6f89, 0x0005, 0x00e5, 0x80fa, 0x80ef, 0x80ef, 0x90fb, 0x02fb, 0x895f, 0x4000, 0x3ea2, 0x02f4, 0x8080, 0x8080, 0xc080, 0x89f4, 0x0001, 0x0090, 0xff40, 0x96f8, 0x9004, 0xa500, 0x9a40, 0x9a7c, 0xa67f, 0xa67f, 0x859f, 0x5400, 0x5180, 0xf899, 0x0198, 0xf070, 0xf0f0, 0xc9f8, 0x5007, 0x90aa, 0x402a, 0x01df, 0x015f, 0x87dd, 0xa7dd, 0xa77d, 0xa77d, 0x985f, 0x0400, 0xa1f8, 0x9888, 0x54fc, 0x1007, 0x50a9, 0x11a9, 0x11a4, 0x41a4, 0x41a4, 0x5da4, 0xa7a9, 0xaaaa, 0x56f4, 0x9005, 0xa500, 0x9a40, 0x9a40, 0xa640, 0xa640, 0xd501, 0x44f9, 0x00f4, 0x0ff8, 0xc6f4, 0x5000, 0xa515, 0xfccc, 0x00c6, 0xf0f0, 0x004f, 0x7f00, 0x86f4, 0x0000, 0xff90, 0x6f89, 0x4000, 0x0095, 0x6f88, 0x044f, 0x7f00, 0x7f7f, 0x7f7f, 0x7f7f, 0x3f00, 0x8c4f, 0x5403, 0x5484, 0x5482, 0x548a, 0x0fff, 0xc68f, 0x4000, 0x3fa0, 0x00c6, 0xf0f0, 0x0289, 0xefe8, 0xefef, 0xefef, 0x6f89, 0x0000, 0x5594, 0x6f88, 0x0289, 0x1e1e, 0xfefe, 0xfefe, 0xcf89, 0x0004, 0x5500, 0x56a5, 0x56e6, 0x56eb, 0x56ef, 0x0289, 0xf0f0, 0xf1ff, 0xf9f1, 0xcf98, 0x1403, 0x16a0, 0x56e2, 0x56eb, 0x02ef, 0x0189, 0xc0c0, 0xcfcf, 0xc9f8, 0x5004, 0xd909, 0xd709, 0xdf09, 0xaa01, 0x5000, 0xc68f, 0x4000, 0x3fa0, 0x00c6, 0xf0f0, 0x0189, 0xfcf0, 0x0cfc, 0x68f9, 0x0001, 0x4000, 0xdaaa, 0x8d5f, 0x8400, 0x534a, 0x01f5, 0xaff8, 0x9d63, 0x9df5, 0x4401, 0x1556, 0x0006, 0xd89f, 0x4403, 0x12a9, 0xcaa0, 0xc68f, 0xc50f, 0x95fd, 0x9002, 0x555f, 0x069f, 0x057f, 0x0389, 0xf8fc, 0xf0f0, 0xc0f0, 0x8080, 0xd89f, 0x8403, 0x12aa, 0xc9a0, 0xc98f, 0xc90f, 0x5fdd, 0x5f89, 0xa400, 0xe4aa, 0xfdf5, 0xa400, 0xa555, 0x0398, 0xf870, 0xfcfc, 0xfcfc, 0xfcfc, 0x008f, 0xfefe, 0xf58f, 0x5002, 0x5255, 0x5255, 0x5255, 0x8888, 0x04f4, 0x8080, 0x8080, 0x8080, 0x8080, 0x0101, 0xd54f, 0x5004, 0x5255, 0x5255, 0x5255, 0xc855, 0xa18f, 0x01f5, 0xaff8, 0x9d63, 0x8df5, 0x4401, 0x1556, 0x0006, 0x888f, 0x0098, 0x0800, 0x5f98, 0x5006, 0x5002, 0x500a, 0x500b, 0x500b, 0xaaab, 0x0166, 0x0a99, 0x8df9, 0x9001, 0x90da, 0x905a, 0x95fd, 0x9002, 0x555f, 0x069f, 0x057f, 0x0298, 0xfc78, 0xfdfd, 0xfdfd, 0x9988, 0x9999, 0x008f, 0xfe00, 0x0098, 0xf8f0, 0x598f, 0x9403, 0x90aa, 0x93aa, 0x53aa, 0x53aa, 0x0698, 0x8006, 0xcfc7, 0xcfcf, 0x078f, 0x8003, 0xcfcf, 0xcfcf, 0xc8f9, 0x5007, 0x100a, 0x402a, 0xa9df, 0xa95f, 0xa7dd, 0xa7dd, 0xa77d, 0xa77d, 0x685f, 0x0402, 0xa1a8, 0xaaaa, 0xaaca, 0x896f, 0x5003, 0x453e, 0x453e, 0x513e, 0x513e, 0x958f, 0x5400, 0x5380, 0x49f8, 0x4001, 0xffd9, 0xf567, 0x5df4, 0x9004, 0x901a, 0x905a, 0x50da, 0xd055, 0x40a7, 0xe6df, 0x5004, 0xffa8, 0xeaa8, 0xeaa8, 0xffa8, 0xffa8, 0x006f, 0xfefe, 0xffff, 0xffff, 0x0234, 0x8080, 0x8080, 0xff80, 0x008f, 0xff00, 0x4444, 0x00f3, 0xff00, 0x8888, 0x8888, 0x016e, 0x9e9e, 0x9e9e, 0xff6e, 0x5401, 0x5541, 0xaaaa, 0x01e6, 0x98f8, 0x9898, 0xffe6, 0x4001, 0x0041, 0xaaaa, 0x0734, 0x8080, 0x8080, 0x8080, 0x8080, 0x0101, 0x0101, 0x0101, 0x0101, 0x00f3, 0xff00, 0xfef6, 0x0004, 0x8a40, 0x8a42, 0x8a42, 0x8a42, 0xaa42, 0xf66e, 0x00f3, 0xff00, 0x02e6, 0xf900, 0x99f9, 0xf898, 0x00f3, 0xff00, 0x02e6, 0xf900, 0xf8f9, 0x6160, 0x00f3, 0xff00, 0xfe6f, 0x5404, 0x5455, 0x54aa, 0x54aa, 0x545a, 0x545a, 0xeeee, 0x00f3, 0xff00, 0x01e6, 0x9f00, 0x9f9f, 0x00f3, 0xff00, 0x00e6, 0x8900, 0xff6e, 0x1400, 0x1415, 0x00f3, 0xff00, 0x02e6, 0xf900, 0xf9f9, 0x6161, 0x1498, 0xf0f0, 0x0f0f, 0x0303, 0x3ff3, 0xf030, 0xeff0, 0xf0e0, 0x0101, 0x0101, 0xe101, 0xf0e0, 0x101f, 0x1414, 0x7e14, 0xf070, 0x03f3, 0x0303, 0x03f3, 0x0808, 0x0e0e, 0x0606, 0x6e98, 0x1400, 0x5400, 0xff6e, 0x0003, 0x0494, 0x0494, 0x0494, 0x0494, 0xf66e, 0x00f6, 0x8080, 0xffff, 0xffff, 0x016e, 0x0606, 0xf606, 0xffff, 0xffff, 0x01e6, 0x9898, 0x9898, 0xffe6, 0x4001, 0x0041, 0xaaaa, 0x0243, 0xfefe, 0xfefe, 0x00fe, 0x598f, 0x0001, 0xa900, 0x3c55, 0x35f4, 0xa406, 0x6766, 0xa76a, 0x5fd5, 0x00ff, 0xc054, 0xfca9, 0xfca9, 0xfff3, 0x0034, 0xe0fc, 0x4444, 0x4b9b, 0xfff3, 0x33b9, 0x395f, 0x5401, 0x54fe, 0x03ff, 0x0043, 0x7f08, 0x39f4, 0x0001, 0x0084, 0x0010, 0xf333, 0x0034, 0xf0f8, 0x35f4, 0x0001, 0x0055, 0x0daa, 0x5555, 0x003f, 0xff0e, 0x5f43, 0x5002, 0x5540, 0x55aa, 0x52ff, 0x5555, 0x003f, 0xff0e, 0xdf43, 0x5408, 0x5554, 0xb9be, 0xf9be, 0xf9be, 0xf9be, 0xf9be, 0xf9be, 0xf9be, 0xf9be, 0x0343, 0xfefe, 0xfefe, 0xfefe, 0x00fe, 0x02f4, 0x8080, 0x8080, 0x8180, 0x34fb, 0x9400, 0x606a, 0xf333, 0x00ef, 0x7e7e, 0x9cef, 0x5401, 0xa815, 0x032a, 0xffff, 0x8899, 0x00ef, 0x7e7e, 0x8cef, 0x5401, 0xa815, 0x002a, 0xb98f, 0x4001, 0x5aa4, 0x5a83, 0xf4bb, 0x8899, 0x34f9, 0xa404, 0x917a, 0x457a, 0x197a, 0x6979, 0xa954, 0x94bf, 0x1000, 0x72a8, 0x493f, 0x5405, 0xf285, 0xc8ff, 0x20ff, 0x8cff, 0x3cfc, 0xfcc2, 0x94bf, 0x1000, 0x72a8, 0xd93f, 0x5400, 0x3c85, 0x3df4, 0x6407, 0xa469, 0xa469, 0xa469, 0xa469, 0xa469, 0xa469, 0xa769, 0xff00, 0x95f3, 0x0001, 0xaaa5, 0x555d, 0x59f4, 0x6402, 0x9d7f, 0x7dfd, 0x55f6, 0x4d9f, 0x0402, 0x1328, 0x4328, 0xa0ff, 0x00f4, 0xf0c0, 0x43df, 0x5000, 0x0ffe, 0x0243, 0xfefe, 0xfefe, 0xfefe, 0x024f, 0xfefe, 0xfefe, 0xfefe, 0x895f, 0x5004, 0x0855, 0x2300, 0x8415, 0x1454, 0x0052, 0xed9f, 0x0401, 0x1328, 0x4328, 0x3d4f, 0x5406, 0x54a0, 0x5405, 0x5435, 0x5435, 0x5435, 0x5435, 0x5435, 0xf344, 0x0098, 0xfcfc, 0xff98, 0x5000, 0xa855, 0x01ef, 0xe7e0, 0xe7e7, 0x34fe, 0x4007, 0x7aa9, 0x7aa9, 0x7aa9, 0x7aa9, 0x7aa9, 0x7aa9, 0x7aa9, 0x7aa9, 0x988f, 0x0089, 0x7070, 0x9999, 0x01ef, 0x7e00, 0x7e7e, 0xeeef, 0xfeee, 0x0089, 0x8080, 0xff89, 0x0000, 0xaa50, 0x8fff, 0x01ef, 0x7e7e, 0x7e7e, 0x008f, 0x80fe, 0x01ef, 0x7e7e, 0x7e7e, 0xd95f, 0x5005, 0x0855, 0x2000, 0x8415, 0x1454, 0x0052, 0x3c08, 0xd9f4, 0x6402, 0x947d, 0xf5aa, 0x5aaa, 0xff89, 0x0000, 0xa850, 0x01ef, 0xe7e0, 0xe7e7, 0x4dfe, 0x4004, 0xa569, 0xa769, 0xa769, 0xa769, 0x5755, 0xf4f5, 0x4001, 0x4006, 0x4006, 0x55f4, 0x004f, 0xef00, 0x9fb4, 0x000b, 0x8009, 0x8024, 0x8091, 0x8047, 0xaa97, 0x085e, 0x215e, 0x8778, 0x11f8, 0x47e0, 0x1f80, 0x7e00, 0x014f, 0x7e00, 0xfefe, 0x354f, 0x5008, 0x5255, 0x5255, 0x5255, 0x5455, 0x5435, 0x5435, 0x5435, 0x5435, 0x5435, 0xbf34, 0x9001, 0x902b, 0x959f, 0x00ef, 0x7e7e, 0x8cef, 0x5401, 0xa815, 0x032a, 0xb98f, 0x0001, 0xa6a4, 0xa683, 0xf4bb, 0xef89, 0x0402, 0xbff8, 0xbfe2, 0xbf8a, 0x89cf, 0x8401, 0x0014, 0xfcc2, 0x98bf, 0x1001, 0x72a8, 0xcaa8, 0xcef9, 0xa403, 0x916a, 0x456a, 0x1d6a, 0x557d, 0xb8f9, 0x5402, 0x7509, 0xc409, 0x1809, 0xcedf, 0x1404, 0x1412, 0x1452, 0x1452, 0x1453, 0x1450, 0x4df8, 0xa401, 0xa469, 0xa469, 0xf34f, 0x5405, 0x5425, 0x5425, 0x5425, 0x5425, 0x5425, 0x5425, 0xf344, 0x003f, 0x007e, 0x01f4, 0x8080, 0x8080, 0x0000, 0x0000
};

// [D_08C9D078] D_08C9D2E8 Huffman Window 1
u32 D_08c9d2e8_window1[] = {
	0xfb5fff7f, 0xee77fef2, 0xbdbdeb3d, 0x3fdbfdfe, 0xcc7394c0, 0xb77dd3b6, 0xff5fdbcd, 0xfd9ff6f7, 0xdbcfbf47, 0x7dbeee7b, 0xafef57eb, 0xcab6eef7, 0xbacb6fcb, 0x777cfcef, 0x7b6efdb2, 0xbeffffbf, 0x967ff9f7, 0x92ffdfbf, 0xcdf6dc2f, 0xcaf7fff9, 0x6ff7fbfe
};

// [D_08C9D0CC] D_08C9D2E8 Huffman Window 2
u32 D_08c9d2e8_window2[] = {
	0x454aa955, 0xe515b57d, 0xbede872e, 0x9155ec76, 0xeb8aaa94, 0xdaa7fd57, 0x695551aa, 0x800496a9, 0x8502d208, 0x920a912a, 0x6cbddd04, 0xea9dd9aa, 0x104a0fe8, 0xd4aab462, 0xb88ae5ff, 0x0001ffb5
};

// [D_08C9D10C] D_08C9D2E8 Huffman
struct Huffman D_08c9d2e8_huffman[] = {
	/* Data */			D_08c9d2e8_huffmandata,
	/* Size */			0x1065,
	/* Count */			0x2a0,
	/* Window 1 */		D_08c9d2e8_window1,
	/* Window 2 */		D_08c9d2e8_window2,
};

// [D_08C9D11C] D_08C9D2E8 RLE Data
u8 D_08c9d2e8_rledata[] = {
	0x1, 0xf, 0x1, 0xb, 0x11, 0x3, 0x5, 0xb, 0x11, 0x8, 0x8, 0xf, 0x3, 0xd, 0x17, 0x6, 0xf, 0x3, 0x4, 0x7, 0x9, 0x3, 0x17, 0x3, 0xc, 0x4, 0x9, 0x7, 0x1, 0x3, 0x1d, 0x7, 0x5, 0x3, 0x1, 0x7, 0x3, 0x5, 0x4, 0xc, 0xc, 0x3, 0xb, 0x5, 0x12, 0x3, 0x15, 0x7, 0x9, 0x17, 0x2, 0xe, 0xa, 0xc, 0x3b, 0x3, 0xd, 0x3, 0x3, 0x3, 0x7, 0x4, 0x33, 0x3, 0xf, 0x6, 0x21, 0xc, 0x4, 0x3, 0xa, 0x4, 0x2f, 0xd, 0xf, 0x3, 0x2, 0x8, 0x9, 0x7, 0x1, 0x5, 0x11, 0x4, 0x2, 0x5, 0x25, 0x3, 0x3d, 0x7, 0x9, 0x9, 0x4d, 0x6, 0x24, 0x5, 0x1b, 0x7, 0x1, 0x5, 0xa, 0x3, 0xe, 0x9, 0x75, 0x9, 0x2c, 0x4, 0xb, 0x5, 0x9, 0x7, 0x1d, 0x3, 0x9, 0x7, 0xb, 0x5, 0x7, 0x9, 0x1, 0x3, 0x67, 0x5, 0x7, 0x9, 0x3, 0x17, 0x46, 0x9, 0x1a, 0x3, 0x2b, 0xb, 0x5, 0x4, 0x1c, 0x7, 0x1b, 0xd, 0xa, 0x6, 0x40, 0x5, 0x16, 0xf, 0x7, 0x3, 0x6, 0xc, 0x7, 0xe, 0xa, 0x15, 0x6, 0x4, 0x31, 0xb, 0x31, 0xc, 0x7, 0x1c, 0x43, 0x8, 0x1f, 0x6, 0x11, 0x6, 0x11, 0x8, 0x14, 0x4, 0x20, 0x3, 0x28, 0x5, 0xa, 0x7, 0x13, 0x4, 0x57, 0x4, 0x6, 0x7, 0x2, 0x6, 0x1, 0xa, 0x2, 0x3, 0x1, 0xb, 0x1, 0x3, 0x2, 0x9, 0x2, 0x3, 0x8, 0x4, 0x1, 0x3, 0x1, 0x9, 0x3, 0x3, 0x1, 0xc, 0x4, 0x16, 0xc, 0x7, 0x1, 0x3, 0x5, 0x7, 0x2, 0x3, 0x6, 0x8, 0x19, 0xc, 0x1, 0x8, 0x6, 0x7, 0x7, 0x7, 0x7, 0x3, 0x7, 0x13, 0x3, 0x3, 0x13, 0x7, 0x1, 0x5, 0x5, 0xc, 0x1, 0x6, 0x2, 0x6, 0x8, 0x3, 0x1, 0x4, 0xd, 0x3, 0x3, 0x3, 0x1, 0xc, 0x4, 0x3, 0x7, 0x7, 0x39, 0x7, 0x29, 0x4, 0x4, 0x7, 0x11, 0x7, 0xa, 0x12, 0x8, 0x4, 0x1, 0xb, 0x2, 0xa, 0x5, 0x3, 0x9, 0x7, 0x1, 0x4, 0xc, 0x6, 0x6, 0xb, 0x49, 0x8, 0x8, 0x9, 0x17, 0x6, 0x24, 0x5, 0x5, 0x5, 0x9, 0x3, 0xd, 0x3, 0x1, 0x9, 0x1, 0x4, 0xc, 0x3, 0xd, 0x3, 0x2, 0x4, 0x17, 0x6, 0x1a, 0x3, 0xf, 0xe, 0xe, 0xa, 0x4, 0x3, 0x3, 0x8, 0x2, 0x9, 0x1, 0x5, 0xb, 0x8, 0x2, 0x5, 0x6, 0x4, 0x11, 0xd, 0x3, 0xc, 0x4, 0x4, 0xb, 0x8, 0x9, 0x7, 0x1f, 0x5, 0x5, 0x3, 0x6, 0xe, 0xb, 0x3, 0x1, 0xc, 0x4, 0x9, 0x1, 0xb, 0x4, 0x8, 0x5, 0x3, 0x2, 0x4, 0x1, 0x9, 0x1, 0x5, 0x7, 0x3, 0x41, 0x3, 0x3f, 0x5, 0xb, 0xa, 0x4, 0xb, 0x17, 0x5, 0x9, 0x7, 0x27, 0x19, 0x9, 0x3, 0x1, 0x5, 0x1, 0x3, 0x23, 0x3, 0x1, 0x3, 0x9, 0x3, 0x5e, 0x4, 0x1c, 0x4, 0xcb, 0x9, 0x11, 0x3, 0xd, 0x3, 0x3, 0x10, 0x6b, 0x4, 0x7, 0x5, 0x15, 0x3, 0x1, 0x3, 0x1, 0x5, 0x3, 0x3, 0x1, 0x3, 0xd, 0x3, 0x1, 0x5, 0x53, 0x3, 0x7, 0x3, 0xd, 0x3, 0x1b, 0x3, 0x1, 0x4, 0xc, 0x3, 0xd, 0x4, 0xa, 0x5, 0xc, 0x4, 0xc, 0x4, 0x3b, 0x5, 0x41, 0xd, 0x17, 0xb, 0x12, 0x4, 0x6c, 0x4, 0x3d, 0x3, 0x8d, 0x6, 0x8, 0x0, 0x90, 0x0
};

// [D_08C9D2E8] D_08C9D2E8 Graphics
struct CompressedGraphics D_08c9d2e8 = {
	/* Huffman Data */		D_08c9d2e8_huffman,
	/* RLE Data */			D_08c9d2e8_rledata,
	/* RLE Size */			0x1ca,
	/* RLE Offset */		0x1800,
	/* Double Compressed */	TRUE,
};

