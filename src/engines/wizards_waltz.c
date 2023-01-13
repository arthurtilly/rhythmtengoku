#include "engines/wizards_waltz.h"

#include "src/code_08001360.h"
#include "src/code_08003980.h"
#include "src/code_08007468.h"
#include "src/affine_sprite.h"

// For readability.
#define gWizardsWaltzInfo ((struct WizardsWaltzInfo *)D_030055d0)

extern u16 D_03004afc; // "Button Pressed" Input Buffer


/* WIZARD'S WALTZ */


// [func_080449a4] GFX_INIT Func_02
void func_080449a4(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_080449b4] GFX_INIT Func_01
void func_080449b4(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(get_current_mem_id(), D_089e9f14, 0x2000);
    task_run_after(data, func_080449a4, 0);
}


// [func_080449e4] GFX_INIT Func_00
void func_080449e4(void) {
    u32 data;

    func_0800c604(0);
    data = func_080087b4(get_current_mem_id(), D_089e9f10);
    task_run_after(data, func_080449b4, 0);
}


// [func_08044a10] MAIN - Init
void func_08044a10(u32 ver) {
    u8 i;

    // Load graphical assets.
    gWizardsWaltzInfo->version = ver;
    func_080449e4();
    scene_show_obj_layer();
    scene_set_bg_layer_display(1, 1, 0, 0, 0, 29, 1);

    // Initialise variables.
    gWizardsWaltzInfo->globalScale = -160;
    gWizardsWaltzInfo->cyclePosition = 0;
    gWizardsWaltzInfo->currentSparkle = 0;
    gWizardsWaltzInfo->flowerCount = 0;
    gWizardsWaltzInfo->wizard.y = -40;

    // Create characters.
    gWizardsWaltzInfo->wizard.state = FALSE;
    gWizardsWaltzInfo->wizard.sprite = create_affine_sprite(anim_wizard_fly, 0, 120, gWizardsWaltzInfo->wizard.y, 0x4001, 0x80, 0, 1, 0, 0, 1);
    gWizardsWaltzInfo->shadow.sprite = create_affine_sprite(anim_wizards_waltz_shadow, 0, 120, 80, 0x4082, 0x80, 0, 0, 0, 0, 1);
    gWizardsWaltzInfo->girl.state = WIZARDS_WALTZ_GIRL_STATE_NEUTRAL;
    gWizardsWaltzInfo->girl.sprite = create_affine_sprite(anim_wizards_waltz_girl_idle, 0, 120, 80, 0x4040, 0x80, 0, 1, 0, 0, 1);

    // Create sparkles.
    for (i = 0; i < 10; i++) {
        struct AffineSprite *sprite;
        gWizardsWaltzInfo->sparkle[i].state = WIZARDS_WALTZ_SPARKLE_STATE_HIDDEN;
        sprite = create_affine_sprite(anim_wizard_sparkle, 0, 0, 0, 0, 0x80, 0, 1, 0, 0, 0);
        gWizardsWaltzInfo->sparkle[i].sprite = sprite;
        affine_sprite_play_anim(sprite, 0);
    }

    // Set default state.
    gameplay_set_input_buttons(A_BUTTON, 0);
    gWizardsWaltzInfo->isTutorial = FALSE;
    gWizardsWaltzInfo->cycleInterval = beats_to_ticks(0x90);
}


// [func_08044b80] ENGINE Func_00 - Set Rotation Interval
void func_08044b80(u32 time) {
    gWizardsWaltzInfo->cyclePosition = 0;
    gWizardsWaltzInfo->cycleInterval = beats_to_ticks(time);
}


// [func_08044ba8] Update Sprite Position
void func_08044ba8(struct AffineSprite *sprite, s32 x, s32 y, u32 z) {
    s32 scale;

    z -= gWizardsWaltzInfo->globalScale;
    scale = fast_divsi3(0xa000, z);

    x = (x * scale) >> 8;
    y = (y * scale) >> 8;
    affine_sprite_set_x_y(sprite, x + 120, y + 80);
    affine_sprite_set_scale(sprite, scale);
}


