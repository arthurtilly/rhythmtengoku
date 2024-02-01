#include "global.h"
#include "graphics.h"

// // //  D_08C47FDC  // // //

// [D_08C47EE4] D_08C47FDC Data
u16 D_08c47fdc_data[] = {
	0x0000, 0x4000, 0x403d, 0x4148, 0x4149, 0x414a, 0x40f3, 0x4000, 0x4000, 0x40f6, 0x4000, 0x4400, 0x44f6, 0x4400, 0x4400, 0x44f3, 0x454a, 0x4549, 0x4548, 0x443d, 0x4400, 0x0000, 0x0000, 0x410b, 0x4003, 0x4037, 0x410a, 0x4003, 0x4117, 0x410f, 0x4014, 0x410c, 0x410d, 0x4106, 0x4000, 0x4109, 0x4108, 0x4000, 0x4400, 0x4508, 0x4509, 0x4400, 0x4506, 0x450d, 0x450c, 0x4414, 0x450f, 0x4517, 0x4403, 0x450a, 0x4437, 0x4403, 0x450b, 0x0000, 0x0000, 0x412d, 0x4003, 0x4003, 0x412b, 0x4003, 0x412c, 0x4135, 0x4003, 0x4137, 0x4003, 0x4003, 0x4136, 0x4003, 0x4092, 0x4000, 0x4400, 0x4492, 0x4403, 0x4536, 0x4403, 0x4403, 0x4537, 0x4403, 0x4535, 0x452c, 0x4403, 0x452b, 0x4403, 0x4403, 0x452d, 0x0000, 0x0000, 0x4003, 0x4003, 0x4003, 0x412a, 0x4003, 0x4132, 0x4003, 0x4003, 0x4138, 0x4133, 0x412f, 0x412e, 0x4003, 0x4131, 0x4130, 0x4530, 0x4531, 0x4403, 0x452e, 0x452f, 0x4533, 0x4538, 0x4403, 0x4403, 0x4532, 0x4403, 0x452a, 0x4403, 0x4403, 0x4403, 0x0000
};

// [D_08C47FD0] D_08C47FDC RLE Data
u8 D_08c47fdc_rledata[] = {
	0x1, 0x0, 0x0, 0x1, 0xa, 0x5, 0x1, 0x5, 0x6a, 0x0, 0x82, 0x0
};

