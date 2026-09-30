#include "engines/metronome.h"

asm(".include \"include/gba.inc\""); // Temporary

// For readability.
#define gMetronome ((struct MetronomeEngineData *)gCurrentEngineData)


/* METRONOME */


// Graphics Init. 3
void metronome_init_gfx3(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}

// Graphics Init. 2
void metronome_init_gfx2(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), metronome_gfx_table, 0x2000);
    run_func_after_task(task, metronome_init_gfx3, 0);
}

// Graphics Init. 1
void metronome_init_gfx1(void) {
    s32 task;

    func_0800c604(0);
    task = start_new_texture_loader(get_current_mem_id(), metronome_buffered_textures);
    run_func_after_task(task, metronome_init_gfx2, 0);
}

#include "asm/engines/metronome/asm_08035488.s"

void func_08035780(u32 arg0) {
    u32 unk, unk2;
    
    if (arg0 == 0) {
        unk = 0;
        unk2 = 0x400;
    } else {
        unk = 0x400;
        unk2 = 0x800;
    }

    scene_start_integer_interp(1, ticks_to_frames(0x18), &gMetronome->unk_a, unk, unk2);
    gMetronome->unk_c = arg0;
}

#include "asm/engines/metronome/asm_080357c4.s"

void func_080358b0(void) {
    if (gMetronome->score != 0) {
        beatscript_enable_loops();
        gMetronome->score = 0;
    } else {
        beatscript_disable_loops();
    }
}

void func_080358d8(void) {
    if (gMetronome->unk_2c != 0) {
        beatscript_enable_loops();
    } else {
        beatscript_disable_loops();
    }
}

void func_080358f8(void) {
}

#include "asm/engines/metronome/asm_080358fc.s"

void func_080359e8(void) {
    u32 digits;
    u32 i;
    s32 digitX;
    u32 score;

    score = gMetronome->unk_2c;
    digits = 1;
    
    if (9 < score) {
        digits = 2;
    }
    if (99 < score) {
        digits++;
    }

    for (i = 0; i < 3; i++) {
        sprite_set_anim_cel(gSpriteHandler, gMetronome->unk_16[i], 0x7f);
    }

    digitX = (digits - 1) * 5 + 216;

    for (i = 0; i < digits; i++) {
        sprite_set_anim_cel(gSpriteHandler, gMetronome->unk_16[i], score % 10);
        score = score / 10;
        sprite_set_x(gSpriteHandler, gMetronome->unk_16[i], digitX); 

        digitX -= 10;
    }
}

#include "asm/engines/metronome/asm_08035ab0.s"

void metronome_engine_stop(void) {  
}

void metronome_cue_spawn(struct Cue *cue, struct MetronomeCue *info) {
}

u32 metronome_cue_update(struct Cue *cue, struct MetronomeCue *info, u32 runningTime, u32 duration) {
    if (runningTime > ticks_to_frames(0x30)) {
        return TRUE;
    } else {
        return FALSE;    
    }
}

void metronome_cue_despawn(struct Cue *cue, struct MetronomeCue *info) {
}

void metronome_cue_hit(struct Cue *cue, struct MetronomeCue *info, u32 pressed, u32 released) {
    u32 unk = gameplay_get_last_hit_offset();
    u32 unk2;
    
    sprite_set_anim_cel(gSpriteHandler, gMetronome->unk_12, 0);
    unk2 = clamp_int32(unk + 5, 0, 10);
    sprite_set_anim_cel(gSpriteHandler, gMetronome->unk_10, unk2);

    play_sound(&s_metro_hit_seqData);
    play_sound(&s_metro_hato_seqData);
}

void metronome_cue_barely(struct Cue *cue, struct MetronomeCue *info, u32 pressed, u32 released) {
    u32 unk = gameplay_get_last_hit_offset();
    u32 unk2 = clamp_int32(unk + 5, 0, 10);

    sprite_set_anim_cel(gSpriteHandler, gMetronome->unk_10, unk2);
}

void metronome_cue_miss(struct Cue *cue, struct MetronomeCue *info) {
    gMetronome->score++;
}

void metronome_input_event(u32 pressed, u32 released) {
    gMetronome->score++;
    sprite_set_anim_cel(gSpriteHandler, gMetronome->unk_10, 5); 
}

void metronome_common_beat_animation(void) {
}

void metronome_common_display_text(s32 text) {
    u32 i;
    
    sprite_set_visible(gSpriteHandler, gMetronome->unk_22, FALSE);
    sprite_set_visible(gSpriteHandler, gMetronome->unk_24, FALSE);
    sprite_set_visible(gSpriteHandler, gMetronome->unk_26, FALSE);

    gMetronome->unk_2a = 0;

    switch (text) {
        case 0:
            sprite_set_visible(gSpriteHandler, gMetronome->unk_22, TRUE);
            break;
        case 1:
            sprite_set_visible(gSpriteHandler, gMetronome->unk_24, TRUE);
            gMetronome->unk_2a = 1;
            sprite_set_visible(gSpriteHandler, gMetronome->unk_14, TRUE);
    
            for (i = 0; i < 3; i++) {
                sprite_set_visible(gSpriteHandler, gMetronome->unk_16[i], TRUE);
            }
            break;
        case 2:
            sprite_set_visible(gSpriteHandler, gMetronome->unk_26, TRUE);
            break;
    }
}

void metronome_common_init_tutorial(struct Scene *skipDest) {
    if (skipDest != NULL) {
        gameplay_enable_tutorial(TRUE);
        gameplay_set_skip_destination(skipDest);
    } else {
        gameplay_enable_tutorial(FALSE);
    }
}
