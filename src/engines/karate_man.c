#include "engines/karate_man.h"

#include "syscall.h"
#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/text_printer.h"
#include "src/code_0800b778.h"
#include "src/scenes/gameplay.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gKarateMan ((struct KarateManEngineData *)gCurrentEngineData)


/* KARATE MAN */


// GFX_INIT Func_02
void karate_init_gfx3(void) {
	func_0800c604(0);
	gameplay_start_screen_fade_in();
	karate_update_bg_palette();
}


// GFX_INIT Func_01
void karate_init_gfx2(void) {
    u32 temp;

    func_0800c604(0);
    temp = func_08002ee0(get_current_mem_id(), karate_gfx_tables[gKarateMan->version], 0x2000);
    run_func_after_task(temp, karate_init_gfx3, 0);
}


// GFX_INIT Func_00
void karate_init_gfx1(void) {
    u32 temp;
    
    func_0800c604(0);
    temp = start_new_texture_loader(get_current_mem_id(), karate_buffered_textures);
    run_func_after_task(temp, karate_init_gfx2, 0);
}


// MAIN - Init
void karate_engine_start(u32 ver) {
    // Load graphical assets and other basic functionality.
    gKarateMan->version = ver;
    karate_init_gfx1();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_0, FALSE, 0, 0, 2, 28, 1);
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 2);
    if (gKarateMan->version == KARATE_VER_SERIOUS) {
        scene_show_bg_layer(BG_LAYER_0);
        scene_hide_bg_layer(BG_LAYER_1);
    }

    // Initialise variables.
    karate_joe_init(&gKarateMan->joe);
    gKarateMan->useTheFace = FALSE;
    karate_init_flow();
    gKarateMan->seriousModeStarted = FALSE;
    gKarateMan->seriousModeStopped = FALSE;

    // Initialise text.
    gKarateMan->cueTextSprite = sprite_create(gSpriteHandler, anim_karate_cue_warning, 0, 120, 24, 0, 0, 0, 0x8000);
    gKarateMan->textPrinter = text_printer_create_new(get_current_mem_id(), 4, 112, 30);
    text_printer_set_x_y(gKarateMan->textPrinter, 124, 32);
    text_printer_set_layer(gKarateMan->textPrinter, 0x4f00);
    text_printer_center_by_content(gKarateMan->textPrinter, TRUE);

    // Initialise tutorial.
    gKarateMan->awaitingInput = FALSE;
    gKarateMan->textButtonSprite = sprite_create(gSpriteHandler, anim_karate_tutorial_text_button, 0, 180, 112, 0x4f00, 1, 0, 0x8000);
    sprite_set_x_y(gSpriteHandler, gKarateMan->textButtonSprite, 172, 112);
    gKarateMan->tutorialSkip = sprite_create(gSpriteHandler, anim_karate_tutorial_skip, 0, 0, 160, 0, 0, 0, 0x8000);
    gKarateMan->tutorialText = sprite_create(gSpriteHandler, anim_karate_tutorial_counter, 0, 30, 76, 0, 0, 0, 0x8000);
    gKarateMan->tutorialCounter = 0;
    gameplay_set_input_buttons(A_BUTTON, 0);

    // Initialise BG Face.
    if (gKarateMan->version != KARATE_VER_0) {
        if (gKarateMan->version == KARATE_VER_FACES) {
            gKarateMan->bgFace = 0;
        }
    }
}


// Set the BG Face
void karate_set_bg_face(u32 bgFace, u32 duration) {
    func_08003eb8(karate_bg_face_textures[bgFace], VRAMBase + 0x8000);
    scene_show_bg_layer(0);
    gKarateMan->bgFace = ticks_to_frames(duration + 1);
}


// ENGINE Func_00 - Reset BG Face?
void karate_reset_bg_face(u32 duration) {
	karate_set_bg_face(0, duration);
}


