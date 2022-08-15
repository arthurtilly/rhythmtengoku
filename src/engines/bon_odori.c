#include "engines/bon_odori.h"

#include "src/code_08001360.h"
#include "src/code_08003980.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/code_08016e18.h"
#include "src/lib_0804c870.h"
asm(".include \"include/gba.inc\""); // Temporary

// For readability.
#define gBonOdoriInfo D_030055d0->gameInfo.bonOdori


/* THE BON ODORI */


// [func_080206a0] Get OBJ Animation
const struct Animation *func_080206a0(u32 anim) {
    return D_089dec38[anim][gBonOdoriInfo.version];
}


// [func_080206c0] ?
void func_080206c0(void) {
    const struct Animation *anim;
    u32 i;
    s32 xPos = 0x28;
    s16 temp = 0x78;
    u16 temp1 = 0x4800;
    
    for (i = 0; i < 4; i++) {
        
        anim = func_0802075c(0, i);
        gBonOdoriInfo.unk44[i] = func_0804d160(D_03005380, anim, 0x7f, xPos, temp, temp1, 1, 0x7f, 0);;
        gBonOdoriInfo.unk4C[i] = 0;
        xPos += 0x35;
    }

    gBonOdoriInfo.unk54 = 0;
    gBonOdoriInfo.unk55 = BON_ODORI_DONPAN_ANIM_00;
    gBonOdoriInfo.unk862 = 1;
}


// [func_0802075c] Get Donpan Animation
const struct Animation *func_0802075c(u32 animation, u32 donpan) {
    return func_080206a0(D_089dece0[animation][donpan]);
}


// [func_08020778] ?
void func_08020778(u32 animation, u32 donpan) {
    const struct Animation *anim = func_0802075c(animation, donpan);
    func_0804d8f8(D_03005380, gBonOdoriInfo.unk44[donpan], anim, 0, 1, 0x7f, 0);
    gBonOdoriInfo.unk4C[donpan] = func_0800c3a4(D_089ded00[animation]);
}


// [func_080207d0] ENGINE Func_0B - Set Animation (CPU Donpans)
void func_080207d0(u32 arg0) {
    u32 i;
    for (i = 0; i < 3; i++) {
        func_08020778(arg0, i);
    }
}


// [func_080207ec] ENGINE Func_0C - Set Animation (Player)
void func_080207ec(u32 arg0) {
    func_08020778(arg0, 3);
}


// [func_080207f8] ENGINE Func_0D - Set Animation (All Donpans)
void func_080207f8(u32 arg0) {
    func_080207d0(arg0);
    func_080207ec(arg0);
}


// [func_0802080c] ENGINE Func_0E - ?
void func_0802080c(u32 arg0) {
    u32 i;
    for (i = 0; i < 3; i++) {
        gBonOdoriInfo.unk4C[i] = func_0800c3a4(arg0);
    }
    
}


// [func_08020834] ?
void func_08020834(void) {
    u32 i;
    for (i = 0; i < 4; i++) {
        if (gBonOdoriInfo.unk4C[i]) {
            gBonOdoriInfo.unk4C[i] -= 1;
        }

    }
}


// [func_0802085c] GFX_INIT Func_02
void func_0802085c(void) {
    func_0800c604(0);
    func_08017578();
    D_03004b10.bgPalette[12][2] = 0x7C00;
}


// [func_08020880] GFX_INIT Func_01
void func_08020880(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089deec4[gBonOdoriInfo.version], 0x2000);
    func_08005d38(data, func_0802085c, 0);
}


// [func_080208c0] GFX_INIT Func_00
void func_080208c0(void) {
    u32 data;
    func_0800c604(0);
    data = func_080087b4(func_0800c3b8(), &D_089ded10);
    func_08005d38(data, func_08020880, 0);
}


