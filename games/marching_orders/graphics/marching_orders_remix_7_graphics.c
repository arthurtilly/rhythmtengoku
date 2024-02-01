#include "global.h"
#include "graphics.h"

// // //  D_08CE5B3C  // // //

// [D_08CE427C] D_08CE5B3C Huffman Data
u16 D_08ce5b3c_huffmandata[] = {
	0x0c10, 0xc080, 0xc0c0, 0x30f0, 0x1010, 0x0f80, 0x0c0e, 0x0c08, 0x300c, 0xf070, 0xe1f0, 0xf1f1, 0x0801, 0x0e0c, 0x1144, 0x0040, 0xe0f0, 0x0010, 0xc0e0, 0xf140, 0x0004, 0xa040, 0x0062, 0x0002, 0xaa09, 0xa949, 0x0410, 0x1010, 0x1019, 0x8030, 0x0381, 0x3f36, 0xf041, 0x1403, 0x15a5, 0x00aa, 0x052a, 0x056a, 0x0210, 0x0f80, 0x1f1f, 0xf7c0, 0x0014, 0xc0f8, 0x4444, 0x0910, 0x0108, 0x1f01, 0x803f, 0xfe80, 0xf0ff, 0x30f0, 0xf030, 0xfcf0, 0xf070, 0x03f1, 0xa1f0, 0x4004, 0x9000, 0xa400, 0xa400, 0x1fd0, 0x5550, 0x11f0, 0x00f1, 0x8010, 0x00f0, 0x0100, 0xf0f1, 0xa404, 0x90aa, 0x40aa, 0x40aa, 0x00aa, 0x05a9, 0x000f, 0x30fe, 0xff09, 0x0002, 0x0025, 0xaa09, 0x8a09, 0x00f0, 0x8380, 0xf0f9, 0xa401, 0x9056, 0x9106, 0x00f0, 0x030e, 0xf0f9, 0x5400, 0x445a, 0x9ff0, 0x00f9, 0x753c, 0xa9f0, 0x0003, 0x0055, 0x0165, 0x419a, 0x5555, 0x01fa, 0xa404, 0x69fd, 0x6aff, 0xdaff, 0xf6ff, 0xf6ff, 0x00f0, 0x1010, 0x0610, 0xc180, 0xe0c1, 0x60e0, 0x6c68, 0x8f0c, 0x8f8f, 0x3f0f, 0xf041, 0x5404, 0x56a0, 0x56a8, 0x05a8, 0x05a0, 0x55a0, 0x0441, 0x0040, 0x707c, 0xf140, 0x0004, 0x0a05, 0x0960, 0x02aa, 0x00a5, 0x00a5, 0x0044, 0x0110, 0x2020, 0xc060, 0xf401, 0x8400, 0xa285, 0x4100, 0x0004, 0xf070, 0xf104, 0x4002, 0x1855, 0x14a0, 0x9420, 0x0004, 0xf0e0, 0x4101, 0x0004, 0x0e0e, 0xf140, 0x0001, 0x0015, 0x00a5, 0x0144, 0x0040, 0xb060, 0x0144, 0x0110, 0x6000, 0xc0e0, 0x0000, 0x4410, 0x0110, 0x0800, 0x0e0e, 0xf401, 0x5402, 0x5255, 0x9555, 0x950a, 0x1114, 0x0010, 0xfcf8, 0xf410, 0x5402, 0x6855, 0x6855, 0xa855, 0x1144, 0x0201, 0xfef8, 0x1e3f, 0x0c1c, 0xf401, 0x5400, 0x8100, 0x1144, 0x0210, 0x0780, 0x9f0f, 0x1f9f, 0xf041, 0x1400, 0x14a8, 0x0010, 0xf3f0, 0xf104, 0x5002, 0x502a, 0x5002, 0x5002, 0x0440, 0x0201, 0x08f8, 0xf7f8, 0xf3f3, 0xf410, 0x5402, 0x6800, 0x6800, 0x6800, 0x0000, 0x0014, 0xfcf8, 0x4411, 0x0801, 0xe0f8, 0xc0c0, 0x80c0, 0x8080, 0x7f7f, 0x103f, 0xfef0, 0xfefe, 0xfefe, 0xf1f0, 0x0006, 0x00a9, 0x40a9, 0x40aa, 0x90aa, 0x90aa, 0x90aa, 0xa4aa, 0x03f1, 0x0400, 0x0204, 0x0202, 0x0202, 0x90f1, 0x0414, 0xa910, 0xa410, 0xa410, 0xa440, 0xa440, 0xa440, 0xa440, 0xa440, 0x55f6, 0x75f6, 0x55f6, 0xffda, 0xff5a, 0x55aa, 0x9faa, 0x9df6, 0x9f56, 0xa776, 0xa576, 0xaad6, 0xaa5a, 0x01f9, 0x3378, 0x5f5f, 0xf0f9, 0x4001, 0x5505, 0xaa56, 0x00f9, 0xf718, 0xf09f, 0x4001, 0x40a8, 0x10a8, 0x020f, 0xef0e, 0xefef, 0xefef, 0x0000, 0x000f, 0x0010, 0xe0e0, 0xf401, 0x5405, 0x5001, 0x1029, 0x0069, 0x0029, 0xa2a9, 0xaaa9, 0x0310, 0x1c18, 0x3f1c, 0x3f3f, 0x3f3f, 0x0040, 0x1e3e, 0x0110, 0xf300, 0xfbfb, 0xf401, 0x9000, 0x9006, 0x1144, 0x0010, 0x7060, 0xf410, 0x4004, 0x8015, 0x9516, 0x9526, 0x552a, 0x550a, 0x0044, 0x0110, 0x0400, 0x0c04, 0xf140, 0x5002, 0x5002, 0x0005, 0x0095, 0x4444, 0x0110, 0x7830, 0x7878, 0xf410, 0x0002, 0x0029, 0x5029, 0x66a9, 0x4441, 0x0010, 0x7c38, 0xf140, 0x5004, 0x552a, 0x550a, 0x5502, 0x5401, 0x6029, 0x0114, 0x0440, 0xc3e0, 0x0703, 0x0606, 0x0e0e, 0x0c0c, 0xf140, 0x5004, 0x0905, 0x5400, 0x50a5, 0x40a5, 0x40a9, 0x1144, 0x0140, 0xf078, 0x80e0, 0x4440, 0x0014, 0x1e1c, 0x1144, 0x4441, 0x0004, 0x0010, 0xf104, 0x0002, 0x9540, 0x5550, 0xa580, 0x0014, 0xfcf8, 0xf014, 0x1003, 0x2040, 0x6500, 0x5501, 0x1459, 0x1004, 0x0001, 0x1080, 0xf104, 0x0003, 0x0029, 0x0009, 0x9401, 0xaa42, 0x0004, 0xfe0c, 0xf014, 0x5000, 0x40aa, 0x0240, 0xe0f0, 0xc0c0, 0x0080, 0x0141, 0x3838, 0x3e18, 0xff04, 0x0000, 0x0101, 0x0141, 0xf8e0, 0xc078, 0xf014, 0x0004, 0x9555, 0x8055, 0x8055, 0x8055, 0x9015, 0x0004, 0xf0c0, 0xf401, 0x0003, 0x00a1, 0x00a5, 0x82a5, 0x82a5, 0x0040, 0xf8f8, 0x0141, 0xc000, 0xf0e0, 0xf041, 0x0002, 0x0105, 0x41a5, 0x41a9, 0x0004, 0x0001, 0xfefe, 0xff01, 0x5402, 0x0955, 0x0900, 0x0900, 0x06f1, 0x1010, 0x1010, 0x0010, 0x0202, 0x0202, 0x0202, 0x8202, 0xf0f1, 0xa406, 0xa440, 0xa440, 0xa440, 0xa440, 0xa440, 0xa440, 0xa440, 0x00f0, 0xff00, 0x021f, 0xfefe, 0x0ebe, 0x3ebe, 0x00f0, 0xff00, 0x01f1, 0xf340, 0x2320, 0x00f0, 0xff00, 0x01f1, 0xe480, 0x4288, 0x00f0, 0xff00, 0x02f1, 0x8080, 0x8380, 0x8e80, 0x0120, 0x7010, 0xf0f0, 0x0140, 0x0f80, 0x080c, 0x1114, 0x0001, 0x0004, 0xf0f0, 0xf401, 0x9000, 0x500a, 0x0004, 0xf0f0, 0xf140, 0x5001, 0xaa00, 0x6a05, 0x0104, 0x0e0c, 0xf3fe, 0x4000, 0x0000, 0x0014, 0x0010, 0xf140, 0x5400, 0x0015, 0x4100, 0x0204, 0xf070, 0xe6f0, 0xf8f0, 0x4000, 0x0014, 0x0d40, 0x1c3c, 0x0380, 0x0108, 0x0f02, 0x0303, 0x0101, 0x060e, 0x0406, 0x337f, 0x0323, 0x0103, 0x0e01, 0x0e0e, 0x0406, 0x4414, 0x0204, 0x0f0e, 0xcf8f, 0xefcf, 0xff40, 0x0000, 0x0001, 0x001f, 0xfefe, 0xf1f0, 0xa404, 0xa4aa, 0x90aa, 0x90aa, 0x40aa, 0x40aa, 0x00f1, 0x0200, 0x0af1, 0x540d, 0xa400, 0xa900, 0xa900, 0x9900, 0x9500, 0x9000, 0xf440, 0xf455, 0xf46a, 0xf46a, 0xf46a, 0xf46a, 0xfd1a, 0xfd1a, 0x021f, 0xae9e, 0x9e6e, 0xfefe, 0x000f, 0xff00, 0x01f1, 0x8516, 0x8244, 0x1111, 0x000f, 0xff00, 0x01f1, 0x2342, 0x2126, 0x1111, 0x000f, 0xff00, 0x02f1, 0x8080, 0x8e81, 0x8080, 0x000f, 0xff00, 0x0002, 0xfef8, 0xf6f0, 0x5408, 0xa940, 0x5a40, 0x5690, 0xa590, 0x0100, 0x1600, 0x1a00, 0x6940, 0x6540, 0x00f0, 0x0708, 0xf06f, 0x0404, 0x5508, 0x0448, 0xaa40, 0xa802, 0xa812, 0x6ff0, 0x000f, 0xff3e, 0xfef0, 0x0005, 0x4045, 0x409a, 0x006a, 0x0069, 0x00a9, 0x00a4, 0xeef0, 0x00f0, 0x0100, 0xf0fe, 0xa404, 0x90aa, 0x91aa, 0x41aa, 0x41aa, 0x55aa, 0x0120, 0xe080, 0xf0f0, 0xff20, 0x0001, 0x0055, 0x2aa0, 0x01ef, 0xbc7c, 0x0fb3, 0xff0e, 0x0008, 0xaa95, 0x002a, 0x5556, 0x5558, 0x55a0, 0x5602, 0x5800, 0x5800, 0x5602, 0xfffe, 0x000f, 0xf7fe, 0xfef0, 0x9003, 0x9000, 0xa400, 0x5400, 0xa940, 0xeff0, 0x00fe, 0x6010, 0xeeee, 0x0220, 0xe080, 0xf8f8, 0x00f0, 0xfef0, 0x0001, 0x0050, 0x00a4, 0xeef0, 0x01f0, 0xc0c0, 0x0100, 0xc0fe, 0xa408, 0x90aa, 0x90aa, 0x41aa, 0x41aa, 0x41aa, 0x5aaa, 0xdafd, 0xf6ff, 0xf6ff, 0x00fc, 0x1010, 0x0bfc, 0x000a, 0x0281, 0x0281, 0xfd50, 0xfd00, 0xf400, 0xf400, 0xd000, 0xd000, 0xd0a0, 0xd0a0, 0x5fff, 0xfef0, 0x0001, 0x40a4, 0x90a9, 0x01fe, 0x0030, 0x8488, 0xc0fe, 0x100a, 0xaaa9, 0xaaa4, 0xaa50, 0xa900, 0xa900, 0xa411, 0xa404, 0xa400, 0xf41a, 0xfd5a, 0xfff6, 0xccf0, 0x00fc, 0x1010, 0xebfc, 0x0001, 0x0281, 0x0281, 0x0efc, 0xa404, 0x50fd, 0x00fd, 0x00f4, 0x00f4, 0x00d0, 0xb0fc, 0x9001, 0x90f0, 0x90f0, 0x00f0, 0x8080, 0xfef0, 0x0002, 0x0050, 0x50a5, 0xa4aa, 0x01fe, 0x1010, 0x4080, 0xeeee, 0x00f0, 0x9800, 0xfef0, 0x9004, 0x9046, 0x405a, 0x401a, 0x006a, 0x0069, 0xfeef, 0x00f0, 0x0300, 0xf0fe, 0x9004, 0x40aa, 0x41aa, 0x06aa, 0x06a9, 0x15a9, 0x000f, 0xfffe, 0xfef0, 0x4005, 0x9000, 0xa400, 0xa400, 0x6900, 0x6900, 0x6900, 0x00f0, 0x0300, 0xf0fe, 0x9000, 0x90aa, 0x01f0, 0x3030, 0x0c00, 0x6ef0, 0xa418, 0xa940, 0xaa90, 0x5690, 0x99a4, 0x6aa4, 0x6aa4, 0x0001, 0x0006, 0x005a, 0x01aa, 0x01a9, 0x0696, 0x06aa, 0x06aa, 0xf5d0, 0x55d0, 0xf5d0, 0xff40, 0xfd40, 0x5400, 0x7500, 0x7540, 0x7550, 0x1fd0, 0x17d0, 0x00f0, 0x081c, 0x016f, 0x93ae, 0xa6aa, 0xff66, 0xfff6, 0x000f, 0xef40, 0xf6f0, 0x9000, 0x5551, 0x6f0f, 0x006f, 0x7284, 0xe06f, 0x4401, 0x0000, 0xf0aa, 0xfcf0, 0x4009, 0x905a, 0x90aa, 0xa4aa, 0xa4aa, 0xa4aa, 0xa4aa, 0x69aa, 0xaa01, 0xaa06, 0xaa1a, 0x0fcc, 0x00fc, 0x8080, 0xffbc, 0x1400, 0x1484, 0xfcbc, 0x0020, 0x80e0, 0xfe20, 0x0002, 0x0055, 0xeaaa, 0x3ebf, 0x00f0, 0x081c, 0xfef0, 0x4006, 0xaa00, 0xaa01, 0xaa01, 0xaa01, 0xaa01, 0x6a01, 0x6900, 0x00f0, 0x00e0, 0xfef0, 0xa401, 0x9000, 0x4000, 0x0000, 0x00fe, 0x0202, 0xf0ef, 0x5404, 0x5405, 0x54a1, 0x4285, 0x5285, 0x0aa1, 0x000f, 0x0120, 0xf0f8, 0xf080, 0xecf0, 0x000a, 0x40a5, 0x90aa, 0x90aa, 0xa4aa, 0xa4aa, 0xa4aa, 0xa4aa, 0x7daa, 0x9601, 0xaa06, 0xaa1a, 0x0fcc, 0x00fc, 0x8080, 0x0fbc, 0x4002, 0x4081, 0xff81, 0xffbf, 0xcef0, 0x9007, 0xa400, 0xa900, 0x5000, 0xa500, 0xaa50, 0xaaa5, 0xfffd, 0xfff4, 0xbcf0, 0xa409, 0x90fa, 0x40aa, 0x00a9, 0x0054, 0x1aaa, 0x06aa, 0x06ab, 0x01aa, 0x005a, 0x0005, 0x00ef, 0xfe78, 0xc0ef, 0x540f, 0x5241, 0x5201, 0x4a05, 0x2a05, 0xaa84, 0x54a2, 0x01a8, 0x55a8, 0x55a8, 0x55a8, 0x15a8, 0x14aa, 0x02aa, 0xfcaa, 0xf2ff, 0xf2ff, 0xf0bc, 0x5007, 0x003a, 0x03ea, 0xfeaa, 0x00aa, 0x00b0, 0x01ac, 0x00ac, 0xf0ab, 0x00f0, 0x8030, 0x0000, 0x00fe, 0x0304, 0xcef0, 0xa40b, 0xa4aa, 0x906a, 0x406a, 0x906a, 0x401a, 0x0005, 0x4069, 0xd0d7, 0xd0ff, 0xf4ff, 0xf4ff, 0xf4ff, 0xf0bc, 0x4000, 0x400e, 0x0efc, 0x9002, 0x40fd, 0x00f5, 0x00d0, 0x0fcc, 0x00fc, 0x8080, 0x0fcb, 0x5401, 0x5490, 0xbf90, 0xc0ef, 0x1401, 0xc3ca, 0xfff2, 0xccf0, 0x00fc, 0x1010, 0x0bfc, 0x0009, 0x0281, 0x0281, 0xff50, 0xfd00, 0xf400, 0xf400, 0xd000, 0xd000, 0xd000, 0xd000, 0xfef0, 0x940d, 0x5096, 0x90a9, 0x90aa, 0x906a, 0x406a, 0x906a, 0x401a, 0xa505, 0x5a06, 0xaa01, 0xaa01, 0xaa01, 0x6a01, 0xa900, 0x000f, 0x3f1e, 0xfef0, 0x0004, 0x00a4, 0x00a9, 0x4069, 0x401a, 0x401a, 0xfffe, 0x00f0, 0x1900, 0xfe0f, 0x840a, 0xa052, 0xa152, 0xa854, 0x2854, 0x2855, 0x1555, 0x8555, 0xa155, 0x2155, 0x2855, 0x2855, 0x00f0, 0x00f0, 0xfe0f, 0x0405, 0xa255, 0xa854, 0x2854, 0x2a55, 0x4a55, 0x4a55, 0x00f0, 0x0c00, 0xfef0, 0xa412, 0xa940, 0xaa90, 0xaa90, 0xa9a4, 0xa9a4, 0xa9a4, 0x0001, 0x0006, 0x005a, 0x01aa, 0x01aa, 0x069a, 0x069a, 0x069a, 0x5000, 0xa400, 0xa940, 0xaa90, 0xaa90, 0xeef0, 0x00ef, 0xfece, 0xf0ef, 0x5407, 0xaaa8, 0xaaa1, 0xaa05, 0xa855, 0xa855, 0xa145, 0xa141, 0xa154, 0x01f0, 0x8080, 0xe000, 0xfef0, 0x4002, 0x90a9, 0x90aa, 0xa4aa, 0x00ef, 0x6eee, 0xeeee, 0x00f0, 0x0300, 0xf0fe, 0x5007, 0x00aa, 0x00a9, 0x10a9, 0x04a4, 0x04a4, 0xaaa4, 0xaa5a, 0x5605, 0x00fe, 0x0010, 0xf0fe, 0x0004, 0x0150, 0x0065, 0x001a, 0xaaa5, 0x5a50, 0x00fe, 0x0030, 0xf0fe, 0x0002, 0x0050, 0x00a5, 0x00a9, 0x00fe, 0x00f0, 0xe000, 0xfef0, 0x0004, 0x40a9, 0x90aa, 0xa4aa, 0xa4a9, 0xa4a9, 0xeefe, 0x00f0, 0x0300, 0xf0fe, 0x5009, 0x00aa, 0x00a9, 0x00a9, 0x04a4, 0x10a4, 0xaa94, 0xaa6a, 0xaa1a, 0x5a05, 0x0600, 0x00fe, 0x9210, 0xf0ef, 0x5405, 0x5502, 0xaaa0, 0xaa85, 0xa815, 0xa155, 0x8555, 0x00fe, 0x1098, 0xf0fe, 0x0005, 0xaa04, 0xaa5a, 0x6a06, 0x1a01, 0x0600, 0x0600, 0x00ef, 0x6f6e, 0xf0fe, 0x0009, 0xaaa9, 0xaaa4, 0xaa50, 0xa900, 0xa400, 0xa410, 0x9040, 0x9040, 0x6aaa, 0x1aaa, 0xff00, 0x00ef, 0xffcc, 0xf0fe, 0x0005, 0x0040, 0x0195, 0x006a, 0xaaa5, 0xaa90, 0xa540, 0x00fe, 0x00c0, 0xf0fe, 0x4001, 0x0005, 0x0059, 0x00fe, 0x00f0, 0xe000, 0xfef0, 0x4000, 0x90a9, 0x01fe, 0x0030, 0x7889, 0xeeee, 0x00f0, 0x0300, 0x90fe, 0x500d, 0x00aa, 0x05a9, 0x00a9, 0x00a4, 0x05a4, 0xaaa4, 0x5556, 0x7f76, 0xaa75, 0xa95a, 0xa9da, 0xa5d5, 0xa7fd, 0x55aa, 0x000f, 0x006f, 0xeb0a, 0xffff, 0x6fff, 0x00f0, 0xf010, 0x0000, 0xf6ff, 0x00f0, 0xce00, 0x01ef, 0xffce, 0x0e7f, 0xff0e, 0x0002, 0x0025, 0x0025, 0xa55a, 0x00fe, 0x003c, 0xc0fe, 0x0007, 0x0040, 0x0094, 0x00a9, 0x00a9, 0x6aa4, 0x5af4, 0xf6fd, 0xf6ff, 0x00fc, 0x1010, 0xebfc, 0x0001, 0x80a1, 0x80a1, 0xc0ef, 0x1404, 0xc3aa, 0xffa8, 0xffa3, 0xffa3, 0xff8f, 0xb0fc, 0x9004, 0x9003, 0x9003, 0x416a, 0x001a, 0x0006, 0xccf0, 0x00fc, 0x1010, 0xebfc, 0x0001, 0x2821, 0x2821, 0xc0fe, 0x5016, 0xf5aa, 0xffa9, 0xffa7, 0xffa7, 0xff9f, 0xff9f, 0xff9f, 0x069f, 0x5a01, 0x1a00, 0x1a00, 0x1a40, 0x6a40, 0x1a40, 0x6a90, 0x10a5, 0x40a4, 0x00a9, 0x00a9, 0x00a9, 0x40a9, 0x01aa, 0x56a9, 0x0000, 0x01fe, 0x0708, 0xe101, 0xfef0, 0xa409, 0xa456, 0x905a, 0x401a, 0xa905, 0x5601, 0xaa01, 0xaa01, 0xaa01, 0x6a01, 0x6900, 0x00f0, 0x80e0, 0xfef0, 0x0039, 0x0090, 0x0090, 0x4094, 0x90a9, 0xa4aa, 0xa9aa, 0x00aa, 0x0040, 0x0090, 0x00a4, 0x4094, 0x90a9, 0xa4aa, 0xa9aa, 0x54aa, 0x90aa, 0x90aa, 0x40aa, 0x409a, 0x009a, 0x4069, 0x006a, 0x5a15, 0xaa01, 0xaa01, 0xaa01, 0x6a01, 0xaa00, 0xa901, 0x5401, 0x9001, 0x906a, 0x406a, 0x906a, 0x401a, 0x0005, 0x06aa, 0x06a9, 0x1aa4, 0x1aa4, 0x1aa4, 0x06a4, 0x1a90, 0x0540, 0xa690, 0xa950, 0xaa90, 0x9a40, 0x9a40, 0x6900, 0x6a40, 0x1500, 0x1a9a, 0x1a6a, 0x05aa, 0x01aa, 0x006a, 0x006a, 0xfeef, 0x00f0, 0x8070, 0xff0e, 0x0004, 0x0025, 0x8025, 0x8025, 0x8095, 0x6025, 0x00f0, 0x0038, 0x90fe, 0x0037, 0x0050, 0x01a4, 0x0690, 0x0690, 0x0690, 0x1aa4, 0x6a90, 0x16a5, 0x1a00, 0x0600, 0x0600, 0x0650, 0x1a90, 0x0690, 0x5aa4, 0x00a9, 0x00a5, 0x00a9, 0x01a4, 0x01a4, 0x01a4, 0x06a9, 0x5aa4, 0x1aa9, 0x1a00, 0x1a40, 0x6a40, 0x1a40, 0x6a90, 0xaaa5, 0xa400, 0xa400, 0x9001, 0x9006, 0x9006, 0xa406, 0x901a, 0xa56a, 0x001a, 0x001a, 0x001a, 0x106a, 0x406a, 0x41aa, 0x406a, 0x95aa, 0xa950, 0xa900, 0xa900, 0xa900, 0xa900, 0xa405, 0xa41a, 0xa56a, 0x75d5, 0x7759, 0xff00, 0x00f9, 0x9f76, 0xf90f, 0x5404, 0x5500, 0x5080, 0x5480, 0x5480, 0x5480, 0xf9f0, 0x000f, 0x0f1e, 0x016f, 0xac58, 0x0049, 0xe6f0, 0x0010, 0x0165, 0x05aa, 0x0665, 0x0565, 0x0059, 0x0015, 0x7fd0, 0x7f40, 0x1fd0, 0x0540, 0xff00, 0xfd07, 0xf407, 0xf41f, 0xf41f, 0xf41f, 0xd007, 0x0fee, 0x00f0, 0x0038, 0xfef0, 0x0005, 0x0054, 0x40a9, 0x90aa, 0x90aa, 0x90a6, 0x409a, 0xfeee, 0x00f0, 0x0300, 0xf0fe, 0x9007, 0x40aa, 0x00aa, 0x00a9, 0x04a4, 0x1090, 0xaa40, 0xaa5a, 0x6505, 0x00fe, 0xb040, 0xff0e, 0x0003, 0x0025, 0x5556, 0x5568, 0x6980, 0x00fe, 0x8090, 0xf0fe, 0x0001, 0x4040, 0x0094, 0x020f, 0xf1fe, 0x78fc, 0xc7f0, 0xffff, 0x0fee, 0x00f0, 0xf0f0, 0xff0f, 0x5000, 0x0554, 0x00fe, 0x303e, 0xff0e, 0x0002, 0x00a5, 0x0025, 0xa556, 0x00fe, 0x803e, 0xf0fe, 0x0001, 0x4094, 0x00a9, 0x000f, 0xf3fe, 0xfef0, 0xa418, 0xa940, 0xaa90, 0xaa90, 0xa9a4, 0xa9a4, 0xa9a4, 0x0001, 0x0006, 0x005a, 0x01aa, 0x01aa, 0x069a, 0x069a, 0x069a, 0x1400, 0x6900, 0x6a40, 0x1a40, 0x0690, 0x5690, 0x0500, 0x1a40, 0x1a90, 0x0690, 0x01a4, 0xeeff, 0x000f, 0xcffe, 0xfff0, 0x01fe, 0x801c, 0x4340, 0xfef0, 0x5000, 0x906a, 0xeeee, 0x00f0, 0x0300, 0xf0fe, 0x5004, 0x01aa, 0x00a9, 0x00a4, 0x01a4, 0x54a9, 0x000f, 0x78fe, 0xfeee, 0x00f0, 0x80f8, 0xfe0f, 0x5008, 0x4a85, 0x4a80, 0x0555, 0xa155, 0x5455, 0x5255, 0x4155, 0x2855, 0x2a15, 0x00f0, 0x30f8, 0xfef0, 0x4016, 0x901a, 0x951a, 0x0006, 0x40a4, 0x90a9, 0x90aa, 0xa4aa, 0xa4a9, 0xa4a9, 0xa4a9, 0x06a9, 0x5a00, 0xaa00, 0xaa01, 0x9a01, 0x9a06, 0x9a06, 0x9a06, 0x0006, 0x0014, 0x4069, 0x406a, 0x901a, 0x000f, 0x7cf0, 0x10fe, 0x9006, 0x901a, 0xa41a, 0xa915, 0xfdaa, 0xf6aa, 0xdaaa, 0xdaaa, 0x01f0, 0x8080, 0x8080, 0xfaf1, 0x0000, 0x0090, 0xf111, 0x0001, 0xfff0, 0xf1f0, 0x5004, 0xa400, 0xa900, 0xaa40, 0xaa40, 0xaa90, 0x1f00, 0x00f1, 0x0ff0, 0xfef0, 0x4006, 0x906a, 0x9095, 0x40aa, 0x409a, 0x009a, 0x4095, 0x00a6, 0x00ef, 0xf670, 0xf0fe, 0x9413, 0xa900, 0xaa40, 0xaa40, 0xaa90, 0xaaa4, 0xaaa9, 0x001a, 0x001a, 0x001a, 0x401a, 0x401a, 0x406a, 0x901a, 0xa56a, 0xa900, 0xa900, 0xa900, 0xa900, 0xa900, 0xaa40, 0xeeef, 0x000f, 0x7f1e, 0x0cbf, 0xa403, 0xaa8f, 0x5aa3, 0x5aa3, 0x5aa8, 0x00cf, 0xfefe, 0x0bcf, 0x540b, 0x0955, 0x55ff, 0x56fc, 0x56f1, 0x56f1, 0x55c5, 0x55c5, 0x55c5, 0x0fc5, 0x8f55, 0x9356, 0x5356, 0x00fc, 0x1010, 0xefbc, 0x5001, 0x5002, 0x0002, 0xfccc, 0x0fef, 0x0fbc, 0x500b, 0x50fa, 0x00f8, 0x00f8, 0x01e0, 0x01e0, 0x00e0, 0xafe0, 0x6f00, 0x0b01, 0x0b00, 0x0250, 0x0250, 0xbbcc, 0x00cf, 0xfefe, 0xfccc, 0x0fef, 0x0fbc, 0x5005, 0x00ea, 0x01f8, 0x01f8, 0x01e0, 0x00e0, 0x00e0, 0xe0fc, 0x901d, 0xffda, 0xffda, 0xffda, 0x7fda, 0x7fda, 0x7f6a, 0x9fda, 0xa56a, 0xa9ff, 0xa9ff, 0xa9ff, 0xa9ff, 0xa9ff, 0xaa7f, 0xa9fd, 0xaa56, 0xfdf6, 0xff5a, 0xffda, 0x7fda, 0x7fda, 0x7f6a, 0x9fda, 0xa56a, 0xa7df, 0xa97f, 0xa9ff, 0xa9ff, 0xa9ff, 0xaa7f, 0xeeef, 0x000f, 0x3f1e, 0xb0cf, 0x540e, 0x554a, 0x5552, 0x5552, 0x5554, 0x57d4, 0x57d4, 0x5554, 0xa805, 0xa855, 0xa155, 0xa155, 0x8555, 0x85f5, 0x85f5, 0x8555, 0xcef0, 0x9010, 0x90aa, 0x90aa, 0x40aa, 0x409a, 0x006a, 0x4069, 0x006a, 0xaa15, 0xaa01, 0xaa01, 0xaa01, 0xa906, 0x941a, 0x401a, 0x0019, 0x5005, 0xd0ff, 0xbf0c, 0x0001, 0x03c9, 0x03c9, 0x00cf, 0xfefe, 0x0bcf, 0x5409, 0x54a5, 0x1555, 0x55f0, 0xa5fc, 0xa5f1, 0x55f1, 0x55c5, 0x56c5, 0x55c5, 0x3fc5, 0xc0ef, 0x5411, 0x554a, 0x554a, 0x5452, 0x5452, 0x5452, 0x5452, 0x550a, 0xaa05, 0xa855, 0xa855, 0xa145, 0xa145, 0xa145, 0xa145, 0xa815, 0xff0a, 0xffca, 0xfff2, 0xbcf0, 0xe400, 0xe9ab, 0xcccb, 0x00cf, 0xfefe, 0x0bcf, 0x5408, 0x15a5, 0x55fc, 0x55fc, 0xa5f1, 0xa5f1, 0x55c5, 0x55c5, 0x56c5, 0x0fc5, 0xff0e, 0x000c, 0x0025, 0x8025, 0x8025, 0x8095, 0x6095, 0x6025, 0x5a95, 0x5680, 0x5600, 0x5600, 0x5600, 0x5580, 0x5582, 0xeeef, 0x000f, 0x3f1e, 0xbf0c, 0x0004, 0x0025, 0x0009, 0x0009, 0x03c2, 0x03c2, 0x00cf, 0xfefe, 0xb0fc, 0x4006, 0x00a9, 0x00a9, 0x00a4, 0xf0a4, 0xf090, 0x0090, 0x0090, 0x0fcc, 0x00f0, 0x8080, 0xf1f0, 0x0007, 0x0050, 0x00a4, 0x00a9, 0x00a9, 0x00a4, 0xaa50, 0x556a, 0x9015, 0x1111, 0x00f0, 0xf8fc, 0xfaf0, 0x4003, 0x90a9, 0xa496, 0xa4aa, 0xa496, 0xffaa, 0x00f1, 0x0100, 0xf1fa, 0xa404, 0xa4aa, 0x90aa, 0x90aa, 0x90aa, 0x90aa, 0xff11, 0x00f0, 0xc000, 0xf1f0, 0x0004, 0x00a4, 0x40a9, 0x40aa, 0x90aa, 0x90aa, 0x00f1, 0x0ff0, 0x00f0, 0xc000, 0xf1f0, 0x0004, 0x00a4, 0x40a9, 0x40aa, 0x90aa, 0x90aa, 0x00f1, 0x0ff0, 0x00f0, 0xc000, 0xf1f0, 0x0004, 0x00a4, 0x40a9, 0x40aa, 0x90aa, 0x90aa, 0x00f1, 0x0ff0, 0xfef0, 0x000a, 0x0014, 0x4069, 0x406a, 0x901a, 0x901a, 0x0056, 0x4005, 0x901a, 0x901a, 0xa406, 0xa506, 0x000f, 0x71fe, 0xf0ef, 0x5418, 0x054a, 0x5152, 0x5554, 0x02aa, 0x542a, 0x554a, 0x554a, 0x5152, 0x4552, 0x0aaa, 0x52aa, 0x542a, 0x554a, 0x554a, 0x5152, 0x4552, 0x4552, 0xaaa8, 0xaaa1, 0xaa05, 0xa855, 0xa855, 0xa151, 0x8551, 0x8545, 0x00f0, 0xc000, 0xf1f0, 0x0004, 0x00a4, 0x40a9, 0x40aa, 0x90aa, 0x90aa, 0x00f1, 0x0ff0, 0xfe0f, 0x5403, 0x4255, 0x2a55, 0xaa54, 0xaa52, 0x0fee, 0x00fe, 0x8884, 0xeeee, 0x0fff, 0x0120, 0xf030, 0xf3f0, 0x1f02, 0x5003, 0x5a55, 0x6f95, 0xbfe5, 0x5655, 0xffe0, 0x0000, 0x2a29, 0x00ef, 0x7d76, 0xeefe, 0x0fee, 0x00f0, 0x0700, 0xe0f1, 0x400a, 0x00aa, 0x00a9, 0x00a9, 0x00a4, 0x00a4, 0xaaa4, 0xa56a, 0x9fd5, 0x5aaa, 0xf5aa, 0xffa9, 0x000f, 0xe7fe, 0xfef0, 0x9402, 0xa906, 0x5506, 0xaa01, 0x0ffe, 0x00fe, 0x8080, 0xf0fe, 0x4002, 0x9095, 0x50aa, 0x00aa, 0x000f, 0xfcfe, 0xf0fe, 0x5003, 0x00aa, 0x00a9, 0x04a5, 0x0490, 0x0fee, 0x00f0, 0xc080, 0xfef0, 0x0004, 0x00a4, 0x40a4, 0x9005, 0x905a, 0x40aa, 0xeeef, 0x00f0, 0x70e0, 0xff10, 0x0006, 0x0095, 0x0255, 0x0255, 0x0955, 0x0955, 0x0955, 0x5560, 0x00f0, 0xf8fc, 0xfaf0, 0x4003, 0x90a9, 0xa496, 0xa4aa, 0xa496, 0xffaa, 0x00f1, 0x0100, 0x01fa, 0xa405, 0xa4aa, 0x90aa, 0x90aa, 0x90aa, 0x90aa, 0x9f5a, 0x1111, 0x00f0, 0xf8fc, 0xfaf0, 0x4003, 0x90a9, 0xa496, 0xa4aa, 0xa496, 0xffaa, 0x00f1, 0x0100, 0x01fa, 0xa409, 0xa4aa, 0x90aa, 0x90aa, 0x90aa, 0x90aa, 0x9f5a, 0x5faa, 0x7f55, 0x5f14, 0x0701, 0x00fa, 0x1016, 0x0ffa, 0x1000, 0x5001, 0x00f1, 0x0100, 0x01fa, 0xa405, 0xa4aa, 0x90aa, 0x90aa, 0x90aa, 0x90aa, 0x5f5a, 0xf0cf, 0x5401, 0x554a, 0x5552, 0xccf0, 0x00fc, 0x1010, 0x0bfc, 0x0009, 0x0281, 0x0281, 0xfd50, 0xfd00, 0xf400, 0xf400, 0xd000, 0xd000, 0xd0a0, 0xd0a0, 0x02d0, 0x01c0, 0x8c89, 0x0241, 0xd000, 0x00f0, 0x8080, 0xfef0, 0x0003, 0x0090, 0x0090, 0x0090, 0x0040, 0x00fe, 0x7884, 0xf0fe, 0x0001, 0x0010, 0x0164, 0x020f, 0xfe1e, 0xf7ff, 0xf7f7, 0xf000, 0x0000, 0x01ef, 0xc3bc, 0xe9ef, 0xfe0f, 0x1400, 0x5401, 0xeef0, 0x01ef, 0xef2c, 0xefef, 0x1f0e, 0x000b, 0x2009, 0x2802, 0x9aa9, 0x5a80, 0x5580, 0x5580, 0x5580, 0x5560, 0x5580, 0x5580, 0x556a, 0xffe5, 0x00f0, 0xf8fc, 0xfdf0, 0x4003, 0x90a9, 0xa496, 0xa4aa, 0xa496, 0xffdd, 0x00f1, 0x0100, 0xe1fd, 0xa405, 0xa4aa, 0x90aa, 0x90aa, 0x90aa, 0x90aa, 0xff5a, 0xfe0f, 0x5403, 0x54aa, 0x54aa, 0x54aa, 0x552a, 0xeeef, 0x000f, 0xff1e, 0x0020, 0xf3f0, 0x1f20, 0x0008, 0x0005, 0xbfe0, 0xbff8, 0xbff8, 0x2ff8, 0x2ff8, 0x2ffe, 0x2ffe, 0x0bfe, 0x10ef, 0x1430, 0x15a0, 0x81aa, 0x85aa, 0x85aa, 0xa0aa, 0xffaa, 0xffa3, 0xffa3, 0xffa3, 0xffa8, 0x3fa8, 0x83aa, 0xa8aa, 0x55aa, 0x5585, 0x1581, 0x85a8, 0x15aa, 0x55aa, 0x55a8, 0x55a1, 0x55a1, 0x15a8, 0x85aa, 0x81aa, 0x15aa, 0x55a8, 0x55a1, 0x55a1, 0x5584, 0x15a1, 0x85a8, 0x81aa, 0x15aa, 0x55a8, 0x55a1, 0x55a1, 0x55a1, 0x55a1, 0x55a1, 0x54a1, 0x52a8, 0x0aa1, 0xaaa8, 0xa005, 0xaa15, 0xaa15, 0xaa81, 0xaa85, 0x0fee, 0x01f0, 0x8030, 0x80c0, 0x1ef0, 0x0009, 0x0094, 0x00a9, 0x00a4, 0x0050, 0x07ff, 0x07ff, 0x07ff, 0x01ff, 0x01ff, 0x007f, 0x0ff1, 0x0af0, 0xc010, 0x0909, 0x4085, 0x8301, 0xbb82, 0x8182, 0x8080, 0xa2c1, 0x80e0, 0x0a04, 0x8c06, 0xfef0, 0x0005, 0x0014, 0x4069, 0x406a, 0x901a, 0x901a, 0x9006, 0xfffe, 0x00f0, 0x3000, 0xfef0, 0x4004, 0x901a, 0x901a, 0xa406, 0xa406, 0xa501, 0x000f, 0xf1fe, 0xf0ef, 0x541d, 0x552a, 0x052a, 0x054a, 0x80aa, 0x1528, 0x1548, 0x814a, 0xa150, 0x54aa, 0x14aa, 0x82aa, 0x50aa, 0x5255, 0x5255, 0x5415, 0x5481, 0x5485, 0x5285, 0x0aa1, 0xaaa8, 0xaa52, 0xaa54, 0xaa54, 0xaa14, 0xaa82, 0x5455, 0x5255, 0x5415, 0x5485, 0x5285, 0x0fee, 0x00f0, 0x303c, 0xcef0, 0x400c, 0x901a, 0x901a, 0x9006, 0x9006, 0x0056, 0x0140, 0x0690, 0x06a4, 0x01a4, 0x01a4, 0x01a5, 0xfffd, 0xfff4, 0xbcf0, 0xe415, 0x90af, 0x40aa, 0x00a9, 0x0054, 0x1aaa, 0x06aa, 0x06aa, 0x01aa, 0x005a, 0x0005, 0xaaa9, 0xaaa4, 0xbfa4, 0xaa90, 0xa940, 0x5400, 0xaa00, 0xaa1a, 0xaa06, 0xaa06, 0x5a01, 0x0500, 0xfef0, 0x0005, 0x00a4, 0x00a4, 0x00a9, 0x00a9, 0x0069, 0x0014, 0x00fe, 0x1860, 0xc0fe, 0x9004, 0x9001, 0xa401, 0xa556, 0xfffd, 0xfff6, 0xcbf0, 0xa408, 0xd0ff, 0x40ff, 0x00fd, 0x0054, 0x1fff, 0x07ff, 0x07ff, 0x01ff, 0x005f, 0x00ff, 0x03d0, 0x8080, 0x8080, 0x8080, 0x8080, 0x00f0, 0xf8fc, 0x1df0, 0x4007, 0x50aa, 0xd055, 0x40ff, 0x0055, 0x07da, 0x07f6, 0x01fd, 0x007f, 0x0ff1, 0x02f0, 0xc010, 0x0f8f, 0x8f08, 0x1f0a, 0x0008, 0xaaa5, 0xffe5, 0xaa95, 0x5be0, 0x5bf8, 0x56f8, 0x56f8, 0x55be, 0x556f, 0x00f1, 0x07f0, 0x3010, 0x23a1, 0x2399, 0x8209, 0x3205, 0x9222, 0xc001, 0x8f8f, 0x1f0a, 0x0007, 0xaaa5, 0xffe5, 0xaa95, 0xe055, 0xf85b, 0xfe5b, 0xbf56, 0x6b55, 0x00f0, 0xe010, 0xa10f, 0x000c, 0xca01, 0x2805, 0x03c5, 0xff15, 0x0005, 0xaa85, 0x0015, 0x528f, 0x52a3, 0x52a3, 0x52a3, 0x54a8, 0x552a, 0x0ff1, 0x01f0, 0xc010, 0x8f8f, 0x1f0a, 0x0008, 0xaaa5, 0xffe5, 0xaa95, 0xe055, 0xf85b, 0xfe5b, 0xbf56, 0x6b55, 0x5655, 0xbcf0, 0x0018, 0xaaa9, 0xaaa4, 0xaaa4, 0xaa90, 0xa940, 0x5400, 0xaa00, 0xaa1a, 0xaa06, 0xaa06, 0x5a01, 0x0500, 0xa400, 0x90aa, 0x90aa, 0x40aa, 0x00aa, 0x00a5, 0x0050, 0x6aaa, 0x1aaa, 0x1afe, 0x06aa, 0x016a, 0x0015, 0xcef0, 0x9024, 0x90aa, 0x906a, 0x406a, 0x406a, 0x401a, 0x401a, 0x4006, 0xaa05, 0xaa01, 0xaa01, 0x6a01, 0x6900, 0x6900, 0x6400, 0x5400, 0xfd00, 0xf4ff, 0xf4ff, 0xd0ff, 0x40ff, 0x00fd, 0x0054, 0x1fff, 0x07ff, 0x07ff, 0x01ff, 0x005f, 0x0005, 0xfff4, 0xffd0, 0xffd0, 0xff40, 0xf500, 0x5000, 0xff00, 0xff7f, 0xff1f, 0xc0fb, 0x9032, 0xa7ff, 0xa97f, 0xaa95, 0xfffd, 0xfff6, 0xfff6, 0xffda, 0xfd6a, 0x56aa, 0xffaa, 0xff9f, 0xffa7, 0xffa7, 0x5fa9, 0xa5aa, 0xfdaa, 0xf6ff, 0xf6ff, 0xdaff, 0x6aff, 0xaafd, 0xaa56, 0x9fff, 0xa7ff, 0xa7ff, 0xa9ff, 0xaa5f, 0xaaa5, 0xfffd, 0xfff6, 0xfff6, 0xffda, 0xfd6a, 0x56aa, 0xffaa, 0xff9f, 0xffa7, 0xffa7, 0x5fa9, 0xa5aa, 0xf6aa, 0xdaff, 0xdaff, 0x6aff, 0xaaff, 0xaaf5, 0xaa5a, 0x7fff, 0x9fff, 0x9c0f, 0xa7ff, 0xfccc, 0x000f, 0x3f8e, 0xbcf0, 0x0017, 0x0001, 0xaaa9, 0xfaa4, 0xaaa4, 0xaa90, 0xa940, 0x5400, 0xaa00, 0xab1a, 0xaa06, 0xaa06, 0x5a01, 0x0500, 0xa900, 0xa4fa, 0xa4aa, 0x90aa, 0x40aa, 0x00a9, 0x0054, 0x1aab, 0x06aa, 0x06aa, 0x01aa, 0xffcc, 0x00f0, 0x1030, 0xf1f0, 0x0005, 0x0001, 0x06a9, 0x06a9, 0x06a9, 0x06a9, 0x06a9, 0x11f0, 0x020f, 0x7f3e, 0xef7f, 0xefef, 0xf1f0, 0x0001, 0x0550, 0x1aa4, 0x011f, 0x7e7e, 0x7e7e, 0x11f0, 0x0f11, 0x01f0, 0x803c, 0x1080, 0xffe0, 0x0000, 0x0009, 0x00fe, 0x00f0, 0x1010, 0xffe0, 0x0000, 0x0009, 0x00fe, 0x00f0, 0x1010, 0xffe0, 0x0000, 0x0009, 0x00fe, 0x00f0, 0x8010, 0xfef0, 0x0009, 0x0090, 0x0090, 0x0090, 0x0040, 0x06aa, 0x01a6, 0x0051, 0x06aa, 0x01a9, 0x06a4, 0x02f0, 0x801c, 0x8080, 0x8080, 0xffe0, 0x0001, 0x0255, 0x0959, 0x010f, 0x7fe2, 0x7f7f, 0x0000
};