// Decrement BG Face Counter
void karate_update_bg_face(void) {
   if (gKarateMan->bgFace) {
       gKarateMan->bgFace--;
       if (!gKarateMan->bgFace) {
           scene_hide_bg_layer(0);
       }
   }
}


// ENGINE Func_01 - Start "Serious Mode"
void karate_start_serious_mode_next_hit(void) {
    if (gKarateMan->version == KARATE_VER_0) {
        gKarateMan->seriousModeStarted = TRUE;
    }
}


// ENGINE Func_02 - End "Serious Mode"
void karate_stop_serious_mode_next_hit(void) {
    if (gKarateMan->version == KARATE_VER_SERIOUS) {
        gKarateMan->seriousModeStopped = TRUE;
    }
}


// ENGINE Func_03 - Show Text
void karate_tutorial_display_text(char *text) {
	text_printer_set_string(gKarateMan->textPrinter, text);

}


// ENGINE Func_04 - Wait for Input (Tutorial)
void karate_tutorial_wait_for_input(void) {
    sprite_set_anim_cel(gSpriteHandler, gKarateMan->textButtonSprite, 0);
    sprite_set_visible(gSpriteHandler, gKarateMan->textButtonSprite, TRUE);
    gameplay_set_input_buttons(0, 0);
    set_pause_beatscript_scene(TRUE);
    gKarateMan->awaitingInput = TRUE;
}


// COMMON Func_03 - Set Tutorial Destination Scene
void karate_common_init_tutorial(struct Scene *scene) {
    if (scene != NULL) {
        gameplay_enable_tutorial(TRUE);
        gameplay_set_skip_destination(scene);
        gameplay_set_skip_icon(1, TRUE);
    } else {
        gameplay_enable_tutorial(FALSE);
        gameplay_set_skip_icon(0, FALSE);
    } 
}


// ENGINE Func_06 - Show Inputs Remaining (Tutorial)
void karate_tutorial_loop_start(u32 inputs) {
    gKarateMan->tutorialCounter = inputs;
    if (inputs) {
        sprite_set_visible(gSpriteHandler, gKarateMan->tutorialText, TRUE);
        sprite_set_anim_cel(gSpriteHandler, gKarateMan->tutorialText, inputs);
    } else {
        sprite_set_visible(gSpriteHandler, gKarateMan->tutorialText, FALSE);
    }
}


// ENGINE Func_07 - Unknown (Tutorial Related)
void karate_tutorial_loop_end(void) {
    if (gKarateMan->tutorialCounter != 0) {
        beatscript_enable_loops();
    } else {
        beatscript_disable_loops();
    }
}

// ENGINE Func_08 - Set Expression
void karate_use_the_face(u8 use) {
	gKarateMan->useTheFace = use;
}


// MAIN - Update
void karate_engine_update(void) {
    // Update Tutorial.
    if (gKarateMan->awaitingInput) {
        if (D_03004afc & A_BUTTON) {
            sprite_set_visible(gSpriteHandler, gKarateMan->textButtonSprite, FALSE);
            gameplay_set_input_buttons(A_BUTTON, 0);
            set_pause_beatscript_scene(FALSE);
            gKarateMan->awaitingInput = FALSE;
        }
    }

    // Update variables.
    karate_joe_update(&gKarateMan->joe);
    if (gKarateMan->version) {
        if (gKarateMan->version == KARATE_VER_FACES) { // Decrement BG Face if version is BG Face
            karate_update_bg_face();
        }
    }

    // Update text.
    text_printer_update(gKarateMan->textPrinter);
}


// MAIN - Close
void karate_engine_stop(void) {
    karate_joe_delete(&gKarateMan->joe);
    sprite_delete(gSpriteHandler, gKarateMan->cueTextSprite);
    sprite_delete(gSpriteHandler, gKarateMan->flowSprite);
    scene_hide_bg_layer(0);
    scene_hide_bg_layer(1);
}


