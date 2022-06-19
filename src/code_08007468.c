#include "global.h"
#include "code_08007468.h"
#include "lib_0804c870.h"

// Can be better split

asm(".include \"include/gba.inc\"");//Temporary

static s32 D_03000eb0[136]; // unknown type
static s32 D_030010d0[9]; // unknown type


void func_08007468(s16 arg0, s8 arg1) {
    func_0804dc10(D_03005380, arg0, arg1, func_08002520(arg1));
}


void func_08007498(s8 arg0, s16 arg1, s16 arg2) {
    func_0800232c(arg0, arg1, arg1, -arg2, 1);
}


void func_080074c4(s8 arg0, s16 arg1, s16 arg2, s16 arg3) {
    func_0800232c(arg0, arg1, arg2, -arg3, 1);
}

// Indefinite linear movement
// D_08936ba4 function 1
struct unk_struct_080074ec *func_080074ec(struct unk_struct_080074ec_init *arg0) {
    struct unk_struct_080074ec *temp;

    if (arg0->id < 0) {
        return (void *)-1;
    }

    temp = mem_heap_alloc(sizeof(struct unk_struct_080074ec));
    temp->id = arg0->id;
    temp->xPos = INT_TO_FIXED(arg0->startX);
    temp->yPos = INT_TO_FIXED(arg0->startY);
    temp->xVel = arg0->xVel;
    temp->yVel = arg0->yVel;

    func_0804d5d4(D_03005380, arg0->id, arg0->startX, arg0->startY);
    return temp;
}

// D_08936ba4 function 2
u32 func_08007544(struct unk_struct_080074ec *arg0) {
    arg0->xPos += arg0->xVel;
    arg0->yPos += arg0->yVel;

    func_0804d5d4(D_03005380, arg0->id, FIXED_TO_INT(arg0->xPos), FIXED_TO_INT(arg0->yPos));
    return FALSE;
}

// Approach a point asymptotically (slow down)
// D_08936bb4 function 1
struct unk_struct_0800757c *func_0800757c(struct unk_struct_0800757c_init *arg0) {
    struct unk_struct_0800757c *temp;

    if (arg0->id < 0) {
        return (void *)-1;
    }

    temp = mem_heap_alloc(sizeof(struct unk_struct_0800757c));
    temp->id = arg0->id;
    temp->destXPos = arg0->destX;
    temp->destYPos = arg0->destY;
    temp->xOffset = INT_TO_FIXED(arg0->startX - arg0->destX);
    temp->yOffset = INT_TO_FIXED(arg0->startY - arg0->destY);
    temp->multiplier = arg0->multiplier;

    func_0804d5d4(D_03005380, arg0->id, arg0->startX, arg0->startY);
    return temp;
}

// D_08936bb4 function 2
u32 func_080075e4(struct unk_struct_0800757c *arg0) {
    s32 newXOffset = arg0->xOffset;
    s32 newYOffset = arg0->yOffset;

    newXOffset = ABS(newXOffset);
    newYOffset = ABS(newYOffset);
    
    newXOffset = FIXED_POINT_MUL(newXOffset, arg0->multiplier);
    newYOffset = FIXED_POINT_MUL(newYOffset, arg0->multiplier);

    if (newXOffset < INT_TO_FIXED(1)) newXOffset = 0;
    if (newYOffset < INT_TO_FIXED(1)) newYOffset = 0;

    if (arg0->xOffset < 0) newXOffset = -newXOffset;
    if (arg0->yOffset < 0) newYOffset = -newYOffset;

    arg0->xOffset = newXOffset;
    arg0->yOffset = newYOffset;

    func_0804d5d4(D_03005380, arg0->id, FIXED_TO_INT(newXOffset) + arg0->destXPos, FIXED_TO_INT(newYOffset) + arg0->destYPos);

    if ((newXOffset | newYOffset) == 0) {
       return TRUE;
    }
    return FALSE;
}

// Accelerate towards a point
// D_08936bc4 function 1
struct unk_struct_0800765c *func_0800765c(struct unk_struct_0800765c_init *arg0) {
    struct unk_struct_0800765c *temp;

    if (arg0->id < 0) {
        return (void *)-1;
    }