// [D_08CE58AC] D_08CE5B3C Huffman Window 1
u32 D_08ce5b3c_window1[] = {
	0xdfbfedfd, 0xdedb2b76, 0xdb6fcffa, 0xefffde56, 0xf4b3e7ff, 0x5bf6fedf, 0xffdbfbfb, 0xfedbf6ec, 0xdf7efbbd, 0x2ddeff6f, 0xdbdeeff9, 0x76bfcfed, 0xca7ef6ff, 0xf6dbddfe, 0x7bcf2fff, 0x7ddfdb7b, 0xef6deef6, 0xedbef6ef, 0x0000fb6c
};

// [D_08CE58F8] D_08CE5B3C Huffman Window 2
u32 D_08ce5b3c_window2[] = {
	0x55355228, 0x8954aaa2, 0xa54aa2aa, 0x0544a002, 0x75a95550, 0x55568aa9, 0x9555b737, 0xa84aaaaa, 0x52aa555b, 0xb55554a5, 0xa4aaaddd, 0x5555532a, 0x559aa52d, 0x4abd54dd, 0x00000055
};

// [D_08CE5934] D_08CE5B3C Huffman
struct Huffman D_08ce5b3c_huffman[] = {
	/* Data */			D_08ce5b3c_huffmandata,
	/* Size */			0x1476,
	/* Count */			0x251,
	/* Window 1 */		D_08ce5b3c_window1,
	/* Window 2 */		D_08ce5b3c_window2,
};

