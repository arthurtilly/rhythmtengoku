#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"

// For readability. !TODO - CHANGE/REMOVE
#define gWizardsWaltzInfo D_030055d0->gameInfo.wizardsWaltz

// Game-Specific Macros:
#define WIZARDS_WALTZ_SPARKLE_STATE_HIDDEN 0
#define WIZARDS_WALTZ_SPARKLE_STATE_QUEUED 1
#define WIZARDS_WALTZ_SPARKLE_STATE_ACTIVE 2
#define WIZARDS_WALTZ_GIRL_STATE_NEUTRAL 0
#define WIZARDS_WALTZ_GIRL_STATE_HAPPY 1
#define WIZARDS_WALTZ_GIRL_STATE_SAD 2

// OAM Animations:
extern u32 D_08932bec; // Animation: "wizard_fly"
extern u32 D_08932c14; // Animation: "wizard_magic"
extern u32 D_08932c8c; // Animation: "sparkle"
extern u32 D_08932cbc; // Animation: "sprout_eaten"
extern u32 D_08932d2c; // Animation: "sprout_grow"
extern u32 D_08932de4; // Animation: "sprout_appear"
extern u32 D_08932e3c; // Animation: "girl"
extern u32 D_08932e64; // Animation: "girl_happy"
extern u32 D_08932ea4; // Animation: "girl_sad"
extern u32 D_08932edc; // Animation: "shadow"
extern u32 D_08932f94; // Animation: "sprout_appear_tutorial"

// Sound Effects:
extern const struct SequenceData s_witch_furu_seqData; // Sound for inputting without a cue.

// Additional Data - Wizard's Waltz:
extern u32 D_089e9f10;   // GFX-related Null
extern u32 D_089e9f14[]; // GFX Struct

// Additional Data - Global:
extern u16 D_03004afc; // "Button Pressed" Input Buffer
extern u32 func_08003ab8();


/* WIZARD'S WALTZ */


// [func_080449a4] GFX_INIT Func_02
void func_080449a4(void) {
    func_0800c604(0);
    func_08017578();
}


// [func_080449b4] GFX_INIT Func_01
void func_080449b4(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089e9f14, 0x2000);
    func_08005d38(data, func_080449a4, 0);
}


// [func_080449e4] GFX_INIT Func_00
void func_080449e4(void) {
    u32 data;

    func_0800c604(0);
    data = func_080087b4(func_0800c3b8(), &D_089e9f10);
    func_08005d38(data, func_080449b4, 0);
}


// [func_08044a10] MAIN - Init
void func_08044a10(u32 ver) {
    u8 i;

    // Load graphical assets.
    gWizardsWaltzInfo.version = ver;
    func_080449e4();
    func_0800e0ec();
    func_0800e0a0(1, 1, 0, 0, 0, 29, 1);

    // Initialise variables.
    gWizardsWaltzInfo.globalScale = -160;
    gWizardsWaltzInfo.cyclePosition = 0;
    gWizardsWaltzInfo.currentSparkle = 0;
    gWizardsWaltzInfo.flowerCount = 0;
    gWizardsWaltzInfo.wizard.y = -40;

    // Create characters.
    gWizardsWaltzInfo.wizard.state = FALSE;
    gWizardsWaltzInfo.wizard.sprite = func_0800fa6c(&D_08932bec, 0, 120, gWizardsWaltzInfo.wizard.y, 0x4001, 0x80, 0, 1, 0, 0, 1);
    gWizardsWaltzInfo.shadow.sprite = func_0800fa6c(&D_08932edc, 0, 120, 80, 0x4082, 0x80, 0, 0, 0, 0, 1);
    gWizardsWaltzInfo.girl.state = WIZARDS_WALTZ_GIRL_STATE_NEUTRAL;
    gWizardsWaltzInfo.girl.sprite = func_0800fa6c(&D_08932e3c, 0, 120, 80, 0x4040, 0x80, 0, 1, 0, 0, 1);

    // Create sparkles.
    for (i = 0; i < 10; i++) {
        struct AffineSprite *sprite;
        gWizardsWaltzInfo.sparkle[i].state = WIZARDS_WALTZ_SPARKLE_STATE_HIDDEN;
        sprite = func_0800fa6c(&D_08932c8c, 0, 0, 0, 0, 0x80, 0, 1, 0, 0, 0);
        gWizardsWaltzInfo.sparkle[i].sprite = sprite;
        func_08010040(sprite, 0);
    }

    // Set default state.
    func_08017338(1, 0);
    gWizardsWaltzInfo.isTutorial = FALSE;
    gWizardsWaltzInfo.cycleInterval = func_0800c3a4(0x90);
}


