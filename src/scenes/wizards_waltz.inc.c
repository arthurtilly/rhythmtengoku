extern u32 D_08932bec[]; // Animation: "wizard_fly"
extern u32 D_08932c14[]; // Animation: "wizard_magic"
extern u32 D_08932c8c[]; // Animation: "sparkle"
extern u32 D_08932cbc[]; // Animation: "sprout_eaten"
extern u32 D_08932d2c[]; // Animation: "sprout_grow"
extern u32 D_08932e3c[]; // Animation: "girl"
extern u32 D_08932e64[]; // Animation: "girl_happy"
extern u32 D_08932ea4[]; // Animation: "girl_sad"
extern u32 D_08932edc[]; // Animation: "shadow"

extern const struct SequenceData s_witch_furu_seqData; // Sound for inputting without a cue.

extern u32 D_089e9f10; // GFX-related Null
extern u32 D_089e9f14[]; // GFX Array

extern s16 D_08936cac[]; // Sine Table
extern s16 D_03004afc; // Input Queue(?)

/* WIZARD'S WALTZ */

// [func_080449a4] GFX_LOAD Func_02
void func_080449a4(void) {
    func_0800c604(0);
    func_08017578();
}

// [func_080449b4] GFX_LOAD Func_01
void func_080449b4(void) {
    u32 temp;

    func_0800c604(0);
    temp = func_08002ee0((u16) func_0800c3b8(), &D_089e9f14, 0x2000);
    func_08005d38(temp, &func_080449a4, 0);
}

// [func_080449e4] GFX_LOAD Func_00
void func_080449e4(void) {
    func_0800c604(0);
    func_08005d38(func_080087b4((u16) func_0800c3b8(), &D_089e9f10), &func_080449b4, 0);
}

// [func_08044a10] MAIN - Load
void func_08044a10(u32 arg0) {
    u8 i;

    D_030055d0->unk0 = arg0;
    func_080449e4();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    D_030055d0->gameInfo.wizardsWaltz.unk1AC = -0xa0;
    D_030055d0->gameInfo.wizardsWaltz.unk1A4 = 0;
    D_030055d0->gameInfo.wizardsWaltz.unk1B0 = 0;
    D_030055d0->gameInfo.wizardsWaltz.unk1B1 = 0;
    D_030055d0->gameInfo.wizardsWaltz.unk14 = -0x28;
    D_030055d0->gameInfo.wizardsWaltz.unk8 = 0;

    D_030055d0->gameInfo.wizardsWaltz.unk4 = func_0800fa6c(D_08932bec, 0, 0x78, (s16)D_030055d0->gameInfo.wizardsWaltz.unk14, 0x4001, 0x80, 0, 1, 0, 0, 1);
    D_030055d0->gameInfo.wizardsWaltz.unk24 = func_0800fa6c(D_08932edc, 0, 0x78, 0x50, 0x4082, 0x80, 0, 0, 0, 0, 1);
    D_030055d0->gameInfo.wizardsWaltz.unk188 = 0;
    D_030055d0->gameInfo.wizardsWaltz.unk184 = func_0800fa6c(D_08932e3c, 0, 0x78, 0x50, 0x4040, 0x80, 0, 1, 0, 0, 1);

    for (i = 0; i < 10; i++) {
        u32 temp2;
        D_030055d0->gameInfo.wizardsWaltz.unk44[i].unk4 = 0;
        temp2 = func_0800fa6c(D_08932c8c, 0, 0, 0, 0, 0x80, 0, 1, 0, 0, 0);
        D_030055d0->gameInfo.wizardsWaltz.unk44[i].unk0 = temp2;
        func_08010040(temp2, 0);
    }

    func_08017338(1, 0);
    D_030055d0->gameInfo.wizardsWaltz.unk1B2 = 0;
    D_030055d0->gameInfo.wizardsWaltz.unk1A8 = func_0800c3a4(0x90);
}

// [func_08044b80] ENGINE Func_00 - Set Rotation Interval
void func_08044b80(u32 arg0) {
    D_030055d0->gameInfo.wizardsWaltz.unk1A4 = 0;
    D_030055d0->gameInfo.wizardsWaltz.unk1A8 = func_0800c3a4(arg0);
}

// !TODO
#include "asm/scenes/wizards_waltz/asm_08044ba8.s"
// [func_08044ba8] SUB - Unknown