// [D_08CE5944] D_08CE5B3C RLE Data
u8 D_08ce5b3c_rledata[] = {
	0x1, 0x4, 0x8, 0x7, 0x8, 0x4, 0x9, 0x4, 0x14, 0x4, 0xc, 0x8, 0x8, 0x9, 0x7, 0xa, 0x6, 0xc, 0x4, 0xa, 0x5, 0x9, 0x8, 0x1a, 0x6, 0x8, 0x8, 0x3, 0x3, 0x3, 0x7, 0x7, 0x9, 0xe, 0x2, 0xa, 0x6, 0x9, 0x3, 0x3, 0x1, 0xb, 0x4, 0x1b, 0x6, 0x9, 0x7, 0x18, 0xf, 0x7, 0x12, 0x6, 0xa, 0x6, 0xa, 0x5, 0xb, 0x7, 0x50, 0x3, 0x6, 0xf, 0xb, 0x5, 0x9, 0x7, 0x8, 0x18, 0x4, 0xa, 0xb, 0x4, 0xb, 0x4, 0x55, 0xe, 0x2, 0xe, 0x12, 0x6, 0x4, 0x5, 0x4, 0x1c, 0x1, 0x5, 0x47, 0x3, 0xd, 0x3, 0xd, 0x3, 0xc, 0x4, 0xc, 0x4, 0x71, 0x1f, 0xb, 0x6, 0x4, 0x5, 0x8, 0xe, 0x59, 0x5, 0x9, 0x4, 0x2, 0x3, 0xe, 0x12, 0x1, 0x3, 0x22, 0xa, 0x45, 0x4, 0xc, 0x4, 0x18, 0x7, 0xf, 0x9, 0x6, 0xa, 0x9, 0x7, 0x9, 0x8, 0x4, 0xb, 0x7, 0x9, 0x7, 0x9, 0x6, 0x1a, 0x7, 0x9, 0x5, 0xd, 0x4, 0x2a, 0xa, 0x27, 0x8, 0x7, 0xe, 0x23, 0xa, 0x5, 0x10, 0x10, 0x49, 0x3, 0xd, 0x3, 0x18, 0x13, 0xa, 0x5, 0xb, 0x7, 0x9, 0x8, 0x27, 0x9, 0x8, 0x7, 0x1, 0x7, 0x21, 0x8, 0xf, 0x6, 0x3, 0x8, 0x8, 0x7, 0x1, 0x7, 0xb, 0x4, 0x11, 0x20, 0x61, 0xc, 0x4d, 0x4, 0x2f, 0x3, 0xd, 0x3, 0xd, 0x3, 0xd, 0x4, 0x24, 0xb, 0x1, 0x3, 0x1, 0xb, 0x1, 0x3, 0x9, 0x3, 0x17, 0x9, 0x17, 0x9, 0x1, 0x5, 0x1, 0xa, 0x20, 0x8, 0xf, 0x8, 0xd, 0x3, 0xc, 0x4, 0x2d, 0x3, 0xc, 0x5, 0x2, 0xd, 0x70, 0x3, 0x1d, 0x3, 0x5e, 0x1e, 0x2, 0x1e, 0xe2, 0xa, 0x6, 0x7, 0x9, 0x7, 0x9, 0x9, 0xa6, 0xb, 0xf, 0x6, 0x1, 0xa, 0xf, 0x6, 0x2b, 0x5, 0x7d, 0x3, 0x3c, 0x4, 0xc, 0x4, 0x5, 0x3, 0x5, 0x3, 0xc, 0x4, 0x9, 0x7, 0x38, 0x4, 0x15, 0xe, 0x2, 0xd, 0x2, 0xd, 0x4, 0xb, 0x5, 0xe, 0x2, 0xd, 0x7, 0x5, 0xb, 0x4, 0x28, 0x4, 0xc, 0x4, 0x2c, 0xa, 0x6, 0x9, 0x7, 0xc, 0x4, 0xb, 0x4, 0x9, 0x8, 0x8, 0x28, 0x6, 0xa, 0x6, 0x1e, 0xb, 0x13, 0xd, 0x0, 0xd2, 0xc, 0x36, 0xd, 0x13, 0xd, 0x13, 0xd, 0x1, 0x4, 0xc, 0x4, 0xc, 0x36, 0xa, 0x14, 0x3e, 0xd, 0x11, 0x7, 0x9, 0xa, 0x6, 0x5, 0x1b, 0xb, 0x5, 0x9, 0x7, 0x9, 0x17, 0x3, 0xd, 0xe, 0x2, 0xa, 0x10, 0x7, 0x8f, 0x13, 0x19, 0x3, 0x5, 0x4, 0x12, 0x5, 0x5, 0x5, 0x5c, 0xa, 0x1c, 0x4, 0x4d, 0x3, 0xe, 0x3, 0x2, 0xe, 0x2, 0xe, 0xa, 0x5, 0x10, 0x4, 0xb, 0x5, 0xb, 0x6, 0xa, 0x6, 0xa, 0x4, 0x1e, 0x6, 0xa, 0x6, 0x10, 0x9, 0x1b, 0x5, 0x1, 0x3, 0xd, 0x4, 0xc, 0x3, 0x19, 0x3, 0xc, 0x4, 0xd, 0x3, 0xc, 0x5, 0xc, 0x3, 0x1, 0x5, 0x17, 0x3, 0xc, 0x15, 0x1c, 0x3, 0xc, 0x4, 0x20, 0x4, 0xb, 0x4, 0x1a, 0x3, 0xc, 0x4, 0x2d, 0x3, 0xc, 0x4, 0xd, 0x3, 0xc, 0x4, 0xd, 0x3, 0xc, 0x4, 0x2d, 0x3, 0xc, 0x4, 0xd, 0x3, 0xc, 0x4, 0xd, 0x3, 0xc, 0x4, 0xd, 0x3, 0xc, 0x4, 0xd, 0x3, 0xc, 0x4, 0xd, 0x3, 0xc, 0x13, 0x2, 0xd, 0xf, 0x3, 0xc, 0x4, 0xd, 0x3, 0xc, 0x10, 0x12, 0xb, 0x4, 0x5, 0x6, 0x8, 0x11, 0x6, 0x4, 0x5, 0x8, 0xe, 0x8, 0x4, 0x8, 0x17, 0xa, 0x5, 0x6, 0xa, 0x9, 0x12, 0x4, 0x6, 0x6, 0x5, 0x7, 0x10, 0x6, 0x0, 0x34
};

