#include "engines/wizards_waltz.h"

#include "src/code_08001360.h"
#include "src/code_08003980.h"
#include "src/code_08007468.h"
#include "src/affine_sprite.h"

// For readability.
#define gWizardsWaltzInfo ((struct WizardsWaltzInfo *)D_030055d0)

enum WizardStatesEnum {
    WIZARD_STATE_FLYING,
    WIZARD_STATE_CASTING_MAGIC
};

enum WizardsWaltzSparkleStatesEnum {
    SPARKLE_STATE_HIDDEN,
    SPARKLE_STATE_QUEUED,
    SPARKLE_STATE_ACTIVE
};

enum WizardsWaltzGirlStatesEnum {
    GIRL_STATE_NEUTRAL,
    GIRL_STATE_HAPPY,
    GIRL_STATE_SAD
};


/* WIZARD'S WALTZ */


// Graphics Init. 3
void wizards_waltz_init_gfx3(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// Graphics Init. 2
void wizards_waltz_init_gfx2(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(get_current_mem_id(), gfx_table_wizards_waltz, 0x2000);
    run_func_after_task(data, wizards_waltz_init_gfx3, 0);
}


// Graphics Init. 1
void wizards_waltz_init_gfx1(void) {
    u32 data;

    func_0800c604(0);
    data = func_080087b4(get_current_mem_id(), wizards_waltz_buffered_textures);
    run_func_after_task(data, wizards_waltz_init_gfx2, 0);
}


// Game Engine Start
void wizards_waltz_engine_start(u32 version) {
    u8 i;

    // Load graphical assets.
    gWizardsWaltzInfo->version = version;
    wizards_waltz_init_gfx1();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, BG_PRIORITY_HIGH);

    // Initialise variables.
    gWizardsWaltzInfo->globalScale = -SCREEN_HEIGHT;
    gWizardsWaltzInfo->cyclePosition = 0;
    gWizardsWaltzInfo->currentSparkle = 0;
    gWizardsWaltzInfo->flowerCount = 0;

    // Create characters.
    gWizardsWaltzInfo->wizard.y = -40;
    gWizardsWaltzInfo->wizard.state = WIZARD_STATE_FLYING;
    gWizardsWaltzInfo->wizard.sprite = create_affine_sprite(anim_wizard_fly, 0, 120, gWizardsWaltzInfo->wizard.y, 0x4001, INT_TO_FIXED(0.5), 0, 1, 0, 0, 1);
    gWizardsWaltzInfo->shadow.sprite = create_affine_sprite(anim_wizards_waltz_shadow, 0, 120, 80, 0x4082, INT_TO_FIXED(0.5), 0, 0, 0, 0, 1);
    gWizardsWaltzInfo->girl.state = GIRL_STATE_NEUTRAL;
    gWizardsWaltzInfo->girl.sprite = create_affine_sprite(anim_wizards_waltz_girl_idle, 0, 120, 80, 0x4040, INT_TO_FIXED(0.5), 0, 1, 0, 0, 1);

    // Create sparkles.
    for (i = 0; i < 10; i++) {
        struct AffineSprite *sprite;
        gWizardsWaltzInfo->sparkle[i].state = SPARKLE_STATE_HIDDEN;
        sprite = create_affine_sprite(anim_wizard_sparkle, 0, 0, 0, 0, INT_TO_FIXED(0.5), 0, 1, 0, 0, 0);
        gWizardsWaltzInfo->sparkle[i].sprite = sprite;
        affine_sprite_play_anim(sprite, 0);
    }

    // Set default state.
    gameplay_set_input_buttons(A_BUTTON, 0);
    gWizardsWaltzInfo->isTutorial = FALSE;
    gWizardsWaltzInfo->cycleInterval = beats_to_ticks(0x90);
}


// Engine Event 0x00 (Set Rotation Interval)
void wizards_waltz_set_cycle_duration(u32 time) {
    gWizardsWaltzInfo->cyclePosition = 0;
    gWizardsWaltzInfo->cycleInterval = beats_to_ticks(time);
}


// Update Sprite Position
void wizards_waltz_set_sprite_pos(struct AffineSprite *sprite, s32 x, s32 y, u32 z) {
    s32 scale;

    z -= gWizardsWaltzInfo->globalScale;
    scale = fast_divsi3(INT_TO_FIXED(SCREEN_HEIGHT), z);

    x = FIXED_TO_INT(x * scale);
    y = FIXED_TO_INT(y * scale);
    affine_sprite_set_x_y(sprite, x + SCREEN_CENTER_X, y + SCREEN_CENTER_Y);
    affine_sprite_set_scale(sprite, scale);
}


