#include "engines/rap_men.h"

#include "src/code_08001360.h"
#include "src/bitmap_font.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gRapMenInfo ((struct RapMenInfo *)D_030055d0)


/* RAP MEN */


// Get Animation
struct Animation *rap_men_get_anim(u32 anim) {
    return rap_men_anim_table[anim][gRapMenInfo->version];
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
	task = func_08002ee0(get_current_mem_id(), rap_men_gfx_tables[gRapMenInfo->version], 0x2000);
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

    gRapMenInfo->version = version;
    rap_men_init_gfx1();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);
    gRapMenInfo->unk4 = func_0800c660(0x340, 2);
    textAnim = bmp_font_obj_print_l(gRapMenInfo->unk4, D_0805a8b0, 1, 14);
    gRapMenInfo->textSprite = func_0804d160(D_03005380, textAnim->frames, 0, 120, 148, 0, 0, 0, 0);
    gRapMenInfo->rapperSprite = func_0804d160(D_03005380, rap_men_get_anim(RAP_MEN_ANIM_RAPPER), 0, 70, 130, 0x4800, 1, 0x7f, 0);
    gRapMenInfo->playerSprite = func_0804d160(D_03005380, rap_men_get_anim(RAP_MEN_ANIM_PLAYER), 0, 160, 130, 0x4800, 1, 0x7f, 0);
    gRapMenInfo->rapperAnimTimer = 0;
    gRapMenInfo->playerAnimTimer = 0;
    gRapMenInfo->unusedAnimTimer = 0;
    gRapMenInfo->isTutorial = 0;
    gameplay_set_input_buttons(A_BUTTON, 0);
}


// Engine Event 02 (STUB)
void rap_men_engine_event_stub(void) {
}


// Engine Event 00 (Set Rapper Animation)
void rap_men_set_rapper_anim(u32 anim) {
    func_0804d8f8(D_03005380, gRapMenInfo->rapperSprite, rap_men_get_anim(rapping_anim_map[anim]), 0, 1, 0x7f, 0);
    gRapMenInfo->rapperAnimTimer = beats_to_ticks(rapping_anim_durations[anim]);
}


// Engine Event 01 (Enable Tutorial)
void rap_men_enable_tutorial(u32 isTutorial) {
    gRapMenInfo->isTutorial = isTutorial;
}


// Game Engine Update
void rap_men_engine_update(void) {
    if (gRapMenInfo->rapperAnimTimer > 0) {
        gRapMenInfo->rapperAnimTimer--;
    }
    if (gRapMenInfo->playerAnimTimer > 0) {
        gRapMenInfo->playerAnimTimer--;
    }
    if (gRapMenInfo->unusedAnimTimer > 0) {
        gRapMenInfo->unusedAnimTimer--;
    }
}


// Game Engine Stop
void rap_men_engine_stop(void) {
}


// Cue - Spawn
void rap_men_cue_spawn(struct Cue *cue, struct RapMenCue *info, u32 sound) {
    func_0804d8f8(D_03005380, gRapMenInfo->playerSprite, rap_men_get_anim(RAP_MEN_ANIM_PREPARE), 0, 1, 0x7f, 0);
    gRapMenInfo->playerAnimTimer = beats_to_ticks(0x24);
    gRapMenInfo->unusedAnimTimer = beats_to_ticks(0x24);
    info->sound = sound;
}


// Cue - Update
u32 rap_men_cue_update(struct Cue *cue, struct RapMenCue *info, u32 runningTime, u32 duration) {
    if (runningTime > beats_to_ticks(0x30)) {
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
    func_0804d8f8(D_03005380, gRapMenInfo->playerSprite, rap_men_get_anim(RAP_MEN_ANIM_HIT), 0, 1, 0x7f, 0);
    gRapMenInfo->playerAnimTimer = beats_to_ticks(0x24);
    func_0804d160(D_03005380, rap_men_get_anim(RAP_MEN_ANIM_SMOKE), 0, 160, 130, 0x47f6, 1, 0, 3);
    rap_men_set_rapper_anim(RAP_MEN_ANIM_PREPARE);
    play_sound(rap_men_cue_hit_sfx[gRapMenInfo->version][info->sound]);
    play_sound(&s_SD1_seqData);
    play_sound(&s_CC4_seqData);
}


// Cue - Barely
void rap_men_cue_barely(struct Cue *cue, struct RapMenCue *info, u32 pressed, u32 released) {
    func_0804d8f8(D_03005380, gRapMenInfo->playerSprite, rap_men_get_anim(RAP_MEN_ANIM_BARELY), 0, 1, 0x7f, 0);
    gRapMenInfo->playerAnimTimer = beats_to_ticks(0x24);
    play_sound(rap_men_cue_hit_sfx[gRapMenInfo->version][RAP_CUE_SFX_SHORT]);
    play_sound(&s_tom_M_seqData);
}


// Cue - Miss
void rap_men_cue_miss(struct Cue *cue, struct RapMenCue *info) {
    if (!gRapMenInfo->isTutorial) {
        func_0804d8f8(D_03005380, gRapMenInfo->playerSprite, rap_men_get_anim(RAP_MEN_ANIM_MISS), 0, 1, 0x7f, 0);
        gRapMenInfo->playerAnimTimer = beats_to_ticks(0x3C);
        play_sound(&s_RC_seqData);
    }
    beatscript_enable_loops();
}


// Input Event
void rap_men_input_event(u32 pressed, u32 released) {
    func_0804d8f8(D_03005380, gRapMenInfo->playerSprite, rap_men_get_anim(RAP_MEN_ANIM_PLAYER), 0, 1, 0x7f, 0);
    gRapMenInfo->playerAnimTimer = beats_to_ticks(0x24);
    play_sound(rap_men_cue_miss_sfx[gRapMenInfo->version]);
    beatscript_enable_loops();
}


// Common Event 0 (Beat Animation)
void rap_men_common_beat_animation(void) {
    if (gRapMenInfo->rapperAnimTimer == 0) {
        func_0804d8f8(D_03005380, gRapMenInfo->rapperSprite, rap_men_get_anim(RAP_MEN_ANIM_RAPPER), 0, 1, 0x7f, 0);
    }
    if (gRapMenInfo->playerAnimTimer == 0) {
        func_0804d8f8(D_03005380, gRapMenInfo->playerSprite, rap_men_get_anim(RAP_MEN_ANIM_PLAYER), 0, 1, 0x7f, 0);
    }
}


// Common Event 1 (Display Text)
void rap_men_common_display_text(char *text) {
    struct PrintedTextAnim *textAnim;

    if (text == NULL) {
        func_0804d770(D_03005380, gRapMenInfo->textSprite, FALSE);
    } else {
        textAnim = bmp_font_obj_print_c(gRapMenInfo->unk4, text, 1, 8);
        delete_bmp_font_obj_text_anim(gRapMenInfo->unk4, gRapMenInfo->textSprite);
        func_0804d8f8(D_03005380, gRapMenInfo->textSprite, textAnim->frames, 0, 0, 0, 0);
        func_0804d770(D_03005380, gRapMenInfo->textSprite, TRUE);
    }
}


// Common Event 2 (Init. Tutorial)
void rap_men_common_init_tutorial(void) {
}
