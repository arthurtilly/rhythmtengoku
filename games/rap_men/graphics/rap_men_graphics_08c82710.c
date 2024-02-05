#include "global.h"
#include "graphics.h"

// // //  D_08C82710  // // //

// [D_08C80260] D_08C82710 Huffman Data
u16 D_08c82710_huffmandata[] = {
	0x00f0, 0xc080, 0xfef0, 0x0001, 0x50a5, 0xa4aa, 0x00fe, 0x0010, 0xeeee, 0x00f0, 0xff00, 0xff0e, 0x0003, 0x5a55, 0xa055, 0x0055, 0x005a, 0x0fee, 0x00fe, 0x0080, 0x4ef0, 0x0005, 0x5540, 0xd690, 0x7da4, 0x5500, 0xff00, 0xf705, 0x0ff4, 0x01f0, 0x8080, 0xe080, 0x4e0f, 0x5404, 0x52a8, 0x4aaa, 0x40aa, 0x3f0a, 0xc330, 0x00f0, 0x8010, 0xfef0, 0x0000, 0x0090, 0xef00, 0x00f0, 0xc000, 0xfef0, 0x4001, 0x94a5, 0xa9aa, 0xeeee, 0x00f0, 0xff00, 0xeeee, 0x00f0, 0x0300, 0xf0fe, 0x5005, 0x00a9, 0x0094, 0x0040, 0x6aaa, 0x1aaa, 0x06aa, 0x00f0, 0xe000, 0xfef0, 0x4001, 0x94a9, 0xa9aa, 0xeeee, 0x00f0, 0xff00, 0xeeee, 0x00f0, 0x0700, 0xf0fe, 0x4002, 0x00a9, 0x0094, 0x0040, 0x00f0, 0xc060, 0xfbf0, 0x0002, 0x00a4, 0x00a9, 0x0001, 0x00fb, 0x00f0, 0x0800, 0xfef0, 0x9004, 0x9000, 0xa400, 0xa400, 0xa900, 0xa900, 0x0000, 0x00ef, 0xfcf0, 0x0bfe, 0x5002, 0xa405, 0x001a, 0x0750, 0xe04f, 0x0402, 0x04f2, 0x14f2, 0x43ca, 0x00f0, 0x80f8, 0x0000, 0x02f4, 0x929a, 0x877e, 0x3961, 0xf4f0, 0x9400, 0xa999, 0xf444, 0x00f0, 0x0100, 0xf0f4, 0xa40d, 0x90aa, 0x40aa, 0x00aa, 0x00a9, 0x00a9, 0xaaa4, 0x0146, 0x1446, 0x015a, 0x011a, 0x151a, 0x006a, 0x41aa, 0x056a, 0x000f, 0xfefe, 0x80f4, 0xa40a, 0xa4aa, 0xa4aa, 0xa4aa, 0x91aa, 0x91aa, 0x56aa, 0xfdaa, 0xff6a, 0xff6a, 0xff6a, 0xfdaa, 0x00f0, 0x1010, 0xff80, 0x0001, 0x0009, 0x0025, 0xf888, 0x000f, 0xf7f8, 0xe8f0, 0x900d, 0xa500, 0x5000, 0xa501, 0xaa06, 0xaa1a, 0xaa1a, 0x001a, 0x00f4, 0x00f4, 0x00fd, 0x00fd, 0x00fd, 0x00fd, 0x00f4, 0xff00, 0x00fe, 0x0ff0, 0xfef0, 0x0006, 0x00a4, 0x00a9, 0x40a9, 0x40aa, 0x90aa, 0x90aa, 0x50aa, 0x00ef, 0xfcf0, 0xf8fe, 0x5001, 0xa405, 0x001a, 0xffee, 0x00f0, 0x8080, 0xebf0, 0x0018, 0x0040, 0x0090, 0x6990, 0xa900, 0xa901, 0xaa06, 0xaa06, 0xaa06, 0xaa01, 0x6a41, 0x0090, 0x40a9, 0x90aa, 0x906a, 0xa41a, 0xa906, 0xaa06, 0x6a01, 0x0600, 0x0100, 0xd000, 0xd0ff, 0xf4ff, 0xf4ff, 0xf4ff, 0x00fe, 0x1010, 0x0bfe, 0x000d, 0x0001, 0x6969, 0x6419, 0x6419, 0x6419, 0x6419, 0x6969, 0x1aa4, 0x0550, 0xf400, 0xf400, 0xd000, 0xd000, 0xd000, 0x00fe, 0x8080, 0x40fe, 0x0007, 0xaa40, 0xfffd, 0xff56, 0xd5aa, 0x6aaa, 0xfdaa, 0xffa7, 0xffa7, 0x000f, 0x7f0e, 0xf4f0, 0x0004, 0x0090, 0x0090, 0x00a4, 0x00a4, 0x40a9, 0x4444, 0x00f0, 0x3f00, 0x4444, 0x0f44, 0x00f4, 0x8080, 0xf0f4, 0x0001, 0x0040, 0x0094, 0x000f, 0x33fe, 0xf04f, 0x5003, 0x5552, 0x5552, 0x5552, 0x000a, 0x4f00, 0x00f4, 0x803c, 0xf0f4, 0x0000, 0x4094, 0x000f, 0xff8e, 0x8f40, 0x0006, 0x0009, 0x0009, 0x0002, 0x00fe, 0x00f8, 0x00e0, 0x0080, 0x00f8, 0x1080, 0xff08, 0x0001, 0x0029, 0x0a95, 0x00f0, 0x00c0, 0x008f, 0xf3f0, 0x000f, 0xff0c, 0xff80, 0x0001, 0x0955, 0x0255, 0xff88, 0x00f0, 0x1030, 0xfef0, 0x0005, 0x0040, 0x0090, 0x0090, 0x00a4, 0x00a4, 0x00a9, 0x00ef, 0xf7ee, 0xf8fe, 0x9003, 0x9000, 0x9000, 0x9000, 0x4000, 0xeeee, 0x00f8, 0x7e00, 0x00ef, 0x7e7e, 0x00f8, 0x007e, 0x00ef, 0xff00, 0xf8ef, 0x5404, 0x5215, 0x5255, 0x5255, 0x5255, 0x5455, 0xeeee, 0x00f0, 0x8080, 0xfef0, 0x0003, 0x0040, 0x0090, 0x0090, 0xa490, 0x01fe, 0x0810, 0x0808, 0x08fe, 0x4008, 0x6900, 0x1a69, 0x06a4, 0x0690, 0x1a90, 0x69a4, 0xa469, 0x501a, 0x0005, 0x0fee, 0x01ef, 0xfe7e, 0xfefe, 0xfbf0, 0x0006, 0x0090, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0x0090, 0xf000, 0x01fb, 0x0c38, 0x8004, 0xf0fb, 0x0004, 0x0090, 0x40a5, 0x95aa, 0x90aa, 0xa4aa, 0x02f0, 0x8010, 0x8080, 0x8080, 0xfef0, 0x0000, 0x0090, 0xef00, 0x00ef, 0xf7fe, 0xf4f0, 0x0006, 0xaa90, 0xaaa4, 0x6aa4, 0x16a4, 0x0150, 0x5a00, 0x0600, 0x00f0, 0x8010, 0xff0e, 0x0011, 0x0095, 0x0095, 0x0025, 0x0025, 0x0025, 0x0025, 0x0025, 0x2555, 0x0955, 0x0955, 0x0955, 0x0955, 0x0955, 0x0255, 0x0255, 0x5500, 0x5525, 0x5525, 0xef00, 0x00f0, 0x8080, 0xffe0, 0x0002, 0x5655, 0x5855, 0xa055, 0x00ef, 0x00f0, 0xf0fe, 0x0000, 0x0040, 0x0fee, 0x000f, 0x1fc0, 0xfaf0, 0x0005, 0x40a9, 0x40aa, 0x40aa, 0x40aa, 0x40aa, 0x00aa, 0xaaaf, 0x000f, 0xfefe, 0xf0fa, 0xa407, 0xa4aa, 0x90aa, 0x90aa, 0x40aa, 0x40aa, 0x5aaa, 0x06a5, 0x0190, 0x0faa, 0x00af, 0x7e7e, 0xfef0, 0x0011, 0x0050, 0x40a5, 0x90aa, 0x00aa, 0x1555, 0x6aaa, 0x00aa, 0x0005, 0x005a, 0x05aa, 0x1aaa, 0x4000, 0x9000, 0xa400, 0xa400, 0xa400, 0xa400, 0x9000, 0x00f0, 0x3700, 0xf4fe, 0x4004, 0x905a, 0x64a9, 0x5999, 0x649a, 0x54a6, 0x000f, 0xfef0, 0xf0f4, 0xa403, 0x94aa, 0x90aa, 0x41aa, 0x41aa, 0x00f0, 0x8080, 0xf3f0, 0x0009, 0x0090, 0x0090, 0x0090, 0x00a4, 0x00a4, 0xaaa4, 0x0001, 0x0006, 0x0006, 0x0006, 0x00f3, 0x01f0, 0x1010, 0xc010, 0xfaf0, 0x000e, 0x40a5, 0x90aa, 0xa4aa, 0x00aa, 0x1554, 0x6aa9, 0x00aa, 0x0005, 0x001a, 0x006a, 0x01aa, 0x06aa, 0x5000, 0xa405, 0xa91a, 0x0faa, 0x00af, 0x7e7e, 0x00f0, 0x8080, 0xa3f0, 0xa411, 0xa4aa, 0xa4aa, 0xa4aa, 0xa4aa, 0xa9aa, 0x1aaa, 0x1aaa, 0x1aaa, 0x1aaa, 0x1aaa, 0x6aaa, 0x00aa, 0x0040, 0x00d0, 0x00f4, 0x4015, 0xd07f, 0xf4ff, 0x00fa, 0x8010, 0xaaaa, 0xfaaa, 0x01f0, 0x1010, 0x1010, 0xfaf0, 0x0002, 0x00a9, 0x00a4, 0x00a4, 0xaf00, 0x00f0, 0x8080, 0xffa0, 0x0004, 0x0255, 0x0255, 0x0955, 0x0955, 0x2555, 0x00fa, 0x0180, 0xeaf0, 0xa411, 0xa4aa, 0xa46a, 0xa46a, 0xa46a, 0xa46a, 0xa91a, 0xaa1a, 0xaa1a, 0x0006, 0xfff4, 0xfff4, 0xfff4, 0xf550, 0xf400, 0xf400, 0xd000, 0xd000, 0x5fff, 0x04ef, 0x501a, 0x5281, 0x52a1, 0xc555, 0xc555, 0xf015, 0xffc5, 0xffc5, 0xfff1, 0xfff1, 0xfff1, 0xff3f, 0x8280, 0xa03f, 0x03ff, 0x8fff, 0x8fff, 0x8fff, 0x8fff, 0xa3ff, 0xff2a, 0xfc8a, 0xfca0, 0xfcaa, 0xfcaa, 0xfcaa, 0xff2a, 0xff2a, 0xf3f0, 0xa405, 0xa900, 0xa900, 0xa900, 0xaa40, 0xaa40, 0xaa90, 0x3f00, 0x00f3, 0xc0c0, 0xa0f3, 0x0013, 0x01a4, 0x01a4, 0x01a4, 0x01a9, 0x01a9, 0x01a9, 0xaaa9, 0xaaa4, 0xaaa4, 0xaaa4, 0xaaa4, 0xaa90, 0xaa90, 0xaa90, 0xaa6a, 0xaada, 0xaaf6, 0xaafd, 0x6afd, 0x6aff, 0x03fa, 0x0010, 0x0e04, 0x0e04, 0x0808, 0x30fa, 0x4019, 0xa400, 0xa400, 0x9000, 0x9000, 0x9000, 0x9000, 0x9000, 0x9000, 0x5aaa, 0x06aa, 0x016a, 0x4006, 0x4006, 0x4006, 0x4006, 0x9001, 0x9000, 0x9000, 0xa400, 0xdaaa, 0xdaaa, 0xf6aa, 0xf6aa, 0xf6aa, 0xfdaa, 0xfdaa, 0x0000, 0x003f, 0xfffe, 0xf0f3, 0x5004, 0xa400, 0xa900, 0xa900, 0xaa40, 0xaa90, 0x0f33, 0x00f0, 0x0ff0, 0x00f3, 0x0300, 0xa3f0, 0x900a, 0x40aa, 0x40aa, 0x00aa, 0x00a9, 0x00a4, 0x00a4, 0x40fd, 0xd0ff, 0xd0ff, 0xf4ff, 0xf4ff, 0x00fa, 0x1810, 0xf0fa, 0x9003, 0x9400, 0xa900, 0xaa40, 0xaa90, 0x00fa, 0x01f0, 0x0010, 0x03c0, 0xeaf0, 0x9009, 0x40aa, 0x00aa, 0x00a5, 0x0050, 0x06aa, 0x01aa, 0x0056, 0x0001, 0x00d0, 0x00d0, 0xef00, 0x01f0, 0x8080, 0x8080, 0x4ef0, 0x0004, 0xd640, 0xdaa7, 0xdaa7, 0x6a9f, 0x6a9f, 0xef44, 0x00fe, 0x0078, 0xf0ef, 0x0006, 0xa100, 0x85aa, 0x85aa, 0x85aa, 0x85aa, 0x85aa, 0x85aa, 0x00f0, 0x8070, 0xf4f0, 0x0004, 0x00a4, 0x00a9, 0x40a9, 0x90aa, 0xa4aa, 0x00f4, 0x0810, 0x30f4, 0x9008, 0xaa40, 0xaa90, 0xaa90, 0xaaa4, 0xaaa4, 0xaaa9, 0x7fda, 0x7ff6, 0x7ff6, 0x33f0, 0x01f3, 0x1818, 0x1818, 0xf0f3, 0x4004, 0x01aa, 0x06aa, 0x06aa, 0x1aaa, 0x1aaa, 0x00f0, 0x8080, 0xf3f0, 0x0005, 0x6a40, 0x6a00, 0xaa00, 0xaa01, 0xaa06, 0xaa1a, 0x0f33, 0x00f3, 0x8080, 0xfaf0, 0x4006, 0x90aa, 0x90aa, 0x90aa, 0x90aa, 0x90aa, 0x90aa, 0x90aa, 0x04fa, 0xe3e0, 0xe3e3, 0x03e3, 0x0400, 0x040e, 0xf0fa, 0x900c, 0xa400, 0xa400, 0xa900, 0xa900, 0xaa40, 0xaa90, 0xaaa4, 0xaa5a, 0x5a05, 0x0600, 0x0600, 0x0600, 0x1600, 0x00fa, 0xc010, 0x30fa, 0x0023, 0x00a4, 0x00a9, 0x00a4, 0x50a9, 0xa4aa, 0xa9aa, 0xfdaa, 0xfdaa, 0xfdaa, 0xfdaa, 0xfdaa, 0xfdaa, 0xfdaa, 0x56aa, 0xaa7f, 0xaa7f, 0xa9ff, 0xa9ff, 0xa9ff, 0xa9ff, 0xaa5f, 0xaaa5, 0xaafd, 0x6afd, 0x6aff, 0x6aff, 0x6aff, 0xaaff, 0xaaf5, 0xaa5a, 0x5001, 0x0006, 0x0006, 0x001a, 0x006a, 0x05aa, 0x00f0, 0x00c0, 0xfaf0, 0xa404, 0xa91a, 0xaa1a, 0xaa1a, 0xaa1a, 0x6a06, 0x000f, 0x7f8e, 0xf4f0, 0x0001, 0x0040, 0x05aa, 0xff44, 0x02f0, 0x8030, 0x8080, 0x8080, 0x0000, 0x003f, 0xef7e, 0xfff3, 0x0000, 0x4005, 0x02f0, 0x807c, 0x0101, 0x0101, 0xf30f, 0x5401, 0xaa55, 0xa82a, 0x0f33, 0x00f0, 0x803e, 0xff0a, 0x0006, 0x0095, 0x0255, 0x0955, 0x2555, 0x9555, 0x0055, 0x0002, 0x00f0, 0x00fe, 0x00fa, 0x8000, 0xf0fa, 0x0001, 0x0090, 0x40a4, 0x000f, 0xef8e, 0xfaf0, 0x0005, 0xaaa4, 0xaa90, 0x6a40, 0x1500, 0x5a00, 0x0600, 0x00f0, 0x8010, 0xe4f0, 0x0006, 0x4094, 0xd069, 0xf459, 0x0059, 0x0055, 0x05aa, 0x16a6, 0x00f4, 0x929a, 0x00f0, 0x1010, 0xfcf0, 0x0007, 0x0054, 0x00a4, 0x00a4, 0x0050, 0x00a4, 0x4159, 0x4106, 0x9106, 0x000f, 0xfffe, 0x3bf0, 0x401f, 0x9400, 0xa900, 0xaa40, 0xaa90, 0xaa90, 0xaaa4, 0x1554, 0x6aa9, 0xffaa, 0xff1f, 0xff1f, 0xff1f, 0xff1f, 0xff1f, 0xff1f, 0xff1f, 0x001f, 0x0040, 0x0090, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0x01a4, 0x0600, 0x1a00, 0x1a00, 0x1a00, 0x1a00, 0x1a00, 0x1a00, 0x00f0, 0x0800, 0x3bf0, 0x9021, 0xa400, 0xa400, 0xa400, 0xa900, 0xa900, 0xa900, 0x0005, 0x0006, 0x001a, 0x001a, 0x001a, 0x001a, 0x001a, 0x001a, 0x0540, 0x1a90, 0x6aa4, 0x6aa4, 0x4000, 0x9400, 0xa900, 0xaa40, 0xaa90, 0xaa90, 0xaaa4, 0xf400, 0xfd00, 0xfd00, 0xfd00, 0xfd00, 0xff40, 0xff40, 0xff40, 0x5000, 0x3ef0, 0x0007, 0x50a5, 0xa4aa, 0xffaa, 0xff1f, 0xff1f, 0xff1f, 0xff1f, 0xff1f, 0x0f33, 0x00f3, 0x8080, 0x00f0, 0x8080, 0xf3f0, 0xa404, 0xa4aa, 0xa4aa, 0xa4aa, 0xa4aa, 0xa9aa, 0x3333, 0x00f0, 0x8080, 0x9bf0, 0x540a, 0xa415, 0xa41a, 0xa91a, 0xa906, 0xa906, 0xaa01, 0x6a01, 0x5000, 0xf500, 0xff40, 0x5400, 0xe3f0, 0x4006, 0x90a9, 0xa4aa, 0xa4aa, 0xa4aa, 0xa4aa, 0x95aa, 0xf4aa, 0xe04f, 0x1403, 0x43f2, 0x3ff2, 0x3fca, 0x802a, 0x0000, 0x01f4, 0x877e, 0x1961, 0xf4f0, 0x1400, 0x54a9, 0x44f0, 0x004f, 0x7e8e, 0xc0f4, 0xa40a, 0xa4aa, 0x90aa, 0x40aa, 0x40aa, 0x00aa, 0x00a9, 0x00a9, 0xaaa4, 0xaaf6, 0xaaf6, 0x6a56, 0xe0cf, 0x500b, 0x53ca, 0x53f2, 0x53f2, 0x53fc, 0xa848, 0xa848, 0xa848, 0xaa01, 0xaa01, 0xaa01, 0xaa01, 0xaa01, 0xfbf0, 0xa400, 0xa4aa, 0x02fb, 0x1010, 0x1010, 0x1010, 0x0f3b, 0x0026, 0xe555, 0xe555, 0xf955, 0xf955, 0xf955, 0xfe55, 0xfe55, 0xfe55, 0x0bff, 0x0bff, 0x02ff, 0x02ff, 0x02ff, 0x02ff, 0x02ff, 0x02ff, 0xffe0, 0xffe0, 0xffe0, 0xffe0, 0xffe0, 0xfff8, 0xfff8, 0xfff8, 0x02ff, 0x02ff, 0x02ff, 0x00bf, 0x00bf, 0x00bf, 0x00bf, 0x00bf, 0xffe0, 0xfff8, 0xfff8, 0xfff8, 0xfff8, 0xfff8, 0xfff8, 0x00fb, 0x00f0, 0x8080, 0xfbf0, 0x0002, 0x0090, 0x0090, 0x00a4, 0x01bf, 0xe7ee, 0xf7f7, 0xf0fb, 0x9005, 0x9000, 0xa400, 0xa900, 0xaa40, 0x066a, 0x0600, 0x02fb, 0x1010, 0x1010, 0x0010, 0x3f0b, 0x0008, 0x9555, 0xbfe5, 0xbfe5, 0xbfe5, 0xbff9, 0x6ff9, 0x6ffe, 0x6ffe, 0x6fff, 0x0000, 0x00ef, 0xfefe, 0xfef0, 0x5404, 0x00a9, 0x00a4, 0x00a4, 0x00a4, 0x0090, 0xef00, 0x00f3, 0x8180, 0xf3f0, 0xa404, 0xa4aa, 0xa4aa, 0xa4aa, 0xa4aa, 0xa4aa, 0x3333, 0x01f0, 0x1010, 0x1010, 0xf3f0, 0x0008, 0x0001, 0x0006, 0x9000, 0x9000, 0xa400, 0xa400, 0xa400, 0xa900, 0xa900, 0x0000, 0x003f, 0xfffe, 0xf0f3, 0x5004, 0xa400, 0xa900, 0xa900, 0xaa40, 0xaa90, 0x0f33, 0x00f0, 0x0800, 0xfbf0, 0x900b, 0x9000, 0x9000, 0xa400, 0xa400, 0xa400, 0xa900, 0x006a, 0x001a, 0x001a, 0x001a, 0x0006, 0x0006, 0x00fb, 0x00f0, 0x8010, 0x39f0, 0x0006, 0x0040, 0x0090, 0x9090, 0xa4aa, 0xa4aa, 0xa9aa, 0xf4aa, 0x00f3, 0x1010, 0xf0f3, 0x0003, 0x4001, 0x0006, 0x0006, 0x0006, 0x3f00, 0x00f3, 0x8000, 0xffff, 0x0ff3, 0x00f0, 0x1010, 0x4f30, 0x000c, 0x0029, 0x0095, 0x0095, 0xfffe, 0xffe8, 0xfa80, 0xa000, 0xfe00, 0xff0b, 0xff0b, 0xfe0b, 0xa80b, 0x0002, 0x0cef, 0x540b, 0x53a1, 0x53a1, 0x4fa1, 0x3fa1, 0xffa0, 0xff03, 0xff02, 0xff02, 0xff02, 0xff02, 0xffc2, 0xfffc, 0x02bf, 0xfefe, 0xfefe, 0xfefe, 0x3bf0, 0xa402, 0xa4aa, 0xffaa, 0xff07, 0x0f33, 0x00f3, 0x0080, 0xf03f, 0x5401, 0x4255, 0x2a55, 0x333f, 0x00f0, 0x10e0, 0xff30, 0x0002, 0x0009, 0x0025, 0x0095, 0xf333, 0x00f0, 0x0070, 0xf0bf, 0x542a, 0x54aa, 0x54aa, 0x54aa, 0x54aa, 0x54aa, 0x54aa, 0x54aa, 0xaaa1, 0xaaa1, 0xaaa1, 0xaaa1, 0xaaa1, 0xaaa1, 0xaaa1, 0xaaa1, 0x552a, 0x552a, 0x54aa, 0x54aa, 0x54aa, 0x54aa, 0x54aa, 0x52aa, 0xaaa1, 0xaaa1, 0xaaa1, 0xaaa1, 0xaaa1, 0xaa85, 0xaa85, 0xaa85, 0x54aa, 0x552a, 0x552a, 0x554a, 0x554a, 0x5552, 0x5552, 0x1552, 0xaa15, 0xaa85, 0xaa85, 0xaaa1, 0x00fb, 0x03f0, 0x1010, 0x8080, 0x8080, 0x8080, 0x0000, 0x00fb, 0x1010, 0x3f0b, 0x000f, 0x9555, 0xe555, 0xe555, 0xf955, 0xf955, 0xf955, 0xe555, 0x9555, 0x5bff, 0x5bff, 0x5bff, 0x5bff, 0x5bff, 0x5bff, 0x56ff, 0x55aa, 0x3ef0, 0x9014, 0x9000, 0x9000, 0x9000, 0x9000, 0x9000, 0x9000, 0x5000, 0xfff4, 0xffd0, 0xffd0, 0xffd0, 0xff40, 0xff40, 0xfd00, 0x5400, 0x0007, 0x0007, 0x001f, 0x001f, 0x001f, 0x007f, 0xf333, 0x00f0, 0x0070, 0xf03f, 0x540c, 0x54aa, 0x54aa, 0x54aa, 0x54aa, 0x54aa, 0x54aa, 0x02aa, 0xaa15, 0xaa15, 0xa855, 0xa855, 0xa855, 0xa855, 0xff33, 0x00f0, 0x0030, 0xf0bf, 0x5406, 0x54aa, 0x14aa, 0x152a, 0x152a, 0x152a, 0x552a, 0x554a, 0x000f, 0xfefe, 0x9b0f, 0x5409, 0x5255, 0x5555, 0x55c5, 0x55c5, 0x55f1, 0x55f1, 0x55f1, 0x55f1, 0x55f1, 0xffc5, 0xb3f0, 0x900b, 0x40aa, 0x00aa, 0x0055, 0x006a, 0x0016, 0x0001, 0xfff4, 0xffd0, 0xffd0, 0xff40, 0xfd00, 0xd400, 0x00f0, 0x0080, 0xf0fb, 0x001d, 0x4001, 0x9556, 0x01aa, 0x01aa, 0x01aa, 0x01aa, 0x01aa, 0x01aa, 0x01aa, 0x06aa, 0xaaa4, 0xaaa4, 0xaaa4, 0xaaa4, 0xaaa4, 0xaa90, 0xaa90, 0xaa90, 0x06aa, 0x06aa, 0x1aaa, 0x1aaa, 0x1aaa, 0x6aaa, 0x90aa, 0x40aa, 0x40aa, 0x40aa, 0x40aa, 0x90aa, 0x00f0, 0x0030, 0xfbf0, 0x0001, 0x1a90, 0x0540, 0x0000, 0x00bf, 0xfefe, 0xfbf0, 0xa402, 0xa4aa, 0x90aa, 0x40aa, 0xbbbf, 0x00f0, 0x80e0, 0xb3f0, 0x0015, 0x0040, 0x0090, 0x0090, 0x0090, 0x00a4, 0x00a4, 0x00a4, 0xffd0, 0xffd0, 0xffd0, 0xffd0, 0x7f40, 0x7f40, 0x7d00, 0x1400, 0x0007, 0x001f, 0x001f, 0x001f, 0x001f, 0x0007, 0x0001, 0xf9f0, 0x9000, 0x9000, 0x00f0, 0x8080, 0xff90, 0x0003, 0x5655, 0x6855, 0x8055, 0x0056, 0xfff0, 0x08e0, 0xf080, 0xf0fc, 0x8010, 0xfff0, 0xf87c, 0xe0f0, 0x01e0, 0x0f18, 0x070f, 0x39f0, 0x400d, 0x9400, 0xa900, 0xaa40, 0xaa90, 0x4000, 0xd400, 0xfd00, 0xfff4, 0xfff4, 0xfff4, 0xfff4, 0xfff4, 0xfffd, 0x4000, 0xf4f0, 0x0009, 0x0090, 0x0090, 0x0090, 0x0090, 0x0090, 0x0015, 0x006a, 0x006a, 0x006a, 0x006a, 0xf444, 0x00f0, 0x0800, 0xf3f0, 0x9004, 0x9000, 0xa400, 0xa400, 0xa900, 0xa900, 0xf000, 0x02f3, 0x4180, 0x2820, 0x2028, 0x0003, 0xfff0, 0xf3f0, 0x4004, 0x9000, 0xa400, 0xa900, 0xaa40, 0xaa40, 0x3f00, 0x01f3, 0x8010, 0x4841, 0x4f03, 0x0009, 0xa555, 0xf956, 0x555b, 0x5a95, 0x6fe5, 0x6fe5, 0xbfe5, 0xbf95, 0xbf95, 0x9555, 0xfbf0, 0x0003, 0x0094, 0x40a9, 0x90aa, 0x90aa, 0xbbbb, 0x00f0, 0x7e00, 0xffbf, 0x5400, 0x5515, 0x00f0, 0x0100, 0x90fb, 0x9407, 0x40aa, 0x00aa, 0x00a9, 0x00a4, 0x00a4, 0xaa90, 0x9556, 0x7ffd, 0x0009, 0xfff0, 0xebf0, 0x4012, 0x9400, 0xa900, 0xaa40, 0xaa90, 0xaa90, 0xaaa4, 0x5400, 0xfd15, 0xff7f, 0x0100, 0x0700, 0x0700, 0x5400, 0xa915, 0xaa6a, 0x0100, 0x0700, 0x0700, 0x0700, 0x00f0, 0x1010, 0x3bf0, 0x000a, 0x0001, 0x0016, 0x006a, 0x01aa, 0x06aa, 0x06aa, 0x0001, 0x0007, 0x001f, 0x001f, 0x001f, 0x00f3, 0x00f0, 0x1010, 0xe9f0, 0x0004, 0x1554, 0x6aa9, 0x00aa, 0x0001, 0x0007, 0x0fee, 0x0fe0, 0x0e00, 0x0c0c, 0x080c, 0x0808, 0x70f8, 0x3030, 0x7010, 0xf070, 0x0c00, 0x080c, 0x0808, 0x0808, 0x3038, 0x3010, 0x7070, 0xf0f0, 0x00f0, 0x8080, 0xf9f0, 0x0001, 0xa440, 0xa4aa, 0x00f9, 0x1010, 0x30f9, 0x000f, 0x0001, 0xff6a, 0xff6a, 0xff6a, 0xffda, 0xffda, 0xffda, 0xffda, 0xffda, 0x7f57, 0x9fa9, 0xa7aa, 0xa7aa, 0xa7aa, 0xa7aa, 0xaaaa, 0xf4f0, 0x9003, 0x9000, 0x9000, 0x9000, 0x9000, 0x00f0, 0x8080, 0x34f0, 0x000f, 0x6a40, 0x6a00, 0xaa00, 0xaa01, 0xaa01, 0xaa01, 0xaa01, 0xaa01, 0x4001, 0x40ff, 0xd0ff, 0xd0ff, 0xd0ff, 0xd0ff, 0xd0ff, 0xd0ff, 0x00f3, 0x6060, 0xf0f3, 0x000c, 0x0064, 0x0069, 0x01a9, 0x01a9, 0x01a9, 0x01a9, 0x001a, 0x001a, 0x0006, 0x0006, 0x0006, 0x4006, 0x4006, 0x3f00, 0x00f3, 0x6048, 0x40f3, 0x0015, 0x0014, 0x0069, 0x0069, 0x01aa, 0x01aa, 0x06aa, 0xa7fd, 0xa7fd, 0xa9fd, 0xa9fd, 0xa9fd, 0xa9fd, 0xa9fd, 0x97fd, 0xfdaa, 0xfdaa, 0xfdaa, 0xfdaa, 0xf6aa, 0xf6aa, 0xf6aa, 0xf6aa, 0x000f, 0xfefe, 0xb40f, 0x5407, 0x5255, 0x5255, 0x5255, 0x5255, 0x4a55, 0xf155, 0xf1ff, 0xf1ff, 0x01fb, 0x1010, 0x1010, 0xf0fb, 0x0001, 0x0001, 0x0090, 0x0fbb, 0x02fb, 0x8080, 0x8080, 0x8080, 0xbf09, 0x0000, 0xfff9, 0xbbf0, 0x00fb, 0x1010, 0x4efb, 0x5406, 0xa901, 0x9901, 0xa901, 0x5401, 0x5aaa, 0xd6a5, 0xf6a7, 0x0ef4, 0xa407, 0xffda, 0xffda, 0xff6a, 0xff6a, 0xff6a, 0xff6a, 0xffda, 0xfff5, 0x01fb, 0x1810, 0x0818, 0xe0fb, 0x0005, 0xaaa9, 0xaaa7, 0xaaa7, 0xaa9f, 0xaa9f, 0xaa7f, 0xfeee, 0x00f0, 0x10f0, 0xfbf0, 0x0003, 0x0001, 0x1aaa, 0x1aaa, 0x1aaa, 0x01fb, 0x8080, 0x8080, 0x30fb, 0x0007, 0xa940, 0xa7aa, 0x9faa, 0x7faa, 0x7faa, 0xffaa, 0xffa9, 0xffa9, 0xe90f, 0x5407, 0x4faa, 0x3f55, 0x3f55, 0xff55, 0xff54, 0xff54, 0xff53, 0x0053, 0x00ff, 0x0fe0, 0x8080, 0x8080, 0x8080, 0xc0c0, 0x7f1f, 0x0303, 0x0707, 0x7f1f, 0x8080, 0x8080, 0x8080, 0xc0c0, 0xff1f, 0x0103, 0x0703, 0x0f07, 0xf9f0, 0x0004, 0x0090, 0x0090, 0x0090, 0x0090, 0x0090, 0x9f00, 0x00f0, 0x8080, 0x3f09, 0x0008, 0xff95, 0xff95, 0xff95, 0xff95, 0xaa55, 0x6f55, 0x6f55, 0x6f55, 0x5b55, 0x02f0, 0x8010, 0x8080, 0x8080, 0x3f40, 0x0034, 0x0255, 0x0255, 0x0255, 0x0955, 0x0955, 0x0956, 0x0956, 0x0956, 0xff80, 0xff80, 0xff80, 0xff80, 0xff80, 0xfe00, 0xfe00, 0xfe00, 0xf802, 0xa00b, 0x000b, 0x000b, 0x002f, 0x002f, 0x00bf, 0x00bf, 0xbfe0, 0xffe0, 0xffe0, 0xff80, 0xff80, 0xff80, 0xff80, 0xff80, 0xf800, 0xe002, 0xe002, 0x8002, 0x000b, 0x000b, 0x002f, 0x002f, 0x9556, 0x6958, 0x5658, 0x5658, 0x5660, 0x5960, 0x5980, 0x6a00, 0x002a, 0x0095, 0x0a95, 0x25a5, 0x296a, 0x00f4, 0x8098, 0xf0f4, 0x0003, 0xaa94, 0xaa1a, 0xaa1a, 0xaa1a, 0x4f00, 0x01f0, 0x8080, 0x0080, 0xf0f4, 0x9006, 0x90aa, 0x90aa, 0x40aa, 0x40aa, 0x40aa, 0x40aa, 0x95aa, 0x0000, 0x02bf, 0xfefe, 0xfefe, 0xfefe, 0xfbf0, 0xa400, 0xa4aa, 0x02fb, 0x8080, 0x8080, 0x8080, 0x90fb, 0x0001, 0x0090, 0xff90, 0x02bf, 0xfefe, 0xfefe, 0xfefe, 0xebf0, 0xa400, 0xa4aa, 0x4feb, 0x0004, 0x5be9, 0x5be5, 0x5be5, 0x5be5, 0x5be5, 0x00fe, 0x003c, 0x000f, 0xff00, 0xbe0f, 0x5408, 0x5255, 0x5255, 0x4a55, 0x4a55, 0x2a55, 0x2a55, 0xff55, 0xc003, 0x2aa8, 0xff30, 0x0007, 0x0009, 0x0009, 0x0025, 0x0025, 0x0025, 0x0095, 0x0095, 0x0095, 0x02fb, 0x8080, 0x8080, 0x8080, 0x30fb, 0x0002, 0x0090, 0x7f90, 0x95aa, 0x0000, 0x9999, 0x00f0, 0x1010, 0xfef0, 0x0002, 0x0001, 0x0006, 0x0006, 0x00fe, 0x0be0, 0x0e00, 0x8f0e, 0x0103, 0x0703, 0x0c0e, 0x0e0e, 0x8f0f, 0x03ef, 0xf1f0, 0x103f, 0x7030, 0x80f0, 0x000e, 0x00f0, 0x8080, 0x0000, 0x00f9, 0x1010, 0x4f09, 0x0009, 0x0009, 0x00a5, 0x0a55, 0xa555, 0xfe55, 0xfe5b, 0xfe5b, 0xfe5b, 0xfe5b, 0xf95b, 0x00f4, 0x00f0, 0x001c, 0xf3f0, 0x000d, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0x0090, 0xaa40, 0xaa01, 0xaa01, 0xaa06, 0xaa06, 0xaa06, 0x6a01, 0x00f0, 0x8070, 0xff03, 0x000c, 0x0095, 0x0095, 0x0095, 0x0095, 0x0095, 0x0255, 0xa955, 0x5560, 0x5560, 0x5580, 0x5600, 0x5600, 0x5600, 0xf333, 0x01f0, 0x0070, 0x3f08, 0xfbf0, 0x0007, 0xaa90, 0xaa90, 0xaa40, 0xa900, 0x9400, 0x4000, 0xaa00, 0x6aa9, 0x00f0, 0x007e, 0xf0fb, 0x0004, 0x0090, 0x00a4, 0x00a4, 0x40a9, 0x94aa, 0x00f0, 0x0010, 0xbf90, 0x0006, 0xaa55, 0xf8aa, 0xe0ff, 0xe0ff, 0x80ff, 0x00ff, 0x00fe, 0xbff0, 0x00f0, 0x0080, 0x0ef3, 0x0008, 0x0550, 0xfdaa, 0xfdaa, 0xfdaa, 0xf6aa, 0xf6aa, 0xf6aa, 0xf6aa, 0xf6aa, 0x00ef, 0x7e42, 0x00fb, 0x107e, 0xfbbb, 0x02f0, 0x007e, 0x0101, 0x0101, 0x3e0f, 0x5409, 0x5255, 0x5255, 0x3f55, 0x3f55, 0x3f55, 0x3f55, 0x3f55, 0x3f55, 0x3f55, 0x4055, 0x9fb0, 0x0006, 0x0955, 0x0955, 0x0255, 0x0095, 0x0029, 0x0002, 0xaaff, 0xb0ef, 0x000a, 0xaaa1, 0xaa85, 0xaa85, 0xaa85, 0xaa85, 0xaa85, 0xaa15, 0xaa15, 0x8002, 0x3ffc, 0xa8ff, 0xff30, 0x0004, 0x0009, 0x0009, 0x0025, 0x0025, 0x0025, 0x0f33, 0x00f0, 0x8030, 0xfaf0, 0x0005, 0x0094, 0x40a9, 0x90aa, 0x90aa, 0xa4aa, 0x50aa, 0x00af, 0xdfc0, 0xf0fa, 0x0000, 0xa555, 0x01fa, 0x00c0, 0x8814, 0xfffa, 0x1000, 0x0041, 0x00f0, 0x0100, 0xf0fa, 0x9414, 0x40aa, 0x00aa, 0x00a9, 0x01a4, 0x00a4, 0xaa90, 0xaa5a, 0xaa06, 0xaa01, 0xaa01, 0xaa01, 0xaa01, 0xaa01, 0x9501, 0x40aa, 0x00aa, 0x00a9, 0x00a9, 0x00a9, 0x00a9, 0x00a9, 0x000f, 0xf7fe, 0x49f0, 0x9014, 0xa540, 0x5000, 0xa501, 0xaa06, 0xaa1a, 0xaa1a, 0x001a, 0x0040, 0x00d0, 0x00d0, 0x00d0, 0x00f4, 0x54f4, 0xfd00, 0xfd01, 0xff07, 0xff07, 0x7f1f, 0xff1f, 0xff1d, 0x001d, 0xfec0, 0x400d, 0x9400, 0xa900, 0xaa40, 0x0500, 0x5a00, 0xaa00, 0xaa01, 0x0006, 0x4015, 0x906a, 0x90aa, 0x00aa, 0x0540, 0x1a94, 0x01ec, 0x7f7e, 0x7f7f, 0xfbf0, 0x0004, 0x0040, 0x0090, 0x0090, 0x00a4, 0x40a9, 0xbbbb, 0x00f0, 0x0700, 0x70fb, 0x4005, 0x40aa, 0x40aa, 0x40aa, 0x90aa, 0x90aa, 0xfeaa, 0x5670, 0x0002, 0x40a9, 0x90fa, 0x90fe, 0xdd56, 0x5670, 0x0004, 0x0001, 0x0006, 0x401a, 0x906b, 0x906b, 0xfec0, 0x0003, 0x4015, 0x906a, 0xa4aa, 0xa4aa, 0x00ce, 0x1010, 0xffce, 0x0000, 0x0001, 0x00c0, 0x1d00, 0xf0ce, 0x0401, 0x00a4, 0x0090, 0x0cee, 0x00ce, 0x8080, 0xf0ce, 0x0007, 0xaa40, 0xaa56, 0x6a01, 0x5a00, 0x0600, 0xaa00, 0xa56a, 0x9019, 0x00ce, 0x8082, 0xeeee, 0x0cee, 0x00c0, 0x8000, 0xfec0, 0x0004, 0x4094, 0x90a9, 0xa4aa, 0xa4aa, 0xa9aa, 0xeeee, 0x00c0, 0x0300, 0xb0ce, 0x500e, 0x00aa, 0x00a9, 0x00a4, 0x0090, 0x0090, 0xaa40, 0x6a65, 0x1a10, 0x1a00, 0xaa00, 0xaa56, 0xa901, 0xa400, 0xa400, 0x9000, 0x30fb, 0x0007, 0xaaa9, 0xaaa7, 0xaaa7, 0xaaa7, 0xaa9f, 0xaa7f, 0xa9ff, 0xa9ff, 0xaaf0, 0x02fa, 0x1810, 0x181c, 0x1010, 0xaaaa, 0xaaf0, 0x04fa, 0xf070, 0xf1f0, 0x2070, 0x8080, 0x1400, 0xaaaa, 0x0faa, 0x02fa, 0x8080, 0x8081, 0x8080, 0xf0fa, 0x0005, 0xaa90, 0xaa06, 0xaa06, 0xaa06, 0xaa1a, 0xaa1a, 0xaf00, 0x00f0, 0x8080, 0xf0fa, 0x0006, 0x00a9, 0x00a9, 0x00a4, 0x00a4, 0x00a4, 0x0090, 0x0090, 0xffaa, 0x00f0, 0x03c0, 0xf9f0, 0x5003, 0xa400, 0xa900, 0xa900, 0xa400, 0x00f0, 0x00c0, 0xf000, 0x009f, 0x7f80, 0xffff, 0x0fff, 0x009f, 0x73f8, 0x000f, 0xff8c, 0x4f90, 0x000a, 0x0955, 0x0255, 0x00a5, 0x000a, 0x00e0, 0x00e0, 0x0080, 0x0bff, 0x0bff, 0x02be, 0x0028, 0xfec0, 0x4012, 0x40aa, 0x40aa, 0x00aa, 0x00a9, 0x0094, 0x0040, 0x06aa, 0x06aa, 0x06aa, 0x01aa, 0x005a, 0x0005, 0xaa90, 0xaaa4, 0xaaa4, 0xaaa4, 0xaaa4, 0xaaa4, 0xaa50, 0xec00, 0x00ce, 0x0400, 0xf0ce, 0x1000, 0xea00, 0x7f0b, 0x0003, 0x0095, 0xaa55, 0x5855, 0x5655, 0x0000, 0x6700, 0xddd5, 0x6700, 0xddd5, 0x6700, 0xddd5, 0x6700, 0xddd5, 0x6700, 0xdd56, 0x6700, 0xdd56, 0x7000, 0xd566, 0x7000, 0xd566, 0x765d, 0x6700, 0x755d, 0x5700, 0x765d, 0x9402, 0x406f, 0x001a, 0x0005, 0x00ec, 0xfefe, 0xfec0, 0xa400, 0xa4aa, 0x00ce, 0x1010, 0xf0ce, 0x5001, 0xa405, 0xa95a, 0x01ce, 0x8080, 0x8080, 0xf0ce, 0x000b, 0x0190, 0x1690, 0x6aa4, 0x06a9, 0x0600, 0x1a00, 0x6a00, 0x6a00, 0xaa00, 0xaa01, 0xaa06, 0x005a, 0x0cee, 0x01ce, 0x8080, 0x8080, 0xf0ce, 0x1001, 0x6490, 0xa9a5, 0x0000, 0x00ec, 0xfefe, 0xfec0, 0xa402, 0xa4aa, 0x90aa, 0x40aa, 0xeecc, 0x00c0, 0x00c0, 0x00ce, 0x8080, 0xf0ce, 0x0002, 0x0090, 0x0090, 0x40a4, 0x000c, 0xff8e, 0xfec0, 0x0005, 0xaa90, 0xaa90, 0xaa40, 0xaa40, 0xaa40, 0xa900, 0x00c0, 0x00e0, 0xb0ce, 0x0005, 0x0090, 0x0090, 0x00a4, 0x40a4, 0x95a9, 0xffaa, 0xf0f3, 0x0002, 0x00a4, 0x00a4, 0x00a4, 0x000f, 0xcf0e, 0xf4f0, 0x4004, 0x401a, 0x001a, 0x0069, 0x0069, 0x4055, 0x4444, 0x00f0, 0x7010, 0xf4f0, 0x0008, 0x0019, 0x0040, 0x0094, 0x40a9, 0x00aa, 0x0055, 0x01aa, 0x01aa, 0x01aa, 0xf444, 0x00f0, 0xe7e0, 0xfe0f, 0x4000, 0x4281, 0x00ef, 0x3e18, 0xeeef, 0xffee, 0x00f0, 0xf3f0, 0xfe0f, 0x5000, 0x50a0, 0x00ef, 0x0c0c, 0x40ef, 0x5005, 0xaa05, 0xaa2a, 0xaaca, 0xaaca, 0xaaf2, 0x2afc, 0x4444, 0x00f0, 0x0700, 0xb0f4, 0x400b, 0x40aa, 0x40aa, 0x40aa, 0x90aa, 0x90aa, 0x6aaa, 0xd6aa, 0xfd6a, 0x55aa, 0xffaa, 0xffa9, 0xaaa7, 0xfe0c, 0x400b, 0x2a15, 0xaa85, 0xaa85, 0xaaa1, 0xa2a1, 0x5055, 0x4a55, 0x0a55, 0x8a55, 0xa210, 0x558a, 0x7fd5, 0xe4f0, 0x9018, 0x906a, 0x906a, 0x406a, 0x406a, 0x006a, 0x4015, 0x906a, 0x906a, 0x90aa, 0x50aa, 0xf4a5, 0xfd9f, 0x007f, 0x0001, 0x0006, 0x0006, 0x0006, 0x001a, 0x001a, 0x0040, 0x0090, 0x4054, 0x0099, 0x0555, 0x1aaa, 0x00f4, 0xa492, 0xffff, 0xff4f, 0x00f0, 0xa000, 0xf4f0, 0x0004, 0x0099, 0x4069, 0x4066, 0x00a6, 0x0099, 0xf44f, 0x00f0, 0x0100, 0xf0f4, 0xa404, 0xa4aa, 0xa4aa, 0x54aa, 0x04aa, 0x04a9, 0x000f, 0x31fe, 0xf04f, 0x5400, 0x0aaa, 0x0000, 0x004f, 0x7f0c, 0xb0f4, 0x4007, 0x5aaa, 0xf6aa, 0xf6aa, 0xddaa, 0x5daa, 0xa9aa, 0xa7aa, 0xa7aa, 0x00f0, 0x3010, 0xbaf0, 0x0011, 0x0040, 0x4094, 0x00a9, 0x0055, 0x01aa, 0x06aa, 0x5000, 0xf400, 0xfd00, 0xff40, 0xffd0, 0x7ff4, 0x1ffd, 0x5000, 0xf400, 0xfd00, 0xdd00, 0x5f40, 0x01f0, 0x1010, 0x3010, 0xffb0, 0x0000, 0x5655, 0xfbbb, 0x00f0, 0x807e, 0xf0f4, 0x400c, 0x546a, 0x41aa, 0x51aa, 0x06aa, 0x06aa, 0x1aaa, 0x6aaa, 0xaa40, 0xaa44, 0xaa44, 0xaa45, 0xaa41, 0xaa40, 0x0f44, 0x00f0, 0x8030, 0xff04, 0x0003, 0x0095, 0xaa55, 0x8055, 0x6055, 0x00f0, 0xf030, 0xffef, 0xfff0, 0x01ef, 0xc202, 0x03c3, 0x000f, 0xfc18, 0x0000, 0x02ef, 0x3c3c, 0x6c2c, 0x006c, 0x000f, 0xff10, 0xf4f0, 0x4002, 0x40aa, 0x00aa, 0x0055, 0x00f4, 0x00f0, 0x8010, 0xcf0b, 0x0006, 0x0095, 0x0095, 0xaa55, 0x0055, 0x0058, 0xa056, 0x5a55, 0xfec0, 0x0004, 0x5aa4, 0xaaa4, 0xaa90, 0xaa40, 0x5500, 0x0000, 0x00ec, 0x3ffe, 0xf0ce, 0x4001, 0x95a5, 0xfaaa, 0xf4f0, 0x0004, 0x40a4, 0x40a9, 0x406a, 0x906a, 0x906a, 0x00f4, 0x0838, 0xf0f4, 0x4001, 0x9005, 0x9010, 0x00ef, 0x7e7e, 0x40ef, 0x541c, 0x5215, 0x0a85, 0xaaa0, 0xaaa3, 0xaaa3, 0xaaa8, 0xcfca, 0xcfca, 0x3fca, 0xffca, 0xfc2a, 0x02aa, 0xcfaa, 0x3f8f, 0xff8f, 0x00a0, 0xa3aa, 0xa8aa, 0x3caa, 0xf2aa, 0xf2aa, 0xcaaa, 0x2aaa, 0xcfaa, 0xffa8, 0x3fa8, 0x3faa, 0x80aa, 0xf2aa, 0x00f4, 0x1010, 0xff04, 0x0001, 0x0029, 0xaa95, 0x0000, 0x01f4, 0x8404, 0x1848, 0x000f, 0x7f18, 0xff0b, 0x000a, 0x2095, 0x8225, 0x8825, 0x2825, 0x8025, 0x8095, 0x6a55, 0x5568, 0x5568, 0x555a, 0x5558, 0x00fb, 0x00f0, 0x8010, 0xff0a, 0x0005, 0x0095, 0x0095, 0xaa55, 0x0055, 0x0058, 0xa056, 0x00f0, 0x8030, 0xfbf0, 0x0003, 0x0040, 0x0090, 0x0090, 0x0090, 0xbf00, 0x00f0, 0x0080, 0xbbbb, 0xf0fb, 0x00fb, 0x8050, 0xbbbf, 0x000f, 0x7f18, 0xff0b, 0x000a, 0x2025, 0x2225, 0xa225, 0x2a25, 0x8025, 0x8095, 0x6a55, 0x5562, 0x5562, 0x555a, 0x5558, 0x00fb, 0x00f0, 0xc010, 0xfbf0, 0x0005, 0x00a4, 0x00a4, 0x0094, 0x0069, 0x4065, 0x405a, 0xbfbb, 0x02f0, 0x0100, 0x0101, 0x0001, 0xfb0f, 0x5003, 0x4a55, 0x0155, 0xa855, 0xaa15, 0xf000, 0x000b, 0xfff0, 0xf000, 0x0000, 0x00bf, 0x3f08, 0xbbbb, 0x000f, 0xf7fc, 0xfaf0, 0x900d, 0x9000, 0xa500, 0xaa40, 0x0150, 0x01a4, 0x01a4, 0x01a9, 0x0066, 0x0066, 0x0066, 0x0059, 0x0040, 0x0090, 0x00a4, 0x00af, 0xe700, 0xf0fa, 0x4000, 0x9400, 0xaaaa, 0x000f, 0xfffe, 0xfec0, 0x5005, 0xa400, 0xa900, 0xaa40, 0xaa40, 0x6a40, 0x6a40, 0x00c0, 0x0300, 0xf0ce, 0x5004, 0x00aa, 0x00a9, 0x01a4, 0x00a4, 0x00a4, 0x000c, 0x03e0, 0xc0c0, 0x303f, 0x3030, 0x3030, 0xafe0, 0x0005, 0x0055, 0x00a0, 0x00f8, 0x00fe, 0x002a, 0x00bf, 0xaaaa, 0x000f, 0x31fe, 0xf04f, 0x5400, 0x00aa, 0xff00, 0x00f4, 0x9232, 0x804f, 0x0404, 0x0aaa, 0xf2aa, 0xfcaa, 0xccaa, 0x0f2a, 0x01f0, 0x1010, 0x3010, 0xfbf0, 0x0007, 0x0040, 0x0090, 0x0054, 0x00a9, 0x40a9, 0x005a, 0x0005, 0x001a, 0x0fbf, 0x00f0, 0x1030, 0x67f0, 0x0002, 0x0005, 0x0a80, 0x2fe0, 0x5670, 0xe400, 0xe46f, 0x76dd, 0x5670, 0x65dd, 0x5670, 0x705d, 0x4000, 0xeaaa, 0x5607, 0x5001, 0x4a85, 0x2fe1, 0xd670, 0x765d, 0xe401, 0xe41b, 0xe406, 0xf4f0, 0x0009, 0x0050, 0x40a5, 0x40aa, 0x909a, 0x9099, 0x0056, 0x0005, 0x005a, 0x01aa, 0x0199, 0x4f4f, 0x000f, 0x7f0e, 0x69f0, 0x0005, 0x4094, 0x00a9, 0x0055, 0x01aa, 0x06aa, 0x3c00, 0xd560, 0x0006, 0x4069, 0x40be, 0x00fe, 0x0140, 0x0690, 0x1be5, 0x1bfa, 0x00c0, 0x8000, 0xfec0, 0x0004, 0x0090, 0x00a4, 0x00a9, 0x00a9, 0x00a9, 0xeeec, 0x00c0, 0x0300, 0xf0ce, 0x9005, 0x40aa, 0x00aa, 0x00a9, 0x00a9, 0x40a9, 0xfaaa, 0xb9f0, 0x0013, 0x00a4, 0x50a4, 0xa495, 0x005a, 0x0001, 0x0016, 0x006a, 0x016a, 0x77d0, 0xd7d0, 0xddd0, 0xffd0, 0xffd0, 0xff40, 0x7f40, 0x1500, 0x001f, 0x001f, 0x0007, 0x0007, 0x00fb, 0x00f0, 0x8010, 0xaf0b, 0x0017, 0x0a55, 0xa555, 0x0055, 0x0058, 0xaa58, 0x5556, 0xffe5, 0xffe5, 0xbfe5, 0x6a95, 0x6f55, 0x6b55, 0x5655, 0xf955, 0xfe55, 0xfe55, 0xfe55, 0xfe55, 0xa955, 0xbf55, 0xef56, 0xfb56, 0xab56, 0x5655, 0xfec0, 0x000e, 0x0069, 0x00a9, 0x00a9, 0x00a4, 0x00a4, 0x00a4, 0x0090, 0xaa90, 0xa901, 0x5601, 0x1a00, 0x0600, 0x0600, 0x0100, 0x0600, 0x07e0, 0x0f00, 0x0c0f, 0x0f0c, 0xc3cf, 0xf0f3, 0x3030, 0xf0f0, 0xc3c0, 0xaf0e, 0x5007, 0xfe55, 0xfe55, 0xf955, 0xa555, 0xff55, 0xff56, 0xbf56, 0x6a55, 0x0000, 0x44f0, 0x00f4, 0x1010, 0xff04, 0x0002, 0x0009, 0x00a5, 0xaa55, 0x0000, 0x014f, 0xbe9e, 0x39fe, 0x000f, 0x7fc6, 0xff08, 0x000a, 0x2025, 0x2225, 0xa225, 0x2a25, 0x8025, 0x8095, 0x6a55, 0x5562, 0x5562, 0x555a, 0x5558, 0x00f8, 0x00f0, 0x8010, 0x70fb, 0x540c, 0x401a, 0x411a, 0x141a, 0x001a, 0x401a, 0x406a, 0x95aa, 0xaa90, 0xaa90, 0xaaa5, 0xaaa4, 0xaaa4, 0xaaa9, 0x5670, 0xdddd, 0x6700, 0xddd5, 0x6700, 0xddd5, 0x7000, 0xdd56, 0x0000, 0xd567, 0x5670, 0x0001, 0x00e4, 0x0090, 0x7000, 0x76d5, 0x5400, 0x55e1, 0x0765, 0xdddd, 0x0765, 0x5ddd, 0x0076, 0x65dd, 0x6507, 0x5402, 0x553a, 0x554f, 0x5550, 0xf4f0, 0x9009, 0x40a6, 0x009a, 0x00a9, 0x0055, 0x00a9, 0x0054, 0x0069, 0x0066, 0x0019, 0x0005, 0x00f4, 0x00f0, 0x8010, 0x6f09, 0x0007, 0x0095, 0x0095, 0xaa55, 0x0055, 0x0058, 0xa056, 0x5a55, 0xd555, 0x60d5, 0x540b, 0x54ea, 0x53aa, 0x4eaa, 0x3aaa, 0xeaaa, 0x55aa, 0x55b1, 0x55b1, 0x15ac, 0xc5ab, 0xb0aa, 0xafaa, 0xfec0, 0x000a, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0x0090, 0x0090, 0x0090, 0x6a40, 0x1a00, 0x0600, 0x0600, 0x01c0, 0x1010, 0x0010, 0xf9f0, 0x000a, 0x65a4, 0x9a90, 0xaa90, 0x6a40, 0xa500, 0x5000, 0xa900, 0x9506, 0xa906, 0xaa06, 0x5601, 0x00f0, 0x8010, 0xf40f, 0x0003, 0xaa81, 0xaaa8, 0x4055, 0x2a15, 0x000f, 0xf7f0, 0xfaf0, 0x9003, 0xa400, 0xa400, 0xa400, 0x6900, 0x00f0, 0x0300, 0x40fa, 0x9008, 0x90aa, 0x45aa, 0x44aa, 0x44aa, 0x15a9, 0xaaa4, 0x556a, 0xffd6, 0xfffd, 0x00f0, 0x8080, 0x0fff, 0x4ff0, 0x00f4, 0x0818, 0xf4f0, 0x0002, 0x5540, 0xaa94, 0xaaa9, 0x00f0, 0x8380, 0xc0f4, 0x9002, 0x4016, 0xaa01, 0xaabf, 0xf0ce, 0x4000, 0x00aa, 0x000c, 0xc3fe, 0xf0ec, 0x5000, 0x05a8, 0x00f0, 0x0800, 0xf3f0, 0x400a, 0x9000, 0x9000, 0x9000, 0xa400, 0xa400, 0xa400, 0xa41a, 0x9006, 0x9006, 0x9006, 0x9006, 0x010f, 0x7e7e, 0xff7e, 0xe4f0, 0x0009, 0x0040, 0x0094, 0x40a9, 0x40aa, 0x90aa, 0x90aa, 0x50aa, 0xa505, 0xaa5a, 0x5fff, 0x3aef, 0x5000, 0x4aa1, 0xbf03, 0x0004, 0x6aa9, 0x6ffe, 0x6fff, 0x5bff, 0x56bf, 0x0ffb, 0x00f0, 0xf010, 0x7f40, 0x0003, 0x0a55, 0x25a9, 0x2556, 0xfc00, 0x5607, 0x5402, 0x52a8, 0x4afa, 0x2bfe, 0xdd55, 0x7665, 0xf4f0, 0x0009, 0x0005, 0x001a, 0x001a, 0x0005, 0x001a, 0x001a, 0x001a, 0x0006, 0x0015, 0x0069, 0xf44f, 0x00f0, 0x3070, 0xbf40, 0x0008, 0x0025, 0x0025, 0x0025, 0x2aa9, 0x9555, 0x002a, 0x00bf, 0x00bf, 0x00bf, 0x0fbb, 0x01f0, 0x0030, 0x01c0, 0xf0af, 0x5004, 0x5205, 0x5255, 0x4a55, 0x2a55, 0xaa55, 0xaaff, 0x00f0, 0x00c0, 0xfaf0, 0xa40b, 0xa91a, 0xaa1a, 0xaa1a, 0xaa1a, 0x6a06, 0x1501, 0xa400, 0x90aa, 0x90aa, 0x40aa, 0x00aa, 0x00a9, 0xaff0, 0x00f0, 0x0080, 0xf0fa, 0x0000, 0x0005, 0xff00, 0x01af, 0xbf70, 0x03fe, 0xfa0f, 0x5004, 0x4aaa, 0x52aa, 0x52aa, 0x54aa, 0x552a, 0x0ffa, 0x00f0, 0x0010, 0x0000, 0x004f, 0xfefe, 0xf4f0, 0x9402, 0x40aa, 0x00a5, 0x0050, 0x02f4, 0x0818, 0x0404, 0x0f04, 0xa4f0, 0x0010, 0x00a5, 0x0050, 0x00fd, 0x007d, 0x00fd, 0x00fd, 0x00fd, 0x0054, 0x07df, 0x01dd, 0x0057, 0x0007, 0x0001, 0xaaa9, 0xaaa4, 0xa950, 0x5400, 0x0000, 0x01f4, 0x0404, 0x0f08, 0xf4f0, 0x0001, 0x00a5, 0x0050, 0x004f, 0xfefe, 0xf4f0, 0x5401, 0x00aa, 0x0055, 0x01f4, 0x0408, 0x0404, 0xf04f, 0x0000, 0xaa55, 0x44ff, 0x00f0, 0x00c0, 0xf0ce, 0x0008, 0x00a9, 0x00a9, 0x00a9, 0x00a9, 0x00a9, 0x00a4, 0x00a4, 0xa4a4, 0xa9aa, 0x43f0, 0x000b, 0x00a4, 0x0090, 0x0090, 0x0040, 0xffd0, 0xffd0, 0xffd0, 0xffd0, 0xffd0, 0xffd0, 0xffd0, 0xffd0, 0xfeaf, 0x1405, 0x8414, 0x8412, 0x8412, 0x8412, 0x1412, 0x5214, 0xefaa, 0x00fe, 0xff3c, 0x5f40, 0x0004, 0x0aa5, 0x0956, 0x02a9, 0x0009, 0x0002, 0x76d5, 0x5405, 0x54e1, 0x54e1, 0x55e1, 0x55e1, 0x55e8, 0x15e8, 0x0766, 0x5ddd, 0x0766, 0xf0f4, 0x900c, 0x54aa, 0x50a9, 0x00a4, 0x0095, 0x0590, 0x5490, 0x55a5, 0x50a9, 0x00aa, 0x00a5, 0x0590, 0x5090, 0x0095, 0x00f4, 0x000f, 0xffe0, 0xb40f, 0x400d, 0x5255, 0x5455, 0x8255, 0x2a2a, 0xaa40, 0x824a, 0x0a4a, 0x0050, 0xf055, 0xff53, 0xff4f, 0xff4f, 0x0f53, 0x5054, 0xfef0, 0x0007, 0xaa90, 0xaa90, 0xaa90, 0xaa40, 0xaa40, 0xa900, 0x9400, 0x4000, 0x01fe, 0x0ff0, 0xf0ff, 0xfe0f, 0x0005, 0xa855, 0xa855, 0xa855, 0xa155, 0xa155, 0x8555, 0x00f0, 0x0080, 0xf0fe, 0x0000, 0x0001, 0xfff0, 0x00ef, 0x00f0, 0xeeee, 0xfeee, 0x050f, 0xff80, 0x0fef, 0x1f1f, 0x7f3f, 0x8f0f, 0xcf8f, 0xfec0, 0x0009, 0xaaa4, 0xaaa4, 0xaaa4, 0xaaa4, 0xaa90, 0x5540, 0xaa00, 0xaaa9, 0x6a94, 0x1540, 0x00f0, 0x7ec0, 0x1ef0, 0xa401, 0xe41e, 0xf41f, 0x0f11, 0x00f0, 0x303c, 0x1ef0, 0x0003, 0x1554, 0x1ea4, 0x1fe4, 0x1ff4, 0x07f0, 0x003c, 0xe020, 0xc0c0, 0x40c0, 0x3070, 0x3030, 0xe020, 0x7040, 0xfbf0, 0x0004, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0x00a4, 0xbf00, 0x00f0, 0x0080, 0xc0fb, 0x9006, 0x90aa, 0x90aa, 0x90aa, 0x90aa, 0xa4aa, 0xa9aa, 0xeaaa, 0xfe0c, 0x4004, 0x2a85, 0xaaa1, 0xaaa1, 0xaaa1, 0xaa85, 0x00c0, 0xd0f8, 0xfce0, 0x0003, 0x0259, 0x0255, 0x00a5, 0x000a, 0x4ff0, 0x00f4, 0x9214, 0xf04f, 0x5409, 0x1482, 0x412a, 0x114a, 0x044a, 0xa02a, 0xa145, 0xa845, 0xaa04, 0xaa85, 0xaaa1, 0x00f4, 0x00f0, 0x0010, 0xfec0, 0x0000, 0x0550, 0xeec0, 0x01ce, 0x141c, 0x1013, 0xfc0e, 0x0000, 0xa809, 0x00c0, 0x001c, 0xfe0c, 0x540a, 0x0255, 0xaa55, 0xaa54, 0x0254, 0x5455, 0x8555, 0x1555, 0x5255, 0x5255, 0x4855, 0x4855, 0x00c0, 0x4060, 0x5670, 0x0003, 0x00e9, 0x00a4, 0x0090, 0x0040, 0x005d, 0x0100, 0x7d56, 0xa401, 0xa4aa, 0x93aa, 0x5ddd, 0x5670, 0xe400, 0x90bf, 0x7666, 0x0070, 0x0078, 0x04f0, 0xc080, 0xc0c0, 0x1080, 0x3030, 0x1030, 0x02e0, 0x3c10, 0x1818, 0x0024, 0xefc0, 0x4006, 0x9005, 0xe61a, 0xe66f, 0xe66f, 0x906f, 0x401a, 0x8005, 0xf40f, 0x5005, 0xaa85, 0xaa85, 0xaa15, 0xaa15, 0xa855, 0x8155, 0x00f0, 0xe080, 0x0fff, 0x00ef, 0x427e, 0xeeef, 0xfeee, 0x01f0, 0x207e, 0x0810, 0xfef0, 0x4002, 0x9005, 0x901a, 0x901a, 0x0fee, 0x00f0, 0xc038, 0x00ff, 0x00cf, 0xc33c, 0x000f, 0x7f3c, 0x4e0f, 0x500b, 0x4a85, 0x4885, 0x4a85, 0x5015, 0xff55, 0x0ff0, 0x5005, 0x552a, 0x552a, 0x552a, 0x554a, 0x554a, 0x00fe, 0x00f0, 0x0010, 0xcfe0, 0x000a, 0x0955, 0x0955, 0x0955, 0x0255, 0x0255, 0x0095, 0x0029, 0x0002, 0x0d55, 0x0d55, 0x0d55, 0xeeec, 0x000c, 0xef0e, 0x03e0, 0x1010, 0xff18, 0x183c, 0x663c, 0x65dd, 0x0076, 0x665d, 0x6507, 0x5403, 0x553e, 0x554e, 0x5553, 0x5554, 0xfec0, 0x5001, 0xa405, 0xa41a, 0x00ce, 0x1818, 0xf0ce, 0x9000, 0x9006, 0x00c0, 0x003c, 0xfec0, 0x4004, 0x9005, 0xa41a, 0xa41a, 0xa41a, 0x5006, 0x000c, 0x01f0, 0x8040, 0x8100, 0x0000, 0x0000
};

