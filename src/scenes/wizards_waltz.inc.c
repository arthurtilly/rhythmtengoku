#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"

// For readability. !TODO - CHANGE/REMOVE
#define gWizardsWaltzInfo D_030055d0->gameInfo.wizardsWaltz

// OAM Animations:
extern u32 D_08932bec[]; // Animation: "wizard_fly"
extern u32 D_08932c14[]; // Animation: "wizard_magic"
extern u32 D_08932c8c[]; // Animation: "sparkle"
extern u32 D_08932cbc[]; // Animation: "sprout_eaten"
extern u32 D_08932d2c[]; // Animation: "sprout_grow"
extern u32 D_08932e3c[]; // Animation: "girl"
extern u32 D_08932e64[]; // Animation: "girl_happy"
extern u32 D_08932ea4[]; // Animation: "girl_sad"
extern u32 D_08932edc[]; // Animation: "shadow"

// Sound Effects:
extern const struct SequenceData s_witch_furu_seqData; // Sound for inputting without a cue.

// Additional Data - Wizard's Waltz:
extern u32 D_089e9f10; // GFX-related Null
extern u32 D_089e9f14[]; // GFX Array

// Additional Data - Global:
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
    temp = func_08002ee0(func_0800c3b8(), &D_089e9f14, 0x2000);
    func_08005d38(temp, func_080449a4, 0);
}


// [func_080449e4] GFX_LOAD Func_00
void func_080449e4(void) {
    u32 temp;

    func_0800c604(0);
    temp = func_080087b4(func_0800c3b8(), &D_089e9f10);
    func_08005d38(temp, func_080449b4, 0);
}


// [func_08044a10] MAIN - Load
void func_08044a10(u32 arg0) {
    u8 i;

    // Load graphical assets and other basic functionality.
    D_030055d0->unk0 = arg0;
    func_080449e4();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    // Initialise variables.
    gWizardsWaltzInfo.globalScale = -0xa0;
    gWizardsWaltzInfo.cyclePosition = 0;
    gWizardsWaltzInfo.unk1B0 = 0;
    gWizardsWaltzInfo.flowerCount = 0;
    gWizardsWaltzInfo.unk14 = -0x28;

    // Create character entities.
    gWizardsWaltzInfo.wizardState = 0;
    gWizardsWaltzInfo.wizardEntity = func_0800fa6c(D_08932bec, 0, 0x78, gWizardsWaltzInfo.unk14, 0x4001, 0x80, 0, 1, 0, 0, 1);
    gWizardsWaltzInfo.shadowEntity = func_0800fa6c(D_08932edc, 0, 0x78, 0x50, 0x4082, 0x80, 0, 0, 0, 0, 1);
    gWizardsWaltzInfo.girlState = 0;
    gWizardsWaltzInfo.girlEntity = func_0800fa6c(D_08932e3c, 0, 0x78, 0x50, 0x4040, 0x80, 0, 1, 0, 0, 1);

    // Create sparkle entities.
    for (i = 0; i < 10; i++) {
        u32 entity;
        gWizardsWaltzInfo.sparkle[i].state = 0;
        entity = func_0800fa6c(D_08932c8c, 0, 0, 0, 0, 0x80, 0, 1, 0, 0, 0);
        gWizardsWaltzInfo.sparkle[i].entity = entity;
        func_08010040(entity, 0);
    }

    // Set default state.
    func_08017338(1, 0);
    gWizardsWaltzInfo.isTutorial = 0;
    gWizardsWaltzInfo.cycleInterval = func_0800c3a4(0x90);
}


// [func_08044b80] ENGINE Func_00 - Set Rotation Interval
void func_08044b80(u32 arg0) {
    gWizardsWaltzInfo.cyclePosition = 0;
    gWizardsWaltzInfo.cycleInterval = func_0800c3a4(arg0);
}


// [func_08044ba8] SUB Func_00 - Update Entity Position
void func_08044ba8(u32 arg0, s32 arg1, s32 arg2, u32 arg3) {
    s32 temp;
    u32 temp1 = arg3 - gWizardsWaltzInfo.globalScale;

    temp = func_08007b80(0xa000, temp1);

    arg1 = (arg1 * temp) >> 8;
    arg2 = (arg2 * temp) >> 8;

    func_0800fddc(arg0, (s16) (arg1 + 0x78), (s16) (arg2 + 0x50));
    func_0800fe60(arg0, (s16) temp);
}