// [func_08044b80] ENGINE Func_00 - Set Rotation Interval
void func_08044b80(u32 time) {
    gWizardsWaltzInfo.cyclePosition = 0;
    gWizardsWaltzInfo.cycleInterval = func_0800c3a4(time);
}


// [func_08044ba8] Update Sprite Position
void func_08044ba8(struct AffineSprite *sprite, s32 x, s32 y, u32 z) {
    s32 scale;

    z -= gWizardsWaltzInfo.globalScale;
    scale = fast_divsi3(0xa000, z);

    x = (x * scale) >> 8;
    y = (y * scale) >> 8;
    func_0800fddc(sprite, x + 120, y + 80);
    func_0800fe60(sprite, scale);
}


// [func_08044c04] MAIN - Update
void func_08044c04(void) {
    u32 rotation;
    u8 i;

    // INPUT EVENT (A BUTTON)
    if ((D_03004afc & 1) != 0) {
        gWizardsWaltzInfo.wizard.state = TRUE;
        // Play animation: "wizard_magic"
        func_08010064(gWizardsWaltzInfo.wizard.sprite, &D_08932c14, 0, 1, 0x7f, 0);
        // Play sound.
        func_08002634(&s_witch_furu_seqData);
    }

    // If the Wizard is "using magic" and animation frame data is exhausted (>6):
    if (gWizardsWaltzInfo.wizard.state == TRUE) {
        if (func_08010198(gWizardsWaltzInfo.wizard.sprite) > 6) {
            gWizardsWaltzInfo.wizard.state = FALSE;
            // Resume default animation: "wizard_fly"
            func_08010064(gWizardsWaltzInfo.wizard.sprite, &D_08932bec, 0, 1, 0, 0);
        }
    }

    // Update position elements.
    rotation = 0x800 * gWizardsWaltzInfo.cyclePosition / gWizardsWaltzInfo.cycleInterval;
    gWizardsWaltzInfo.wizard.rotation = rotation;
    gWizardsWaltzInfo.wizard.x = (sins(rotation) * 7) / 16;
    gWizardsWaltzInfo.wizard.z = (coss(rotation) / 2) + 0x40;

    // Determine which direction the wizard should be facing.
    if (((rotation & 0x7ff) - 0x200) > 0x380) {
        func_0800ff44(gWizardsWaltzInfo.wizard.sprite, 1); // Flip Horizontal (facing right)
    } else {
        func_0800ff44(gWizardsWaltzInfo.wizard.sprite, 0); // Normal (facing left)
    }

    // Update sprite positions.
    func_08044ba8(gWizardsWaltzInfo.wizard.sprite, gWizardsWaltzInfo.wizard.x, gWizardsWaltzInfo.wizard.y, gWizardsWaltzInfo.wizard.z);
    func_08044ba8(gWizardsWaltzInfo.shadow.sprite, gWizardsWaltzInfo.wizard.x, 32, gWizardsWaltzInfo.wizard.z);
    func_08044ba8(gWizardsWaltzInfo.girl.sprite, 0, 32, 0);

    // Update sparkles.
    if ((gWizardsWaltzInfo.cyclePosition & 7) == 0) {
        gWizardsWaltzInfo.sparkle[gWizardsWaltzInfo.currentSparkle].state = WIZARDS_WALTZ_SPARKLE_STATE_QUEUED;
        gWizardsWaltzInfo.currentSparkle += 1;

        if (gWizardsWaltzInfo.currentSparkle > 9) {
            gWizardsWaltzInfo.currentSparkle = 0;
        }
    }

    // Update sparkles (continued).
    for (i = 0; i < 10; i++) {
        if (gWizardsWaltzInfo.sparkle[i].state != WIZARDS_WALTZ_SPARKLE_STATE_HIDDEN) {
            if (gWizardsWaltzInfo.sparkle[i].state == WIZARDS_WALTZ_SPARKLE_STATE_QUEUED) {
                gWizardsWaltzInfo.sparkle[i].rotation = gWizardsWaltzInfo.wizard.rotation - 0x200;
                gWizardsWaltzInfo.sparkle[i].x = gWizardsWaltzInfo.wizard.x;
                gWizardsWaltzInfo.sparkle[i].y = gWizardsWaltzInfo.wizard.y + 4;
                gWizardsWaltzInfo.sparkle[i].z = gWizardsWaltzInfo.wizard.z;
                gWizardsWaltzInfo.sparkle[i].state = WIZARDS_WALTZ_SPARKLE_STATE_ACTIVE;
                gWizardsWaltzInfo.sparkle[i].time = 0;
                func_08010040(gWizardsWaltzInfo.sparkle[i].sprite, 1);
            } else {
                gWizardsWaltzInfo.sparkle[i].y = ((gWizardsWaltzInfo.sparkle[i].y << 8) + 0x100) >> 8;
                gWizardsWaltzInfo.sparkle[i].time += 1;
                if (gWizardsWaltzInfo.sparkle[i].time > 15) {
                    gWizardsWaltzInfo.sparkle[i].state = WIZARDS_WALTZ_SPARKLE_STATE_HIDDEN;
                    func_08010040(gWizardsWaltzInfo.sparkle[i].sprite, 0);
                }
            }
            func_08044ba8(gWizardsWaltzInfo.sparkle[i].sprite, gWizardsWaltzInfo.sparkle[i].x,
                                    gWizardsWaltzInfo.sparkle[i].y, gWizardsWaltzInfo.sparkle[i].z);
        }
    }

    // Increment rotation cycle.
    gWizardsWaltzInfo.cyclePosition += 1;
}


