#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"

// For readability. !TODO - CHANGE/REMOVE
#define gSneakySpiritsInfo D_030055d0->gameInfo.sneakySpirits

extern char D_08059f90[]; // Empty Default Text

extern u32 D_088a1010[]; // Animation: Rain?
extern u32 D_088a0ca0[]; // Animation: Bow?
extern u32 D_088a1158[]; // Animation: "bow_shoot"
extern u32 D_088a0df0[]; // Animation: "arrow_miss"

extern u32 D_088a0ca0[]; // Animation: "bow_draw"
extern u32 D_088a0d08[]; // Animation: "door_open"
extern u32 D_088a0cf8[]; // Animation: "door_back_wall"
extern u32 D_088a0f58[]; // Animation: "ghost"
extern u32 D_088a11a8[]; // Animation: "door_back_wall_2"
extern u32 D_088a0cd0[]; // Animation: "ghost_hit"
extern u32 D_088a1280[]; // Animation: "ghost_dash_tutorial"

extern const struct SequenceData s_ghost_rain_seqData; // Wind/Rain SFX
extern const struct SequenceData s_ghost_gosha_seqData; // Arrow Missed SFX

extern u32 D_089de6e0;    // GFX Null
extern u32 *D_089de7a4[]; // GFX Struct Index

extern u16 D_030053c0[];
extern u16 D_03005550;

extern u16  func_08001980(u32);
// extern void func_08002920(u32, u16);
extern u32 *func_08004b98(u32 *, char *, u32, u32);
// extern u32  func_080087d4(s32, s32, s32);
// extern u32 *func_0800c660(u32, u32);

extern void func_0804cebc(s32, s16, s8);
extern u32  func_0804d160(s32, u32 *, s8, s16, s16, u16, s8, s8, u16);
extern void func_0804d770(s32, s16, u16);
extern void func_0804d5d4(s32, s16, s16, s16);
extern void func_0804d8f8(s32, s16, u32 *, u32, u32, u32, u32);
extern void func_0804dcb8(s32, s16, u16);


/* SNEAKY SPIRITS */


#include "asm/scenes/sneaky_spirits/asm_0801ee98.s"

#include "asm/scenes/sneaky_spirits/asm_0801ef70.s"

#include "asm/scenes/sneaky_spirits/asm_0801f040.s"


// [func_0801f17c] SUB (Loop) Func_00 - ?
void func_0801f17c(void) {
    if (!gSneakySpiritsInfo.unk5) func_0801f040();
}


// [func_0801f194] SUB (ENGINE Func_06) - Slow Rain (Tutorial)
void func_0801f194(u32 arg0) {
    u32 i;
    s16 element;
    u32 temp;

    if (gSneakySpiritsInfo.unk5 == arg0) return;
    gSneakySpiritsInfo.unk5 = arg0;

    if (arg0 != 0) {
        for (i = 0; i < 30; i++) {
            element = gSneakySpiritsInfo.unk6[i];
            if (!gSneakySpiritsInfo.unk8B) {
                temp = 0x100 / (func_08001980(3) + 1);
            } else { temp = 0; }

            func_0804d8f8(D_03005380, element, D_088a1010, 0, 1, 0x7f, 0);
            func_0804d5d4(D_03005380, element, func_08001980(0xf0), func_08001980(0xa0));
            func_0804dcb8(D_03005380, element, temp);
            func_0804d770(D_03005380, element, 1);
        }

        for (i = 0; i < 20; i++) {
            element = gSneakySpiritsInfo.unk44[i];
            func_0804da20(D_03005380, element, 1);
        }

        func_0804da20(D_03005380, gSneakySpiritsInfo.unk6E, 1);
    }

    else {
        for (i = 0; i < 30; i++) {
            element = gSneakySpiritsInfo.unk6[i];

            func_0804d770(D_03005380, element, 0);
            func_0804dcb8(D_03005380, element, 0x100);
        }

        for (i = 0; i < 20; i++) {
            element = gSneakySpiritsInfo.unk44[i];
            func_0804da20(D_03005380, element, 0);
        }

        func_0804da20(D_03005380, gSneakySpiritsInfo.unk6E, 0);
    }
}


// [func_0801f30c] ENGINE Func_06 - Slow Rain (Tutorial)
void func_0801f30c(u32 arg0) {
    func_0801f194(arg0);
}


