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

#define sins(x) gSineTable[(x)%0x800]
#define coss(x) gSineTable[((x)+0x200)%0x800]

#include "gba/gba.h"
#include "types.h"
