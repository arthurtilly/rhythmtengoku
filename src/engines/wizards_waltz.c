#include "engines/wizards_waltz.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/affine_sprite.h"

// For readability.
#define gWizardsWaltz ((struct WizardsWaltzEngineData *)gCurrentEngineData)

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
    data = start_new_texture_loader(get_current_mem_id(), wizards_waltz_buffered_textures);
    run_func_after_task(data, wizards_waltz_init_gfx2, 0);
}


// Game Engine Start
void wizards_waltz_engine_start(u32 version) {
    u8 i;

    // Load graphical assets.
    gWizardsWaltz->version = version;
    wizards_waltz_init_gfx1();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, BG_PRIORITY_HIGH);

    // Initialise variables.
    gWizardsWaltz->globalScale = -SCREEN_HEIGHT;
    gWizardsWaltz->cyclePosition = 0;
    gWizardsWaltz->currentSparkle = 0;
    gWizardsWaltz->flowerCount = 0;

    // Create characters.
    gWizardsWaltz->wizard.y = -40;
    gWizardsWaltz->wizard.state = WIZARD_STATE_FLYING;
    gWizardsWaltz->wizard.sprite = create_affine_sprite(anim_wizard_fly, 0, 120, gWizardsWaltz->wizard.y, 0x4001, INT_TO_FIXED(0.5), 0, 1, 0, 0, 1);
    gWizardsWaltz->shadow.sprite = create_affine_sprite(anim_wizards_waltz_shadow, 0, 120, 80, 0x4082, INT_TO_FIXED(0.5), 0, 0, 0, 0, 1);
    gWizardsWaltz->girl.state = GIRL_STATE_NEUTRAL;
    gWizardsWaltz->girl.sprite = create_affine_sprite(anim_wizards_waltz_girl_idle, 0, 120, 80, 0x4040, INT_TO_FIXED(0.5), 0, 1, 0, 0, 1);

    // Create sparkles.
    for (i = 0; i < WIZARDS_WALTZ_SPARKLE_AMOUNT; i++) {
        struct AffineSprite *sprite;
        gWizardsWaltz->sparkle[i].state = SPARKLE_STATE_HIDDEN;
        sprite = create_affine_sprite(anim_wizard_sparkle, 0, 0, 0, 0, INT_TO_FIXED(0.5), 0, 1, 0, 0, 0);
        gWizardsWaltz->sparkle[i].sprite = sprite;
        affine_sprite_set_visible(sprite, 0);
    }

    // Set default state.
    gameplay_set_input_buttons(A_BUTTON, 0);
    gWizardsWaltz->isTutorial = FALSE;
    gWizardsWaltz->cycleInterval = ticks_to_frames(0x90);
}


// Engine Event 0x00 (Set Rotation Interval)
void wizards_waltz_set_cycle_duration(u32 time) {
    gWizardsWaltz->cyclePosition = 0;
    gWizardsWaltz->cycleInterval = ticks_to_frames(time);
}


// Update Sprite Position
void wizards_waltz_set_sprite_pos(struct AffineSprite *sprite, s32 x, s32 y, u32 z) {
    s32 scale;

    z -= gWizardsWaltz->globalScale;
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
        gWizardsWaltz->wizard.state = WIZARD_STATE_CASTING_MAGIC;
        // Play animation: "wizard_magic"
        affine_sprite_set_anim(gWizardsWaltz->wizard.sprite, anim_wizard_cast_spell, 0, 1, 0x7f, 0);
        // Play sound.
        play_sound(&s_witch_furu_seqData);
    }

    // If the Wizard is "using magic" and animation frame data is exhausted (>6):
    if (gWizardsWaltz->wizard.state == WIZARD_STATE_CASTING_MAGIC) {
        if (affine_sprite_get_anim_cel(gWizardsWaltz->wizard.sprite) > 6) {
            gWizardsWaltz->wizard.state = WIZARD_STATE_FLYING;
            affine_sprite_set_anim(gWizardsWaltz->wizard.sprite, anim_wizard_fly, 0, 1, 0, 0);
        }
    }

    // Update position elements.
    rotation = 0x800 * gWizardsWaltz->cyclePosition / gWizardsWaltz->cycleInterval;
    gWizardsWaltz->wizard.rotation = rotation;
    gWizardsWaltz->wizard.x = (sins(rotation) * 7) / 16;
    gWizardsWaltz->wizard.z = (coss(rotation) / 2) + 64;

    // Determine which direction the wizard should be facing.
    if (((rotation & 0x7ff) - 0x200) > 0x380) {
        affine_sprite_set_flip_h(gWizardsWaltz->wizard.sprite, 1); // Flip Horizontal (facing right)
    } else {
        affine_sprite_set_flip_h(gWizardsWaltz->wizard.sprite, 0); // Normal (facing left)
    }

    // Update sprite positions.
    wizards_waltz_set_sprite_pos(gWizardsWaltz->wizard.sprite, gWizardsWaltz->wizard.x, gWizardsWaltz->wizard.y, gWizardsWaltz->wizard.z);
    wizards_waltz_set_sprite_pos(gWizardsWaltz->shadow.sprite, gWizardsWaltz->wizard.x, 32, gWizardsWaltz->wizard.z);
    wizards_waltz_set_sprite_pos(gWizardsWaltz->girl.sprite, 0, 32, 0);

    // Update sparkles.
    if ((gWizardsWaltz->cyclePosition & 7) == 0) {
        gWizardsWaltz->sparkle[gWizardsWaltz->currentSparkle].state = SPARKLE_STATE_QUEUED;
        gWizardsWaltz->currentSparkle++;
        if (gWizardsWaltz->currentSparkle > (WIZARDS_WALTZ_SPARKLE_AMOUNT - 1)) {
            gWizardsWaltz->currentSparkle = 0;
        }
    }

    // Update sparkles (continued).
    for (i = 0; i < WIZARDS_WALTZ_SPARKLE_AMOUNT; i++) {
        if (gWizardsWaltz->sparkle[i].state != SPARKLE_STATE_HIDDEN) {
            if (gWizardsWaltz->sparkle[i].state == SPARKLE_STATE_QUEUED) {
                gWizardsWaltz->sparkle[i].rotation = gWizardsWaltz->wizard.rotation - 0x200;
                gWizardsWaltz->sparkle[i].x = gWizardsWaltz->wizard.x;
                gWizardsWaltz->sparkle[i].y = gWizardsWaltz->wizard.y + 4;
                gWizardsWaltz->sparkle[i].z = gWizardsWaltz->wizard.z;
                gWizardsWaltz->sparkle[i].state = SPARKLE_STATE_ACTIVE;
                gWizardsWaltz->sparkle[i].time = 0;
                affine_sprite_set_visible(gWizardsWaltz->sparkle[i].sprite, 1);
            } else {
                gWizardsWaltz->sparkle[i].y = ((gWizardsWaltz->sparkle[i].y << 8) + 0x100) >> 8;
                gWizardsWaltz->sparkle[i].time++;
                if (gWizardsWaltz->sparkle[i].time > 15) {
                    gWizardsWaltz->sparkle[i].state = SPARKLE_STATE_HIDDEN;
                    affine_sprite_set_visible(gWizardsWaltz->sparkle[i].sprite, 0);
                }
            }
            wizards_waltz_set_sprite_pos(gWizardsWaltz->sparkle[i].sprite, gWizardsWaltz->sparkle[i].x,
                                    gWizardsWaltz->sparkle[i].y, gWizardsWaltz->sparkle[i].z);
        }
    }

    // Increment rotation cycle.
    gWizardsWaltz->cyclePosition++;
}