// [func_08044e60] ENGINE Func_01 - Set Tutorial Flag
void func_08044e60(u32 isTutorial) {
    gWizardsWaltzInfo.isTutorial = isTutorial;
}


// [func_08044e74] MAIN - Close (STUB)
void func_08044e74_stub(void) {
}


// [func_08044e78] CUE - Spawn
void func_08044e78(u32 arg0, struct WizardsWaltzCue *cue, u32 arg2) {
    u32 angle;
    s32 xPos;
    s32 scale;
    struct AffineSprite *sprite;
    u32 *anim;
    u32 var4;
    u32 doubleSize;

    angle = 0x800 * (gWizardsWaltzInfo.cyclePosition + gWizardsWaltzInfo.cycleInterval) / gWizardsWaltzInfo.cycleInterval;
    angle += 0x18;
    xPos = (sins(angle) * 7) / 16;
    scale = (coss(angle) / 2) + 0x40;

    if (fast_divsi3(0xa000, scale - gWizardsWaltzInfo.globalScale) > 0x100) {
        doubleSize = TRUE;
    } else {
        doubleSize = FALSE;
    }

    var4 = func_08003ab8(0x400 - (angle & 0x7ff)) >> 3;
    cue->position = var4;
    var4 += 0x4002;

    // Use tutorial version of animation if tutorial_flag is set.
    if (gWizardsWaltzInfo.isTutorial) {
        anim = &D_08932f94; // "sprout_appear_tutorial"
    } else {
        anim = &D_08932de4; // "sprout_appear"
    }

    cue->sprite = func_0800fa6c(anim, 0, 120, 80, var4, 0x100, 0, 1, 0x7f, 0, doubleSize);
    func_08044ba8(cue->sprite, xPos, 32, scale);
    func_080180b4(arg0, gWizardsWaltzInfo.cycleInterval);

    angle = 0; // Required to match
}


