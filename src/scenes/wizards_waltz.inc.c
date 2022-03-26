// For readability. !TODO - CHANGE/REMOVE
#define GameInfo D_030055d0->gameInfo.wizardsWaltz

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

    // Load graphical assets and other basic functionality.
    D_030055d0->unk0 = arg0;
    func_080449e4();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    // Initialise variables.
    GameInfo.globalScale = -0xa0;
    GameInfo.cyclePosition = 0;
    GameInfo.unk1B0 = 0;
    GameInfo.flowerCount = 0;
    GameInfo.unk14 = -0x28;

    // Create character entities.
    GameInfo.wizardState = 0;
    GameInfo.wizardEntity = func_0800fa6c(D_08932bec, 0, 0x78, (s16)GameInfo.unk14, 0x4001, 0x80, 0, 1, 0, 0, 1);
    GameInfo.shadowEntity = func_0800fa6c(D_08932edc, 0, 0x78, 0x50, 0x4082, 0x80, 0, 0, 0, 0, 1);
    GameInfo.girlState = 0;
    GameInfo.girlEntity = func_0800fa6c(D_08932e3c, 0, 0x78, 0x50, 0x4040, 0x80, 0, 1, 0, 0, 1);

    // Create sparkle entities.
    for (i = 0; i < 10; i++) {
        u32 entity;
        GameInfo.sparkle[i].unk4 = 0;
        entity = func_0800fa6c(D_08932c8c, 0, 0, 0, 0, 0x80, 0, 1, 0, 0, 0);
        GameInfo.sparkle[i].entity = entity;
        func_08010040(entity, 0);
    }

    // Set default state.
    func_08017338(1, 0);
    GameInfo.isTutorial = 0;
    GameInfo.cycleInterval = func_0800c3a4(0x90);
}


// [func_08044b80] ENGINE Func_00 - Set Rotation Interval
void func_08044b80(u32 arg0) {
    GameInfo.cyclePosition = 0;
    GameInfo.cycleInterval = func_0800c3a4(arg0);
}


// [func_08044ba8] SUB Func_00 - Update Entity Position
void func_08044ba8(u32 arg0, s32 arg1, s32 arg2, u32 arg3) {
    s32 temp;
    u32 temp1 = arg3 - GameInfo.globalScale;

    temp = func_08007b80(0xA000, temp1);

    arg1 = (arg1 * temp) >> 8;
    arg2 = (arg2 * temp) >> 8;

    func_0800fddc(arg0, (s16) (arg1 + 0x78), (s16) (arg2 + 0x50));
    func_0800fe60(arg0, (s16) temp);
}