// [D_08CE5B3C] D_08CE5B3C Graphics
struct CompressedGraphics D_08ce5b3c = {
	/* Huffman Data */		D_08ce5b3c_huffman,
	/* RLE Data */			D_08ce5b3c_rledata,
	/* RLE Size */			0x1f6,
	/* RLE Offset */		0x1e00,
	/* Double Compressed */	TRUE,
};

// // //  D_08CE5DB0  // // //

// [D_08CE5B4C] D_08CE5DB0 Huffman Data
u16 D_08ce5db0_huffmandata[] = {
	0x0000, 0x2222, 0x0035, 0xfefc, 0x0052, 0x8000, 0xf352, 0x0004, 0x0050, 0x0094, 0x40a5, 0x50a9, 0x94aa, 0x3333, 0x0025, 0xfefc, 0x0053, 0x8000, 0xf253, 0x0004, 0x0050, 0x0094, 0x40a5, 0x50a9, 0x94aa, 0x2222, 0x0748, 0x0808, 0x0808, 0x0808, 0x0808, 0x0101, 0x0101, 0x0101, 0x0101, 0x8884, 0x8888, 0x034a, 0x8080, 0x8080, 0x8080, 0x8080, 0xda48, 0x4001, 0xaaa9, 0xaba9, 0x06a4, 0xfefe, 0xfefe, 0xfefe, 0xfefe, 0xfefe, 0xfefe, 0xfefe, 0xca48, 0x0406, 0x41a9, 0x41ea, 0x41aa, 0x41aa, 0x41aa, 0x41aa, 0x04aa, 0x01a4, 0xf7fe, 0xf7f7, 0x4aaa, 0xaada, 0x014a, 0x0808, 0x8808, 0xda48, 0x1007, 0x41aa, 0x41aa, 0x41aa, 0x41aa, 0x41aa, 0x41aa, 0x106a, 0xaaae, 0xcddd, 0x00da, 0x2020, 0xdfca, 0x0000, 0x0004, 0x0548, 0x0808, 0x0808, 0x10f8, 0x1010, 0x1f10, 0x0ff0, 0x01a4, 0x0f00, 0xf7f0, 0xdc4a, 0x4003, 0x4020, 0x40b8, 0x42fe, 0x40b8, 0xacaa, 0x044a, 0x1ff8, 0x1010, 0x1010, 0x1010, 0x1010, 0xfd4a, 0x0000, 0x2001, 0x01a4, 0xfefe, 0xfefe, 0xfa84, 0x0002, 0x5100, 0x45a8, 0x45a1, 0xa488, 0x0148, 0x1088, 0x8060, 0x8888, 0x8888, 0x044a, 0x0ff0, 0x0808, 0x0808, 0x0808, 0x8ff8, 0xfa48, 0x1000, 0x041a, 0x884a, 0x0148, 0x8112, 0x1060, 0x00a8, 0xf000, 0xaaa4, 0x4aaa, 0x0f48, 0x007e, 0x7e81, 0xf0ff, 0xff0f, 0x0d01, 0x010d, 0xf1f1, 0x080f, 0x0b0b, 0x08f8, 0x08f8, 0x0808, 0x1f08, 0x1010, 0x1010, 0x0ff0, 0xaaaa, 0xaada, 0x054a, 0x1ff0, 0x1010, 0x1010, 0x1010, 0x01f0, 0x0101, 0xfda4, 0x5400, 0x5455, 0xaada, 0x00a4, 0xfefe, 0x0148, 0x8000, 0x1060, 0xfa48, 0x4002, 0x1040, 0x1090, 0x04a4, 0x03a4, 0xf00e, 0xf7f7, 0xf7f7, 0xf7f7, 0x4aaa, 0x0148, 0x0100, 0x0806, 0xfa84, 0x5402, 0x5254, 0x4a51, 0x2a51, 0x0148, 0x17e4, 0xe008, 0x8444, 0x00a4, 0xff7e, 0xfdca, 0x0400, 0x0800, 0xaaaa, 0x0005, 0xfefc, 0x5432, 0x0002, 0x2840, 0x00d0, 0x00f4, 0x2053, 0x9403, 0xa53f, 0xa94f, 0xaa53, 0xaa94, 0x0648, 0x0ff0, 0xf1ff, 0x0d01, 0x010d, 0xf8ff, 0x0808, 0x0b0b, 0x2548, 0x4001, 0x5555, 0xffaa, 0x0073, 0x0f00, 0x0023, 0x00f0, 0x0273, 0x427e, 0x5a5a, 0x7e42, 0x0043, 0xff00, 0x0248, 0x0200, 0x0002, 0xff0f, 0x0000
};