// [func_08044c04] MAIN - Loop
void func_08044c04(void) {
    u32 temp0;
    u32 temp2;
    u8 i;

    // INPUT EVENT (A BUTTON)
    if (D_03004afc & 1) {
        // Set wizard_state flag.
        D_030055d0->gameInfo.wizardsWaltz.unk8 = 1;
        // Play animation: "wizard_magic"
        func_08010064(D_030055d0->gameInfo.wizardsWaltz.unk4, D_08932c14, 0, 1, 0x7f, 0);
        // Play sound.
        func_08002634(&s_witch_furu_seqData);
    }

    // If (input_pressed flag is set) AND (..unk4 > 6).
    if (D_030055d0->gameInfo.wizardsWaltz.unk8 == 1) {
        if ((s8) func_08010198(D_030055d0->gameInfo.wizardsWaltz.unk4) > 6) {
            // Clear wizard_state flag.
            D_030055d0->gameInfo.wizardsWaltz.unk8 = 0;
            // Resume default animation: "wizard_fly"
            func_08010064(D_030055d0->gameInfo.wizardsWaltz.unk4, D_08932bec, 0, 1, 0, 0);
        }
    }

    temp0 = (D_030055d0->gameInfo.wizardsWaltz.unk1A4 << 11) / D_030055d0->gameInfo.wizardsWaltz.unk1A8;
    D_030055d0->gameInfo.wizardsWaltz.unkC = temp0;
    D_030055d0->gameInfo.wizardsWaltz.unk10 = (D_08936cac[temp0 & 0x7ff] * 7) / 16;
    D_030055d0->gameInfo.wizardsWaltz.unk18 = (D_08936cac[(temp0 + 0x200) & 0x7ff] / 2) + 0x40;

    if (((temp0 & 0x7ff) - 0x200) > 0x380) {
        func_0800ff44(D_030055d0->gameInfo.wizardsWaltz.unk4, 1);
    } else {
        func_0800ff44(D_030055d0->gameInfo.wizardsWaltz.unk4, 0);
    }

    func_08044ba8(D_030055d0->gameInfo.wizardsWaltz.unk4,
                    D_030055d0->gameInfo.wizardsWaltz.unk10,
                    D_030055d0->gameInfo.wizardsWaltz.unk14,
                    D_030055d0->gameInfo.wizardsWaltz.unk18);

    func_08044ba8(D_030055d0->gameInfo.wizardsWaltz.unk24,
                    D_030055d0->gameInfo.wizardsWaltz.unk10,
                    0x20,
                    D_030055d0->gameInfo.wizardsWaltz.unk18);

    func_08044ba8(D_030055d0->gameInfo.wizardsWaltz.unk184, 0, 0x20, 0);

    temp2 = D_030055d0->gameInfo.wizardsWaltz.unk1A4 & 7;
    if (!temp2) {
        D_030055d0->gameInfo.wizardsWaltz.unk44[D_030055d0->gameInfo.wizardsWaltz.unk1B0].unk4 = 1;
        D_030055d0->gameInfo.wizardsWaltz.unk1B0 += 1;

        if (D_030055d0->gameInfo.wizardsWaltz.unk1B0 > 9) {
            D_030055d0->gameInfo.wizardsWaltz.unk1B0 = temp2;
        }
    }

    for (i = 0; i < 10; i++) {
        if (D_030055d0->gameInfo.wizardsWaltz.unk44[i].unk4 != 0) {
            if (D_030055d0->gameInfo.wizardsWaltz.unk44[i].unk4 == 1) {
                D_030055d0->gameInfo.wizardsWaltz.unk44[i].unk8 = D_030055d0->gameInfo.wizardsWaltz.unkC - 0x200;
                D_030055d0->gameInfo.wizardsWaltz.unk44[i].unkC = D_030055d0->gameInfo.wizardsWaltz.unk10;
                D_030055d0->gameInfo.wizardsWaltz.unk44[i].unk10 = D_030055d0->gameInfo.wizardsWaltz.unk14 + 4;
                D_030055d0->gameInfo.wizardsWaltz.unk44[i].unk14 = D_030055d0->gameInfo.wizardsWaltz.unk18;
                D_030055d0->gameInfo.wizardsWaltz.unk44[i].unk4 = 2;
                D_030055d0->gameInfo.wizardsWaltz.unk44[i].unk18 = 0;
                func_08010040(D_030055d0->gameInfo.wizardsWaltz.unk44[i].unk0, 1);
            } else {
                D_030055d0->gameInfo.wizardsWaltz.unk44[i].unk10 = (s32) ((D_030055d0->gameInfo.wizardsWaltz.unk44[i].unk10 << 8) + 0x100) >> 8;
                D_030055d0->gameInfo.wizardsWaltz.unk44[i].unk18 += 1;
                if (D_030055d0->gameInfo.wizardsWaltz.unk44[i].unk18 > 0xf) {
                    D_030055d0->gameInfo.wizardsWaltz.unk44[i].unk4 = 0;
                    func_08010040(D_030055d0->gameInfo.wizardsWaltz.unk44[i].unk0, 0);
                }
            }
            func_08044ba8(D_030055d0->gameInfo.wizardsWaltz.unk44[i].unk0,
                    D_030055d0->gameInfo.wizardsWaltz.unk44[i].unkC,
                    D_030055d0->gameInfo.wizardsWaltz.unk44[i].unk10, D_030055d0->gameInfo.wizardsWaltz.unk44[i].unk14);
        }
    }
    D_030055d0->gameInfo.wizardsWaltz.unk1A4 += 1;
}