// [func_08044c04] MAIN - Update
void func_08044c04(void) {
    u32 rotation;
    u8 i;

    // INPUT EVENT (A BUTTON)
    if ((D_03004afc & 1) != 0) {
        gWizardsWaltzInfo->wizard.state = TRUE;
        // Play animation: "wizard_magic"
        affine_sprite_change_anim(gWizardsWaltzInfo->wizard.sprite, anim_wizard_cast_spell, 0, 1, 0x7f, 0);
        // Play sound.
        play_sound(&s_witch_furu_seqData);
    }

    // If the Wizard is "using magic" and animation frame data is exhausted (>6):
    if (gWizardsWaltzInfo->wizard.state == TRUE) {
        if (func_08010198(gWizardsWaltzInfo->wizard.sprite) > 6) {
            gWizardsWaltzInfo->wizard.state = FALSE;
            // Resume default animation: "wizard_fly"
            affine_sprite_change_anim(gWizardsWaltzInfo->wizard.sprite, anim_wizard_fly, 0, 1, 0, 0);
        }
    }

    // Update position elements.
    rotation = 0x800 * gWizardsWaltzInfo->cyclePosition / gWizardsWaltzInfo->cycleInterval;
    gWizardsWaltzInfo->wizard.rotation = rotation;
    gWizardsWaltzInfo->wizard.x = (sins(rotation) * 7) / 16;
    gWizardsWaltzInfo->wizard.z = (coss(rotation) / 2) + 0x40;

    // Determine which direction the wizard should be facing.
    if (((rotation & 0x7ff) - 0x200) > 0x380) {
        affine_sprite_set_flip_h(gWizardsWaltzInfo->wizard.sprite, 1); // Flip Horizontal (facing right)
    } else {
        affine_sprite_set_flip_h(gWizardsWaltzInfo->wizard.sprite, 0); // Normal (facing left)
    }

    // Update sprite positions.
    func_08044ba8(gWizardsWaltzInfo->wizard.sprite, gWizardsWaltzInfo->wizard.x, gWizardsWaltzInfo->wizard.y, gWizardsWaltzInfo->wizard.z);
    func_08044ba8(gWizardsWaltzInfo->shadow.sprite, gWizardsWaltzInfo->wizard.x, 32, gWizardsWaltzInfo->wizard.z);
    func_08044ba8(gWizardsWaltzInfo->girl.sprite, 0, 32, 0);

    // Update sparkles.
    if ((gWizardsWaltzInfo->cyclePosition & 7) == 0) {
        gWizardsWaltzInfo->sparkle[gWizardsWaltzInfo->currentSparkle].state = WIZARDS_WALTZ_SPARKLE_STATE_QUEUED;
        gWizardsWaltzInfo->currentSparkle += 1;

        if (gWizardsWaltzInfo->currentSparkle > 9) {
            gWizardsWaltzInfo->currentSparkle = 0;
        }
    }

    // Update sparkles (continued).
    for (i = 0; i < 10; i++) {
        if (gWizardsWaltzInfo->sparkle[i].state != WIZARDS_WALTZ_SPARKLE_STATE_HIDDEN) {
            if (gWizardsWaltzInfo->sparkle[i].state == WIZARDS_WALTZ_SPARKLE_STATE_QUEUED) {
                gWizardsWaltzInfo->sparkle[i].rotation = gWizardsWaltzInfo->wizard.rotation - 0x200;
                gWizardsWaltzInfo->sparkle[i].x = gWizardsWaltzInfo->wizard.x;
                gWizardsWaltzInfo->sparkle[i].y = gWizardsWaltzInfo->wizard.y + 4;
                gWizardsWaltzInfo->sparkle[i].z = gWizardsWaltzInfo->wizard.z;
                gWizardsWaltzInfo->sparkle[i].state = WIZARDS_WALTZ_SPARKLE_STATE_ACTIVE;
                gWizardsWaltzInfo->sparkle[i].time = 0;
                affine_sprite_play_anim(gWizardsWaltzInfo->sparkle[i].sprite, 1);
            } else {
                gWizardsWaltzInfo->sparkle[i].y = ((gWizardsWaltzInfo->sparkle[i].y << 8) + 0x100) >> 8;
                gWizardsWaltzInfo->sparkle[i].time += 1;
                if (gWizardsWaltzInfo->sparkle[i].time > 15) {
                    gWizardsWaltzInfo->sparkle[i].state = WIZARDS_WALTZ_SPARKLE_STATE_HIDDEN;
                    affine_sprite_play_anim(gWizardsWaltzInfo->sparkle[i].sprite, 0);
                }
            }
            func_08044ba8(gWizardsWaltzInfo->sparkle[i].sprite, gWizardsWaltzInfo->sparkle[i].x,
                                    gWizardsWaltzInfo->sparkle[i].y, gWizardsWaltzInfo->sparkle[i].z);
        }
    }

    // Increment rotation cycle.
    gWizardsWaltzInfo->cyclePosition += 1;
}