// [func_0801f318] SUB (ENGINE Func_07) - Freeze Slow Rain (Tutorial)
void func_0801f318(u32 arg0) {
    gSneakySpiritsInfo.unk8B = arg0;
}


// [func_0801f328] GFX_LOAD Func_02
void func_0801f328(void) {
    func_0800c604(0);
    func_08017578();
}


// [func_0801f338] GFX_LOAD Func_01
void func_0801f338(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089de7a4[gSneakySpiritsInfo.unk4], 0x2000);
    func_08005d38(data, func_0801f328, 0);
}


// [func_0801f378] GFX_LOAD Func_00
void func_0801f378(void) {
    u32 data;

    func_0800c604(0);
    data = func_080087b4(func_0800c3b8(), &D_089de6e0);
    func_08005d38(data, func_0801f338, 0);
}


// [func_0801f3a4] MAIN - Load
void func_0801f3a4(u32 ver) {
    u32 *textElement;

    // Standard game/graphic init operations.
    gSneakySpiritsInfo.unk4 = ver;
    func_0801f378();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);
    func_0800e0a0(2, 1, 0, 0, 0, 30, 2);

    // Initialise Tutorial Text variables(?)
    gSneakySpiritsInfo.unk0 = func_0800c660(0x380, 1);
    textElement = func_08004b98(gSneakySpiritsInfo.unk0, D_08059f90, 0, 0);
    gSneakySpiritsInfo.unk88 = func_0804d160(D_03005380, textElement, 0, 0x78, 0x20, 0, 0, 0, 0);
    func_0801ef70();

    // Initialise other entities.
    gSneakySpiritsInfo.unk70 = func_0804d160(D_03005380, D_088a0ca0, 0, 0xd2, 0x80, 0x4800, 0, 0, 0x8000);
    gSneakySpiritsInfo.unk72 = 0;

    gSneakySpiritsInfo.unk74 = func_0804d160(D_03005380, D_088a0d08, 0, 0x48, 0x30, 0x8800, 0, 0, 0);
    gSneakySpiritsInfo.unk76 = func_0804d160(D_03005380, D_088a0cf8, 0, 0x18, 0x2d, 0x879c, 0, 0, 0);
    gSneakySpiritsInfo.unk78 = func_0804d160(D_03005380, D_088a0f58, 0, 0x10, 0x50, 0x8792, 1, 0, 2);
    func_0804d5d4(D_03005380, gSneakySpiritsInfo.unk78, -0x64, -0x64);

    gSneakySpiritsInfo.unk7C = func_0804d160(D_03005380, D_088a11a8, 0, 0x58, 0x8c, 0x8791, 1, 0, 0);
    gSneakySpiritsInfo.unk7E = func_0804d160(D_03005380, D_088a0cd0, 0, 0x64, 0x4c, 0x87a6, 0, 0, 0x8000);
    gSneakySpiritsInfo.unk7A = 7;

    gSneakySpiritsInfo.unk8C = func_0804d160(D_03005380, D_088a1280, 0, 0x78, 0x5c, 0x8792, 1, 0x7f, 0x8000);
    gSneakySpiritsInfo.unk80 = 0x100;
    gSneakySpiritsInfo.unk84 = 0;

    func_08017338(0, 0);
    gSneakySpiritsInfo.unk8A = 1;
    if (ver == 1) {
        gSneakySpiritsInfo.unk8A = 0;
    }
}


// [func_0801f5bc] ENGINE Func_10 - Unknown (STUB, Unused)
void func_0801f5bc(void) {
}


// [func_0801f5c0] ENGINE Func_01 - Next Vertical Position
void func_0801f5c0(u32 arg0) {
    gSneakySpiritsInfo.unk80 = arg0;
    func_0800c4b0(1, func_0800c3a4(0xc), &D_03005550, D_03005550, arg0);
}


// [func_0801f5f4] ENGINE Func_02 - Bow Appear
void func_0801f5f4(void) {
    func_0800e25c(gSneakySpiritsInfo.unk70, 0x122, 0x80, 0xd2, 0x80, 0xe6);
    func_0804d770(D_03005380, gSneakySpiritsInfo.unk70, 1);
}


