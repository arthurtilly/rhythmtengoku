#include "engines/quiz_show.h"
#include "src/affine_sprite.h"

asm(".include \"include/gba.inc\""); // Temporary

// For readability.
#define gQuizShow ((struct QuizShowEngineData *)gCurrentEngineData)


/* QUIZ SHOW */


void func_0803709c(void) {
    u32 score;
    u32 highscore;
    
    sprite_set_anim_cel(gSpriteHandler, gQuizShow->scoreSprites[1], 0x7f);
    sprite_set_anim_cel(gSpriteHandler, gQuizShow->highscoreSprites[1], 0x7f);

    score = gQuizShow->unk4a;
    sprite_set_anim_cel(gSpriteHandler, gQuizShow->scoreSprites[0], score % 10);

    if (9 < score) {
        sprite_set_anim_cel(gSpriteHandler, gQuizShow->scoreSprites[1], score / 10);
    }

    highscore = gQuizShow->unk4c;
    sprite_set_anim_cel(gSpriteHandler, gQuizShow->highscoreSprites[0], highscore % 10);

    if (9 < highscore) {
        sprite_set_anim_cel(gSpriteHandler, gQuizShow->highscoreSprites[1], highscore / 10);
    }
}

void func_08037178(void) {
    u32 i;

    if (gQuizShow->version != QUIZ_SHOW_VER_ENDLESS) return;

    gQuizShow->unk4a = 0;

    gQuizShow->unk4c = D_030046a8->data.unk294[3];

    sprite_create(gSpriteHandler, anim_quiz_show_current_score_label, 0, 0xc0, 4, 0x800, 0, 0, 0);
    sprite_create(gSpriteHandler, anim_quiz_show_high_score_label, 0, 0x3a, 4, 0x800, 0, 0, 0);

    for (i = 0; i < 2; i++) {
        gQuizShow->scoreSprites[i] = sprite_create(gSpriteHandler, anim_quiz_show_score_num, 0, 0xc0 - (i*8), 4, 0x800, 0, 0x7f, 0);
    }

    
    for (i = 0; i < 2; i++) {
        gQuizShow->highscoreSprites[i] = sprite_create(gSpriteHandler, anim_quiz_show_score_num, 0, 0x3a - (i*8), 4, 0x800, 0, 0x7f, 0);
    }
    
    func_0803709c();
}

void func_08037280(void) {
    if (gQuizShow->version != QUIZ_SHOW_VER_ENDLESS) return;

    gQuizShow->unk4a++;

    if (gQuizShow->unk4a > 99) {
        gQuizShow->unk4a = 99;
    }

    if (gQuizShow->unk4a > gQuizShow->unk4c) {
        gQuizShow->unk4c = gQuizShow->unk4a;
    }

    func_0803709c();
}

void func_080372c0(void) {
    if (gQuizShow->version != QUIZ_SHOW_VER_ENDLESS) return;

    D_030046a8->data.unk294[3] = gQuizShow->unk4c;
}

void func_080372e8(void) {
    gQuizShow->unk_30 = sprite_create(gSpriteHandler, anim_quiz_show_clock, 0, 120, 76, 0x8800, 0, 0, 0x8000);
    gQuizShow->unk_34 = create_affine_sprite(anim_quiz_show_clock_hand, 0, 120, 76, 0x87ff, 0x100, 0, 0, 0, 0x8000, 1);

    sprite_attr_set(gSpriteHandler, gQuizShow->unk_30, 0x1000);
    gQuizShow->unk_3c = 0;
}

void func_08037378(void) {
    s16 rotation;
    
    if (gQuizShow->unk_3c == 0) return;
    if (gQuizShow->unk_38 >= gQuizShow->unk_3c) return;

    gQuizShow->unk_38++;

    rotation = gQuizShow->unk_38 * 0x800 / gQuizShow->unk_3c;
    
    affine_sprite_set_rotation(gQuizShow->unk_34, rotation);
}

void func_080373ac(u32 arg0) {
    sprite_set_visible(gSpriteHandler, gQuizShow->unk_30, arg0);
    affine_sprite_set_visible(gQuizShow->unk_34, arg0);
}

void func_080373dc(u32 arg0) {
    gQuizShow->unk_3c = ticks_to_frames(arg0);
    gQuizShow->unk_38 = 0;
}

void quiz_show_init_gfx3(void) {
	func_0800c604(0);
	gameplay_start_screen_fade_in();
}

void quiz_show_init_gfx2(void) {
	s32 task;

	func_0800c604(0);
	task = func_08002ee0(get_current_mem_id(), quiz_show_gfx_table, 0x2000);
	run_func_after_task(task, quiz_show_init_gfx3, 0);
}

void quiz_show_init_gfx1(void) {
    s32 task;

	func_0800c604(0);
	task = start_new_texture_loader(get_current_mem_id(), quiz_show_buffered_textures);
	run_func_after_task(task, quiz_show_init_gfx2, 0);
}