// [D_08C822D8] D_08C82710 Huffman Window 1
u32 D_08c82710_window1[] = {
	0x7af5bdb7, 0xfdedfb7b, 0xfbdffbcb, 0xdb7bdede, 0xbdfb3dbf, 0xfdefdb7d, 0xdffff7af, 0xdb7efdbd, 0x5b6f97b6, 0xddf6ffb7, 0x7fedfeee, 0x7edf7dbf, 0xf6acfffb, 0xfffbef7e, 0xc97677ee, 0x00077976, 0xffdb7f00, 0xef67de76, 0xffbbb3b7, 0xe96da5ee, 0xb61dedbd, 0x01bb3eef, 0xcfffb028, 0xb6da77ff, 0xe8ef7ef5, 0xdb7def2f, 0xb7597ebf, 0x00000bf1
};

// [D_08C82348] D_08C82710 Huffman Window 2
u32 D_08c82710_window2[] = {
	0x4d529552, 0x2aa55555, 0x5555542a, 0x95752555, 0x52aaaaaa, 0x5d74d4a9, 0x55655555, 0xd2d6ab56, 0x6aaad2aa, 0x566aaab5, 0xaabc5554, 0x0a8d2af5, 0x2ad4aabb, 0xa0aaaa75, 0x515152ad, 0x5b5bf555, 0xad2abbe9, 0xd552aaee, 0xaad54add, 0x2b288c6a
};

