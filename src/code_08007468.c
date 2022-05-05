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
    temp->xPos = arg0->startX << 8;
    temp->yPos = arg0->startY << 8;
    temp->xVel = arg0->xVel;
    temp->yVel = arg0->yVel;
    func_0804d5d4(D_03005380, arg0->id, arg0->startX, arg0->startY);
    return temp;
}

// D_08936ba4 function 2
u32 func_08007544(struct unk_struct_080074ec *arg0) {
    arg0->xPos += arg0->xVel;
    arg0->yPos += arg0->yVel;
    func_0804d5d4(D_03005380, arg0->id, arg0->xPos >> 8, arg0->yPos >> 8);
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
    temp->xOffset = (arg0->startX - arg0->destX) << 8;
    temp->yOffset = (arg0->startY - arg0->destY) << 8;
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
    
    newXOffset = (newXOffset * arg0->multiplier) >> 8;
    newYOffset = (newYOffset * arg0->multiplier) >> 8;

    if (newXOffset < 0x100) newXOffset = 0;
    if (newYOffset < 0x100) newYOffset = 0;

    if (arg0->xOffset < 0) newXOffset = -newXOffset;
    if (arg0->yOffset < 0) newYOffset = -newYOffset;

    arg0->xOffset = newXOffset;
    arg0->yOffset = newYOffset;

    func_0804d5d4(D_03005380, arg0->id, (newXOffset >> 8) + arg0->destXPos, (newYOffset >> 8) + arg0->destYPos);

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
        xPos = arg0->startXPos + func_08007b80(arg0->dx * distTravelled, totalDist);
        yPos = arg0->startYPos + func_08007b80(arg0->dy * distTravelled, totalDist);
    }

    func_0804d5d4(D_03005380, arg0->id, xPos, yPos);
    return reachedEnd;
}

// D_08936bd4 function 1
struct unk_struct_08007788 *func_08007788(struct unk_struct_08007788_init *arg0) {
    struct unk_struct_08007788 *temp;

    if (arg0->id < 0) {
        return (void *)-1;
    }

    temp = mem_heap_alloc(sizeof(struct unk_struct_08007788));
    temp->id = arg0->id;
    temp->unk2 = arg0->startX;
    temp->unk4 = arg0->startY;
    temp->unk6 = arg0->destX - arg0->startX;
    temp->unk8 = arg0->destY - arg0->startY;
    temp->unkA = arg0->unkA;
    temp->unkC = 0;
    func_0804d5d4(D_03005380, arg0->id, arg0->startX, arg0->startY);
    return temp;
}

// D_08936bd4 function 2
#include "asm/code_08007468/asm_080077e8.s"

// D_08936be4 function 2
#include "asm/code_08007468/asm_08007854.s"

// D_08936be4 function 1
#include "asm/code_08007468/asm_080078ec.s"

// D_08936bf4 function 2
#include "asm/code_08007468/asm_0800793c.s"

// D_08936bf4 function 1
#include "asm/code_08007468/asm_080079bc.s"

// D_08936c04 function 2
#include "asm/code_08007468/asm_08007a14.s"

// D_08936c04 function 1
#include "asm/code_08007468/asm_08007aa0.s"

#include "asm/code_08007468/asm_08007b04.s"

#include "asm/code_08007468/asm_08007b2c.s"

#include "asm/code_08007468/asm_08007b4c.s"

#include "asm/code_08007468/asm_08007b80.s"

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

#include "asm/code_08007468/asm_08008420.s"

#include "asm/code_08007468/asm_08008464.s"

#include "asm/code_08007468/asm_0800852c.s"

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

#include "asm/code_08007468/asm_0800873c.s"

#include "asm/code_08007468/asm_08008758.s"

#include "asm/code_08007468/asm_080087b4.s"

s32 func_080087d4(s32 arg0, s32 arg1, s32 arg2) {
    if (arg0 < arg1) {
        return arg1;
    }
    if (arg0 > arg2) {
        return arg2;
    }
    return arg0;
}

#include "asm/code_08007468/asm_080087e8.s"

#include "asm/code_08007468/asm_08008910.s"

#include "asm/code_08007468/asm_08008938.s"

#include "asm/code_08007468/asm_08008968.s"

#include "asm/code_08007468/asm_08008990.s"

#include "asm/code_08007468/asm_080089c0.s"