    temp = mem_heap_alloc(sizeof(struct unk_struct_0800765c));
    temp->id = arg0->id;
    temp->startXPos = arg0->startX;
    temp->startYPos = arg0->startY;
    temp->dx = arg0->destX - arg0->startX;
    temp->dy = arg0->destY - arg0->startY;
    temp->distanceTravelled = 0;
    temp->totalDistance = D_03004ae4(temp->dx * temp->dx + temp->dy * temp->dy) << 8;
    temp->vel = arg0->vel;
    temp->accel = arg0->accel;

    func_0804d5d4(D_03005380, arg0->id, arg0->startX, arg0->startY);
    return temp;
}

// D_08936bc4 function 2
u32 func_080076ec(struct unk_struct_0800765c *arg0) {
    u32 reachedEnd;
    u16 xPos, yPos;
    s32 distTravelled, totalDist;

    arg0->distanceTravelled += arg0->vel;
    arg0->vel += arg0->accel;

    if (arg0->vel < 0 && arg0->accel < 0) {
        return TRUE;
    }

    distTravelled = arg0->distanceTravelled;
    totalDist = arg0->totalDistance;
    reachedEnd = FALSE;

    if (distTravelled >= totalDist) {
        distTravelled = totalDist;
        reachedEnd = TRUE;
    }

    if (reachedEnd) {
        xPos = arg0->startXPos + arg0->dx;
        yPos = arg0->startYPos + arg0->dy;
    } else {
        xPos = arg0->startXPos + lerp(0, arg0->dx, distTravelled, totalDist);
        yPos = arg0->startYPos + lerp(0, arg0->dy, distTravelled, totalDist);
    }

    func_0804d5d4(D_03005380, arg0->id, xPos, yPos);
    return reachedEnd;
}

// Travel linearly to a point over a specified number of frames
// D_08936bd4 function 1
struct unk_struct_08007788 *func_08007788(struct unk_struct_08007788_init *arg0) {
    struct unk_struct_08007788 *temp;

    if (arg0->id < 0) {
        return (void *)-1;
    }

    temp = mem_heap_alloc(sizeof(struct unk_struct_08007788));
    temp->id = arg0->id;
    temp->startXPos = arg0->startX;
    temp->startYPos = arg0->startY;
    temp->dx = arg0->destX - arg0->startX;
    temp->dy = arg0->destY - arg0->startY;
    temp->totalFrames = arg0->totalFrames;
    temp->framesPassed = 0;

    func_0804d5d4(D_03005380, arg0->id, arg0->startX, arg0->startY);
    return temp;
}

// D_08936bd4 function 2
u32 func_080077e8(struct unk_struct_08007788 *arg0) {
    s32 totalFrames = arg0->totalFrames;
    
    u32 reachedEnd = (++arg0->framesPassed >= totalFrames);
    
    s32 framesPassed = arg0->framesPassed;
    
    u16 xPos = arg0->startXPos + lerp(0, arg0->dx, framesPassed, totalFrames);
    u16 yPos = arg0->startYPos + lerp(0, arg0->dy, framesPassed, totalFrames);

    func_0804d5d4(D_03005380, arg0->id, xPos, yPos);
    return reachedEnd;
}

// Sinusoidal movement
// D_08936be4 function 2
u32 func_08007854(struct unk_struct_080078ec *arg0) {
    u8 wavePos = lerp(arg0->waveStart, arg0->waveEnd, arg0->framesPassed, arg0->totalFrames);

    s32 offset = arg0->baseOffset + FIXED_TO_INT(arg0->amplitude * sins2(wavePos));
    
    u16 xPos = FIXED_TO_INT(offset * coss2(arg0->angle)) + arg0->baseXPos;
    u16 yPos = FIXED_TO_INT(offset * sins2(arg0->angle)) + arg0->baseYPos;

    func_0804d5d4(D_03005380, arg0->id, xPos, yPos);

    return (++arg0->framesPassed > arg0->totalFrames);
}

// D_08936be4 function 1
struct unk_struct_080078ec *func_080078ec(struct unk_struct_080078ec_init *arg0) {
    struct unk_struct_080078ec *temp;

    if (arg0->id < 0) {
        return (void *)-1;
    }

