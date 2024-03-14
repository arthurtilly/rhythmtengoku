#include "engines/rap_men.h"

#include "src/code_08001360.h"
#include "src/bitmap_font.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gRapMen ((struct RapMenEngineData *)gCurrentEngineData)


/* RAP MEN */


// Get Animation
struct Animation *rap_men_get_anim(u32 anim) {
    return rap_men_anim_table[anim][gRapMen->version];
}


// Graphics Init. 3
void rap_men_init_gfx3(void) {
	func_0800c604(0);
	gameplay_start_screen_fade_in();
}


// Graphics Init. 2
void rap_men_init_gfx2(void) {
	s32 task;

	func_0800c604(0);
	task = func_08002ee0(get_current_mem_id(), rap_men_gfx_tables[gRapMen->version], 0x2000);
	run_func_after_task(task, rap_men_init_gfx3, 0);
}


// Graphics Init. 1
void rap_men_init_gfx1(void) {
	s32 task;

	func_0800c604(0);
	task = start_new_texture_loader(get_current_mem_id(), rap_men_buffered_textures);
	run_func_after_task(task, rap_men_init_gfx2, 0);
}


// Game Engine Start
void rap_men_engine_start(u32 version) {
    struct PrintedTextAnim *textAnim;

    gRapMen->version = version;
    rap_men_init_gfx1();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);
    gRapMen->unk4 = scene_create_obj_font_printer(0x340, 2);
    textAnim = bmp_font_obj_print_l(gRapMen->unk4, D_0805a8b0, 1, 14);
    gRapMen->textSprite = sprite_create(gSpriteHandler, textAnim->frames, 0, 120, 148, 0, 0, 0, 0);
    gRapMen->rapperSprite = sprite_create(gSpriteHandler, rap_men_get_anim(RAP_MEN_ANIM_RAPPER), 0, 70, 130, 0x4800, 1, 0x7f, 0);
    gRapMen->playerSprite = sprite_create(gSpriteHandler, rap_men_get_anim(RAP_MEN_ANIM_PLAYER), 0, 160, 130, 0x4800, 1, 0x7f, 0);
    gRapMen->rapperAnimTimer = 0;
    gRapMen->playerAnimTimer = 0;
    gRapMen->unusedAnimTimer = 0;
    gRapMen->isTutorial = 0;
    gameplay_set_input_buttons(A_BUTTON, 0);
}


// Engine Event 02 (STUB)
void rap_men_engine_event_stub(void) {
}


// Engine Event 00 (Set Rapper Animation)
void rap_men_set_rapper_anim(u32 anim) {
    sprite_set_anim(gSpriteHandler, gRapMen->rapperSprite, rap_men_get_anim(rapping_anim_map[anim]), 0, 1, 0x7f, 0);
    gRapMen->rapperAnimTimer = ticks_to_frames(rapping_anim_durations[anim]);
}


// Engine Event 01 (Enable Tutorial)
void rap_men_enable_tutorial(u32 isTutorial) {
    gRapMen->isTutorial = isTutorial;
}


// Game Engine Update
void rap_men_engine_update(void) {
    if (gRapMen->rapperAnimTimer > 0) {
        gRapMen->rapperAnimTimer--;
    }
    if (gRapMen->playerAnimTimer > 0) {
        gRapMen->playerAnimTimer--;
    }
    if (gRapMen->unusedAnimTimer > 0) {
        gRapMen->unusedAnimTimer--;
    }
}


// Game Engine Stop
void rap_men_engine_stop(void) {
}


// Cue - Spawn
void rap_men_cue_spawn(struct Cue *cue, struct RapMenCue *info, u32 sound) {
    sprite_set_anim(gSpriteHandler, gRapMen->playerSprite, rap_men_get_anim(RAP_MEN_ANIM_PREPARE), 0, 1, 0x7f, 0);
    gRapMen->playerAnimTimer = ticks_to_frames(0x24);
    gRapMen->unusedAnimTimer = ticks_to_frames(0x24);
    info->sound = sound;
}


