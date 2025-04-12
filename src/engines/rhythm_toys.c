#include "engines/rhythm_toys.h"

// For readability.
#define gRhythmToys ((struct RhythmToysEngineData *)gCurrentEngineData)


/* RHYTHM TOYS */


void func_08044014(u32 arg0) {
    struct DrumTechNote *sequence;
    
    if (gRhythmToys->unk_358[arg0]) {
        sequence = cat_machine_2_drum_seq_table[arg0];
    } else {
        sequence = cat_machine_1_drum_seq_table[arg0];
    }

    play_drumtech_seq(sequence, 0, 0);
    gRhythmToys->unk_37c = play_sound_in_player(0, cat_machine_meow_sfx_table[arg0]);
}

void func_08044074(u32 button) {
    stop_sound(&s_rap_15ji_desuka_seqData);
    stop_sound(&s_rap_oyatu_desuka_seqData);
    stop_sound(&s_rap_wakari_desuka_seqData);
    stop_sound(&s_rap_oisi_kamone_seqData);
    stop_sound(&s_rap_herusi_kamone_seqData);
    stop_sound(&s_rap_soremoso_kamone_seqData);
    stop_sound(&s_rap_tanosi_kamone_seqData);
    stop_sound(&s_rap_oyatuha_saiko_seqData);
    stop_sound(&s_rap_kibunha_saiko_seqData);
    stop_sound(&s_rap_orette_saiko_seqData);
    stop_sound(&s_rap_kimitte_saiko_seqData);

    if (gRhythmToys->unk_382 == 0) {
        gRhythmToys->unk_380 = agb_random(4);
    }

    gRhythmToys->unk_382 = ticks_to_frames(0x24);
    gRhythmToys->unk_37c = play_sound(rap_machine_sfx_pool[gRhythmToys->unk_380][button]);

    if (button == RHYTHM_TOYS_DOWN_BUTTON) {
        if (gRhythmToys->unk_378) {
            func_08044810();
        } else {
            if (gRhythmToys->unk_381) {
                func_080447f4(&s_rap_machine_bgm_seqData);
                D_030053c0.musicTrkVolume = 0;
                D_030053c0.musicTrkTargets = 0;
            } else {
                func_080447f4(&s_rap_bgm_seqData);
                D_030053c0.musicTrkVolume = 0;
                D_030053c0.musicTrkTargets = -23;
            }

            gRhythmToys->unk_381 ^= 1;
        }
    }
}

void func_080441cc(u32 button) {
    if (gRhythmToys->unk_37c != NULL) {
        fade_out_soundplayer(gRhythmToys->unk_37c, 0x1e);
    }
    
    gRhythmToys->unk_37c = scene_play_random_sound(love_machine_sfx_table[button]);
}

// get button animation
struct Animation* func_08044208(u32 arg0) {
    return rhythm_toys_sprite_table[arg0][gRhythmToys->version].anim;
}

u16 func_08044228(u32 arg0) {
    struct Vector2 *vec2 = rhythm_toys_sprite_table[arg0][gRhythmToys->version].vec2;
    return vec2->x;
}

u16 func_08044248(u32 arg0) {
    struct Vector2 *vec2 = rhythm_toys_sprite_table[arg0][gRhythmToys->version].vec2;
    return vec2->y;
}

void func_08044268(void) {
    gRhythmToys->unk_35f = rhythm_toys_demo_table[gRhythmToys->version] == 0;
    gRhythmToys->unk_360 = sprite_create(gSpriteHandler, func_08044208(6), 0, func_08044228(6), func_08044248(6), 0x800, 0, 0, 0);
    gRhythmToys->unk_362 = 0;

    if (gRhythmToys->unk_35f) {
        sprite_set_visible(gSpriteHandler, gRhythmToys->unk_360, FALSE);
    }
}

void func_08044320(u32 arg0) {
    if (gRhythmToys->unk_35f == 0) {
        if (gRhythmToys->unk_362) {
            func_080443c0();
        }

        sprite_set_playback(gSpriteHandler, gRhythmToys->unk_360, 1, 0, 0);
        sprite_set_anim_cel(gSpriteHandler, gRhythmToys->unk_360, 1);

        gRhythmToys->unk_362 = 1;

        gRhythmToys->currentDemoAction = rhythm_toys_demo_table[arg0];
        gRhythmToys->unk_368 = 0;
        func_08044810();
    }
}