    temp = mem_heap_alloc(sizeof(struct unk_struct_080078ec));
    temp->id = arg0->id;
    temp->baseXPos = arg0->baseX;
    temp->baseYPos = arg0->baseY;
    temp->baseOffset = arg0->baseOffset;
    temp->amplitude = arg0->amplitude;
    temp->waveStart = arg0->waveStart;
    temp->waveEnd = arg0->waveEnd;
    temp->framesPassed = 0;
    temp->totalFrames = arg0->totalFrames;
    temp->angle = arg0->angle;

    func_08007854(temp);
    return temp;
}

// D_08936bf4 function 2
u32 func_0800793c(struct unk_struct_080079bc *arg0) {
    s32 temp_r5 = lerp(arg0->unkA, arg0->unkC, arg0->framesPassed, arg0->totalFrames);

    u16 xPos = arg0->startXPos + FIXED_TO_INT(arg0->dx * func_080019a4(temp_r5));
    u16 yPos = arg0->startYPos + FIXED_TO_INT(arg0->dy * func_080019a4(temp_r5));

    func_0804d5d4(D_03005380, arg0->id, xPos, yPos);

    return (++arg0->framesPassed > arg0->totalFrames);
}

// D_08936bf4 function 1
struct unk_struct_080079bc *func_080079bc(struct unk_struct_080079bc_init *arg0) {
    struct unk_struct_080079bc *temp;

    if (arg0->id < 0) {
        return (void *)-1;
    }

    temp = mem_heap_alloc(sizeof(struct unk_struct_080079bc));
    temp->id = arg0->id;
    temp->startXPos = arg0->startX;
    temp->startYPos = arg0->startY;
    temp->dx = arg0->destX - arg0->startX;
    temp->dy = arg0->destY - arg0->startY;
    temp->unkA = arg0->unkA * 16;
    temp->unkC = arg0->unkC * 16;
    temp->framesPassed = 0;
    temp->totalFrames = arg0->totalFrames;

    func_0800793c(temp);
    return temp;
}

// Linear movement with a vertical negative sine wave offset
// D_08936c04 function 2
u32 func_08007a14(struct unk_struct_08007aa0 *arg0) {
    s32 totalFrames = arg0->totalFrames;
    
    u32 reachedEnd = (++arg0->framesPassed >= totalFrames);
    
    s32 framesPassed = arg0->framesPassed;
    // Lerp from 0 to pi in terms of sine angle
    s32 temp_r8 = lerp(0, 0x800, framesPassed, totalFrames);
    
    u16 xPos = arg0->startXPos + lerp(0, arg0->dx, framesPassed, totalFrames);
    u16 yPos = arg0->startYPos + lerp(0, arg0->dy, framesPassed, totalFrames) - FIXED_TO_INT(func_080019a4(temp_r8) * arg0->amplitude);

    func_0804d5d4(D_03005380, arg0->id, xPos, yPos);
    return reachedEnd;
}

// D_08936c04 function 1
struct unk_struct_08007aa0 *func_08007aa0(struct unk_struct_08007aa0_init *arg0) {
    struct unk_struct_08007aa0 *temp;

    if (arg0->id < 0) {
        return (void *)-1;
    }

    temp = mem_heap_alloc(sizeof(struct unk_struct_08007aa0));
    temp->id = arg0->id;
    temp->startXPos = arg0->startX;
    temp->startYPos = arg0->startY;
    temp->dx = arg0->destX - arg0->startX;
    temp->dy = arg0->destY - arg0->startY;
    temp->amplitude = arg0->amplitude;
    temp->framesPassed = 0;
    temp->totalFrames = arg0->totalFrames;

    func_0804d5d4(D_03005380, temp->id, temp->startXPos, temp->startYPos);
    return temp;
}

#include "asm/code_08007468/asm_08007b04.s"

#include "asm/code_08007468/asm_08007b2c.s"

#include "asm/code_08007468/asm_08007b4c.s"

extern u32 (*fast_udivsi3)(u32 dividend, u32 divisor);

// Divides two signed integers using a fast algorithm contained in IWRAM.
// Much quicker than the versions contained in libc and libagbsyscall.
s32 fast_divsi3(s32 dividend, s32 divisor) {
    u32 quotient;
    u32 isNegative = 0;

    if (dividend & 0x80000000) {
        dividend = -dividend;
        isNegative = 1;
    }

    if (divisor & 0x80000000) {
        divisor = -divisor;
        isNegative ^= 1;
    }

    quotient = fast_udivsi3(dividend, divisor);
    return isNegative ? -quotient : quotient;
}

