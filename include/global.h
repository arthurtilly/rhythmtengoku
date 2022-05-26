#pragma once

#include <stdint.h>
#include <stdio.h>

typedef uint8_t   u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int8_t    s8;
typedef int16_t  s16;
typedef int32_t  s32;

#define TRUE 1
#define FALSE 0

#define ABS(x)  ((x) < 0 ? -(x) : (x))

#define sins(x) gSineTable[((u32)(x))&0x7FF]
#define coss(x) gSineTable[(((u32)(x))+0x200)&0x7FF]

#define sins2(x) D_08935fcc[((u32)(x))&0xFF]
#define coss2(x) D_089361cc[((u32)(x))&0xFF]

#define lerp(start, end, t, total) ((start) + fast_divsi3(((end) - (start)) * (t), (total)))

typedef s16 s8_8;
typedef s32 s24_8;
#define INT_TO_FIXED(x) ((x) << 8)
#define FIXED_TO_INT(x) ((x) >> 8)
#define FIXED_POINT_MUL(a, b) (((a) * (b)) >> 8)

#include "gba/gba.h"
#include "types.h"