// ???
void karate_cue_increment_z_for_existing_objects(struct Cue *currentCue) {
    struct Cue *cue;
    struct KarateManCue *data;

    gameplay_get_cue_info(&cue, (void **)&data);
    while (cue != NULL) {
        if (cue != currentCue) {
            data->unk2E++;
        }
        gameplay_get_previous_cue_info(cue, &cue, (void **)&data);
    }
}


// CUE - Spawn
void karate_cue_spawn(struct Cue *cue, struct KarateManCue *data, u32 type) {
    data->isHit = FALSE;
    data->unk8 = scene_affine_group_alloc();
    data->sprite = sprite_create(gSpriteHandler, anim_karate_object, 0, 156, 52, 0x4800, 0, 0, 0);
    assign_sprite_affine_param(data->sprite, data->unk8);
    data->unk9 = scene_affine_group_alloc();
    data->shadow = sprite_create(gSpriteHandler, anim_karate_object_shadow, 0, 156, 133, 0x4a00, 0, 0, 0);
    assign_sprite_affine_param(data->shadow, data->unk9);
    data->unk1C = 0;
    data->unk18 = 0;
    data->unk24 = 0;
    data->unk20 = 0;
    data->unk28 = 0;
    data->unk2E = 0;
    data->unk2D = 0;
    data->unk2C = 0;
    data->miss = 0;
    data->type = type;
    sprite_set_anim(gSpriteHandler, data->sprite, anim_karate_object, type, 0, 0, 0);
    karate_cue_increment_z_for_existing_objects(cue);
}


// Update Object Entity
void karate_cue_update_object(struct KarateManCue *cue) {
    s24_8 x, y;

    if (cue->unk28 < 0x80) { // Some distance check
        sprite_set_visible(gSpriteHandler, cue->sprite, FALSE);
        sprite_set_visible(gSpriteHandler, cue->shadow, FALSE);
    }

    x = cue->unkC;
    y = cue->unk10;
    sprite_set_x_y_z(gSpriteHandler, cue->sprite, FIXED_TO_INT(x), FIXED_TO_INT(y), (0x4700 + cue->unk28 + cue->unk2E));
    sprite_set_x_y(gSpriteHandler, cue->shadow, FIXED_TO_INT(x), cue->unk14);
    set_affine_scale_rotation(cue->unk8, cue->unk2A, cue->unk2C);
    set_affine_scale_rotation(cue->unk9, cue->unk2A, 0);
    sprite_set_visible(gSpriteHandler, cue->sprite, TRUE);
    sprite_set_visible(gSpriteHandler, cue->shadow, TRUE);
}


// Update Hit Object
void karate_cue_update_punched_object(struct KarateManCue *cue) {
    cue->unk18 += cue->unk20;
    cue->unk1C += cue->unk24;
    cue->unkC += cue->unk18;
    cue->unk10 += cue->unk1C;
    cue->unk2C += cue->unk2D;
}


// Update Not Hit Object
void karate_cue_update_launched_object(struct KarateManCue *cue) {
    s32 temparg = cue->unk28; // Distance?
    s32 temp;
    s32 temp1;
    s32 temp2;
    s32 temp3; // s24_8
    s32 temp4; // s24_8

    // Calculate the Y position
    temp = temparg - 0x100;
    temp1 = 81;
    temp1 -= FIXED_TO_INT(FIXED_TO_INT(temp * temp1 * temp));
    temp2 = 53 - temp1;

    temp3 = fast_divsi3(INT_TO_FIXED(36.0), temparg) + SCREEN_CENTER_X;    // Object's X Position
    temp4 = fast_divsi3(INT_TO_FIXED(temp2), temparg) + SCREEN_CENTER_Y; // Object's Y Position
    cue->unkC = INT_TO_FIXED(temp3);
    cue->unk10 = INT_TO_FIXED(temp4);
    cue->unk14 = fast_divsi3(INT_TO_FIXED(53.0), temparg) + SCREEN_CENTER_Y;
    cue->unk2A = Div(INT_TO_FIXED(256.0), temparg);  // Calculate Scale
}