// [func_08044c04] MAIN - Loop
void func_08044c04(void) {
    u32 temp1;
    u32 temp2;
    u8 i;

    // INPUT EVENT (A BUTTON)
    if (D_03004afc & 1) {
        gWizardsWaltzInfo.wizardState = 1;
        // Play animation: "wizard_magic"
        func_08010064(gWizardsWaltzInfo.wizardEntity, D_08932c14, 0, 1, 0x7f, 0);
        // Play sound.
        func_08002634(&s_witch_furu_seqData);
    }

    // If (wizardState flag is set) and animation frame data is exhausted (>6):
    if (gWizardsWaltzInfo.wizardState == 1) {
        if ((s8) func_08010198(gWizardsWaltzInfo.wizardEntity) > 6) {
            gWizardsWaltzInfo.wizardState = 0;
            // Resume default animation: "wizard_fly"
            func_08010064(gWizardsWaltzInfo.wizardEntity, D_08932bec, 0, 1, 0, 0);
        }
    }

    // Update position elements.
    temp1 = (gWizardsWaltzInfo.cyclePosition << 11) / gWizardsWaltzInfo.cycleInterval;
    gWizardsWaltzInfo.unkC = temp1;
    gWizardsWaltzInfo.unk10 = (sins(temp1) * 7) / 16;
    gWizardsWaltzInfo.unk18 = (coss(temp1) / 2) + 0x40;

    // Determine which direction the wizard should be facing.
    if (((temp1 & 0x7ff) - 0x200) > 0x380) {
        func_0800ff44(gWizardsWaltzInfo.wizardEntity, 1); // Flip Horizontal (facing right)
    } else {
        func_0800ff44(gWizardsWaltzInfo.wizardEntity, 0); // Normal (facing left)
    }

    // Update entity positions.
    func_08044ba8(gWizardsWaltzInfo.wizardEntity, gWizardsWaltzInfo.unk10, gWizardsWaltzInfo.unk14, gWizardsWaltzInfo.unk18);
    func_08044ba8(gWizardsWaltzInfo.shadowEntity, gWizardsWaltzInfo.unk10, 0x20, gWizardsWaltzInfo.unk18);
    func_08044ba8(gWizardsWaltzInfo.girlEntity, 0, 0x20, 0);

    // Update sparkles.
    temp2 = gWizardsWaltzInfo.cyclePosition & 7;
    if (!temp2) {
        gWizardsWaltzInfo.sparkle[gWizardsWaltzInfo.unk1B0].state = 1;
        gWizardsWaltzInfo.unk1B0 += 1;

        if (gWizardsWaltzInfo.unk1B0 > 9) {
            gWizardsWaltzInfo.unk1B0 = temp2;
        }
    }

    // Update sparkles (continued).
    for (i = 0; i < 10; i++) {
        if (gWizardsWaltzInfo.sparkle[i].state != 0) {
            if (gWizardsWaltzInfo.sparkle[i].state == 1) {
                gWizardsWaltzInfo.sparkle[i].unk8 = gWizardsWaltzInfo.unkC - 0x200;
                gWizardsWaltzInfo.sparkle[i].unkC = gWizardsWaltzInfo.unk10;
                gWizardsWaltzInfo.sparkle[i].unk10 = gWizardsWaltzInfo.unk14 + 4;
                gWizardsWaltzInfo.sparkle[i].unk14 = gWizardsWaltzInfo.unk18;
                gWizardsWaltzInfo.sparkle[i].state = 2;
                gWizardsWaltzInfo.sparkle[i].unk18 = 0;
                func_08010040(gWizardsWaltzInfo.sparkle[i].entity, 1);
            } else {
                gWizardsWaltzInfo.sparkle[i].unk10 = (s32) ((gWizardsWaltzInfo.sparkle[i].unk10 << 8) + 0x100) >> 8;
                gWizardsWaltzInfo.sparkle[i].unk18 += 1;
                if (gWizardsWaltzInfo.sparkle[i].unk18 > 0xf) {
                    gWizardsWaltzInfo.sparkle[i].state = 0;
                    func_08010040(gWizardsWaltzInfo.sparkle[i].entity, 0);
                }
            }
            func_08044ba8(gWizardsWaltzInfo.sparkle[i].entity, gWizardsWaltzInfo.sparkle[i].unkC,
                                    gWizardsWaltzInfo.sparkle[i].unk10, gWizardsWaltzInfo.sparkle[i].unk14);
        }
    }

    // Increment rotation cycle.
    gWizardsWaltzInfo.cyclePosition += 1;
}