// [func_080208ec] MAIN - Init
void func_080208ec(u32 ver) {
    u32 i;

    gBonOdoriInfo.version = ver;
    func_080208c0();
    func_0800e0ec();
    func_0800e114();
    func_0800e0a0(0, 1, 0, -0x40, 2, 0x18, 0xC000);
    func_0800e0a0(1, 1, 0, 0, 0, 0x1d, 1);
    func_0800e0a0(2, 1, 0, 0, 0, 0x1e, 1);
    gBonOdoriInfo.unk4 = func_0800c660(0x340, 2);
    D_03004b10.unk46 = 0x311e;
    D_03004b10.unk4C = 0x1041;
    D_03004b10.unk4E = 0x1010;
    
    for (i = 0; i < 4; i++) {
        gBonOdoriInfo.unk8[i].unk0 |= -1;
    }
    
    gBonOdoriInfo.unk3C = 0;
    gBonOdoriInfo.unk3A = 0;
    gBonOdoriInfo.yaguraSprite = func_0804d160(D_03005380, func_080206a0(BON_ODORI_ANIM_31), 0x7f, 120, 72, 0x8800, 1, 0x7f, 0);
    gBonOdoriInfo.unk40 = 0;
    gBonOdoriInfo.unk42 = FALSE;
    func_080206c0();
    gBonOdoriInfo.objPalDark = D_089deed4[gBonOdoriInfo.version];
    gBonOdoriInfo.bgPalDark = D_089deecc[gBonOdoriInfo.version];
    func_08001ec4(0xc, 7, gBonOdoriInfo.objPalDark, 0, gBonOdoriInfo.objPalDarkBuf[0]);
    func_08001ec4(0x14, 7, gBonOdoriInfo.bgPalDark, 0, gBonOdoriInfo.bgPalDarkBuf[0]);
    func_08017338(1, 0);
    gBonOdoriInfo.unk864 = 0;
}


// [func_08020a48] ENGINE Func_11 - STUB
void func_08020a48(void) {
}


// [func_08020a4c] ?
#include "asm/scenes/bon_odori/asm_08020a4c.s" // Decomp attempt at https://decomp.me/scratch/lhu93


// [func_08020be4] ENGINE Func_00 - ?
void func_08020be4(u8 arg0) {
    gBonOdoriInfo.unk38 = arg0;
}


// [func_08020bf4] ENGINE Func_01 - Show Text (Middle)
void func_08020bf4(s32 arg0) {
    func_08020a4c(arg0, gBonOdoriInfo.unk38, 0);
}


// [func_08020c0c] ENGINE Func_02 - Show Text (Left)
void func_08020c0c(s32 arg0) {
    func_08020a4c(arg0, gBonOdoriInfo.unk38, 1);
}


// [func_08020c24] ENGINE Func_03 - Show Text (Right)
void func_08020c24(s32 arg0) {
    func_08020a4c(arg0, gBonOdoriInfo.unk38, 2);
}


// [func_08020c3c] ENGINE Func_04 - ?
void func_08020c3c(s32 arg0) {
    gBonOdoriInfo.unk3C = -arg0;
}


// [func_08020c4c] ?
void func_08020c4c(u32 arg0) {
    struct BonOdoriInfo_sub* temp;
    func_0800c604(0);
    temp = &gBonOdoriInfo.unk8[arg0];
    func_0804d770(D_03005380, temp->unk2, 0);
    func_0804d8c4(D_03005380, temp->unk0, 0xa);
}


// [func_08020c8c] ENGINE Func_05 - Highlight Text
void func_08020c8c(u32 arg0) {
    s32 temp0;
    s32 temp1;
    s32 temp2;
    s32 temp3;
    struct BonOdoriInfo_sub* substruct = &gBonOdoriInfo.unk8[gBonOdoriInfo.unk38];
    if (substruct->unk0 >= 0) {
        func_0804d770(D_03005380, substruct->unk2, 1);

        temp0 = -substruct->unk8;
        temp1 = temp0 - substruct->unkA;
        
        temp2 = gBonOdoriInfo.unk3C - 0x18;
        temp2 -= gBonOdoriInfo.unk38 * 0x18;
        D_03004b10.BG0VOFS = temp2;
    
        temp3 = func_0800c4b0(1, func_0800c3a4(arg0), &D_03004b10.BG0HOFS, temp0, temp1);
        func_08005d38(temp3, func_08020c4c, gBonOdoriInfo.unk38);
    }
}