// [func_08044f94] CUE - Update
u32 func_08044f94(u32 arg0, struct WizardsWaltzCue *cue, u32 arg2) {
    if (arg2 > (gWizardsWaltzInfo.cycleInterval + func_0800c3a4(0x30))) return TRUE;

    return FALSE;
}


// [func_08044fc0] CUE - Despawn
void func_08044fc0(u32 arg0, struct WizardsWaltzCue *cue, u32 arg2) {
    func_0800fc70(cue->sprite);
}


// [func_08044fcc] CUE - Hit
void func_08044fcc(u32 arg0, struct WizardsWaltzCue *cue, u32 arg2) {
    u32 isTutorial;

    // Play animation: "sprout_grow"
    func_08010064(cue->sprite, &D_08932d2c, 0, 1, 0x7f, 0);

    // Cycle through frames of "girl_happy" if isTutorial flag is not set.
    isTutorial = gWizardsWaltzInfo.isTutorial;
    if (!isTutorial) {
        gWizardsWaltzInfo.girl.state = WIZARDS_WALTZ_GIRL_STATE_HAPPY;

        // Increment frame for "girl_happy" if not at the maximum of 5.
        if (gWizardsWaltzInfo.flowerCount <= 5) {
            gWizardsWaltzInfo.flowerCount += 1;
        }

        // Play animation: "girl_happy"
        func_08010064(gWizardsWaltzInfo.girl.sprite, &D_08932e64, gWizardsWaltzInfo.flowerCount, 0, isTutorial, isTutorial);
    }
}


// [func_0804503c] CUE - Barely
void func_0804503c(u32 arg0, struct WizardsWaltzCue *cue, u32 arg2) {
    u32 flip;

    // Check for flip.
    flip = ((u32) ~func_08018054()) >> 0x1f;
    if (cue->position > 0x200) {
        flip ^= 1;
    }

    // Play animation: "sprout_eaten"
    func_08010064(cue->sprite, &D_08932cbc, 0, 1, 0x7f, 0);
    // Flip Horizontal if needed.
    func_0800ff44(cue->sprite, flip);

    // Cycle through frames of "girl_sad" if isTutorial flag is not set.
    if (!gWizardsWaltzInfo.isTutorial) {
        gWizardsWaltzInfo.girl.state = WIZARDS_WALTZ_GIRL_STATE_SAD;

        // Decrement frame for "girl_sad" if not at the minimum of 0.
        if (gWizardsWaltzInfo.flowerCount) {
            gWizardsWaltzInfo.flowerCount -= 1;
        }

        // Play animation: "girl_sad"
        func_08010064(gWizardsWaltzInfo.girl.sprite, &D_08932ea4, gWizardsWaltzInfo.flowerCount, 0, 0, 0);
    }

    // Unknown function - likely related to score.
    func_0800bc40();
}


// [func_080450d0] CUE - Miss
void func_080450d0(u32 arg0, struct WizardsWaltzCue *cue, u32 arg2) {
    // Unknown function - likely related to score.
    func_0800bc40();
}


// [func_080450dc] MAIN - Input Event (STUB)
void func_080450dc_stub(void) {
}


// [func_080450e0] COMMON Func_00 - STUB
void func_080450e0_stub(void) {
}


// [func_080450e4] COMMON Func_01 - STUB
void func_080450e4_stub(void) {
}


// [func_080450e8] COMMON Func_02 - Unknown
void func_080450e8(u32 arg) {
    if (arg) {
        func_08017448(TRUE);
        func_08017458(arg);
    } else {
        func_08017448(FALSE);
    }
}
