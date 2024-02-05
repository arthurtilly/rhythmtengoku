#include "global.h"
#include "graphics.h"

// // //  D_08C4D040  // // //

// [D_08C4CF78] D_08C4D040 Data
u16 D_08c4d040_data[] = {
	0x0000, 0x2030, 0x2031, 0x202e, 0x202f, 0x202f, 0x2034, 0x2032, 0x2033, 0x2029, 0x2000, 0x2000, 0x2000, 0x202c, 0x202d, 0x202a, 0x202b, 0x2035, 0x2000, 0x0000, 0x2008, 0x2018, 0x2014, 0x2015, 0x2012, 0x2013, 0x2008, 0x2008, 0x2016, 0x2017, 0x201a, 0x0000, 0x2019, 0x200e, 0x200e, 0x200c, 0x200d, 0x200f, 0x2010, 0x2008, 0x2008, 0x2008, 0x2009, 0x2007, 0x2008, 0x2008, 0x2008, 0x200a, 0x200b, 0x2011, 0x0000, 0x2002, 0x2021, 0x2027, 0x2028, 0x2022, 0x2023, 0x2008, 0x2008, 0x2008, 0x2026, 0x2024, 0x2025, 0x2000, 0x0000, 0x2002, 0x2021, 0x201c, 0x201d, 0x2008, 0x201b, 0x201f, 0x2020, 0x2002, 0x201e, 0x2000, 0x0000, 0x2002, 0x2003, 0x2004, 0x2001, 0x2002, 0x2002, 0x2002, 0x2005, 0x2006, 0x2000, 0x0000
};

// [D_08C4D028] D_08C4D040 RLE Data
u8 D_08c4d040_rledata[] = {
	0x1, 0x0, 0xe0, 0x13, 0xd, 0x1, 0x7, 0xb, 0xd, 0x13, 0xd, 0x1, 0x5, 0xd, 0xd, 0x1, 0x7, 0xb, 0xd, 0x1, 0x8, 0xa, 0x0, 0x6e
};

// [D_08C4D040] D_08C4D040 Graphics
struct CompressedGraphics D_08c4d040 = {
	/* Data */				{.raw = D_08c4d040_data},
	/* RLE Data */			D_08c4d040_rledata,
	/* RLE Size */			0x16,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