// [func_08044e60] ENGINE Func_01 - Set Tutorial Flag
void func_08044e60(u32 arg0) {
    gWizardsWaltzInfo.isTutorial = arg0;
}


// [func_08044e74] MAIN - Unload
void func_08044e74_stub(void) {
}


// !TODO - Currently impossible without an ASM hack. See: https://decomp.me/scratch/Kk2Ec
// [func_08044e78] CUE Spawn
#include "asm/scenes/wizards_waltz/asm_08044e78.s"


// [func_08044f94] CUE Behaviour
u32 func_08044f94(u32 arg0, u32 arg1, u32 arg2) {
    if (arg2 > (gWizardsWaltzInfo.cycleInterval + func_0800c3a4(0x30))) {
        return 1;
	} else {
        return 0;
	}
}


// [func_08044fc0] CUE Despawn
void func_08044fc0(u32 arg0, u32 *arg1) {
    func_0800fc70(arg1[0]);
}


// [func_08044fcc] CUE Hit
void func_08044fcc(u32 arg0, struct struct_080179f4_sub *arg1) {
    u32 isTutorial;

    // Play animation: "sprout_grow"
    func_08010064(arg1->unk0, D_08932d2c, 0, 1, 0x7f, 0);

    // Cycle through frames of "girl_happy" if isTutorial flag is not set.
    isTutorial = gWizardsWaltzInfo.isTutorial;
    if (!isTutorial) {
        gWizardsWaltzInfo.girlState = 1;

        // Increment frame for "girl_happy" if not at the maximum of 5.
        if (gWizardsWaltzInfo.flowerCount <= 5) {
            gWizardsWaltzInfo.flowerCount += 1;
        }

        // Play animation: "girl_happy"
        func_08010064(gWizardsWaltzInfo.girlEntity, D_08932e64, gWizardsWaltzInfo.flowerCount, 0, isTutorial, isTutorial);
    }
}


// [func_0804503c] CUE Barely
void func_0804503c(u32 arg0, struct struct_080179f4_sub *arg1) {
    u32 temp;
    u32 isTutorial;

    // Set unknown parameter.
    temp = ((u32) ~func_08018054()) >> 0x1f;
    if (arg1->unk6 > 0x200) {
        temp ^= 1;
    }

    // Play animation: "sprout_eaten"
    func_08010064(arg1->unk0, D_08932cbc, 0, 1, 0x7f, 0);
    // Unknown function.
    func_0800ff44(arg1->unk0, temp);

    // Cycle through frames of "girl_sad" if isTutorial flag is not set.
    isTutorial = gWizardsWaltzInfo.isTutorial;
    if (!isTutorial) {
        gWizardsWaltzInfo.girlState = 2;

        // Decrement frame for "girl_sad" if not at the minimum of 0.
        if (gWizardsWaltzInfo.flowerCount) {
            gWizardsWaltzInfo.flowerCount -= 1;
        }

        // Play animation: "girl_sad"
        func_08010064(gWizardsWaltzInfo.girlEntity, D_08932ea4, gWizardsWaltzInfo.flowerCount, 0, isTutorial, isTutorial);
    }

    // Unknown function - likely related to score.
    func_0800bc40();
}


// [func_080450d0] CUE Miss
void func_080450d0(u32 arg0, struct struct_080179f4_sub *arg1) {
    // Unknown function - likely related to score.
    func_0800bc40();
}


// [func_080450dc] MAIN - Input Event
void func_080450dc_stub(void) {
}


// [func_080450e0] GRAPHICAL Func_00 - Unknown
void func_080450e0_stub(void) {
}


// [func_080450e4] GRAPHICAL Func_01 - Unknown
void func_080450e4_stub(void) {
}


// [func_080450e8] GRAPHICAL Func_02 - Unknown
void func_080450e8(u32 arg0) {
    if (arg0) {
        func_08017448(1);
        func_08017458(arg0);
    } else {
        func_08017448(0);
    }
}
