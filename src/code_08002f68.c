#include "code_08001360.h"
#include "code_08002f68.h"
#include "memory_heap.h"

asm(".include \"include/gba.inc\"");//Temporary


/* ARITHMETIC */


#define FUNC_SQRT_SIZE ((u32)&math_sqrt_rom_end - (u32)math_sqrt_rom)

extern s32 math_sqrt_rom(s32 value);
extern void *math_sqrt_rom_end;
extern s32 (*math_sqrt)(s32 value);

extern u8 D_0893640c[];
extern u16 D_0893644e[];

static s32 math_sqrt_code[120];


// Init. sqrt()
void init_math_sqrt(void) {
    DmaCopy32(3, math_sqrt_rom, math_sqrt_code, FUNC_SQRT_SIZE);
    math_sqrt = (void *)math_sqrt_code;
}


// ? (8 bits)
u8 func_08002f9c(s16 arg0, s16 arg1) {
    s32 r6;
    s32 sign;

    r6 = 0;
    sign = 1;

    if (arg0 < 0) {
        arg0 = -arg0;
        r6 = (64 * 2);
        sign = -sign;
    }

    if (arg1 < 0) {
        arg1 = -arg1;
        sign = -sign;
    }

    if (arg0 < arg1) {
        s32 swap;

        r6 += (64 * sign);
        sign = -sign;
        swap = arg0;
        arg0 = arg1;
        arg1 = swap;
    }

    return r6 + (sign * D_0893640c[64 * arg1 / arg0]);
}


// ? (16 bits)
u16 func_08003004(s16 arg0, s16 arg1) {
    s32 r6;
    s32 sign;

    r6 = 0;
    sign = 1;

    if (arg0 < 0) {
        arg0 = -arg0;
        r6 = (512 * 2);
        sign = -sign;
    }

    if (arg1 < 0) {
        arg1 = -arg1;
        sign = -sign;
    }

    if (arg0 < arg1) {
        s32 swap;

        r6 += (512 * sign);
        sign = -sign;
        swap = arg0;
        arg0 = arg1;
        arg1 = swap;
    }

    return r6 + (sign * D_0893644e[256 * arg1 / arg0]);
}


#include "asm/code_08001360/asm_08003070.s"

#include "asm/code_08001360/asm_0800318c.s"

#include "asm/code_08001360/asm_08003278.s"

#include "asm/code_08001360/asm_08003384.s"

#include "asm/code_08001360/asm_08003398.s"

#include "asm/code_08001360/asm_080033a0.s"

#include "asm/code_08001360/asm_0800351c.s"

#include "asm/code_08001360/asm_08003598.s"

#include "asm/code_08001360/asm_080035a0.s"

#include "asm/code_08001360/asm_080036c4.s"

#include "asm/code_08001360/asm_08003720.s"

#include "asm/code_08001360/asm_0800387c.s"

#include "asm/code_08001360/asm_080038b0.s"

#include "asm/code_08001360/asm_08003974.s"

#include "asm/code_08003980/asm_08003980.s"

#include "asm/code_08003980/asm_080039a8.s"

#include "asm/code_08003980/asm_080039d4.s"

#include "asm/code_08003980/asm_080039e8.s"

#include "asm/code_08003980/asm_08003a00.s"

#include "asm/code_08003980/asm_08003a18.s"

#include "asm/code_08003980/asm_08003a34.s"

#include "asm/code_08003980/asm_08003a40.s"

#include "asm/code_08003980/asm_08003a50.s"

#include "asm/code_08003980/asm_08003a6c.s"

#include "asm/code_08003980/asm_08003a78.s"

#include "asm/code_08003980/asm_08003a88.s"


// Get Absolute Value (16 bits)
s16 func_08003aa4(s16 value) {
    return (value < 0) ? -value : value;
}


// Get Absolute Value (32 bits)
s32 func_08003ab8(s32 value) {
    return (value < 0) ? -value : value;
}


// Generate Shuffled Array of Values from MIN to MAX
void func_08003ac4(u16 *array, u16 min, u16 max) {
    u16 range;
    s32 i;

    range = max - min;

    for (i = 0; i <= range; i++) {
        array[i] = min + i;
    }

    for (i = range; i > 0; i--) {
        s32 rand = agb_random(i + 1);
        s32 prev = array[i];

        array[i] = array[rand];
        array[rand] = prev;
    }
}