// [func_08020d20] ENGINE Func_06 - Lighten Screen (Gradual)
void func_08020d20(u32 arg0) {
    func_08001fe0(func_0800c3b8(), func_0800c3a4(arg0), 7, gBonOdoriInfo.bgPalDarkBuf[0], gBonOdoriInfo.bgPalDark, D_03004b10.bgPalette[0]);
    func_08001fe0(func_0800c3b8(), func_0800c3a4(arg0), 7, gBonOdoriInfo.objPalDarkBuf[0], gBonOdoriInfo.objPalDark, D_03004b10.objPalette[0]);
}


// [func_08020da0] ENGINE Func_07 - Darken Screen (Gradual)
void func_08020da0(u32 arg0) {
    func_08001fe0(func_0800c3b8(), func_0800c3a4(arg0), 7, gBonOdoriInfo.bgPalDark, gBonOdoriInfo.bgPalDarkBuf[0], D_03004b10.bgPalette[0]);
    func_08001fe0(func_0800c3b8(), func_0800c3a4(arg0), 7, gBonOdoriInfo.objPalDark, gBonOdoriInfo.objPalDarkBuf[0], D_03004b10.objPalette[0]);
}


// [func_08020e1c] ENGINE Func_08 - ?
void func_08020e1c(void) {
    func_080018e0(0, &D_03004b10.bgPalette, 0xe0, 0x10, 0x200);
    func_080018e0(0, &D_03004b10.objPalette, 0xe0, 0x10, 0x200);
}


// [func_08020e50] ENGINE Func_09 - Lighten Screen (Instant)
void func_08020e50(void) {
    func_0800186c(gBonOdoriInfo.bgPalDark, D_03004b10.bgPalette[0], 0xe0, 0x10, 0x200);
    func_0800186c(gBonOdoriInfo.objPalDark, D_03004b10.objPalette[0], 0xe0, 0x10, 0x200);
}


// [func_08020e90] ENGINE Func_0A - Darken Screen (Instant)
void func_08020e90(void) {
    func_0800186c(&gBonOdoriInfo.bgPalDarkBuf[0], D_03004b10.bgPalette[0], 0xe0, 0x10, 0x200);
    func_0800186c(&gBonOdoriInfo.objPalDarkBuf[0], D_03004b10.objPalette[0], 0xe0, 0x10, 0x200);
}


// [func_08020ed4] ENGINE Func_0F - Test Player Inputs
void func_08020ed4(void) {
    gBonOdoriInfo.unk860 = 0;
}


// [func_08020ee8] ENGINE Func_10 - React to Player Inputs
void func_08020ee8(void) {
    u8 temp0;
    u32 temp1 = gBonOdoriInfo.unk860;
    struct struct_030055d0 *temp2;
    
    if (gBonOdoriInfo.unk860 != 0) {
        gBonOdoriInfo.unk54 = 3;
        gBonOdoriInfo.unk55 = BON_ODORI_DONPAN_ANIM_04;
        func_0800bc40();
    } else {
        gBonOdoriInfo.unk54 = 3;
        
        temp2 = D_030055d0;
        if (func_08001980(2) != 0) {
            temp0 = BON_ODORI_DONPAN_ANIM_05;
        } else {
            temp0 = BON_ODORI_DONPAN_ANIM_06;
        }
        temp2->gameInfo.bonOdori.unk55 = temp0;
        
        gBonOdoriInfo.unk40 = temp1;
        gBonOdoriInfo.unk42 = FALSE;
    }
}