// Game Engine Update
void wizards_waltz_engine_update(void) {
    u32 rotation;
    u8 i;

    // INPUT EVENT (A BUTTON)
    if (D_03004afc & A_BUTTON) {
        gWizardsWaltzInfo->wizard.state = WIZARD_STATE_CASTING_MAGIC;
        // Play animation: "wizard_magic"
        affine_sprite_change_anim(gWizardsWaltzInfo->wizard.sprite, anim_wizard_cast_spell, 0, 1, 0x7f, 0);
        // Play sound.
        play_sound(&s_witch_furu_seqData);
    }

    // If the Wizard is "using magic" and animation frame data is exhausted (>6):
    if (gWizardsWaltzInfo->wizard.state == WIZARD_STATE_CASTING_MAGIC) {
        if (affine_sprite_get_current_frame(gWizardsWaltzInfo->wizard.sprite) > 6) {
            gWizardsWaltzInfo->wizard.state = WIZARD_STATE_FLYING;
            affine_sprite_change_anim(gWizardsWaltzInfo->wizard.sprite, anim_wizard_fly, 0, 1, 0, 0);
        }
    }

    // Update position elements.
    rotation = 0x800 * gWizardsWaltzInfo->cyclePosition / gWizardsWaltzInfo->cycleInterval;
    gWizardsWaltzInfo->wizard.rotation = rotation;
    gWizardsWaltzInfo->wizard.x = (sins(rotation) * 7) / 16;
    gWizardsWaltzInfo->wizard.z = (coss(rotation) / 2) + 64;

    // Determine which direction the wizard should be facing.
    if (((rotation & 0x7ff) - 0x200) > 0x380) {
        affine_sprite_set_flip_h(gWizardsWaltzInfo->wizard.sprite, 1); // Flip Horizontal (facing right)
    } else {
        affine_sprite_set_flip_h(gWizardsWaltzInfo->wizard.sprite, 0); // Normal (facing left)
    }

    // Update sprite positions.
    wizards_waltz_set_sprite_pos(gWizardsWaltzInfo->wizard.sprite, gWizardsWaltzInfo->wizard.x, gWizardsWaltzInfo->wizard.y, gWizardsWaltzInfo->wizard.z);
    wizards_waltz_set_sprite_pos(gWizardsWaltzInfo->shadow.sprite, gWizardsWaltzInfo->wizard.x, 32, gWizardsWaltzInfo->wizard.z);
    wizards_waltz_set_sprite_pos(gWizardsWaltzInfo->girl.sprite, 0, 32, 0);

    // Update sparkles.
    if ((gWizardsWaltzInfo->cyclePosition & 7) == 0) {
        gWizardsWaltzInfo->sparkle[gWizardsWaltzInfo->currentSparkle].state = SPARKLE_STATE_QUEUED;
        gWizardsWaltzInfo->currentSparkle++;
        if (gWizardsWaltzInfo->currentSparkle > 9) {
            gWizardsWaltzInfo->currentSparkle = 0;
        }
    }

    // Update sparkles (continued).
    for (i = 0; i < 10; i++) {
        if (gWizardsWaltzInfo->sparkle[i].state != SPARKLE_STATE_HIDDEN) {
            if (gWizardsWaltzInfo->sparkle[i].state == SPARKLE_STATE_QUEUED) {
                gWizardsWaltzInfo->sparkle[i].rotation = gWizardsWaltzInfo->wizard.rotation - 0x200;
                gWizardsWaltzInfo->sparkle[i].x = gWizardsWaltzInfo->wizard.x;
                gWizardsWaltzInfo->sparkle[i].y = gWizardsWaltzInfo->wizard.y + 4;
                gWizardsWaltzInfo->sparkle[i].z = gWizardsWaltzInfo->wizard.z;
                gWizardsWaltzInfo->sparkle[i].state = SPARKLE_STATE_ACTIVE;
                gWizardsWaltzInfo->sparkle[i].time = 0;
                affine_sprite_play_anim(gWizardsWaltzInfo->sparkle[i].sprite, 1);
            } else {
                gWizardsWaltzInfo->sparkle[i].y = ((gWizardsWaltzInfo->sparkle[i].y << 8) + 0x100) >> 8;
                gWizardsWaltzInfo->sparkle[i].time++;
                if (gWizardsWaltzInfo->sparkle[i].time > 15) {
                    gWizardsWaltzInfo->sparkle[i].state = SPARKLE_STATE_HIDDEN;
                    affine_sprite_play_anim(gWizardsWaltzInfo->sparkle[i].sprite, 0);
                }
            }
            wizards_waltz_set_sprite_pos(gWizardsWaltzInfo->sparkle[i].sprite, gWizardsWaltzInfo->sparkle[i].x,
                                    gWizardsWaltzInfo->sparkle[i].y, gWizardsWaltzInfo->sparkle[i].z);
        }
    }

    // Increment rotation cycle.
    gWizardsWaltzInfo->cyclePosition++;
}


// Engine Event 0x01 (Enable Tutorial Mode)
void wizards_waltz_enable_tutorial(u32 isTutorial) {
    gWizardsWaltzInfo->isTutorial = isTutorial;
}


// Game Engine Stop
void wizards_waltz_engine_stop(void) {
}