// Engine Event 0x01 (Enable Tutorial Mode)
void wizards_waltz_tutorial_enabled(u32 isTutorial) {
    gWizardsWaltz->isTutorial = isTutorial;
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
    struct Animation *anim;
    u32 z;
    u32 doubleSize;

    angle = 0x800 * (gWizardsWaltz->cyclePosition + gWizardsWaltz->cycleInterval) / gWizardsWaltz->cycleInterval;
    angle += 0x18;
    xPos = (sins(angle) * 7) / 16;
    scale = (coss(angle) / 2) + 64;

    if (fast_divsi3(INT_TO_FIXED(160.0), scale - gWizardsWaltz->globalScale) > INT_TO_FIXED(1.0)) {
        doubleSize = TRUE;
    } else {
        doubleSize = FALSE;
    }

    z = math_abs32(0x400 - (angle & 0x7ff)) / 8u;
    info->position = z;
    z += 0x4002;

    // Use tutorial version of animation if tutorial_flag is set.
    if (gWizardsWaltz->isTutorial) {
        anim = anim_wizards_waltz_sprout_appear_tutorial;
    } else {
        anim = anim_wizards_waltz_sprout_appear;
    }

    info->sprite = create_affine_sprite(anim, 0, 120, 80, z, INT_TO_FIXED(1.0), 0, 1, 0x7f, 0, doubleSize);
    wizards_waltz_set_sprite_pos(info->sprite, xPos, 32, scale);
    gameplay_set_cue_duration(cue, gWizardsWaltz->cycleInterval);

    angle = 0; // Required to match
}


// Cue - Update
u32 wizards_waltz_cue_update(struct Cue *cue, struct WizardsWaltzCue *info, u32 runningTime, u32 duration) {
    if (runningTime > (gWizardsWaltz->cycleInterval + ticks_to_frames(0x30))) {
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
    affine_sprite_set_anim(info->sprite, anim_wizards_waltz_sprout_grow, 0, 1, 0x7f, 0);

    // Cycle through frames of "girl_happy" if isTutorial flag is not set.
    if (!gWizardsWaltz->isTutorial) {
        gWizardsWaltz->girl.state = GIRL_STATE_HAPPY;
        if (gWizardsWaltz->flowerCount <= 5) {
            gWizardsWaltz->flowerCount++;
        }
        affine_sprite_set_anim(gWizardsWaltz->girl.sprite, anim_wizards_waltz_girl_happy, gWizardsWaltz->flowerCount, 0, 0, 0);
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

    affine_sprite_set_anim(info->sprite, anim_wizards_waltz_sprout_eaten, 0, 1, 0x7f, 0);
    affine_sprite_set_flip_h(info->sprite, flip);

    // Cycle through frames of "girl_sad" if isTutorial flag is not set.
    if (!gWizardsWaltz->isTutorial) {
        gWizardsWaltz->girl.state = GIRL_STATE_SAD;
        if (gWizardsWaltz->flowerCount) {
            gWizardsWaltz->flowerCount--;
        }
        affine_sprite_set_anim(gWizardsWaltz->girl.sprite, anim_wizards_waltz_girl_upset, gWizardsWaltz->flowerCount, 0, 0, 0);
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
void wizards_waltz_common_init_tutorial(struct Scene *skipDest) {
    if (skipDest != NULL) {
        gameplay_enable_tutorial(TRUE);
        gameplay_set_skip_destination(skipDest);
    } else {
        gameplay_enable_tutorial(FALSE);
    }
}