// [func_08020f48] MAIN - Update
void func_08020f48(void) {
    if (gBonOdoriInfo.unk864 != 0) {
        gBonOdoriInfo.unk864 -= 1;
        if (gBonOdoriInfo.unk864 == 0) {
            func_08017338(1, 0);
        }
    }
    func_08020834();
    if (gBonOdoriInfo.unk40 != 0) {
        gBonOdoriInfo.unk40 -= 1;
    }
}


// [func_08020f8c] MAIN - Close
void func_08020f8c(void) {
    func_0800e128();
}


// [func_08020f98] CUE - Spawn
void func_08020f98(u32 arg0, struct struct_080179f4_sub *arg1, u32 arg2) {
    arg1->unk0.u8[0] = arg2;
    gBonOdoriInfo.unk862 = arg2;
}


// [func_08020fb0] CUE - Update
u8 func_08020fb0(u32 arg0, struct struct_080179f4_sub *arg1, u32 arg2) {
    u32 temp = func_0800c3a4(0x30);
    if (arg2 > temp) {
        return 1;
    } else {
        return 0;
    }
}


// [func_08020fcc] CUE - Despawn
void func_08020fcc(u32 arg0, struct struct_080179f4_sub *arg1) {
}


// [func_08020fd0] CUE - Hit
void func_08020fd0(u32 arg0, struct struct_080179f4_sub *arg1) {
    func_080207ec(arg1->unk0.u8[0]);
    func_08002634(&s_HC_seqData);
}


// [func_08020fe8] CUE - Barely
void func_08020fe8(u32 arg0, struct struct_080179f4_sub *arg1) {
    func_080207ec(arg1->unk0.u8[0]);
    func_08002634(&s_tebyoushi_pati_seqData);
    gBonOdoriInfo.unk42 = TRUE;
}


// [func_0802100c] CUE - Miss
void func_0802100c(u32 arg0, struct struct_080179f4_sub *arg1) {
    gBonOdoriInfo.unk860 += 1;
    func_0800bc40();
    gBonOdoriInfo.unk42 = TRUE;
}


// [func_08021034] MAIN - Input Event
void func_08021034(void) {
    gBonOdoriInfo.unk864 = func_0800c3a4(6);
    func_08017338(0, 0);
    func_080207ec(gBonOdoriInfo.unk862);
    gBonOdoriInfo.unk860 += 1;
    func_08002634(&s_HC_seqData);
}


// [func_08021084] COMMON Func_00 - Beat Animation
void func_08021084(void) {
    u32 i;
    const struct Animation *anim;

    for (i = 0; i < 4; i++) {
        if (gBonOdoriInfo.unk4C[i] != 0) {
            continue;
        }
        anim = func_0802075c(BON_ODORI_DONPAN_ANIM_00, i);
        if (i < 3 && gBonOdoriInfo.unk54 != 0)  {
            anim = func_0802075c(gBonOdoriInfo.unk55, i);
        }
        func_0804d8f8(D_03005380, gBonOdoriInfo.unk44[i], anim, 0, 1, 0x7f, 0);
    }
    if (gBonOdoriInfo.unk40 == 0) {
        if (gBonOdoriInfo.unk42) {
            func_0804d8f8(D_03005380, gBonOdoriInfo.yaguraSprite, func_080206a0(BON_ODORI_ANIM_33), 0, 1, 0x7f, 0);
            gBonOdoriInfo.unk40 = func_0800c3a4(0x24);
            gBonOdoriInfo.unk42 = FALSE;
        } else {
            func_0804d8f8(D_03005380, gBonOdoriInfo.yaguraSprite, func_080206a0(BON_ODORI_ANIM_31), 0, 1, 0x7f, 0);
        }
    }
    if (gBonOdoriInfo.unk54 != 0) {
        gBonOdoriInfo.unk54 -= 1;
    }
}


// [func_08021188] COMMON Func_01 - STUB
void func_08021188(void) {
}


// [func_0802118c] COMMON Func_02 - STUB
void func_0802118c(void) {
}