// [func_08044e60] ENGINE Func_01 - Set Tutorial Flag
void func_08044e60(u32 isTutorial) {
    gWizardsWaltzInfo->isTutorial = isTutorial;
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
    const struct Animation *anim;
    u32 var4;
    u32 doubleSize;

    angle = 0x800 * (gWizardsWaltzInfo->cyclePosition + gWizardsWaltzInfo->cycleInterval) / gWizardsWaltzInfo->cycleInterval;
    angle += 0x18;
    xPos = (sins(angle) * 7) / 16;
    scale = (coss(angle) / 2) + 0x40;

    if (fast_divsi3(0xa000, scale - gWizardsWaltzInfo->globalScale) > 0x100) {
        doubleSize = TRUE;
    } else {
        doubleSize = FALSE;
    }

    var4 = func_08003ab8(0x400 - (angle & 0x7ff)) >> 3;
    cue->position = var4;
    var4 += 0x4002;

    // Use tutorial version of animation if tutorial_flag is set.
    if (gWizardsWaltzInfo->isTutorial) {
        anim = anim_wizards_waltz_sprout_appear_tutorial; // "sprout_appear_tutorial"
    } else {
        anim = anim_wizards_waltz_sprout_appear; // "sprout_appear"
    }

    cue->sprite = create_affine_sprite(anim, 0, 120, 80, var4, 0x100, 0, 1, 0x7f, 0, doubleSize);
    func_08044ba8(cue->sprite, xPos, 32, scale);
    gameplay_set_cue_duration(arg0, gWizardsWaltzInfo->cycleInterval);

    angle = 0; // Required to match
}


// [func_08044f94] CUE - Update
u32 func_08044f94(u32 arg0, struct WizardsWaltzCue *cue, u32 arg2) {
    if (arg2 > (gWizardsWaltzInfo->cycleInterval + beats_to_ticks(0x30))) return TRUE;

    return FALSE;
}


// [func_08044fc0] CUE - Despawn
void func_08044fc0(u32 arg0, struct WizardsWaltzCue *cue, u32 arg2) {
    delete_affine_sprite(cue->sprite);
}


// [func_08044fcc] CUE - Hit
void func_08044fcc(u32 arg0, struct WizardsWaltzCue *cue, u32 arg2) {
    u32 isTutorial;

    // Play animation: "sprout_grow"
    affine_sprite_change_anim(cue->sprite, anim_wizards_waltz_sprout_grow, 0, 1, 0x7f, 0);

    // Cycle through frames of "girl_happy" if isTutorial flag is not set.
    isTutorial = gWizardsWaltzInfo->isTutorial;
    if (!isTutorial) {
        gWizardsWaltzInfo->girl.state = WIZARDS_WALTZ_GIRL_STATE_HAPPY;

        // Increment frame for "girl_happy" if not at the maximum of 5.
        if (gWizardsWaltzInfo->flowerCount <= 5) {
            gWizardsWaltzInfo->flowerCount += 1;
        }

        // Play animation: "girl_happy"
        affine_sprite_change_anim(gWizardsWaltzInfo->girl.sprite, anim_wizards_waltz_girl_happy, gWizardsWaltzInfo->flowerCount, 0, isTutorial, isTutorial);
    }
}


// [func_0804503c] CUE - Barely
void func_0804503c(u32 arg0, struct WizardsWaltzCue *cue, u32 arg2) {
    u32 flip;

    // Check for flip.
    flip = (gameplay_get_last_hit_offset() >= 0);
    if (cue->position > 0x200) {
        flip ^= TRUE;
    }

    // Play animation: "sprout_eaten"
    affine_sprite_change_anim(cue->sprite, anim_wizards_waltz_sprout_eaten, 0, 1, 0x7f, 0);
    // Flip Horizontal if needed.
    affine_sprite_set_flip_h(cue->sprite, flip);

    // Cycle through frames of "girl_sad" if isTutorial flag is not set.
    if (!gWizardsWaltzInfo->isTutorial) {
        gWizardsWaltzInfo->girl.state = WIZARDS_WALTZ_GIRL_STATE_SAD;

        // Decrement frame for "girl_sad" if not at the minimum of 0.
        if (gWizardsWaltzInfo->flowerCount) {
            gWizardsWaltzInfo->flowerCount -= 1;
        }

        // Play animation: "girl_sad"
        affine_sprite_change_anim(gWizardsWaltzInfo->girl.sprite, anim_wizards_waltz_girl_upset, gWizardsWaltzInfo->flowerCount, 0, 0, 0);
    }

    // Unknown function - likely related to score.
    beatscript_enable_loops();
}


// [func_080450d0] CUE - Miss
void func_080450d0(u32 arg0, struct WizardsWaltzCue *cue, u32 arg2) {
    // Unknown function - likely related to score.
    beatscript_enable_loops();
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


// [func_080450e8] COMMON Func_02 - ?
void func_080450e8(const struct Scene *skipDest) {
    if (skipDest != NULL) {
        gameplay_enable_tutorial(TRUE);
        gameplay_set_skip_destination(skipDest);
    } else {
        gameplay_enable_tutorial(FALSE);
    }
}