// [D_08CE5D3C] D_08CE5DB0 Huffman Window 1
u32 D_08ce5db0_window1[] = {
	0xefb3e5dc, 0xdbbd9365, 0x7ffffeff
};

// [D_08CE5D48] D_08CE5DB0 Huffman Window 2
u32 D_08ce5db0_window2[] = {
	0x4254a524, 0x00441692
};

// [D_08CE5D50] D_08CE5DB0 Huffman
struct Huffman D_08ce5db0_huffman[] = {
	/* Data */			D_08ce5db0_huffmandata,
	/* Size */			0x234,
	/* Count */			0x49,
	/* Window 1 */		D_08ce5db0_window1,
	/* Window 2 */		D_08ce5db0_window2,
};

// [D_08CE5D60] D_08CE5DB0 RLE Data
u8 D_08ce5db0_rledata[] = {
	0x1, 0xf, 0x1, 0xf, 0x4, 0xc, 0x10, 0x10, 0x4, 0xc, 0x21, 0xf, 0x11, 0xf, 0x1, 0x10, 0x10, 0xf, 0x5a, 0x6, 0xb, 0x6, 0xa, 0xd, 0x3, 0x5, 0x3, 0xd, 0x41, 0xd, 0x23, 0x5, 0xd, 0x7, 0x3, 0x3, 0xd, 0x3, 0xc, 0x4, 0x1, 0x5, 0xa, 0x6, 0xb, 0x5, 0x3, 0x7, 0x1, 0x3, 0x2, 0x8, 0x11, 0x3, 0x52, 0xc, 0x11, 0x3, 0x3, 0x7, 0x3, 0x4, 0xc, 0x3, 0xd, 0xf, 0x1, 0x3, 0x3, 0x3, 0x3, 0x3, 0x16, 0x4, 0x5, 0x3, 0x1, 0xb, 0x3, 0x8f
};