#include "asm/engines/quiz_show/asm_08037460.s"

void quiz_show_engine_event_stub(void) {
}

void func_0803785c(struct QuizShowCharacter *character, u32 arg1) {
    u32 clamped = clamp_int32(arg1, 0, 99);
    sprite_set_anim_cel(gSpriteHandler, character->digit1, clamped % 10);
    sprite_set_anim_cel(gSpriteHandler, character->digit2, clamped / 10);

    character->count = clamp_int32(arg1, 0, 300);
}

void func_080378d8(u32 arg0, s32 arg1) {
    struct QuizShowCharacter *character = arg0 == QUIZ_SHOW_CHAR_HOST ? &gQuizShow->host : &gQuizShow->player;
    struct SongHeader *sfx;

    switch(arg1) {
        case -1:
            sprite_set_anim_cel(gSpriteHandler, character->digit1, 10);
            sprite_set_anim_cel(gSpriteHandler, character->digit2, 10);

            break;
        case -2:
            func_0803785c(character, character->count);
            break;
        case -3:
            func_0803785c(character, character->count + 1);

            switch (character->count) {
                case 0x64:
                    sprite_set_visible(gSpriteHandler, gQuizShow->player.digit1, FALSE);
                    sprite_set_visible(gSpriteHandler, gQuizShow->player.digit2, FALSE);
                    sprite_create(gSpriteHandler, anim_quiz_show_explode_player_podium, 0, 0x90, 0x98, 0x8814, 1, 0x7f, 0);
                    sfx = &s_f_quiz_blast_ply_seqData;
                    break;
                case 0x78:
                    sprite_set_visible(gSpriteHandler, gQuizShow->host.digit1, FALSE);
                    sprite_set_visible(gSpriteHandler, gQuizShow->host.digit2, FALSE);
                    sprite_create(gSpriteHandler, anim_quiz_show_explode_host_podium, 0, 0x58, 0x98, 0x8814, 1, 0x7f, 0);
                    sfx = &s_f_quiz_blast_com_seqData;
                    break;
                case 0x96:
                    sprite_create(gSpriteHandler, anim_quiz_show_explode_sign, 0, 0x78, 0x2d, 0x8800, 1, 0x7f, 0);
                    sfx = &s_f_quiz_blast_plate_seqData;
                    break;
                default:
                    return;
            }

            play_sound_in_player(5, sfx);
            break;
        default:
            func_0803785c(character, arg1);
            break;
    }
}

void func_08037a64(u32 arg0) {
    func_080378d8(arg0 & 0xF, (s32)arg0 >> 4);
}

void func_08037a78(u32 arg0, u32 arg1) {
    struct QuizShowCharacter *character;

    character = arg0 == QUIZ_SHOW_CHAR_HOST ? &gQuizShow->host : &gQuizShow->player;

    switch(arg1) {
        case 0:
            sprite_set_anim(gSpriteHandler, character->rightArm, quiz_show_arm_r_anim[arg0], 1, 1, 0x7f, 0);
            sprite_set_anim(gSpriteHandler, character->leftArm, quiz_show_arm_l_anim[arg0], 1, 1, 0x7f, 0);
            break;
        case 1:
            sprite_set_anim(gSpriteHandler, character->rightArm, quiz_show_arm_r_anim[arg0], 2, -1, 0, 0);
            sprite_set_anim(gSpriteHandler, character->leftArm, quiz_show_arm_l_anim[arg0], 2, -1, 0, 0);
            break;
        case 2:
            sprite_set_anim(gSpriteHandler, character->head, quiz_show_face_neutral_anim[arg0], 0, 1, 0x7f, 0);
            break;
        case 3:
            sprite_set_anim(gSpriteHandler, character->head, quiz_show_face_success_anim[arg0], 0, 1, 0x7f, 0);
            break;
        case 4:
            sprite_set_anim(gSpriteHandler, character->head, quiz_show_face_failure_anim[arg0], 0, 1, 0x7f, 0);
            break;
    }
}

void func_08037be0(u32 arg0) {
    func_08037a78(arg0 & 0xF, (arg0 >> 4) & 0xF);
}

void func_08037bf4(u32 arg0) {
    s16 unk;
    s16 unk2;

    unk = !arg0 ? gQuizShow->host.rightArm : gQuizShow->host.leftArm;
    
    sprite_set_anim(gSpriteHandler, unk, quiz_show_host_button_press_anim[arg0], 0, 1, 0x7f, 0);

    unk2 = !arg0 ? gQuizShow->host.rightButton : gQuizShow->host.leftButton;

    sprite_set_anim_cel(gSpriteHandler, unk2, 0);
    sprite_set_anim(gSpriteHandler, gQuizShow->host.head, quiz_show_endless_host_face_anim[gQuizShow->unk_49], 0, 1, 0x7f, 0);

    gQuizShow->host.count = clamp_int32(gQuizShow->host.count + 1, 0, 99);
    play_sound(&s_f_quiz_hit_com_seqData);
}

