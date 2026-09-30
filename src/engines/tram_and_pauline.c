#include "engines/tram_and_pauline.h"

asm(".include \"include/gba.inc\""); // Temporary

// For readability.
#define gTramPauline ((struct TramPaulineEngineData *)gCurrentEngineData)


/* TRAM & PAULINE */

void tram_pauline_init_gfx3(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}

void tram_pauline_init_gfx2(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), tram_pauline_gfx_tables[gTramPauline->version], 0x2000);
    run_func_after_task(task, tram_pauline_init_gfx3, 0);
}

void tram_pauline_init_gfx1(void) {
    s32 task;

    func_0800c604(0);
    task = start_new_texture_loader(get_current_mem_id(), tram_pauline_buffered_textures);
    run_func_after_task(task, tram_pauline_init_gfx2, 0);
}

#include "asm/engines/tram_and_pauline/asm_0803fd10.s"

#include "asm/engines/tram_and_pauline/asm_08040064.s"

#include "asm/engines/tram_and_pauline/asm_080400d0.s"

#include "asm/engines/tram_and_pauline/asm_0804016c.s"

#include "asm/engines/tram_and_pauline/asm_08040314.s"


void func_08040434(u32 arg0) { 
    gTramPauline->unk_40 = arg0;
    
    switch (arg0) {
        case 0:
            sprite_set_x_y(gSpriteHandler, gTramPauline->textSprite, 0x50, 0x40);
            break;
        case 1:
            sprite_set_x_y(gSpriteHandler, gTramPauline->textSprite, 0xa0, 0x40);
            break;
        case 2:
            sprite_set_x_y(gSpriteHandler, gTramPauline->textSprite, 0x78, 0x40);
            break;
        case 3:
            sprite_set_x_y(gSpriteHandler, gTramPauline->textSprite, 0x78, 0x40);
            sprite_set_visible(gSpriteHandler, gTramPauline->skipTutorialSprite, FALSE);
            break;
    }
}

#include "asm/engines/tram_and_pauline/asm_080404c4.s"

#include "asm/engines/tram_and_pauline/asm_08040718.s"

void tram_pauline_engine_update() {
    s32 unk;
    s32 unk2;
    s16 pos;
    
    func_08040718(); // looks like this one updates the positions of the foxes.. lots of math... eek..

    // this is probably the curtains opening thing
    
    if (gTramPauline->version != 1) {
        return;
    }

    if (gTramPauline->curtainScroll > 0x9fff) {
        return;
    }

    unk = ticks_to_frames(0xc0);
    gTramPauline->curtainScroll += 0xa000 / unk;

    pos = gTramPauline->curtainScroll * 0x100 >> 0x10;
    
    scene_set_bg_layer_pos(BG_LAYER_1, 0, pos);
}

void tram_pauline_engine_stop(void) {
}

void tram_pauline_cue_spawn(struct Cue *cue, struct TramPaulineCue *info, u32 character) {
    info->unk = character;
}

u32 tram_pauline_cue_update(struct Cue *cue, struct TramPaulineCue *info, u32 duration) {
    u8 i;
    s32 unk;

    for (i = 0; i < 2; i++) {
        sprite_set_x_y(gSpriteHandler, 
            gTramPauline->unkSprites[i], 
            gTramPauline->foxes[i].x, 
            gTramPauline->foxes[i].y);
    }

    unk = ticks_to_frames(0x30);

    if (duration > unk) {
        return 1;
    } else {
        return 0;
    }
}

void tram_pauline_cue_despawn(struct Cue *cue, struct TramPaulineCue *info) {
}

#include "asm/engines/tram_and_pauline/asm_08040a84.s"

void tram_pauline_cue_barely(struct Cue *cue, struct TramPaulineCue *info, u32 pressed, u32 released) {
    func_08040314(info->unk);
    beatscript_enable_loops();
}

void tram_pauline_cue_miss(struct Cue *cue, struct TramPaulineCue *info) {
    beatscript_enable_loops();
}

void tram_pauline_input_event(u32 pressed, u32 released) {
}

void tram_pauline_common_beat_animation(void) {
    u8 i;
    
    for (i = 0; i <= 1; i++) {
        if (gTramPauline->foxes[i].unk_5 <= 1) {
           gTramPauline->foxes[i].unk_F = 0;
        }
    }
}

void tram_pauline_common_display_text(const char *text) {
    struct PrintedTextAnim *textAnim;
    
    if (text == NULL) {
        sprite_set_visible(gSpriteHandler, gTramPauline->textSprite, FALSE);
    } else {
        delete_bmp_font_obj_text_anim(gTramPauline->font, gTramPauline->textSprite);
        textAnim = bmp_font_obj_print_c(gTramPauline->font, text, 1, 0xc);
        sprite_set_anim(gSpriteHandler, gTramPauline->textSprite, textAnim->frames, 0, 1, 0, 0);
        sprite_set_visible(gSpriteHandler, gTramPauline->textSprite, TRUE);
    }
}

void tram_pauline_common_init_tutorial(struct Scene *skipDestination) {
    if (skipDestination != NULL) {
        gameplay_enable_tutorial(TRUE);
        gameplay_set_skip_destination(skipDestination);
        sprite_set_visible(gSpriteHandler, gTramPauline->skipTutorialSprite, TRUE);
    } else {
        gameplay_enable_tutorial(FALSE);
        sprite_set_visible(gSpriteHandler, gTramPauline->skipTutorialSprite, FALSE);
    }
}