// CUE - Update
u32 karate_cue_update(struct Cue *cue, struct KarateManCue *data, u32 runningTime, u32 duration) {
    struct KarateJoe *joe = &gKarateMan->joe;
    u16 temp;
    u32 zero;

    if (runningTime > ticks_to_frames(0x78)) {
        return TRUE; // Cue is over
    }

    zero = 0;
    switch (data->isHit) {
        case FALSE: // Object wasn't hit
            temp = data->unk28 = Div(INT_TO_FIXED(runningTime), duration);
            if (temp > 0x200) { // Object is on the floor
                data->isHit = TRUE;
                data->unk2C += agb_random(16);
                karate_reset_flow(); // Reset Flow
                play_sound(&s_f_boxing_land_seqData);
                return FALSE;
            }
            if (temp > 0x180) { // Object is out of player's range
                if ((s16)data->miss <= 0) {
                    data->miss = TRUE;
                    joe->miss = ticks_to_frames(0x24);
                }
            }
            karate_cue_update_launched_object(data);
            karate_cue_update_object(data);
            break;

        case TRUE: // Object was hit
            karate_cue_update_punched_object(data);
            if (FIXED_TO_INT(data->unkC) > 0x110) {
                return TRUE;
            }

            if (FIXED_TO_INT(data->unk10) > data->unk14) {
                data->unk10 = INT_TO_FIXED(data->unk14);
                data->unk18 = 0;
                data->unk1C = 0;
                data->unk24 = 0;
                data->unk2D = 0;
            }
            karate_cue_update_object(data);
    }

    return zero;
}


// CUE - Despawn 
void karate_cue_despawn(struct Cue *cue, struct KarateManCue *data) {
    sprite_delete(gSpriteHandler, data->sprite);
    sprite_delete(gSpriteHandler, data->shadow);
    func_080021b8(data->unk8);
    func_080021b8(data->unk9);
}


// Enter "Serious Mode"
void karate_start_serious_mode(void) {
    gKarateMan->seriousModeStarted = FALSE;
    sprite_set_base_palette(gSpriteHandler, gKarateMan->joe.sprite, KARATE_PALETTE_SERIOUS);
    scene_show_bg_layer(0);
    scene_hide_bg_layer(1);
    sprite_set_visible(gSpriteHandler, gKarateMan->flowSprite, FALSE);
    gKarateMan->version = KARATE_VER_SERIOUS;
    scene_set_music_volume_env(0);
    scene_interpolate_music_volume(0x100, ticks_to_frames(0x60));
}


// Stop "Serious Mode"
void karate_stop_serious_mode(void) {
    gKarateMan->seriousModeStopped = FALSE;
    sprite_set_base_palette(gSpriteHandler, gKarateMan->joe.sprite, KARATE_PALETTE_NORMAL);
    scene_hide_bg_layer(0);
    scene_show_bg_layer(1);
    sprite_set_visible(gSpriteHandler, gKarateMan->flowSprite, TRUE);
    gKarateMan->version = KARATE_VER_0;
    karate_update_bg_palette();
    gameplay_inputs_enabled(FALSE); // Disable inputs
}