// [D_08C82398] D_08C82710 Huffman
struct Huffman D_08c82710_huffman[] = {
	/* Data */			D_08c82710_huffmandata,
	/* Size */			0x1d15,
	/* Count */			0x36d,
	/* Window 1 */		D_08c82710_window1,
	/* Window 2 */		D_08c82710_window2,
};

// [D_08C823A8] D_08C82710 RLE Data
u8 D_08c82710_rledata[] = {
	0x1, 0xe, 0x2, 0x4, 0x10, 0xb, 0x1, 0x3, 0xd, 0x9, 0x7, 0x9, 0x7, 0x78, 0x6, 0x5, 0xd, 0xd, 0x2, 0x4b, 0xf, 0x6, 0x5, 0xb, 0xb, 0x5, 0x1, 0xa, 0xf, 0x6, 0x5, 0xb, 0xb, 0x5, 0x1, 0x1d, 0x2, 0xb, 0x6, 0xb, 0x15, 0xd, 0x2, 0xc, 0x5, 0xe, 0xe, 0x3, 0x21, 0x6f, 0x20, 0x5, 0xc, 0x5, 0xb, 0xa, 0x6, 0x5, 0x1b, 0x1d, 0x3, 0xf, 0x11, 0xd, 0x2, 0xc, 0x5, 0xe, 0x2, 0x6, 0x2d, 0x1c, 0x31, 0xf, 0x9, 0x7, 0x8, 0x2b, 0x1e, 0x24, 0xf, 0x3, 0xf, 0xb, 0x8, 0x7, 0x3, 0x3, 0xc, 0x7, 0x11, 0x9, 0x1a, 0x3, 0x1c, 0x4, 0x1, 0x4, 0x16, 0x5, 0x1a, 0x6, 0x26, 0x1d, 0xf, 0x1f, 0x2, 0xd, 0x1, 0x4f, 0xb, 0x5, 0x6, 0x9a, 0x10, 0x30, 0x11, 0x2f, 0x1, 0x40, 0xa, 0x5, 0x1, 0x9, 0x7, 0xd, 0x3, 0xa, 0x6, 0x40, 0x1f, 0x6, 0xb, 0x18, 0x8, 0x5, 0x5, 0x5, 0x1, 0x7, 0x9, 0x22, 0x1e, 0x3, 0xc, 0x11, 0x10, 0xf, 0x10, 0x17, 0xa, 0x3, 0x5, 0x7, 0x1, 0x5, 0xb, 0x25, 0xb, 0x1c, 0xf, 0x15, 0xc, 0x3, 0x1, 0x1a, 0xf, 0x3, 0x4, 0x3, 0x8, 0x5, 0xc, 0x3, 0x21, 0xf, 0x11, 0x9, 0x16, 0x21, 0x2, 0xd, 0x20, 0x11, 0x2f, 0x3, 0x16, 0x7, 0x2, 0x9, 0x16, 0x1a, 0x16, 0x10, 0x22, 0xd, 0x11, 0x10, 0x20, 0x1f, 0x9, 0x7, 0x8, 0x19, 0x2f, 0x2f, 0x1d, 0x14, 0x40, 0x6, 0x13, 0x8, 0xf, 0x5, 0xf, 0x7, 0xf, 0x17, 0x1f, 0x11, 0x10, 0xf, 0x1e, 0xa3, 0x4, 0xb, 0x6, 0x1b, 0xa, 0x5, 0x3, 0x7, 0x12, 0x4, 0x7, 0x9, 0xd, 0x3, 0x1, 0x9, 0x12, 0x4, 0x2, 0xe, 0x9, 0x7, 0x6, 0x31, 0xa, 0x5, 0xb, 0xb, 0x4, 0x1b, 0x6, 0x4, 0x20, 0xb, 0x11, 0x10, 0x3f, 0x18, 0x9, 0x12, 0xe, 0x10, 0x10, 0x18, 0x18, 0x1c, 0xf, 0x4, 0x1, 0xc, 0x13, 0x1b, 0x6, 0x8, 0xf, 0x8, 0xb, 0x5, 0x21, 0x10, 0x2f, 0x10, 0x11, 0x10, 0x3f, 0x5, 0x1b, 0xf, 0x12, 0xe, 0x12, 0xf, 0x21, 0x3, 0x4c, 0x9, 0xf, 0x8, 0x20, 0x10, 0x9, 0x7, 0xb, 0x15, 0xd, 0x3, 0xc, 0x4, 0x10, 0x10, 0x11, 0x3, 0x6a, 0x3, 0xc, 0x3, 0x1, 0xb, 0x24, 0x11, 0x63, 0x8, 0x15, 0xf, 0x7, 0x9, 0x6, 0x6a, 0x11, 0xb, 0x5, 0x20, 0x2c, 0x3, 0x15, 0x2b, 0xf, 0x32, 0x10, 0x3f, 0x1e, 0x3, 0x8, 0x7, 0x1, 0x7, 0x9, 0x28, 0x8, 0x7, 0x2, 0x7, 0x11, 0x6, 0x8, 0x17, 0xa, 0xa, 0x11, 0x4, 0x1, 0x4, 0xc, 0x3, 0x1c, 0x4, 0x1e, 0x8, 0x7, 0xb, 0x5, 0x13, 0xd, 0x14, 0x12, 0x9, 0x11, 0x7, 0x5, 0x3, 0x11, 0x5, 0x5, 0x5, 0x1, 0x9, 0xb, 0xb, 0x1, 0xd, 0xc, 0xa, 0x1c, 0x4, 0x5, 0x7, 0x1, 0x9, 0x46, 0xb, 0xf, 0x6, 0x10, 0x3, 0x7e, 0x10, 0x2f, 0x11, 0x10, 0xf, 0x11, 0x9, 0x17, 0x7, 0x18, 0xc, 0x25, 0xf, 0x61, 0xf, 0xb, 0x5, 0xa, 0x7, 0xa, 0x5, 0xa0, 0x11, 0x10, 0xf, 0x31, 0xb, 0x5, 0xf, 0x24, 0xc, 0x1, 0xf, 0x1, 0x3, 0x15, 0x7, 0x8, 0x9, 0x24, 0xb, 0x1, 0x3, 0xd, 0x2f, 0x53, 0xd, 0x3, 0x2d, 0xd, 0x3, 0x1, 0x9, 0x17, 0xd, 0x13, 0xd, 0x19, 0x5, 0x30, 0x14, 0x1, 0xd, 0x17, 0xb, 0x10, 0x3, 0x11, 0xa, 0xf, 0x3, 0x31, 0x4a, 0x6, 0x5, 0xb, 0x4, 0x1c, 0x8, 0x8, 0x7, 0x9, 0x8, 0x8, 0x3, 0xd, 0x4, 0x1b, 0x7, 0xa, 0x5, 0x2b, 0x6, 0xa, 0x5, 0x2b, 0x8, 0x8, 0x5, 0xb, 0xf, 0x2c, 0xd, 0x38, 0xd, 0x3, 0x14, 0x11, 0x7, 0x5, 0x7, 0xf, 0x9, 0x6, 0x9, 0x8, 0x8, 0xd, 0x3, 0xc, 0x4, 0x15, 0xb, 0x7, 0x9, 0x4, 0xc, 0x1b, 0x5, 0x7c, 0x4, 0x1, 0xf, 0xa, 0x9, 0xe, 0x9, 0x6, 0x9, 0x8, 0x5, 0xa, 0x4, 0xd, 0x3, 0xd, 0x4, 0x1b, 0xb, 0x6, 0x9, 0x7, 0x4, 0xc, 0x5, 0xb, 0x13, 0x1d, 0x3, 0xc, 0x9, 0x8, 0x5, 0x2b, 0xc, 0x4, 0x8, 0x8, 0x6, 0xa, 0x5, 0xa, 0xb, 0x6, 0x9, 0x7, 0x12, 0xe, 0x6, 0xa, 0x7, 0x9, 0xb, 0x5, 0xf, 0x27, 0x9, 0x6, 0xa, 0x27, 0x9, 0x4, 0xc, 0x9, 0x7, 0x8, 0x8, 0xb, 0x5, 0x8, 0x13, 0x20, 0x5, 0x6, 0xa, 0xd, 0x3, 0xc, 0x5, 0xa, 0x5, 0xa, 0x6, 0xb, 0x5, 0xb, 0x5, 0x1c, 0x4, 0x9, 0x7, 0x8, 0x9, 0x14, 0x6, 0x21, 0x5, 0x1f, 0x9, 0xf, 0x5, 0x4, 0x6, 0x19, 0xb, 0x6, 0x6, 0x2a, 0x8, 0x4, 0x3, 0xd, 0x3, 0x1, 0xa, 0x6, 0x9, 0x7, 0xc, 0x4, 0x8, 0x8, 0x6, 0xa, 0x7, 0x8, 0x5, 0xc, 0x3, 0xc, 0x4, 0xd, 0x3, 0xd, 0x4, 0xc, 0x3, 0xc, 0xb, 0x6, 0x9, 0x7, 0x8, 0x8, 0x7, 0x28, 0x7, 0xa, 0x7, 0x24, 0x4, 0x7, 0x9, 0x7, 0x9, 0x9, 0x7, 0x6, 0xb, 0xc, 0x3, 0xa, 0x7, 0x48, 0x7, 0x8, 0x8, 0xd, 0x3, 0xb, 0x5, 0x1c, 0x4, 0x1c, 0x4, 0x2d, 0x3, 0xc, 0x4, 0x9, 0x7, 0x8, 0x8, 0xd, 0x3, 0xe, 0x3, 0x2c, 0x3, 0xc, 0xe, 0x7, 0xb, 0x5, 0x4, 0x1c, 0x9, 0x7, 0x6, 0xa, 0x9, 0x7, 0x8, 0x8, 0x9, 0x7, 0x9, 0x3b, 0xb, 0x1, 0xb, 0x5, 0xf, 0xe, 0xa, 0x9, 0x5, 0xb, 0x9, 0x6, 0x6, 0xa, 0x8, 0x8, 0x4, 0x1d, 0xf, 0x1e, 0x12, 0x11, 0xb, 0x9, 0x8, 0x1e, 0x5, 0x1d, 0x3, 0xa, 0x6, 0x9, 0x7, 0xd, 0x3, 0x9, 0x7, 0x24, 0xd, 0x8, 0x17, 0x10, 0x10, 0x13, 0x1d, 0xa, 0x6, 0x36, 0xa, 0xc, 0x4, 0xc, 0x4, 0x11, 0xd, 0x3, 0xd, 0x3, 0xd, 0x13, 0xb, 0x5, 0xd, 0x3, 0xc, 0x10, 0x5, 0xa, 0x4, 0xd, 0x3, 0x1, 0x7, 0x7, 0x4, 0xc, 0x3, 0x19, 0x5, 0xa, 0x7, 0x4, 0xb, 0x4, 0xd, 0x1d, 0x4, 0xf, 0x5, 0x48, 0x3, 0x4, 0xb, 0xc, 0x5, 0x8, 0x7, 0x1d, 0x5, 0xa, 0x9, 0x2a, 0x3, 0xb, 0x8, 0x5, 0x8, 0xb, 0x3, 0x9, 0x9, 0xb, 0x3, 0x1, 0xb, 0x30, 0x5, 0x1b, 0x16, 0x1d, 0x5, 0x8, 0x0, 0x65, 0x0
};

// [D_08C82710] D_08C82710 Graphics
struct CompressedGraphics D_08c82710 = {
	/* Huffman Data */		D_08c82710_huffman,
	/* RLE Data */			D_08c82710_rledata,
	/* RLE Size */			0x366,
	/* RLE Offset */		0x3400,
	/* Double Compressed */	TRUE,
};