// Cue - Update
u32 rap_men_cue_update(struct Cue *cue, struct RapMenCue *info, u32 runningTime, u32 duration) {
    if (runningTime > ticks_to_frames(0x30)) {
        return TRUE;
    } else {
        return FALSE;
    }
}


// Cue - Despawn
void rap_men_cue_despawn(struct Cue *cue, struct RapMenCue *info) {
}


// Cue - Hit
void rap_men_cue_hit(struct Cue *cue, struct RapMenCue *info, u32 pressed, u32 released) {
    sprite_set_anim(gSpriteHandler, gRapMen->playerSprite, rap_men_get_anim(RAP_MEN_ANIM_HIT), 0, 1, 0x7f, 0);
    gRapMen->playerAnimTimer = ticks_to_frames(0x24);
    sprite_create(gSpriteHandler, rap_men_get_anim(RAP_MEN_ANIM_SMOKE), 0, 160, 130, 0x47f6, 1, 0, 3);
    rap_men_set_rapper_anim(RAP_MEN_ANIM_PREPARE);
    play_sound(rap_men_cue_hit_sfx[gRapMen->version][info->sound]);
    play_sound(&s_SD1_seqData);
    play_sound(&s_CC4_seqData);
}


// Cue - Barely
void rap_men_cue_barely(struct Cue *cue, struct RapMenCue *info, u32 pressed, u32 released) {
    sprite_set_anim(gSpriteHandler, gRapMen->playerSprite, rap_men_get_anim(RAP_MEN_ANIM_BARELY), 0, 1, 0x7f, 0);
    gRapMen->playerAnimTimer = ticks_to_frames(0x24);
    play_sound(rap_men_cue_hit_sfx[gRapMen->version][RAP_CUE_SFX_SHORT]);
    play_sound(&s_tom_M_seqData);
}


// Cue - Miss
void rap_men_cue_miss(struct Cue *cue, struct RapMenCue *info) {
    if (!gRapMen->isTutorial) {
        sprite_set_anim(gSpriteHandler, gRapMen->playerSprite, rap_men_get_anim(RAP_MEN_ANIM_MISS), 0, 1, 0x7f, 0);
        gRapMen->playerAnimTimer = ticks_to_frames(0x3C);
        play_sound(&s_RC_seqData);
    }
    beatscript_enable_loops();
}


// Input Event
void rap_men_input_event(u32 pressed, u32 released) {
    sprite_set_anim(gSpriteHandler, gRapMen->playerSprite, rap_men_get_anim(RAP_MEN_ANIM_PLAYER), 0, 1, 0x7f, 0);
    gRapMen->playerAnimTimer = ticks_to_frames(0x24);
    play_sound(rap_men_cue_miss_sfx[gRapMen->version]);
    beatscript_enable_loops();
}


// Common Event 0 (Beat Animation)
void rap_men_common_beat_animation(void) {
    if (gRapMen->rapperAnimTimer == 0) {
        sprite_set_anim(gSpriteHandler, gRapMen->rapperSprite, rap_men_get_anim(RAP_MEN_ANIM_RAPPER), 0, 1, 0x7f, 0);
    }
    if (gRapMen->playerAnimTimer == 0) {
        sprite_set_anim(gSpriteHandler, gRapMen->playerSprite, rap_men_get_anim(RAP_MEN_ANIM_PLAYER), 0, 1, 0x7f, 0);
    }
}


// Common Event 1 (Display Text)
void rap_men_common_display_text(char *text) {
    struct PrintedTextAnim *textAnim;

    if (text == NULL) {
        sprite_set_visible(gSpriteHandler, gRapMen->textSprite, FALSE);
    } else {
        textAnim = bmp_font_obj_print_c(gRapMen->unk4, text, 1, 8);
        delete_bmp_font_obj_text_anim(gRapMen->unk4, gRapMen->textSprite);
        sprite_set_anim(gSpriteHandler, gRapMen->textSprite, textAnim->frames, 0, 0, 0, 0);
        sprite_set_visible(gSpriteHandler, gRapMen->textSprite, TRUE);
    }
}


// Common Event 2 (Init. Tutorial)
void rap_men_common_init_tutorial(void) {
}