// CUE - Hit
void karate_cue_hit(struct Cue *cue, struct KarateManCue *data) {
    struct KarateManEngineData *karateMan = gKarateMan;
    struct KarateJoe *joe = &karateMan->joe;
    struct Animation *anim;
    u32 bgFace;
    u32 isBgFaceVer;
    u32 isHigh;
    u32 useTheFace;
    u32 isHighBgFace = 0;

    isBgFaceVer = (karateMan->version == KARATE_VER_FACES);
    isHigh = FALSE;
    data->isHit = TRUE;

    // "Serious Mode"
    if (gKarateMan->seriousModeStarted) {
        karate_start_serious_mode();
    }

    if (gKarateMan->seriousModeStopped) {
        karate_stop_serious_mode();
    }
    
    // Check if Flow is more than 2 or if Version is 2 ("Serious Mode")
    if (gKarateMan->flowLevel > 2) {
        isHigh = TRUE;
    }

    if (gKarateMan->version == KARATE_VER_SERIOUS) {
        isHigh = TRUE;
    }

    if (!isHigh) {
        // Low Flow
        switch (data->type) {
            case 1:
            case 3: // Rock, Bomb 
                data->unk18 = 0;
                data->unk1C = 0;
                data->unk24 = 0x20;
                data->unk2C = 0xa;
                data->unk2D = 0;
                karateMan->joe.isNotBeat = TRUE;
                sprite_set_anim(gSpriteHandler, joe->sprite, anim_karate_joe_punch_ouch, 0, 1, 0x7f, 0);
                if (isBgFaceVer) {
                    play_sound(gameplay_get_cue_barely_sfx(cue));
                } else {
                    play_sound(&s_f_boxing_hard_seqData);
                }
                gameplay_ignore_this_cue_result();
                gameplay_add_cue_result(gameplay_get_cue_marking_criteria(cue), 1, gameplay_get_last_hit_offset());
                karate_decrement_flow();
                isHighBgFace = TRUE;
                break;

            default: // Pot, Soccerball, Lightbulb
                data->unk18 = 0x400;
                data->unk1C = -0x200;
                data->unk24 = 0x40;
                data->unk2D = -6;
                useTheFace = gKarateMan->useTheFace;
                anim = anim_karate_joe_punch_low;
                if (useTheFace) {
                    anim = anim_karate_joe_smug_low;
                }
                karateMan->joe.isNotBeat = TRUE;
                sprite_set_anim(gSpriteHandler, joe->sprite, anim, 0, 1, 0x7f, 0);
                sprite_create(gSpriteHandler, anim_karate_hit_effect, 0, 0x9e, 0x36, 0x4f00, 1, 0, 3);
                if (!isBgFaceVer) {
                    gameplay_set_cue_hit_sfx(cue, &s_f_boxing_normal_seqData);
                }
                karate_increment_flow(); // Increment Flow
                break;
        }
    } else {
        // High Flow
        data->unk18 = 0x800;
        data->unk1C = -0x200;
        data->unk2D = -0x10;
        useTheFace = gKarateMan->useTheFace;
        anim = anim_karate_joe_punch_high;
        if (useTheFace) {
            anim = anim_karate_joe_smug_high;
        }
        karateMan->joe.isNotBeat = TRUE;
        sprite_set_anim(gSpriteHandler, joe->sprite, anim, 0, 1, 0x7f, 0);
        sprite_create(gSpriteHandler, anim_karate_hit_effect, 0, 0x9e, 0x36, 0x4f00, 1, 0, 3);
        switch (data->type) {
            case 1: // Rock
                joe->smirk = ticks_to_frames(0x24);
                play_sound(&s_f_boxing_kansei_seqData);
                break;
            case 3: // Bomb
                joe->happy = ticks_to_frames(0x6c);
                break;
        }
        if (gKarateMan->version == KARATE_VER_SERIOUS) { // BG Flash ("Serious Mode" version)
            palette_fade_to((u16)get_current_mem_id(), 0x0A, 1, karate_man_pal[6], karate_man_pal[5], BG_PALETTE_BUFFER(4));
        }
        karate_increment_flow(); // Increment Flow
    }

    // BG Face
    if (isBgFaceVer) {
        bgFace = 1;
        if (isHighBgFace) {
            bgFace = 2;
        }
        karate_set_bg_face(bgFace, 0x30);
    }

    // Tutorial
    if (gKarateMan->tutorialCounter) {
        gKarateMan->tutorialCounter--;
        sprite_set_anim_cel(gSpriteHandler, gKarateMan->tutorialText, (s8)gKarateMan->tutorialCounter);
    }
}