// D_08936c14 function 1
#include "asm/code_08007468/asm_08007bb8.s"

// D_08936c14 function 2
#include "asm/code_08007468/asm_08007c30.s"

// D_08936c24 function 1
#include "asm/code_08007468/asm_08007ca8.s"

// D_08936c24 function 2
#include "asm/code_08007468/asm_08007d20.s"

// D_08936c34 function 1
#include "asm/code_08007468/asm_08007d88.s"

// D_08936c34 function 2
#include "asm/code_08007468/asm_08007e00.s"

#include "asm/code_08007468/asm_08007e68.s"

// D_08936c44 function 1
#include "asm/code_08007468/asm_08007e7c.s"

// D_08936c44 function 2
#include "asm/code_08007468/asm_08007ef8.s"

// D_08936c54 function 1
#include "asm/code_08007468/asm_08007f58.s"

// D_08936c54 function 2
#include "asm/code_08007468/asm_08007fdc.s"

#include "asm/code_08007468/asm_08008054.s"

#include "asm/code_08007468/asm_08008090.s"

#include "asm/code_08007468/asm_08008184.s"

u8 *func_080081a8(u8 *arg1, u8 *arg2) {
    u8 *temp = arg1;
    while (*arg1 != 0) {
        arg1++;
    }
    while (*arg2 != 0) {
        *arg1 = *arg2;
        arg2++;
        arg1++;
    }
    *arg1 = 0;
    return temp;
}

#include "asm/code_08007468/asm_080081d4.s"

#include "asm/code_08007468/asm_0800820c.s"

#include "asm/code_08007468/asm_08008248.s"

#include "asm/code_08007468/asm_08008294.s"

#include "asm/code_08007468/asm_080082cc.s"

#include "asm/code_08007468/asm_08008328.s"

#include "asm/code_08007468/asm_08008370.s"

// D_08936c7c function 1
#include "asm/code_08007468/asm_08008420.s"

// D_08936c7c function 2
#include "asm/code_08007468/asm_08008464.s"

// D_08936c8c function 1
#include "asm/code_08007468/asm_0800852c.s"

// D_08936c8c function 2
#include "asm/code_08007468/asm_08008548.s"

#include "asm/code_08007468/asm_0800856c.s"

#include "asm/code_08007468/asm_08008594.s"

#include "asm/code_08007468/asm_080085e4.s"

#include "asm/code_08007468/asm_08008608.s"

#include "asm/code_08007468/asm_0800861c.s"

#include "asm/code_08007468/asm_08008628.s"

#include "asm/code_08007468/asm_08008658.s"

#include "asm/code_08007468/asm_0800869c.s"

#include "asm/code_08007468/asm_080086c4.s"

#include "asm/code_08007468/asm_08008720.s"

// D_08936c9c function 1
#include "asm/code_08007468/asm_0800873c.s"

// D_08936c9c function 2
#include "asm/code_08007468/asm_08008758.s"

#include "asm/code_08007468/asm_080087b4.s"

// [func_080087d4] MATH UTIL - Clamp Signed Integer
s32 func_080087d4(s32 var, s32 min, s32 max) {
    if (var < min) {
        return min;
    }
    if (var > max) {
        return max;
    }
    return var;
}

#include "asm/code_08007468/asm_080087e8.s"

#include "asm/code_08007468/asm_08008910.s"

#include "asm/code_08007468/asm_08008938.s"

#include "asm/code_08007468/asm_08008968.s"

#include "asm/code_08007468/asm_08008990.s"

#include "asm/code_08007468/asm_080089c0.s"

#include "asm/code_08007468/asm_08008a70.s"

#include "asm/code_08007468/asm_08008ab8.s"