// [D_08C47FDC] D_08C47FDC Graphics
struct CompressedGraphics D_08c47fdc = {
	/* Data */				{.raw = D_08c47fdc_data},
	/* RLE Data */			D_08c47fdc_rledata,
	/* RLE Size */			0x8,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

// // //  D_08C480E4  // // //

// [D_08C47FEC] D_08C480E4 Data
u16 D_08c480e4_data[] = {
	0x0000, 0x407b, 0x407e, 0x409a, 0x409b, 0x4083, 0x4082, 0x4081, 0x4086, 0x409d, 0x4000, 0x4400, 0x449d, 0x4486, 0x4481, 0x4482, 0x4483, 0x449b, 0x449a, 0x447e, 0x447b, 0x0000, 0x0000, 0x4094, 0x4003, 0x4092, 0x4093, 0x4003, 0x4097, 0x4098, 0x4003, 0x4095, 0x4096, 0x408d, 0x408e, 0x408f, 0x408c, 0x4000, 0x4400, 0x448c, 0x448f, 0x448e, 0x448d, 0x4496, 0x4495, 0x4403, 0x4498, 0x4497, 0x4403, 0x4493, 0x4492, 0x4403, 0x4494, 0x0000, 0x0000, 0x40ab, 0x4003, 0x4003, 0x40a9, 0x4003, 0x40aa, 0x40b4, 0x4003, 0x40b6, 0x4003, 0x4003, 0x40b5, 0x4003, 0x4003, 0x40b7, 0x44b7, 0x4403, 0x4403, 0x44b5, 0x4403, 0x4403, 0x44b6, 0x4403, 0x44b4, 0x44aa, 0x4403, 0x44a9, 0x4403, 0x4403, 0x44ab, 0x0000, 0x0000, 0x4003, 0x4003, 0x4003, 0x40a8, 0x4003, 0x40b0, 0x4003, 0x4003, 0x40b8, 0x40b1, 0x40ad, 0x40ac, 0x4003, 0x40af, 0x40ae, 0x44ae, 0x44af, 0x4403, 0x44ac, 0x44ad, 0x44b1, 0x44b8, 0x4403, 0x4403, 0x44b0, 0x4403, 0x44a8, 0x4403, 0x4403, 0x4403, 0x0000
};

// [D_08C480D8] D_08C480E4 RLE Data
u8 D_08c480e4_rledata[] = {
	0x1, 0x0, 0x0, 0x1, 0xa, 0x5, 0x1, 0x5, 0x6a, 0x0, 0x82, 0x0
};

// [D_08C480E4] D_08C480E4 Graphics
struct CompressedGraphics D_08c480e4 = {
	/* Data */				{.raw = D_08c480e4_data},
	/* RLE Data */			D_08c480e4_rledata,
	/* RLE Size */			0x8,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

// // //  D_08C481F4  // // //

// [D_08C480F4] D_08C481F4 Data
u16 D_08c481f4_data[] = {
	0x0000, 0x400d, 0x400e, 0x400b, 0x4000, 0x4021, 0x4020, 0x401f, 0x401a, 0x4019, 0x4000, 0x4000, 0x4000, 0x401b, 0x4023, 0x4000, 0x4400, 0x4423, 0x441b, 0x4400, 0x4400, 0x4400, 0x4419, 0x441a, 0x441f, 0x4420, 0x4421, 0x4400, 0x440b, 0x440e, 0x440d, 0x0000, 0x0000, 0x4009, 0x4003, 0x402a, 0x402b, 0x4003, 0x4014, 0x4013, 0x4003, 0x402c, 0x402d, 0x4015, 0x4011, 0x4010, 0x400f, 0x4012, 0x4412, 0x440f, 0x4410, 0x4411, 0x4415, 0x442d, 0x442c, 0x4403, 0x4413, 0x4414, 0x4403, 0x442b, 0x442a, 0x4403, 0x4409, 0x0000, 0x0000, 0x4026, 0x4003, 0x4003, 0x4029, 0x4003, 0x4003, 0x4027, 0x4003, 0x4028, 0x4003, 0x4003, 0x4025, 0x4003, 0x4003, 0x4024, 0x4424, 0x4403, 0x4403, 0x4425, 0x4403, 0x4403, 0x4428, 0x4403, 0x4427, 0x4403, 0x4403, 0x4429, 0x4403, 0x4403, 0x4426, 0x0000, 0x0000, 0x4003, 0x4003, 0x4001, 0x4002, 0x4003, 0x4006, 0x4003, 0x4003, 0x4005, 0x4003, 0x4008, 0x4007, 0x4407, 0x4408, 0x4403, 0x4405, 0x4403, 0x4403, 0x4406, 0x4403, 0x4402, 0x4401, 0x4403, 0x4403, 0x0000
};

// [D_08C481E8] D_08C481F4 RLE Data
u8 D_08c481f4_rledata[] = {
	0x1, 0x0, 0x0, 0x1, 0x65, 0x3, 0xf, 0x3, 0x5, 0x0, 0x82, 0x0
};

// [D_08C481F4] D_08C481F4 Graphics
struct CompressedGraphics D_08c481f4 = {
	/* Data */				{.raw = D_08c481f4_data},
	/* RLE Data */			D_08c481f4_rledata,
	/* RLE Size */			0x8,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

// // //  D_08C48328  // // //

// [D_08C48204] D_08C48328 Data
u16 D_08c48328_data[] = {
	0x0000, 0x4154, 0x0000, 0x4064, 0x4063, 0x0000, 0x4054, 0x4155, 0x0000, 0x40db, 0x405a, 0x4059, 0x0000, 0x4072, 0x4071, 0x0000, 0x4000, 0x4021, 0x407a, 0x4150, 0x414d, 0x4076, 0x4000, 0x4000, 0x409b, 0x406b, 0x406a, 0x4000, 0x4400, 0x454c, 0x441b, 0x4400, 0x4400, 0x4400, 0x4070, 0x406f, 0x454b, 0x454c, 0x4421, 0x4400, 0x0000, 0x0000, 0x4035, 0x4036, 0x4003, 0x4003, 0x4003, 0x403f, 0x403e, 0x4043, 0x414f, 0x4003, 0x4037, 0x4000, 0x403d, 0x4045, 0x4000, 0x4400, 0x4445, 0x443d, 0x4400, 0x4437, 0x4441, 0x4440, 0x4443, 0x443e, 0x4042, 0x4403, 0x4434, 0x454e, 0x4436, 0x4435, 0x0000, 0x0000, 0x4032, 0x4003, 0x4003, 0x4027, 0x4003, 0x403b, 0x403a, 0x4003, 0x4038, 0x4003, 0x4037, 0x4000, 0x4400, 0x4437, 0x4403, 0x4438, 0x4403, 0x4403, 0x4450, 0x4403, 0x443a, 0x443b, 0x4403, 0x4427, 0x4403, 0x4403, 0x4432, 0x0000, 0x0000, 0x4003, 0x4003, 0x4003, 0x404e, 0x4003, 0x404f, 0x4003, 0x4003, 0x4051, 0x404c, 0x404a, 0x404b, 0x4003, 0x4047, 0x4048, 0x4448, 0x4447, 0x4403, 0x444b, 0x444a, 0x444c, 0x444d, 0x4403, 0x4403, 0x444f, 0x4403, 0x444e, 0x4403, 0x4403, 0x4403, 0x0000
};

// [D_08C48310] D_08C48328 RLE Data
u8 D_08c48328_rledata[] = {
	0x1, 0x0, 0xc9, 0x2, 0xc, 0x3, 0x8, 0x3, 0x3, 0x4, 0xb, 0x3, 0x6, 0xc, 0x3, 0x1, 0x3, 0x35, 0x3, 0x34, 0x0, 0x82, 0x0, 0x0
};

// [D_08C48328] D_08C48328 Graphics
struct CompressedGraphics D_08c48328 = {
	/* Data */				{.raw = D_08c48328_data},
	/* RLE Data */			D_08c48328_rledata,
	/* RLE Size */			0x14,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

// // //  D_08C48458  // // //

// [D_08C48338] D_08C48458 Data
u16 D_08c48458_data[] = {
	0x0000, 0x4121, 0x4120, 0x0000, 0x4126, 0x4125, 0x0000, 0x40fb, 0x4151, 0x40df, 0x0000, 0x40fa, 0x40f9, 0x0000, 0x4100, 0x40ee, 0x0000, 0x4000, 0x403d, 0x40ec, 0x4152, 0x414a, 0x40f3, 0x4000, 0x4000, 0x4153, 0x40f5, 0x40f0, 0x4000, 0x4400, 0x44f6, 0x4400, 0x4400, 0x4110, 0x4113, 0x4549, 0x4548, 0x443d, 0x4400, 0x0000, 0x0000, 0x410b, 0x4003, 0x4117, 0x410f, 0x4014, 0x4107, 0x4003, 0x4106, 0x4000, 0x4109, 0x4108, 0x4000, 0x4400, 0x4508, 0x4509, 0x4400, 0x4506, 0x450d, 0x450c, 0x4414, 0x450f, 0x410e, 0x4403, 0x450a, 0x4437, 0x4403, 0x450b, 0x0000, 0x0000, 0x412d, 0x4003, 0x4003, 0x412b, 0x4003, 0x412c, 0x4135, 0x4003, 0x4134, 0x4003, 0x4003, 0x4136, 0x4003, 0x4092, 0x4000, 0x4400, 0x4492, 0x4403, 0x4536, 0x4403, 0x4403, 0x4537, 0x4403, 0x4535, 0x452c, 0x4403, 0x452b, 0x4403, 0x4403, 0x452d, 0x0000, 0x0000, 0x4003, 0x4003, 0x4003, 0x412a, 0x4003, 0x4132, 0x4003, 0x4003, 0x4001, 0x4133, 0x412f, 0x412e, 0x4003, 0x4131, 0x4130, 0x4530, 0x4531, 0x4403, 0x452e, 0x452f, 0x4533, 0x4538, 0x4403, 0x4403, 0x4532, 0x4403, 0x452a, 0x4403, 0x4403, 0x4403, 0x0000
};

// [D_08C48442] D_08C48458 RLE Data
u8 D_08c48458_rledata[] = {
	0x1, 0x0, 0xc9, 0x3, 0xb, 0x3, 0x8, 0x4, 0x3, 0x3, 0xb, 0x3, 0x6, 0xc, 0x3, 0x1, 0x5, 0xd, 0x3, 0x5a, 0x0, 0x82
};

// [D_08C48458] D_08C48458 Graphics
struct CompressedGraphics D_08c48458 = {
	/* Data */				{.raw = D_08c48458_data},
	/* RLE Data */			D_08c48458_rledata,
	/* RLE Size */			0x14,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

// // //  D_08C485A4  // // //

// [D_08C48468] D_08C485A4 Data
u16 D_08c485a4_data[] = {
	0x0000, 0x409f, 0x0000, 0x40a5, 0x40a4, 0x0000, 0x40a7, 0x40a6, 0x4000, 0x0000, 0x40a1, 0x40a0, 0x0000, 0x40a3, 0x40a2, 0x0000, 0x4044, 0x408a, 0x4089, 0x0000, 0x4088, 0x4087, 0x0000, 0x408b, 0x407f, 0x0000, 0x407b, 0x407e, 0x407d, 0x407c, 0x4083, 0x4082, 0x4081, 0x4086, 0x4085, 0x4084, 0x4080, 0x4000, 0x4400, 0x449d, 0x4486, 0x4481, 0x4099, 0x409c, 0x449b, 0x449a, 0x447e, 0x447b, 0x0000, 0x0000, 0x4094, 0x4003, 0x4003, 0x409e, 0x4003, 0x4097, 0x4098, 0x4003, 0x4091, 0x4090, 0x408d, 0x408e, 0x408f, 0x408c, 0x4000, 0x4400, 0x448c, 0x448f, 0x448e, 0x448d, 0x4496, 0x4495, 0x4403, 0x4498, 0x4497, 0x4403, 0x4493, 0x4492, 0x4403, 0x4494, 0x0000, 0x0000, 0x40ab, 0x4003, 0x4003, 0x40a9, 0x4003, 0x40aa, 0x40b4, 0x4003, 0x40b3, 0x4003, 0x4003, 0x40b5, 0x4003, 0x4003, 0x40b7, 0x44b7, 0x4403, 0x4403, 0x44b5, 0x4403, 0x4403, 0x44b6, 0x4403, 0x44b4, 0x44aa, 0x4403, 0x44a9, 0x4403, 0x4403, 0x44ab, 0x0000, 0x0000, 0x4003, 0x4003, 0x4003, 0x40a8, 0x4003, 0x40b0, 0x4003, 0x4003, 0x40b2, 0x40b1, 0x40ad, 0x40ac, 0x4003, 0x40af, 0x40ae, 0x44ae, 0x44af, 0x4403, 0x44ac, 0x44ad, 0x44b1, 0x44b8, 0x4403, 0x4403, 0x44b0, 0x4403, 0x44a8, 0x4403, 0x4403, 0x4403, 0x0000
};

// [D_08C4858A] D_08C485A4 RLE Data
u8 D_08c485a4_rledata[] = {
	0x1, 0x0, 0xaa, 0x2, 0xb, 0x3, 0x8, 0x4, 0x3, 0x3, 0xb, 0x3, 0x8, 0x4, 0x3, 0x3, 0xb, 0x3, 0x6, 0xc, 0x3, 0x1, 0x5, 0x6a, 0x0, 0x82
};

// [D_08C485A4] D_08C485A4 Graphics
struct CompressedGraphics D_08c485a4 = {
	/* Data */				{.raw = D_08c485a4_data},
	/* RLE Data */			D_08c485a4_rledata,
	/* RLE Size */			0x18,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

// // //  D_08C486F4  // // //

// [D_08C485B4] D_08C486F4 Data
u16 D_08c486f4_data[] = {
	0x0000, 0x40be, 0x0000, 0x40bf, 0x40ba, 0x0000, 0x40b9, 0x40bc, 0x0000, 0x40bd, 0x40bb, 0x0000, 0x40c5, 0x40c4, 0x0000, 0x40c7, 0x4003, 0x40c6, 0x0000, 0x40c1, 0x40c0, 0x0000, 0x40c3, 0x40c2, 0x0000, 0x400d, 0x400e, 0x401e, 0x401d, 0x4021, 0x4020, 0x401f, 0x401a, 0x4019, 0x4018, 0x401c, 0x4000, 0x401b, 0x4023, 0x4000, 0x4400, 0x4423, 0x441b, 0x4400, 0x4400, 0x4400, 0x4419, 0x441a, 0x441f, 0x4022, 0x400c, 0x4400, 0x440b, 0x440e, 0x440d, 0x0000, 0x0000, 0x4009, 0x4003, 0x4003, 0x400a, 0x4003, 0x4014, 0x4013, 0x4003, 0x4017, 0x4016, 0x4015, 0x4011, 0x4010, 0x400f, 0x4012, 0x4412, 0x440f, 0x4410, 0x4411, 0x4415, 0x442d, 0x442c, 0x4403, 0x4413, 0x4414, 0x4403, 0x442b, 0x442a, 0x4403, 0x4409, 0x0000, 0x0000, 0x4026, 0x4003, 0x4003, 0x4029, 0x4003, 0x4003, 0x4027, 0x4003, 0x402e, 0x4003, 0x4003, 0x4025, 0x4003, 0x4003, 0x4024, 0x4424, 0x4403, 0x4403, 0x4425, 0x4403, 0x4403, 0x4428, 0x4403, 0x4427, 0x4403, 0x4403, 0x4429, 0x4403, 0x4403, 0x4426, 0x0000, 0x0000, 0x4003, 0x4003, 0x4001, 0x4002, 0x4003, 0x4004, 0x4003, 0x4003, 0x4005, 0x4003, 0x4008, 0x4007, 0x4407, 0x4408, 0x4403, 0x4405, 0x4403, 0x4403, 0x4406, 0x4403, 0x4402, 0x4401, 0x4403, 0x4403, 0x0000
};

// [D_08C486D8] D_08C486F4 RLE Data
u8 D_08c486f4_rledata[] = {
	0x1, 0x0, 0xaa, 0x2, 0xb, 0x3, 0x9, 0x3, 0x3, 0x3, 0xb, 0x3, 0x8, 0x4, 0x3, 0x3, 0xb, 0x3, 0x6, 0x65, 0x3, 0xf, 0x3, 0x5, 0x0, 0x82, 0x0, 0x0
};

// [D_08C486F4] D_08C486F4 Graphics
struct CompressedGraphics D_08c486f4 = {
	/* Data */				{.raw = D_08c486f4_data},
	/* RLE Data */			D_08c486f4_rledata,
	/* RLE Size */			0x18,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

// // //  D_08C48874  // // //

// [D_08C48704] D_08C48874 Data
u16 D_08c48874_data[] = {
	0x0000, 0x4030, 0x402f, 0x0000, 0x0000, 0x0000, 0x4031, 0x0000, 0x405f, 0x4060, 0x0000, 0x0000, 0x405e, 0x405d, 0x405c, 0x0000, 0x4065, 0x0000, 0x0000, 0x0000, 0x4062, 0x4061, 0x0000, 0x0000, 0x4064, 0x4063, 0x0000, 0x4054, 0x4053, 0x4052, 0x0000, 0x0000, 0x4058, 0x405b, 0x405a, 0x4059, 0x0000, 0x0000, 0x0000, 0x4057, 0x4056, 0x4055, 0x0000, 0x0000, 0x4074, 0x4075, 0x0000, 0x0000, 0x4072, 0x4071, 0x0000, 0x0000, 0x4073, 0x0000, 0x4000, 0x4021, 0x407a, 0x4003, 0x4077, 0x4076, 0x4000, 0x4079, 0x4078, 0x406b, 0x406a, 0x4000, 0x4067, 0x4066, 0x4400, 0x4400, 0x4069, 0x4068, 0x4400, 0x4400, 0x4400, 0x4070, 0x406f, 0x406e, 0x406d, 0x406c, 0x4400, 0x0000, 0x0000, 0x4035, 0x4036, 0x4003, 0x4003, 0x4003, 0x403f, 0x403e, 0x4036, 0x403c, 0x4003, 0x4037, 0x4000, 0x403d, 0x4045, 0x4000, 0x4044, 0x4046, 0x443d, 0x4400, 0x4437, 0x4441, 0x4440, 0x4443, 0x443e, 0x4042, 0x4403, 0x4434, 0x4033, 0x4436, 0x4435, 0x0000, 0x0000, 0x4032, 0x4003, 0x4003, 0x4027, 0x4003, 0x403b, 0x403a, 0x4003, 0x4038, 0x4003, 0x4037, 0x4000, 0x4039, 0x4003, 0x4403, 0x4438, 0x4403, 0x4403, 0x4450, 0x4403, 0x443a, 0x443b, 0x4403, 0x4427, 0x4403, 0x4403, 0x4432, 0x0000, 0x0000, 0x4003, 0x4003, 0x4003, 0x404e, 0x4003, 0x404f, 0x4003, 0x4003, 0x4051, 0x404c, 0x404a, 0x404b, 0x4003, 0x4047, 0x4048, 0x4448, 0x4447, 0x4403, 0x444b, 0x444a, 0x4049, 0x444d, 0x4403, 0x4403, 0x444f, 0x4403, 0x444e, 0x4403, 0x4403, 0x4403, 0x0000
};

// [D_08C48862] D_08C48874 RLE Data
u8 D_08c48874_rledata[] = {
	0x1, 0x0, 0xa3, 0x7, 0x19, 0x8, 0x4, 0xb, 0x8, 0x1b, 0x3, 0xc, 0x3, 0x39, 0x3, 0x34, 0x0, 0x82
};

// [D_08C48874] D_08C48874 Graphics
struct CompressedGraphics D_08c48874 = {
	/* Data */				{.raw = D_08c48874_data},
	/* RLE Data */			D_08c48874_rledata,
	/* RLE Size */			0x10,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

// // //  D_08C489FC  // // //

// [D_08C48884] D_08C489FC Data
u16 D_08c489fc_data[] = {
	0x0000, 0x4119, 0x411a, 0x0000, 0x0000, 0x411c, 0x411b, 0x0000, 0x4128, 0x4127, 0x0000, 0x0000, 0x4129, 0x4122, 0x4121, 0x4120, 0x0000, 0x411e, 0x411d, 0x0000, 0x0000, 0x411f, 0x4124, 0x0000, 0x0000, 0x4126, 0x4125, 0x0000, 0x0000, 0x4123, 0x0000, 0x40fb, 0x40fd, 0x40fc, 0x0000, 0x0000, 0x40f8, 0x40f7, 0x40fa, 0x40f9, 0x0000, 0x4102, 0x4101, 0x0000, 0x0000, 0x40ff, 0x40fe, 0x0000, 0x0000, 0x4100, 0x40ee, 0x0000, 0x40ed, 0x40ef, 0x4012, 0x0000, 0x0000, 0x0000, 0x4000, 0x403d, 0x40ec, 0x40eb, 0x40f4, 0x40f3, 0x40f2, 0x4097, 0x40f6, 0x40f5, 0x40f0, 0x4000, 0x40f1, 0x4114, 0x4400, 0x4400, 0x4116, 0x4115, 0x44f6, 0x4400, 0x4400, 0x4110, 0x4113, 0x4112, 0x4111, 0x4118, 0x4400, 0x0000, 0x0000, 0x410b, 0x4003, 0x4117, 0x410f, 0x4014, 0x4107, 0x4003, 0x4106, 0x4000, 0x4109, 0x4108, 0x4000, 0x4400, 0x4103, 0x4105, 0x4400, 0x4104, 0x450d, 0x450c, 0x4414, 0x450f, 0x410e, 0x4403, 0x450a, 0x4437, 0x4403, 0x450b, 0x0000, 0x0000, 0x412d, 0x4003, 0x4003, 0x412b, 0x4003, 0x412c, 0x4135, 0x4003, 0x4134, 0x4003, 0x4003, 0x4136, 0x4003, 0x4092, 0x4000, 0x4400, 0x4492, 0x4403, 0x4536, 0x4403, 0x4403, 0x4537, 0x4403, 0x4535, 0x452c, 0x4403, 0x452b, 0x4403, 0x4403, 0x452d, 0x0000, 0x0000, 0x4003, 0x4003, 0x4003, 0x412a, 0x4003, 0x4132, 0x4003, 0x4003, 0x4001, 0x4133, 0x412f, 0x412e, 0x4003, 0x4131, 0x4130, 0x4530, 0x4531, 0x4403, 0x452e, 0x452f, 0x4533, 0x4538, 0x4403, 0x4403, 0x4532, 0x4403, 0x452a, 0x4403, 0x4403, 0x4403, 0x0000
};

// [D_08C489EA] D_08C489FC RLE Data
u8 D_08c489fc_rledata[] = {
	0x1, 0x0, 0xa3, 0x7, 0x19, 0x9, 0x3, 0xe, 0x5, 0xa, 0x3, 0x1d, 0x3, 0x13, 0x3, 0x5a, 0x0, 0x82
};

// [D_08C489FC] D_08C489FC Graphics
struct CompressedGraphics D_08c489fc = {
	/* Data */				{.raw = D_08c489fc_data},
	/* RLE Data */			D_08c489fc_rledata,
	/* RLE Size */			0x10,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

// // //  D_08C48B84  // // //

// [D_08C48A0C] D_08C48B84 Data
u16 D_08c48b84_data[] = {
	0x0000, 0x413e, 0x413d, 0x413c, 0x0000, 0x0000, 0x409f, 0x0000, 0x40a5, 0x40a4, 0x0000, 0x40a7, 0x40a6, 0x4000, 0x413a, 0x4139, 0x413b, 0x0000, 0x40a1, 0x40a0, 0x0000, 0x4144, 0x411c, 0x4143, 0x0000, 0x40a3, 0x40a2, 0x0000, 0x40db, 0x40d9, 0x0000, 0x4044, 0x408a, 0x4145, 0x4147, 0x0000, 0x4146, 0x0000, 0x4088, 0x4087, 0x0000, 0x413f, 0x4140, 0x4092, 0x0000, 0x408b, 0x407f, 0x0000, 0x4142, 0x4141, 0x0000, 0x407b, 0x407e, 0x407d, 0x407c, 0x40cc, 0x40cb, 0x4081, 0x4003, 0x4085, 0x4084, 0x4080, 0x4000, 0x4400, 0x40cf, 0x4400, 0x40ce, 0x40cd, 0x4400, 0x449d, 0x4486, 0x4481, 0x4099, 0x409c, 0x40ca, 0x40c9, 0x447e, 0x447b, 0x0000, 0x0000, 0x4094, 0x4003, 0x4003, 0x409e, 0x4003, 0x4097, 0x4098, 0x4003, 0x4091, 0x4090, 0x408d, 0x408e, 0x408f, 0x408c, 0x4000, 0x4400, 0x4003, 0x448f, 0x40d2, 0x40d1, 0x4496, 0x4495, 0x4403, 0x4498, 0x4497, 0x4403, 0x4493, 0x4492, 0x4403, 0x4494, 0x0000, 0x0000, 0x40ab, 0x4003, 0x4003, 0x40a9, 0x4003, 0x40aa, 0x40b4, 0x4003, 0x40b3, 0x4003, 0x4003, 0x40b5, 0x4003, 0x4003, 0x40b7, 0x44b7, 0x4403, 0x4403, 0x40d0, 0x4403, 0x4403, 0x44b6, 0x4403, 0x44b4, 0x44aa, 0x4403, 0x44a9, 0x4403, 0x4403, 0x44ab, 0x0000, 0x0000, 0x4003, 0x4003, 0x4003, 0x40a8, 0x4003, 0x40b0, 0x4003, 0x4003, 0x40b2, 0x40b1, 0x40ad, 0x40ac, 0x4003, 0x40af, 0x40ae, 0x44ae, 0x4003, 0x4403, 0x44ac, 0x40c8, 0x44b1, 0x44b8, 0x4403, 0x4403, 0x44b0, 0x4403, 0x44a8, 0x4403, 0x4403, 0x4403, 0x0000
};

// [D_08C48B6A] D_08C48B84 RLE Data
u8 D_08c48b84_rledata[] = {
	0x1, 0x0, 0xa5, 0x7, 0xb, 0x3, 0x8, 0xa, 0x4, 0x4, 0x3, 0x6, 0x5, 0xa, 0x4, 0x4, 0x3, 0x6, 0x3, 0xc, 0x3, 0x70, 0x0, 0x82, 0x0, 0x0
};

// [D_08C48B84] D_08C48B84 Graphics
struct CompressedGraphics D_08c48b84 = {
	/* Data */				{.raw = D_08c48b84_data},
	/* RLE Data */			D_08c48b84_rledata,
	/* RLE Size */			0x16,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

// // //  D_08C48CFC  // // //

// [D_08C48B94] D_08C48CFC Data
u16 D_08c48cfc_data[] = {
	0x0000, 0x40d3, 0x0000, 0x0000, 0x0000, 0x40be, 0x0000, 0x40bf, 0x40ba, 0x0000, 0x40b9, 0x40bc, 0x0000, 0x4003, 0x40df, 0x0000, 0x40bd, 0x40bb, 0x0000, 0x40e0, 0x0000, 0x40c5, 0x40c4, 0x0000, 0x40da, 0x40d9, 0x0000, 0x40c7, 0x4003, 0x40c6, 0x40de, 0x40dd, 0x40dc, 0x0000, 0x40c1, 0x40c0, 0x0000, 0x40db, 0x4003, 0x0000, 0x40c3, 0x40c2, 0x0000, 0x40e7, 0x40e6, 0x0000, 0x400d, 0x400e, 0x401e, 0x401d, 0x40e8, 0x4036, 0x40ea, 0x40e9, 0x4019, 0x4018, 0x401c, 0x4000, 0x401b, 0x4023, 0x4000, 0x4400, 0x40e2, 0x40e1, 0x40e3, 0x4400, 0x4400, 0x4419, 0x441a, 0x441f, 0x4022, 0x400c, 0x40e5, 0x40e4, 0x440e, 0x440d, 0x0000, 0x0000, 0x4009, 0x4003, 0x4003, 0x400a, 0x4003, 0x40d5, 0x4013, 0x4003, 0x4017, 0x4016, 0x4015, 0x4011, 0x4010, 0x400f, 0x4012, 0x4412, 0x440f, 0x4003, 0x40d5, 0x40d6, 0x442d, 0x442c, 0x4403, 0x4413, 0x4414, 0x4403, 0x442b, 0x40d4, 0x4403, 0x4409, 0x0000, 0x0000, 0x4026, 0x4003, 0x4003, 0x4029, 0x4003, 0x4003, 0x4027, 0x4003, 0x402e, 0x4003, 0x4003, 0x4025, 0x4003, 0x4003, 0x4024, 0x4424, 0x4403, 0x4403, 0x40d7, 0x4403, 0x4403, 0x4428, 0x4403, 0x4427, 0x4403, 0x4403, 0x4429, 0x4403, 0x4403, 0x4426, 0x0000, 0x0000, 0x4003, 0x4003, 0x4001, 0x40d8, 0x4003, 0x4004, 0x4003, 0x4003, 0x4005, 0x4003, 0x4008, 0x4007, 0x4407, 0x4408, 0x4403, 0x4405, 0x4403, 0x4403, 0x4406, 0x4403, 0x4402, 0x4401, 0x4403, 0x4403, 0x0000
};

// [D_08C48CE2] D_08C48CFC RLE Data
u8 D_08c48cfc_rledata[] = {
	0x1, 0x0, 0xa6, 0x6, 0xb, 0x3, 0x9, 0x9, 0x5, 0x2, 0x4, 0x6, 0x5, 0xa, 0x4, 0x3, 0x4, 0x6, 0x3, 0x65, 0x3, 0xf, 0x3, 0x5, 0x0, 0x82
};

// [D_08C48CFC] D_08C48CFC Graphics
struct CompressedGraphics D_08c48cfc = {
	/* Data */				{.raw = D_08c48cfc_data},
	/* RLE Data */			D_08c48cfc_rledata,
	/* RLE Size */			0x18,
	/* RLE Offset */		0x400,
	/* Double Compressed */	FALSE,
};