// [func_0801f638] ENGINE Func_03 - Draw Bow
void func_0801f638(void) {
    if (gSneakySpiritsInfo.unk72 == 0) {
        gSneakySpiritsInfo.unk72 = 1;
        func_08017338(1, 0);
        func_0804d8f8(D_03005380, gSneakySpiritsInfo.unk70, D_088a0ca0, 0, 1, 0x7f, 0);
    }
}


// [func_0801f684] ENGINE Func_04 - Play Wind/Rain SFX
void func_0801f684(u32 arg0) {
    if (arg0 == 0) {
        if (gSneakySpiritsInfo.unk84) {
            func_08002920(gSneakySpiritsInfo.unk84, 0);
            func_08002828(gSneakySpiritsInfo.unk84);
            gSneakySpiritsInfo.unk84 = arg0;
        }
    } else {
        gSneakySpiritsInfo.unk84 = func_08002634(&s_ghost_rain_seqData);
    }
}


// [func_0801f6d0] SUB Loop Func_01 - ?
void func_0801f6d0(void) {
    s32 temp1;
    u32 temp;
    if (gSneakySpiritsInfo.unk84) {
        temp1 = (0x100 - D_030053c0[0xc8]);
        temp = func_080087d4(temp1 / 2, 0, 0x80) + 0x40;
        func_08002920(gSneakySpiritsInfo.unk84, temp);
    }
}


// [func_0801f71c] ENGINE Func_05 - Display Text (Tutorial)
void func_0801f71c(char *arg0) {
    u32 *temp;

    func_08007b04(gSneakySpiritsInfo.unk0, gSneakySpiritsInfo.unk88);
    temp = func_08004b98(gSneakySpiritsInfo.unk0, arg0, 1, 0xc);
    func_0804d8f8(D_03005380, gSneakySpiritsInfo.unk88, temp, 0, 1, 0, 0);
}


// [func_0801f76c] ENGINE Func_08 - Display Dashing Sneaky Spirit (Tutorial)
void func_0801f76c(u32 arg0) {
    func_0804d770(D_03005380, gSneakySpiritsInfo.unk8C, arg0);
}


// [func_0801f794] ENGINE Func_09 - Animate Dashing Sneaky Spirit (Tutorial)
void func_0801f794(u32 arg0) {
    func_0804cebc(D_03005380, gSneakySpiritsInfo.unk8C, arg0);
}


// [func_0801f7bc] MAIN - Loop
void func_0801f7bc(void) {
    func_0801f17c();
    func_0801f6d0();
}


// [func_0801f7cc] MAIN - Unload
void func_0801f7cc(void) {
    func_0800be88(0x100);
    func_0800c0c4(0);
    func_0800c0f8(0, 0);
}


// [func_0801f7e8] CUE - Spawn
void func_0801f7e8(u32 arg0, struct struct_080179f4_sub1 *arg1, u32 arg2) {
    arg1->unk26 = arg2;
}


// [func_0801f7f0] CUE - Behaviour
u32 func_0801f7f0(u32 arg0, struct struct_080179f4_sub1 *arg1, u32 arg2) {
    if (arg2 > func_0800c3a4(0x30)) {
        return 1; }
    else {
        return 0; }
}


// [func_0801f80c] CUE - Despawn (STUB)
void func_0801f80c(u32 arg0, struct struct_080179f4_sub1 *arg1, u32 arg2) {
}


#include "asm/scenes/sneaky_spirits/asm_0801f810.s"

#include "asm/scenes/sneaky_spirits/asm_0801f8d0.s"

#include "asm/scenes/sneaky_spirits/asm_0801fa4c.s"

#include "asm/scenes/sneaky_spirits/asm_0801fb14.s"


// [func_0801fbb0] MAIN - Input Event
void func_0801fbb0(void) {
    if (gSneakySpiritsInfo.unk72) {
        gSneakySpiritsInfo.unk72 = 0;
        func_08017338(0, 0);
        func_0804d8f8(D_03005380, gSneakySpiritsInfo.unk70, D_088a1158, 0, 1, 0x7f, 0);
        func_0804d160(D_03005380, D_088a0df0, 0, 0x46, 0x3a, 0x8792, 1, 0x7f, 3);
        func_08002634(&s_ghost_gosha_seqData);
    }
}


// [func_0801fc3c] GRAPHICAL Func_00 - Unknown (STUB)
void func_0801fc3c(void) {
}


// [func_0801fc40] GRAPHICAL Func_01 - Unknown (STUB)
void func_0801fc40(void) {
}