#include "asm/code_08007468/asm_08008a70.s"

#include "asm/code_08007468/asm_08008ab8.s"

void func_08008b00(u32 unused_arg0, u32 unused_arg1, s16 arg2, s32 arg3, s32 sp48,
    s16 sp4c, u32 sp50, u32 sp54, u16 sp58,
    struct unk_struct_08008b00 *sp5c, u32 sp60, u32 sp64) {

    s32 temp_sp0, temp_sp4, temp_r9, temp_r8;
    s32 ret_r5, ret_sp8, temp_r7;
    s32 ret_spc, ret_sp10, ret_sp14;
    s32 temp_sp18, temp_sp1c, temp_sp20;
    s32 i;
    u16 temp_8000 = 0x8000;

    temp_sp0 = sp64 ? sins(sp4c) : sins2(sp4c);
    temp_sp4 = sp64 ? coss(sp4c) : coss2(sp4c);

    temp_r9 = sp64 ? sins(-arg2) : sins2(-arg2);
    temp_r8 = sp64 ? coss(-arg2) : coss2(-arg2);

    ret_r5 = func_08007b80(0xa000, sp58);
    ret_sp14 = func_08007b80(0xa000, sp58);
    ret_sp8 = func_08007b80(ret_r5 * 240, 0xa0);

    temp_r7 = (-ret_r5 << 8) / 2;

    ret_spc = func_08007b80(ret_r5 << 8, 0xa0);
    temp_r7 += func_08007b80(ret_r5 * sp54, 0xa0);
    arg3 += func_08007b80(ret_r5 * sp50, 0xa0);
    ret_sp10 = func_08007b80(ret_r5 << 8, 0xa0);  

    temp_sp18 = ret_sp14 * temp_sp0;

    temp_sp1c = arg3 - temp_8000;
    temp_sp20 = sp48 - temp_8000;

    for (i = 0; i < 0xA0; i++) {
        s32 temp_r1;
        s32 temp_r5_2 = FALSE;
        if (temp_sp0 != 0) {
            temp_r1 = ((temp_r7 * temp_sp4) >> 8) - temp_sp18;
            if (temp_r1 == 0) {
                temp_r5_2 = TRUE;
            }
        }
        if ((temp_sp0 == 0) || temp_r5_2) {
            sp5c->unk8 = -1;
            sp5c->unkC = -1;
            sp5c->unk6 = 0;
            sp5c->unk4 = 0;
            sp5c->unk2 = 0;
            sp5c->unk0 = 0;
        } else {
            s32 m_r4, m_r3, m_r2;
            temp_r1 = func_08007b80(ret_sp14 << 0x10, temp_r1);
            m_r4 = (-temp_r1 * temp_sp0) >> 8;

            m_r3 = temp_sp1c - (ret_sp8 >> 1) * m_r4;
            m_r2 = temp_sp20 + ((temp_r1 * temp_r7) >> 8);

            sp5c->unk8 = ((temp_r8 * m_r3 - temp_r9 * m_r2) >> 8) + temp_8000;
            sp5c->unkC = ((temp_r9 * m_r3 + temp_r8 * m_r2) >> 8) + temp_8000;
            m_r4 *= ret_sp10;
            sp5c->unk0 = (temp_r8 * m_r4) >> 0x10;
            sp5c->unk2 = 0;
            sp5c->unk4 = (temp_r9 * m_r4) >> 0x10;
            sp5c->unk6 = 0;
        }
        temp_r7 += ret_spc;
        sp5c += sp60;
    }
}

void func_08008d44(u32 arg0, u32 arg1, s16 arg2, s32 arg3, s32 arg4, s16 arg5, u32 arg6, u32 arg7, u16 arg8, struct unk_struct_08008b00 *arg9, u32 arg10) {
    func_08008b00(arg0, arg1, arg2, arg3, arg4, arg5 + 0xFE00, arg6, arg7, arg8, arg9, arg10, 0);
}

void func_08008d88(u32 arg0, u32 arg1, s16 arg2, s32 arg3, s32 arg4, s16 arg5, u32 arg6, u32 arg7, u16 arg8, struct unk_struct_08008b00 *arg9, u32 arg10) {
    func_08008b00(arg0, arg1, arg2, arg3, arg4, arg5 + 0xFE00, arg6, arg7, arg8, arg9, arg10, 1);
}