void func_08008b00(u32 unused_arg0, u32 unused_arg1, s16 arg2, s24_8 arg3, s24_8 arg4,
    s16 arg5, s24_8 arg6, s24_8 arg7, u16 arg8,
    struct unk_struct_08008b00 *arg9, u32 arg10, u32 arg11) {

    s24_8 temp_sp0, temp_sp4, temp_r9, temp_r8;
    s32 ret_r5, ret_sp8;
    s24_8 temp_r7, ret_spc, ret_sp10;
    s32 ret_sp14;
    s24_8 temp_sp18, temp_sp1c, temp_sp20;
    s32 i;
    s24_8 temp_8000 = INT_TO_FIXED(128);

    temp_sp0 = arg11 ? sins(arg5) : sins2(arg5);
    temp_sp4 = arg11 ? coss(arg5) : coss2(arg5);

    temp_r9 = arg11 ? sins(-arg2) : sins2(-arg2);
    temp_r8 = arg11 ? coss(-arg2) : coss2(-arg2);

    ret_r5 = fast_divsi3(160 * 256, arg8);
    ret_sp14 = fast_divsi3(160 * 256, arg8);
    ret_sp8 = fast_divsi3(ret_r5 * 240, 160);

    temp_r7 = INT_TO_FIXED(-ret_r5) >> 1;

    ret_spc = fast_divsi3(INT_TO_FIXED(ret_r5), 160);
    temp_r7 += fast_divsi3(ret_r5 * arg7, 160);
    arg3 += fast_divsi3(ret_r5 * arg6, 160);
    ret_sp10 = fast_divsi3(INT_TO_FIXED(ret_r5), 160);

    temp_sp18 = ret_sp14 * temp_sp0;

    temp_sp1c = arg3 - temp_8000;
    temp_sp20 = arg4 - temp_8000;

    for (i = 0; i < 160; i++) {
        s24_8 temp_r1;
        s32 temp_r5_2 = FALSE;
        if (temp_sp0 != 0) {
            temp_r1 = FIXED_POINT_MUL(temp_r7, temp_sp4) - temp_sp18;
            if (temp_r1 == 0) {
                temp_r5_2 = TRUE;
            }
        }
        if ((temp_sp0 == 0) || temp_r5_2) {
            arg9->unk8 = -1;
            arg9->unkC = -1;
            arg9->unk6 = 0;
            arg9->unk4 = 0;
            arg9->unk2 = 0;
            arg9->unk0 = 0;
        } else {
            s24_8 m_r4, m_r3, m_r2;
            temp_r1 = fast_divsi3(INT_TO_FIXED(ret_sp14) << 8, temp_r1); // fixed point division
            m_r4 = FIXED_POINT_MUL(-temp_r1, temp_sp0);

            m_r3 = temp_sp1c - (ret_sp8 >> 1) * m_r4;
            m_r2 = temp_sp20 + FIXED_POINT_MUL(temp_r1, temp_r7);

            arg9->unk8 = ((temp_r8 * m_r3 - temp_r9 * m_r2) >> 8) + temp_8000; // doesn't work with the macros
            arg9->unkC = ((temp_r9 * m_r3 + temp_r8 * m_r2) >> 8) + temp_8000;
            
            m_r4 *= ret_sp10;
            arg9->unk0 = FIXED_POINT_MUL(temp_r8, m_r4) >> 0x8;
            arg9->unk2 = 0;
            arg9->unk4 = FIXED_POINT_MUL(temp_r9, m_r4) >> 0x8;
            arg9->unk6 = 0;
        }
        temp_r7 += ret_spc;
        arg9 += arg10;
    }
}

void func_08008d44(u32 unused_arg0, u32 unused_arg1, s16 arg2, s24_8 arg3, s24_8 arg4, s16 arg5, s24_8 arg6, s24_8 arg7, u16 arg8, struct unk_struct_08008b00 *arg9, u32 arg10) {
    func_08008b00(unused_arg0, unused_arg1, arg2, arg3, arg4, arg5 - 0x200, arg6, arg7, arg8, arg9, arg10, 0);
}

void func_08008d88(u32 unused_arg0, u32 unused_arg1, s16 arg2, s24_8 arg3, s24_8 arg4, s16 arg5, s24_8 arg6, s24_8 arg7, u16 arg8, struct unk_struct_08008b00 *arg9, u32 arg10) {
    func_08008b00(unused_arg0, unused_arg1, arg2, arg3, arg4, arg5 - 0x200, arg6, arg7, arg8, arg9, arg10, 1);
}