// Cue - Spawn
void wizards_waltz_cue_spawn(struct Cue *cue, struct WizardsWaltzCue *info, u32 param) {
    u32 angle;
    s32 xPos;
    s32 scale;
    struct AffineSprite *sprite;
    const struct Animation *anim;
    u32 z;
    u32 doubleSize;

    angle = 0x800 * (gWizardsWaltzInfo->cyclePosition + gWizardsWaltzInfo->cycleInterval) / gWizardsWaltzInfo->cycleInterval;
    angle += 0x18;
    xPos = (sins(angle) * 7) / 16;
    scale = (coss(angle) / 2) + 64;

    if (fast_divsi3(INT_TO_FIXED(160.0), scale - gWizardsWaltzInfo->globalScale) > INT_TO_FIXED(1.0)) {
        doubleSize = TRUE;
    } else {
        doubleSize = FALSE;
    }

    z = func_08003ab8(0x400 - (angle & 0x7ff)) >> 3;
    info->position = z;
    z += 0x4002;

    // Use tutorial version of animation if tutorial_flag is set.
    if (gWizardsWaltzInfo->isTutorial) {
        anim = anim_wizards_waltz_sprout_appear_tutorial;
    } else {
        anim = anim_wizards_waltz_sprout_appear;
    }

    info->sprite = create_affine_sprite(anim, 0, 120, 80, z, INT_TO_FIXED(1.0), 0, 1, 0x7f, 0, doubleSize);
    wizards_waltz_set_sprite_pos(info->sprite, xPos, 32, scale);
    gameplay_set_cue_duration(cue, gWizardsWaltzInfo->cycleInterval);

    angle = 0; // Required to match
}


// Cue - Update
u32 wizards_waltz_cue_update(struct Cue *cue, struct WizardsWaltzCue *info, u32 runningTime, u32 duration) {
    if (runningTime > (gWizardsWaltzInfo->cycleInterval + beats_to_ticks(0x30))) {
        return TRUE;
    } else {
        return FALSE;
    }
}


// Cue - Despawn
void wizards_waltz_cue_despawn(struct Cue *cue, struct WizardsWaltzCue *info) {
    delete_affine_sprite(info->sprite);
}


// Cue - Hit
void wizards_waltz_cue_hit(struct Cue *cue, struct WizardsWaltzCue *info, u32 pressed, u32 released) {
    affine_sprite_change_anim(info->sprite, anim_wizards_waltz_sprout_grow, 0, 1, 0x7f, 0);

    // Cycle through frames of "girl_happy" if isTutorial flag is not set.
    if (!gWizardsWaltzInfo->isTutorial) {
        gWizardsWaltzInfo->girl.state = GIRL_STATE_HAPPY;
        if (gWizardsWaltzInfo->flowerCount <= 5) {
            gWizardsWaltzInfo->flowerCount++;
        }
        affine_sprite_change_anim(gWizardsWaltzInfo->girl.sprite, anim_wizards_waltz_girl_happy, gWizardsWaltzInfo->flowerCount, 0, 0, 0);
    }
}


// Cue - Barely
void wizards_waltz_cue_barely(struct Cue *cue, struct WizardsWaltzCue *info, u32 pressed, u32 released) {
    u32 flip;

    // Check for flip.
    flip = (gameplay_get_last_hit_offset() >= 0);
    if (info->position > 0x200) {
        flip ^= TRUE;
    }

    affine_sprite_change_anim(info->sprite, anim_wizards_waltz_sprout_eaten, 0, 1, 0x7f, 0);
    affine_sprite_set_flip_h(info->sprite, flip);

    // Cycle through frames of "girl_sad" if isTutorial flag is not set.
    if (!gWizardsWaltzInfo->isTutorial) {
        gWizardsWaltzInfo->girl.state = GIRL_STATE_SAD;
        if (gWizardsWaltzInfo->flowerCount) {
            gWizardsWaltzInfo->flowerCount--;
        }
        affine_sprite_change_anim(gWizardsWaltzInfo->girl.sprite, anim_wizards_waltz_girl_upset, gWizardsWaltzInfo->flowerCount, 0, 0, 0);
    }

    beatscript_enable_loops();
}


// Cue - Miss
void wizards_waltz_cue_miss(struct Cue *cue, struct WizardsWaltzCue *info) {
    beatscript_enable_loops();
}


// Input Event
void wizards_waltz_input_event(u32 pressed, u32 released) {
}


// Common Event 0 (Beat Animation)
void wizards_waltz_common_beat_animation(void) {
}


// Common Event 1 (Display Text)
void wizards_waltz_common_display_text(void) {
}


// Common Event 2 (Init. Tutorial)
void wizards_waltz_common_init_tutorial(const struct Scene *skipDest) {
    if (skipDest != NULL) {
        gameplay_enable_tutorial(TRUE);
        gameplay_set_skip_destination(skipDest);
    } else {
        gameplay_enable_tutorial(FALSE);
    }
}