// [D_08CE5DB0] D_08CE5DB0 Graphics
struct CompressedGraphics D_08ce5db0 = {
	/* Huffman Data */		D_08ce5db0_huffman,
	/* RLE Data */			D_08ce5db0_rledata,
	/* RLE Size */			0x50,
	/* RLE Offset */		0x400,
	/* Double Compressed */	TRUE,
};

u8 D_08ce5dc0[92] = {
	0x78, 0x00, 0x78, 0x00, 0x78, 0x00, 0x78, 0x00, 0x78, 0x00, 0x78, 0x00,
	0x78, 0x00, 0x78, 0x00, 0x78, 0x00, 0x78, 0x00, 0x1C, 0x00, 0x78, 0x00,
	0x78, 0x00, 0x78, 0x00, 0x78, 0x00, 0x78, 0x00, 0x78, 0x00, 0x78, 0x00,
	0x78, 0x00, 0x78, 0x00, 0x78, 0x00, 0x78, 0x00, 0x78, 0x00, 0x78, 0x00,
	0x78, 0x00, 0x78, 0x00, 0x40, 0x00, 0x40, 0x00, 0x00, 0x00, 0x8E, 0x00,
	0x1E, 0x00, 0x28, 0x00, 0x78, 0x00, 0x78, 0x00, 0x78, 0x00, 0x78, 0x00,
	0x78, 0x00, 0x78, 0x00, 0x78, 0x00, 0x78, 0x00, 0x40, 0x00, 0x40, 0x00,
	0x40, 0x00, 0x40, 0x00, 0x1C, 0x00, 0x78, 0x00
};


