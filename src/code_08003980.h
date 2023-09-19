#pragma once

#include "global.h"
#include "graphics.h"
#include "data/data_08936b54.h"

// extern ? func_08003980(?);
// extern ? func_080039a8(?);
// extern ? func_080039d4(?);
// extern ? func_080039e8(?);
// extern ? func_08003a00(?);
// extern ? func_08003a18(?);
// extern ? func_08003a34(?);
// extern ? func_08003a40(?);
// extern ? func_08003a50(?);
// extern ? func_08003a6c(?);
// extern ? func_08003a78(?);
// extern ? func_08003a88(?);
extern s16 func_08003aa4(s16 value); // Absolute Value (16 bits)
extern s32 func_08003ab8(s32 value); // Absolute Value (32 bits)
extern void func_08003ac4(u16 *array, u16 min, u16 max);

/* COMPRESSED BG */
// extern ? func_08003b28(?); // Create ?
// extern ? func_08003b34(?); // Update ?
// extern ? func_08003bd4(?);
// extern ? func_08003c18(?);
// extern ? func_08003c1c(?);
// extern ? func_08003de0(?);
// extern ? func_08003dec(?);
// extern ? func_08003e00(?);
extern void func_08003e64(void); // Load RLE Decompression Function to RAM
// extern ? func_08003ea4(?);
// extern ? func_08003eb8(?);

/* BACKDROP */
extern void func_08003f28(void);
extern void func_08003f50(void);
extern void func_08003fb4(void);
extern void func_08003ff0(void);
extern void func_0800402c(u16 *source, u16 *target, u32 wordCount, u32 wordSize);
extern void func_08004058(void);
extern void func_08004070(u32 forceGradientGeneration);
extern void func_080041d0(u16 color1Index, u16 color2Index, u16 baseOffset);
extern void func_08004248(void);
extern void func_0800425c(u32 startIndex, u32 endIndex);
extern s32 func_08004270(void);
extern void func_080042a4(void);
// extern ? func_080042bc(?);
