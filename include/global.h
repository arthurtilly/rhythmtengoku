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

#define sins(x) gSineTable[((u32)(x))&0x7FF]
#define coss(x) gSineTable[(((u32)(x))+0x200)&0x7FF]

#define sins2(x) D_08935fcc[((u32)(x))&0xFF]
#define coss2(x) D_089361cc[((u32)(x))&0xFF]

#include "gba/gba.h"
#include "types.h"