// // //  D_08CE615C  // // //

// [D_08CE5E1C] D_08CE615C Data
u16 D_08ce615c_data[] = {
	0x0032, 0x0021, 0x0020, 0x0020, 0x0020, 0x0022, 0x0021, 0x0020, 0x0020, 0x0020, 0x0022, 0x0021, 0x0020, 0x0020, 0x0020, 0x0022, 0x0021, 0x0020, 0x0020, 0x0020, 0x0022, 0x0021, 0x0020, 0x0020, 0x0020, 0x0022, 0x0021, 0x0020, 0x0020, 0x0020, 0x0022, 0x0021, 0x0020, 0x0008, 0x0019, 0x0017, 0x0018, 0x000d, 0x0008, 0x0029, 0x002c, 0x002b, 0x000d, 0x0008, 0x081a, 0x081c, 0x081d, 0x000d, 0x0008, 0x0023, 0x0025, 0x0024, 0x000d, 0x0008, 0x042a, 0x0417, 0x0428, 0x000d, 0x0008, 0x0029, 0x002c, 0x002b, 0x000d, 0x0008, 0x0019, 0x0008, 0x000e, 0x000b, 0x000c, 0x000d, 0x0008, 0x0010, 0x0013, 0x0012, 0x000d, 0x0008, 0x080f, 0x080b, 0x0811, 0x000d, 0x0008, 0x0007, 0x000a, 0x0009, 0x000d, 0x0008, 0x0411, 0x040b, 0x040f, 0x000d, 0x0008, 0x0010, 0x0013, 0x0012, 0x000d, 0x0008, 0x000e, 0x0008, 0x0027, 0x0026, 0x001d, 0x000d, 0x0008, 0x001b, 0x001f, 0x001e, 0x000d, 0x0008, 0x0828, 0x0817, 0x082a, 0x000d, 0x0008, 0x0014, 0x0016, 0x0015, 0x000d, 0x0008, 0x041d, 0x041c, 0x041a, 0x000d, 0x0008, 0x001b, 0x001f, 0x001e, 0x000d, 0x0008, 0x0027, 0x0030, 0x002f, 0x002f, 0x002f, 0x0031, 0x0030, 0x002f, 0x002f, 0x002f, 0x0031, 0x0030, 0x002f, 0x002f, 0x002f, 0x0031, 0x0030, 0x002f, 0x002f, 0x002f, 0x0031, 0x0030, 0x002f, 0x002f, 0x002f, 0x0031, 0x0030, 0x002f, 0x002f, 0x002f, 0x0031, 0x0030, 0x002f, 0x0033, 0x0033, 0x0034, 0x0033, 0x0033, 0x0034, 0x0033, 0x0033, 0x0034, 0x0033, 0x0033, 0x0034, 0x0033, 0x0033, 0x0034, 0x0033, 0x0033, 0x0034, 0x0033, 0x0033, 0x0034, 0x0033, 0x0033, 0x0034, 0x0033, 0x0033, 0x0034, 0x0033, 0x0033, 0x0034, 0x0033, 0x0033, 0x0021, 0x0020, 0x0020, 0x0020, 0x0022, 0x0021, 0x0020, 0x0020, 0x0020, 0x0022, 0x0021, 0x0020, 0x0020, 0x0020, 0x0022, 0x0021, 0x0020, 0x0020, 0x0020, 0x0022, 0x0021, 0x0020, 0x0020, 0x0020, 0x0022, 0x0021, 0x0020, 0x0020, 0x0020, 0x0022, 0x0021, 0x0020, 0x0008, 0x0023, 0x0025, 0x0024, 0x000d, 0x0008, 0x0028, 0x0017, 0x002a, 0x000d, 0x0008, 0x0029, 0x002c, 0x002b, 0x000d, 0x0008, 0x0c1d, 0x0c26, 0x0c27, 0x000d, 0x0008, 0x0023, 0x0025, 0x0024, 0x000d, 0x0008, 0x042a, 0x0417, 0x0428, 0x000d, 0x0008, 0x0029, 0x0008, 0x0007, 0x000a, 0x0009, 0x000d, 0x0008, 0x000f, 0x000b, 0x0011, 0x000d, 0x0008, 0x0010, 0x0013, 0x0012, 0x000d, 0x0008, 0x0c0c, 0x0c0b, 0x0c0e, 0x000d, 0x0008, 0x0007, 0x000a, 0x0009, 0x000d, 0x0008, 0x0411, 0x040b, 0x040f, 0x000d, 0x0008, 0x0010, 0x0008, 0x0014, 0x0016, 0x0015, 0x000d, 0x0008, 0x001a, 0x001c, 0x001d, 0x000d, 0x0008, 0x001b, 0x001f, 0x001e, 0x000d, 0x0008, 0x0c18, 0x0c17, 0x0c19, 0x000d, 0x0008, 0x0014, 0x0016, 0x0015, 0x000d, 0x0008, 0x041d, 0x041c, 0x041a, 0x000d, 0x0008, 0x001b, 0x0030, 0x002f, 0x002f, 0x002f, 0x0031, 0x0030, 0x002f, 0x002f, 0x002f, 0x0031, 0x0030, 0x002f, 0x002f, 0x002f, 0x0031, 0x0030, 0x002f, 0x002f, 0x002f, 0x0031, 0x0030, 0x002f, 0x002f, 0x002f, 0x0031, 0x0030, 0x002f, 0x002f, 0x002f, 0x0031, 0x0030, 0x002f, 0x0001, 0x002e, 0x002d, 0x0000, 0x0001, 0x002e, 0x002d, 0x0000, 0x0001, 0x002e, 0x002d, 0x0000, 0x0001, 0x002e, 0x002d, 0x0000, 0x0035, 0x0036, 0x0435, 0x0035, 0x0036, 0x0435, 0x0035, 0x0036, 0x0435, 0x0035, 0x0036, 0x0435, 0x0035, 0x0036, 0x0435, 0x0035, 0x0036, 0x0435, 0x0035, 0x0036, 0x0435, 0x0035, 0x0036, 0x0435, 0x0035, 0x0036, 0x0435, 0x0035, 0x0036, 0x0435, 0x0035, 0x0036, 0x0032, 0x0000
};