void func_080443c0(void) {
    if (gRhythmToys->unk_35f == 0 && gRhythmToys->unk_362 != 0) {
        sprite_set_playback(gSpriteHandler, gRhythmToys->unk_360, 0, 0, 0);
        sprite_set_anim_cel(gSpriteHandler, gRhythmToys->unk_360, 0);
        stop_drumtech();
        gRhythmToys->unk_362 = 0;
        func_08044810();
    }
}

void func_0804442c(void) {
    u16 button;
    
    if (gRhythmToys->unk_35f == 0 && gRhythmToys->unk_362 != 0) {
        gRhythmToys->unk_368 -= func_0800c398();

        while (gRhythmToys->unk_368 < 0) {
            button = gRhythmToys->currentDemoAction->button;
            
            if (button == 0xFFFF) {
                func_080443c0();
                return;
            }

            if (button < 6) {
                func_0804475c(button);
            }

            gRhythmToys->unk_368 += (gRhythmToys->currentDemoAction->deltaTime) * 0x100;
            gRhythmToys->currentDemoAction++;
        }
    }
}

void rhythm_toys_init_gfx3(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}

void rhythm_toys_init_gfx2(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), rhythm_toys_gfx_tables[gRhythmToys->version], 0x2000);
    run_func_after_task(task, rhythm_toys_init_gfx3, 0);
}

void rhythm_toys_init_gfx1(void) {
    s32 task;

    func_0800c604(0);
    task = start_new_texture_loader(get_current_mem_id(), rhythm_toys_buffered_textures);
    run_func_after_task(task, rhythm_toys_init_gfx2, 0);
}

void rhythm_toys_engine_start(u32 version) {
    u32 i;
    s16 sprite;
    
    gRhythmToys->version = version;

    set_beatscript_tempo(*rhythm_toys_demo_bpm_table[version]);
    rhythm_toys_init_gfx1();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);
    
    gRhythmToys->unk_354 = sprite_create(gSpriteHandler, 
        func_08044208(RHYTHM_TOYS_SPRITE_MACHINE_R), 0x7f,    
        func_08044228(RHYTHM_TOYS_SPRITE_MACHINE_R),
        func_08044248(RHYTHM_TOYS_SPRITE_MACHINE_R),
        0x800, 1, 0x7f, 0
    );

    if (version == ENGINE_VER_RAP_MACHINE) {
        gRhythmToys->unk_356 = sprite_create(gSpriteHandler, 
            func_08044208(RHYTHM_TOYS_SPRITE_MACHINE_L), 0x7f,
            func_08044228(RHYTHM_TOYS_SPRITE_MACHINE_L),
            func_08044248(RHYTHM_TOYS_SPRITE_MACHINE_L),
            0x7ff, 1, 0x7f, 0
        );
    } else {
        gRhythmToys->unk_356 = gRhythmToys->unk_354; // ?
    }

    init_drumtech(&gRhythmToys->drumtech);

    for (i = 0; i < 6; i++) {
        gRhythmToys->unk_358[i] = 0;
    }

    gameplay_set_input_buttons(0, 0);

    for (i = 0; i < 6; i++) {
        gRhythmToys->unk_36c[i] = sprite_create(gSpriteHandler,
            func_08044208(rhythm_toys_button_anim_ids[i]), 0x7f,
            func_08044228(rhythm_toys_button_anim_ids[i]),
            func_08044248(rhythm_toys_button_anim_ids[i]),
            0x700, 1, 0x7f, 0
        );
    }

    gameplay_prevent_dpad_overlap(FALSE);
    func_08044268();

    gRhythmToys->unk_35e = 0;
    gRhythmToys->unk_378 = 0;
    gRhythmToys->unk_37c = NULL;
    gRhythmToys->unk_382 = 0;
    gRhythmToys->unk_381 = 0;
    gRhythmToys->unk_380 = agb_random(4);
}