// CUE - Barely
void karate_cue_barely(struct Cue *cue, struct KarateManCue *data) {
    u32 isBgFaceVer;
    struct KarateJoe *joe = &gKarateMan->joe;

    isBgFaceVer = gKarateMan->version == 1;
    data->isHit = 1;
    data->unk18 = 0x40;
    data->unk1C = -0x200;
    data->unk24 = 0x20;
    data->unk2D = 4;
    joe->isNotBeat = TRUE;
    sprite_set_anim(gSpriteHandler, joe->sprite, anim_karate_joe_punch_high, 0, 1, 0x7f, 0);
    joe->barely = ticks_to_frames(0x24);
    karate_decrement_flow(); // Decrement Flow

    // BG Face
    if (isBgFaceVer) {
        karate_set_bg_face(2, 0x30);
    }
    beatscript_enable_loops();
}


// CUE - Miss
void karate_cue_miss(struct Cue *cue, struct KarateManCue *data) {
	beatscript_enable_loops();
}


// Initialise Joe
void karate_joe_init(struct KarateJoe *joe) {
    joe->isNotBeat = FALSE;
    joe->sprite = sprite_create(gSpriteHandler, anim_karate_joe_stand, 0, 0x50, 0x58, 0x4800, 1, 0, 0);
    if (gKarateMan->version == 2) { // "Serious Mode"
        sprite_set_base_palette(gSpriteHandler, joe->sprite, 1);
    }
    joe->barely = 0;
    joe->miss = 0;
    joe->smirk = 0;
    joe->happy = 0;
}


// Unload Joe
void karate_joe_delete(struct KarateJoe *joe) {
	sprite_delete(gSpriteHandler, joe->sprite);
}


// Update Joe
void karate_joe_update(struct KarateJoe *joe) {
    if (joe->barely) joe->barely--;
    if (joe->miss) joe->miss--;
    if (joe->smirk) joe->smirk--;
    if (joe->happy) joe->happy--;
}


// MAIN - Input Event
void karate_input_event(u32 pressed, u32 released) {
    struct KarateJoe *joe = &gKarateMan->joe;

    joe->isNotBeat = TRUE;
    if (gKarateMan->flowLevel < 3) {
        sprite_set_anim(gSpriteHandler, joe->sprite, anim_karate_joe_punch_low, 0, 1, 0x7f, 0);
    } else {
        sprite_set_anim(gSpriteHandler, joe->sprite, anim_karate_joe_punch_high, 0, 1, 0x7f, 0);
    }
    play_sound(&s_f_boxing_punch_seqData);
}


// COMMON Func_00 - Beat Animation
void karate_common_beat_animation(void) {
    struct KarateManEngineData *karateMan = gKarateMan;
    struct KarateJoe *joe = &karateMan->joe;
    u32 temp;
    s8 currentEntity;
    
    karate_update_bg_palette();
    if ((s16)karateMan->joe.isNotBeat == 1) {
        temp = (u32)sprite_get_data(gSpriteHandler, joe->sprite, 2); // should be u16?
        currentEntity = sprite_get_anim_cel(gSpriteHandler, joe->sprite);
        if (currentEntity < temp - 4) { // Return if current entity is less than ??
            return;
        }
    }
    karateMan->joe.isNotBeat = FALSE;
    sprite_set_anim(gSpriteHandler, joe->sprite, anim_karate_joe_beat, 0, 1, 0x7f, 0);     // Default Beat Animation
    if (joe->smirk) {
        sprite_set_anim(gSpriteHandler, joe->sprite, anim_karate_joe_smirk, 0, 1, 0x7f, 0); // Smirk Beat Animation
    }
    if (joe->barely) {
        sprite_set_anim(gSpriteHandler, joe->sprite, anim_karate_joe_barely, 0, 1, 0x7f, 0); // Barely Beat Animation
    }
    if (joe->happy) {
        sprite_set_anim(gSpriteHandler, joe->sprite, anim_karate_joe_happy, 0, 1, 0x7f, 0); // Happy Beat Animation
    }
    if (joe->miss) {
        sprite_set_anim(gSpriteHandler, joe->sprite, anim_karate_joe_miss, 0, 1, 0x7f, 0); // Miss
        play_sound(&s_f_boxing_v_nua_seqData);
    }
}