void func_08037cb8(u32 arg0) {
    if (arg0) {
        scene_show_bg_layer(BG_LAYER_0);
    } else {
        scene_hide_bg_layer(BG_LAYER_0);
    }
}

s32 func_08037cd0(void) {
    if (gQuizShow->host.count == gQuizShow->player.count) {
        return TRUE;
    } else {
        return FALSE;
    }
}

void quiz_show_engine_update(void) {
    func_08037378();
}

void func_08037d00(struct QuizShowScriptTable *arg0) {
    gQuizShow->unk_40 = arg0;
}

struct Beatscript *func_08037d0c(void) {
    return gQuizShow->unk_40->scriptA; 
}

struct Beatscript *func_08037d1c(void) {
    return gQuizShow->unk_40->scriptB; 
}

void func_08037d2c(void) {
    struct QuizShowScriptTable **scripts = gQuizShow->unk_40->scriptTable;
    struct QuizShowScriptTable **current;
    u32 count = 0;

    if (scripts[0] != NULL) {
        current = scripts;
        do {
            current++;
            count++;
        } while (*current != NULL);
    }

    gQuizShow->unk_40 = scripts[agb_random(count)];
}

void func_08037d6c(u32 arg0) {
    gQuizShow->unk_44 = arg0;
    
    if (gQuizShow->unk_48 == QUIZ_SHOW_VER_0) return;
    set_beatscript_tempo(gQuizShow->unk_44);
}

void func_08037d90(u32 arg0) {
    gQuizShow->unk_44 = clamp_int32(gQuizShow->unk_44 * arg0 >> 8, 60, 400);
    
    if (gQuizShow->unk_48 == QUIZ_SHOW_VER_0) return;
    set_beatscript_tempo(gQuizShow->unk_44);
}

void func_08037dc8(u32 arg0) {
    if (arg0) {
        if (gQuizShow->unk_48 == 0) {
            gQuizShow->unk_46 = get_beatscript_tempo();
            set_beatscript_tempo(gQuizShow->unk_44);
        }
    } else {
        if (gQuizShow->unk_48 != 0) {
            set_beatscript_tempo(gQuizShow->unk_46);
        }
    }

    gQuizShow->unk_48 = arg0;
}

void func_08037e24(void) {
    u32 unk = gQuizShow->unk_49 + 1;
    gQuizShow->unk_49 = unk;

    if ((u8)unk > 4) {
        gQuizShow->unk_49 = 4;
    }
}

void quiz_show_engine_stop(void) {
}

void quiz_show_cue_spawn(struct Cue *cue, struct QuizShowCue *info, u32 param) {
}

u32 quiz_show_cue_update(struct Cue *cue, struct QuizShowCue *info, u32 runningTime, u32 duration) {
    if (runningTime > ticks_to_frames(0x78)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

void quiz_show_cue_despawn(struct Cue *cue, struct QuizShowCue *info) {
}

void quiz_show_cue_hit(struct Cue *cue, struct QuizShowCue *info, u32 pressed, u32 released) {
}

void quiz_show_cue_barely(struct Cue *cue, struct QuizShowCue *info, u32 pressed, u32 released) {
}

void quiz_show_cue_miss(struct Cue *cue, struct QuizShowCue *info) {
}

void quiz_show_input_event(u32 pressed, u32 released) {
    struct QuizShowCharacter *player = &gQuizShow->player;
    
    if (pressed & A_BUTTON) {
        sprite_set_anim(gSpriteHandler, player->rightArm, anim_quiz_show_player_press_button_r, 0, 1, 0x7f, 0);
        sprite_set_anim_cel(gSpriteHandler, player->rightButton, 0);
        func_080378d8(1, -3);
        play_sound(&s_f_quiz_hit_ply_seqData);
    }

    if (pressed & DPAD_ANY) {
        sprite_set_anim(gSpriteHandler, player->leftArm, anim_quiz_show_player_press_button_l, 0, 1, 0x7f, 0);
        sprite_set_anim_cel(gSpriteHandler, player->leftButton, 0);
        func_080378d8(1, -3);
        play_sound(&s_f_quiz_hit_ply_seqData);
    }

    sprite_set_anim(gSpriteHandler, player->head, quiz_show_endless_player_face_anim[gQuizShow->unk_49], 0, 1, 0x7f, 0);
}

void quiz_show_common_beat_animation(void) {
}

void quiz_show_common_display_text(void) {
}

void quiz_show_common_init_tutorial(struct Scene *scene) {
    if (scene != NULL) {
        gameplay_enable_tutorial(TRUE);
        gameplay_set_skip_destination(scene);
    } else {
        gameplay_enable_tutorial(FALSE);
    } 
}