void rhythm_toys_engine_event_stub(void) {
}

void func_08044730(u32 arg0) {
    gRhythmToys->unk_358[arg0] = clamp_int32(ticks_to_frames(6) - 2, 0, 10);
}

void func_0804475c(s32 arg0) {
    s16 unk;
    
    if (-1 < arg0) {
        if (arg0 < 2) {
            unk = gRhythmToys->unk_354;
        } else {
            unk = gRhythmToys->unk_356;
        }

        sprite_set_anim(gSpriteHandler, unk, func_08044208(rhythm_toys_machine_anim_ids[arg0]), 0, 1, 0x7f, 0);
        sprite_set_anim_cel(gSpriteHandler, gRhythmToys->unk_36c[arg0], 0);   
        rhythm_toys_play_func_table[gRhythmToys->version](arg0);
    }
}

void func_080447f4(struct SongHeader *song) {
    scene_set_music(song);
    gRhythmToys->unk_378 = 1;
}

void func_08044810(void) {
    scene_stop_music();
    gRhythmToys->unk_378 = 0;
}

void rhythm_toys_engine_update(void) {
    u32 i;
    s32 button;
    
    if (gRhythmToys->unk_35e == FALSE) {
        set_drumtech_note_func(func_08044730);

        for (i = 0; i < 6; i++) {
            if (gRhythmToys->unk_358[i]) {
                gRhythmToys->unk_358[i]--;
            }
        }

        if (gRhythmToys->unk_362) {
            func_0804442c();
            
            if (D_03004afc & START_BUTTON) {
                func_080443c0();
            }
        } else {
            button = -1;

            if (D_03004afc & DPAD_RIGHT) {
                button = RHYTHM_TOYS_RIGHT_BUTTON;
            }

            if (D_03004afc & DPAD_UP) {
                button = RHYTHM_TOYS_UP_BUTTON;
            }
            
            if (D_03004afc & DPAD_DOWN) {
                button = RHYTHM_TOYS_DOWN_BUTTON;
            }

            if (D_03004afc & DPAD_LEFT) {
                button = RHYTHM_TOYS_LEFT_BUTTON;
            }

            if (D_03004afc & B_BUTTON) {
                button = RHYTHM_TOYS_B_BUTTON;
            }

            if (D_03004afc & A_BUTTON) {
                button = RHYTHM_TOYS_A_BUTTON;
            }

            func_0804475c(button);

            if (D_03004afc & START_BUTTON) {
                func_08044320(gRhythmToys->version);
            }
        }

        update_drumtech();

        if (D_03004afc & SELECT_BUTTON) {
            stop_drumtech();
            beatscript_disable_loops();

            gRhythmToys->unk_35e = 1;

            if (gRhythmToys->unk_37c != NULL) {
                fade_out_soundplayer(gRhythmToys->unk_37c, 10);
            }

            play_sound(&s_menu_cancel2_seqData);
        }

        if (gRhythmToys->unk_382) {
            gRhythmToys->unk_382--;
        }
    }
}

void rhythm_toys_engine_stop(void) {
}

void rhythm_toys_cue_spawn(struct Cue *cue, struct RhythmToysCue *info, u32 param) {
}

u32 rhythm_toys_cue_update(struct Cue *cue, struct RhythmToysCue *info, u32 runningTime, u32 released) {
    if (runningTime > ticks_to_frames(0x78)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

void rhythm_toys_cue_despawn(struct Cue *cue, struct RhythmToysCue *info) {
}

void rhythm_toys_cue_hit(struct Cue *cue, struct RhythmToysCue *info, u32 pressed, u32 released) {
}

void rhythm_toys_cue_barely(struct Cue *cue, struct RhythmToysCue *info, u32 pressed, u32 released) {
}

void rhythm_toys_cue_miss(struct Cue *cue, struct RhythmToysCue *info) {
}

void rhythm_toys_input_event(u32 pressed, u32 released) {
}

void rhythm_toys_common_beat_animation(void) {
}

void rhythm_toys_common_display_text(void) {
}

void rhythm_toys_common_init_tutorial(void) {
}