// COMMON Func_01 - Toggle Cue Text
void karate_common_display_text(u32 id) {
    sprite_set_visible(gSpriteHandler, gKarateMan->cueTextSprite, id != 0);
    if (id != 0) {
        sprite_set_anim_cel(gSpriteHandler, gKarateMan->cueTextSprite, id - 1);
    }
}


// Initialise Flow
void karate_init_flow(void) {
    gKarateMan->flowLevel = 0;
    gKarateMan->flowSprite = sprite_create(gSpriteHandler, anim_karate_flow_meter, gKarateMan->flowLevel, 36, 16, 0x47f6, 0, 0, 0);
    gKarateMan->flowEnabled = TRUE;
    if (gKarateMan->version == KARATE_VER_SERIOUS) { // "Serious Mode"
        sprite_set_visible(gSpriteHandler, gKarateMan->flowSprite, FALSE);
        gKarateMan->flowEnabled = FALSE;
    }
    gKarateMan->bg = 0;
    gKarateMan->bgPalIndex = karate_flow_palette_low;
}


// Reset Flow
void karate_reset_flow(void) {
    if (gKarateMan->flowLevel > 2) {
        play_sound(&s_f_boxing_score_reset_seqData);
    }
    gKarateMan->flowLevel = 0;
    sprite_set_anim_cel(gSpriteHandler, gKarateMan->flowSprite, gKarateMan->flowLevel);
    gKarateMan->bg = 0;
    gKarateMan->bgPalIndex = karate_flow_palette_low;
    karate_update_bg_palette();
}


// Increment Flow
void karate_increment_flow(void) {
    if (gKarateMan->flowEnabled) {
        if (gKarateMan->flowLevel < 5) { // Flow can't go higher than 5
            gKarateMan->flowLevel++;
            sprite_set_anim_cel(gSpriteHandler, gKarateMan->flowSprite, gKarateMan->flowLevel);
            if (gKarateMan->flowLevel == 3) { // High Flow
                gKarateMan->bg = 0;
                gKarateMan->bgPalIndex = karate_flow_palette_high;
                karate_update_bg_palette(); // Update BG Palette
                play_sound(&s_f_boxing_score_up_seqData);
            }
        }
    }
}


// SUB - Decrement Flow
void karate_decrement_flow(void) {
    if (gKarateMan->flowEnabled) {
        if (gKarateMan->flowLevel) { // Flow can't go lower than 0
            gKarateMan->flowLevel--;
            sprite_set_anim_cel(gSpriteHandler, gKarateMan->flowSprite, gKarateMan->flowLevel);
            if (gKarateMan->flowLevel == 2) { // Low Flow
                gKarateMan->bg = 0;
                gKarateMan->bgPalIndex = karate_flow_palette_low;
                karate_update_bg_palette(); // Update BG Palette
                play_sound(&s_f_boxing_score_down_seqData);
            }
        }
    }
}


// SUB - Update BG Palette 
void karate_update_bg_palette(void) {
    s8 paletteID;  // BG Palette Table byte
    u8 bg;         // Current BG
    u16 *palette4, *newPalette;
    u32 i;
    
    if (gKarateMan->version != KARATE_VER_SERIOUS) { // Don't update if in "Serious Mode"
        bg = gKarateMan->bg;
        paletteID = gKarateMan->bgPalIndex[bg];
        if (paletteID < 0) {
            bg = 0;
            paletteID = gKarateMan->bgPalIndex[0];
        }
        gKarateMan->bg = bg + 1;
        newPalette = BG_PALETTE_BUFFER(paletteID);
        palette4 = BG_PALETTE_BUFFER(4);
        for (i = 0; i < 4; i++) {
            palette4[i] = newPalette[i];
        }
    }
}


// SUB - Toggle Flow
void karate_enable_flow(u32 enable) {
    gKarateMan->flowEnabled = enable;
    sprite_set_visible(gSpriteHandler, gKarateMan->flowSprite, enable);
}