// [func_08044e60] ENGINE Func_01 - Set Tutorial Flag
void func_08044e60(u32 arg0) {
    D_030055d0->gameInfo.wizardsWaltz.unk1B2 = arg0;
}

// [func_08044e74] MAIN - Unload(?)
void func_08044e74(void) { /* Stub Function */ }

// !TODO
#include "asm/scenes/wizards_waltz/asm_08044e78.s"
// [func_08044e78] CUE Behaviour - Spawn

// [func_08044f94] CUE Behaviour - Unknown
u32 func_08044f94(u32 arg0, u32 arg1, u32 arg2) {
    if (arg2 > (D_030055d0->gameInfo.wizardsWaltz.unk1A8 + func_0800c3a4(0x30))) {
        return 1; }
    else {
        return 0; }
}

// [func_08044fc0] CUE Behaviour - Despawn
void func_08044fc0(u32 arg0, u32 *arg1) {
    func_0800fc70(arg1[0]);
}

// [func_08044fcc] CUE Event - Hit
void func_08044fcc(u32 arg0, struct struct_080179f4_sub *arg1) {
    u32 flag1B2; // tutorial_flag

    // Play animation: "sprout_grow"
    func_08010064(arg1->unk0, D_08932d2c, 0, 1, 0x7f, 0);

    // Cycle through frames of "girl_happy" if tutorial_flag is not set.
    flag1B2 = D_030055d0->gameInfo.wizardsWaltz.unk1B2;
    if (!flag1B2) {
        D_030055d0->gameInfo.wizardsWaltz.unk188 = 1;

        // Increment frame for "girl_happy" if not at the maximum of 5.
        if (D_030055d0->gameInfo.wizardsWaltz.unk1B1 <= 5) {
            D_030055d0->gameInfo.wizardsWaltz.unk1B1 += 1;
        }

        // Play animation: "girl_happy"
        func_08010064(D_030055d0->gameInfo.wizardsWaltz.unk184, D_08932e64, D_030055d0->gameInfo.wizardsWaltz.unk1B1, 0, flag1B2, flag1B2);
    }
}

// [func_0804503c] CUE Event - Barely
void func_0804503c(u32 arg0, struct struct_080179f4_sub *arg1) {
    u32 temp; // Unknown parameter.
    u32 flag1B2; // tutorial_flag.

    // Set unknown parameter.
    temp = ((u32) ~func_08018054()) >> 0x1f;
    if (arg1->unk6 > 0x200) {
        temp ^= 1;
    }

    // Play animation: "sprout_eaten"
    func_08010064(arg1->unk0, D_08932cbc, 0, 1, 0x7f, 0);
    // Unknown function.
    func_0800ff44(arg1->unk0, temp);

    // Cycle through frames of "girl_sad" if tutorial_flag is not set.
    flag1B2 = D_030055d0->gameInfo.wizardsWaltz.unk1B2;
    if (!flag1B2) {
        D_030055d0->gameInfo.wizardsWaltz.unk188 = 2;

        // Decrement frame for "girl_sad" if not at the minimum of 0.
        if (D_030055d0->gameInfo.wizardsWaltz.unk1B1) {
            D_030055d0->gameInfo.wizardsWaltz.unk1B1 -= 1;
        }

        // Play animation: "girl_sad"
        func_08010064(D_030055d0->gameInfo.wizardsWaltz.unk184, D_08932ea4, D_030055d0->gameInfo.wizardsWaltz.unk1B1, 0, flag1B2, flag1B2);
    }

    // Unknown function - likely related to score.
    func_0800bc40();
}

// [func_080450d0] CUE Event - Miss
void func_080450d0(u32 arg0, struct struct_080179f4_sub *arg1) {
    // Unknown function - likely related to score.
    func_0800bc40();
}

// [func_080450dc] MAIN - Unknown
void func_080450dc(void) { /* Stub Function */ }

// [func_080450e0] OTHER - Unknown Func_00
void func_080450e0(void) { /* Stub Function */ }

// [func_080450e4] OTHER - Unknown Func_01
void func_080450e4(void) { /* Stub Function */ }

// [func_080450e8] OTHER - Unknown Func_02
void func_080450e8(u32 arg0) {
    if (arg0) {
        func_08017448(1);
        func_08017458(arg0);
    } else {
        func_08017448(0);
    }
}