// [func_08044c04] MAIN - Loop
void func_08044c04(void) {
    u32 temp0;
    u32 temp2;
    u8 i;

    // INPUT EVENT (A BUTTON)
    if (D_03004afc & 1) {
        // Set wizardState flag.
        GameInfo.wizardState = 1;
        // Play animation: "wizard_magic"
        func_08010064(GameInfo.wizardEntity, D_08932c14, 0, 1, 0x7f, 0);
        // Play sound.
        func_08002634(&s_witch_furu_seqData);
    }

    // If (wizardState flag is set) and (..wizardEntity > 6):
    if (GameInfo.wizardState == 1) {
        if ((s8) func_08010198(GameInfo.wizardEntity) > 6) {
            // Clear wizardState flag.
            GameInfo.wizardState = 0;
            // Resume default animation: "wizard_fly"
            func_08010064(GameInfo.wizardEntity, D_08932bec, 0, 1, 0, 0);
        }
    }

    // Update position elements.
    temp0 = (GameInfo.cyclePosition << 11) / GameInfo.cycleInterval;
    GameInfo.unkC = temp0;
    GameInfo.unk10 = (D_08936cac[temp0 & 0x7ff] * 7) / 16;
    GameInfo.unk18 = (D_08936cac[(temp0 + 0x200) & 0x7ff] / 2) + 0x40;

    // Determine direction which the wizard should be facing.
    if (((temp0 & 0x7ff) - 0x200) > 0x380) {
        func_0800ff44(GameInfo.wizardEntity, 1); // Flip Horizontal (facing right)
    } else {
        func_0800ff44(GameInfo.wizardEntity, 0); // Normal (facing left)
    }

    // Update entity positions.
    func_08044ba8(GameInfo.wizardEntity, GameInfo.unk10, GameInfo.unk14, GameInfo.unk18);
    func_08044ba8(GameInfo.shadowEntity, GameInfo.unk10, 0x20, GameInfo.unk18);
    func_08044ba8(GameInfo.girlEntity, 0, 0x20, 0);

    // Update sparkles.
    temp2 = GameInfo.cyclePosition & 7;
    if (!temp2) {
        GameInfo.sparkle[GameInfo.unk1B0].unk4 = 1;
        GameInfo.unk1B0 += 1;

        if (GameInfo.unk1B0 > 9) {
            GameInfo.unk1B0 = temp2;
        }
    }

    // Update sparkles.
    for (i = 0; i < 10; i++) {
        if (GameInfo.sparkle[i].unk4 != 0) {
            if (GameInfo.sparkle[i].unk4 == 1) {
                GameInfo.sparkle[i].unk8 = GameInfo.unkC - 0x200;
                GameInfo.sparkle[i].unkC = GameInfo.unk10;
                GameInfo.sparkle[i].unk10 = GameInfo.unk14 + 4;
                GameInfo.sparkle[i].unk14 = GameInfo.unk18;
                GameInfo.sparkle[i].unk4 = 2;
                GameInfo.sparkle[i].unk18 = 0;
                func_08010040(GameInfo.sparkle[i].entity, 1);
            } else {
                GameInfo.sparkle[i].unk10 = (s32) ((GameInfo.sparkle[i].unk10 << 8) + 0x100) >> 8;
                GameInfo.sparkle[i].unk18 += 1;
                if (GameInfo.sparkle[i].unk18 > 0xf) {
                    GameInfo.sparkle[i].unk4 = 0;
                    func_08010040(GameInfo.sparkle[i].entity, 0);
                }
            }
            func_08044ba8(GameInfo.sparkle[i].entity,
                    GameInfo.sparkle[i].unkC,
                    GameInfo.sparkle[i].unk10, GameInfo.sparkle[i].unk14);
        }
    }

    // Increment rotation cycle.
    GameInfo.cyclePosition += 1;
}


// [func_08044e60] ENGINE Func_01 - Set Tutorial Flag
void func_08044e60(u32 arg0) {
    GameInfo.isTutorial = arg0;
}


// [func_08044e74] MAIN - Unload(?)
void func_08044e74(void) { /* Stub Function */ }


// !TODO - Currently impossible without an ASM hack. See: https://decomp.me/scratch/Kk2Ec
// [func_08044e78] CUE Behaviour - Spawn
#include "asm/scenes/wizards_waltz/asm_08044e78.s"


// [func_08044f94] CUE Behaviour - Unknown
u32 func_08044f94(u32 arg0, u32 arg1, u32 arg2) {
    if (arg2 > (GameInfo.cycleInterval + func_0800c3a4(0x30))) {
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
    u32 isTutorial;

    // Play animation: "sprout_grow"
    func_08010064(arg1->unk0, D_08932d2c, 0, 1, 0x7f, 0);

    // Cycle through frames of "girl_happy" if isTutorial flag is not set.
    isTutorial = GameInfo.isTutorial;
    if (!isTutorial) {
        GameInfo.girlState = 1;

        // Increment frame for "girl_happy" if not at the maximum of 5.
        if (GameInfo.flowerCount <= 5) {
            GameInfo.flowerCount += 1;
        }

        // Play animation: "girl_happy"
        func_08010064(GameInfo.girlEntity, D_08932e64, GameInfo.flowerCount, 0, isTutorial, isTutorial);
    }
}


// [func_0804503c] CUE Event - Barely
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
    isTutorial = GameInfo.isTutorial;
    if (!isTutorial) {
        GameInfo.girlState = 2;

        // Decrement frame for "girl_sad" if not at the minimum of 0.
        if (GameInfo.flowerCount) {
            GameInfo.flowerCount -= 1;
        }

        // Play animation: "girl_sad"
        func_08010064(GameInfo.girlEntity, D_08932ea4, GameInfo.flowerCount, 0, isTutorial, isTutorial);
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