// [D_08CE6142] D_08CE615C RLE Data
u8 D_08ce615c_rledata[] = {
	0x1, 0x3f, 0x0, 0x62, 0x6, 0x3, 0x16, 0x1, 0x5, 0x3, 0x17, 0x1, 0x4, 0x3, 0x18, 0x1, 0x3, 0x3, 0x19, 0x21, 0x3f, 0x1, 0x0, 0x80, 0x0, 0x0
};

// [D_08CE615C] D_08CE615C Graphics
struct CompressedGraphics D_08ce615c = {
	/* Data */				{.raw = D_08ce615c_data},
	/* RLE Data */			D_08ce615c_rledata,
	/* RLE Size */			0x16,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

// // //  D_08CE6278  // // //

// [D_08CE616C] D_08CE6278 Data
u16 D_08ce6278_data[] = {
	0x0000, 0x0002, 0x0004, 0x0004, 0x0006, 0x0005, 0x0001, 0x0001, 0x0003, 0x0002, 0x0004, 0x0004, 0x0006, 0x0005, 0x0001, 0x0001, 0x0003, 0x0002, 0x0004, 0x0004, 0x0006, 0x0005, 0x0001, 0x0001, 0x0003, 0x0002, 0x0004, 0x0004, 0x0006, 0x0005, 0x0001, 0x0001, 0x0003, 0x0004, 0x0004, 0x0006, 0x0005, 0x0001, 0x0001, 0x0003, 0x0002, 0x0004, 0x0004, 0x0006, 0x0005, 0x0001, 0x0001, 0x0003, 0x0002, 0x0004, 0x0004, 0x0006, 0x0005, 0x0001, 0x0001, 0x0003, 0x0002, 0x0004, 0x0004, 0x0006, 0x0005, 0x0001, 0x0001, 0x0003, 0x0002, 0x0004, 0x0006, 0x0005, 0x0001, 0x0001, 0x0003, 0x0002, 0x0004, 0x0004, 0x0006, 0x0005, 0x0001, 0x0001, 0x0003, 0x0002, 0x0004, 0x0004, 0x0006, 0x0005, 0x0001, 0x0001, 0x0003, 0x0002, 0x0004, 0x0004, 0x0006, 0x0005, 0x0001, 0x0001, 0x0003, 0x0002, 0x0004, 0x0006, 0x0005, 0x0001, 0x0001, 0x0003, 0x0002, 0x0004, 0x0004, 0x0006, 0x0005, 0x0001, 0x0001, 0x0003, 0x0002, 0x0004, 0x0004, 0x0006, 0x0005, 0x0001, 0x0001, 0x0003, 0x0002, 0x0004, 0x0004, 0x0006, 0x0005, 0x0001, 0x0001, 0x0003, 0x0002, 0x0004, 0x0004, 0x0000
};

// [D_08CE6270] D_08CE6278 RLE Data
u8 D_08ce6278_rledata[] = {
	0x1, 0x0, 0xa0, 0x81, 0x0, 0xe0, 0x0, 0x0
};

// [D_08CE6278] D_08CE6278 Graphics
struct CompressedGraphics D_08ce6278 = {
	/* Data */				{.raw = D_08ce6278_data},
	/* RLE Data */			D_08ce6278_rledata,
	/* RLE Size */			0x4,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};
