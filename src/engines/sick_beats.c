#include "engines/sick_beats.h"
#include "src/scenes/gameplay.h"
#include "src/memory.h"
#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"
#include "src/affine_sprite.h"

asm(".include \"include/gba.inc\""); // Temporary

// For readability.
#define gSickBeats ((struct SickBeatsEngineData *)gCurrentEngineData)


/* SICK BEATS */


// Init Particles
void func_08042864(void) {
    u32 i;
    if (gSickBeatsInfo->version != ENGINE_VER_SICK_BEATS_ENDLESS) return;
    // base particle
    gSickBeatsInfo->unk21E[0] = func_0804d160(D_03005380, anim_sick_beats_endless_particle, 0, 0x40, 0x40, 0x800, 0, 0, 0x8000);
    for (i = 1; i < ARRAY_SIZE(gSickBeatsInfo->unk21E); i++) { // copy particles
        gSickBeatsInfo->unk21E[i] = func_0804d3cc(D_03005380, gSickBeatsInfo->unk21E[0]);
    }

    for (i = 0; i < ARRAY_SIZE(gSickBeatsInfo->unk246); i++) {
        gSickBeatsInfo->unk246[i] = 0;
    }
    gSickBeatsInfo->unk26E = 0;
    gSickBeatsInfo->unk26F = 1;
    gSickBeatsInfo->unk270 = func_0804ddb0(D_03005380, gSickBeatsInfo->unk21E[0], 2); // amount of cels in the particle anim
}

// Update Particles
void func_08042934(void) {
    u32 i;

    if ((gSickBeatsInfo->version != ENGINE_VER_SICK_BEATS_ENDLESS) || gSickBeatsInfo->unk202) return;
    for (i = 0; i < ARRAY_SIZE(gSickBeatsInfo->unk246); i++) {
        if (gSickBeatsInfo->unk246[i]) {
            gSickBeatsInfo->unk246[i] -= 1;
            if (!gSickBeatsInfo->unk246[i]) {
                func_0804d770(D_03005380, gSickBeatsInfo->unk21E[i], 0);
            }
        }
    }
}

void func_0804299c(void) {
    u32 temp;
    s32 pitch;
    
    func_0800c604(0);
    temp = clamp_int32(gSickBeatsInfo->unk26F, 1, 8);
    pitch = sick_beats_particle_sfx_pitch[agb_random(temp)];
    play_sound_w_pitch_volume(&s_f_virus_note_land_seqData, 128, pitch);
}

#include "asm/engines/sick_beats/asm_080429e8.s"

void func_08042b30(u32 arg0) {
    u32 i;

    if (gSickBeatsInfo->version != ENGINE_VER_SICK_BEATS_ENDLESS) return;
    for (i = 0; i < arg0; i++) {
        func_080429e8();
    }
}

void func_08042b58(void) {
    if (gSickBeatsInfo->version != ENGINE_VER_SICK_BEATS_ENDLESS) return;
    if (gSickBeatsInfo->unk26F < gSickBeatsInfo->unk270) {
        gSickBeatsInfo->unk26F++;
    }
}

// Init Counters
void func_08042b88(void) {
    u32 i, j;
    s32 x, y;
    struct SickBeatsScoreCounter *counter;
    
    if (gSickBeatsInfo->version != ENGINE_VER_SICK_BEATS_ENDLESS) return;
    for (i = 0; i < ARRAY_SIZE(gSickBeatsInfo->unk204); i++) {
        counter = &gSickBeatsInfo->unk204[i];
        
        if (i == 0) {
            counter->unk0 = func_0804d160(D_03005380, anim_sick_beats_score_counter, 0, 0xd6, 0x28, 0x8f00, 0, 0, 0);
            x = 0xd6;
            y = 0x28;
        } else {
            counter->unk0 = func_0804d160(D_03005380, anim_sick_beats_high_score_counter, 0, 0xd6, 0x10, 0x8f00, 0, 0, 0);
            x = 0xd6;
            y = 0x10;
        }

        for (j = 0; j < ARRAY_SIZE(counter->unk2); j++) {
            counter->unk2[j] = func_0804d160(D_03005380, anim_sick_beats_score_num, 0, x - 5 * j, y, 0x8f00, 0, 0, 0);
        }
    }
    gSickBeatsInfo->unk21C = 0;
}

// Draw Score
void func_08042c84(u32 arg0) {
    u32 i;
    struct SickBeatsScoreCounter *temp_r8 = &gSickBeatsInfo->unk204[arg0];
    u32 value = temp_r8->unkA;

    for (i = 0; i < 4; i++) {
        func_0804cebc(D_03005380, temp_r8[0].unk2[i], value % 10);
        value /= 10;
    }
}

// Update Score
void func_08042cec(u32 arg0, u32 arg1) {
    if (gSickBeatsInfo->version != ENGINE_VER_SICK_BEATS_ENDLESS) return;
    gSickBeatsInfo->unk204[arg0].unkA = clamp_int32(arg1, 0, 9999); // ?????
    func_08042c84(arg0);
    if (arg0) return;
    if (gSickBeatsInfo->unk204[0].unkA > gSickBeatsInfo->unk204[1].unkA) {
        gSickBeatsInfo->unk204[1].unkA = gSickBeatsInfo->unk204[0].unkA;
        func_08042c84(1);
    }
}

// Add Score
void func_08042d4c(u32 arg0) {
    if (gSickBeatsInfo->version == ENGINE_VER_SICK_BEATS_ENDLESS) {
        func_08042cec(0, gSickBeatsInfo->unk204[0].unkA + arg0);
    }
}

// Init Virus
void func_08042d74(void) {
    u32 i;
    struct SickBeatsVirus *virus = &gSickBeatsInfo->virus;

    for (i = 0; i < ARRAY_SIZE(virus->unk28); i++) virus->unk28[i] = 0;
    virus->unk128 = -1;
    virus->unk129 = 0;
    virus->unk12A = 0;
    virus->unk12C = 1;
    virus->unk12D = 0;
    virus->unk12E = 1;
    virus->unk12F = 0;

    for (i = 0; i < ARRAY_SIZE(virus->unk130); i++) virus->unk130[i].unk0 = NULL;
}

void func_08042de8(struct SickBeatsVirusData *arg0) {
    struct SickBeatsVirus *virus = &gSickBeatsInfo->virus;
    struct SickBeatsPath *path = arg0->unk0;
    
    if (!path) return;
    arg0->unk8 -= func_0800c398();
    while (arg0->unk8 < 0) {
        switch (path->command) {
            case 0xfe: // rest
                break;
            case 0xff: // stop
                arg0->unk0 = NULL;
                return;
            case 0xe: // set marking criteria
                gameplay_set_marking_criteria(path->arg);
                break;
            case 0xf: // 
                virus->unk28[arg0->unk6] = TRUE;
                break;
            default: // spawn a cue
                virus->unk128 = path->command; // cue
                virus->unk129 = arg0->unk6;
                virus->unk12C = arg0->unk4;
                virus->unk12D = arg0->unk5;
                gameplay_spawn_cue(path->arg);
        }
        path++;
        arg0->unk8 += INT_TO_FIXED(path->rest);
    }
    arg0->unk0 = path;
}

// Update Virus
void func_08042e80(void) {
    u32 i;
    struct SickBeatsInfo *info;
    struct SickBeatsVirusData *virusData;
    
    info = gSickBeatsInfo;
    i = 0;
    virusData = info->virus.unk130;

    for (i; i < ARRAY_SIZE(gSickBeatsInfo->virus.unk130); i++) {
        func_08042de8(virusData);
        virusData++;
    }
}

// Engine Event 0x00 (Set Virus/Virus Action)
void func_08042ea8(u32 arg0) {
    struct SickBeatsVirus *virus = &gSickBeatsInfo->virus;
    virus->unk128 = (arg0 >> 8);
    virus->unk129 = (arg0 >> 0); 
}

// Engine Event 0x01 (Spawn Virus)
void func_08042ecc(struct SickBeatsPath *path) {
    struct SickBeatsVirus *virus = &gSickBeatsInfo->virus;
    struct SickBeatsVirusData *virusData;
    u32 i = 0;
    
    virusData = gSickBeatsInfo->virus.unk130;
    if (virusData->unk0) {
        struct SickBeatsVirusData *virusDatatemp = virus->unk130;
        
        do {
            virusDatatemp++;
            if (++i > ARRAY_SIZE(gSickBeatsInfo->virus.unk130)-1) return;
            virusData = virusDatatemp;
        } while (virusData->unk0);
    }
    if (i > ARRAY_SIZE(gSickBeatsInfo->virus.unk130)-1) return;
    virusData->unk0 = path;
    virusData->unk6 = virus->unk12A;
    virusData->unk8 = 0;
    virusData->unk4 = virus->unk12E;
    virusData->unk5 = virus->unk12F;
    if (++virus->unk12A > 0xff) {
        virus->unk12A = 0;
    }
}

// Engine Event 0x02 (Set Hits Required)
void func_08042f44(u32 arg0) {
    struct SickBeatsVirus *virus = &gSickBeatsInfo->virus;

    virus->unk12E = arg0;
}

// Engine Event 0x03 (Set Virus Palette)
void func_08042f58(u32 arg0) {
    struct SickBeatsVirus *virus = &gSickBeatsInfo->virus;

    virus->unk12F = arg0;
}

// Init Forks 
void func_08042f6c(void) {
    struct SickBeatsForks *forks = &gSickBeatsInfo->forks;
    forks->launcher = func_0804d160(D_03005380, anim_fork_launcher, 0, 104, 60, INT_TO_FIXED(72), 1, 0x7f, 0);
    forks->unk4 = create_affine_sprite(anim_fork_hit_none2, 0, 104, 60, INT_TO_FIXED(72), INT_TO_FIXED(1), 
                                        INT_TO_FIXED(-2), 1, 0x7f, 0, FALSE);
    forks->unk8 = create_affine_sprite(anim_fork_hit_none2, 0, 104, 60, INT_TO_FIXED(72), INT_TO_FIXED(1), 
                                        INT_TO_FIXED(2), 1, 0x7f, 0, FALSE);
    forks->unkC = create_affine_sprite(anim_fork_hit_none2, 0, 104, 60, INT_TO_FIXED(72), INT_TO_FIXED(1), 
                                        INT_TO_FIXED(4), 1, 0x7f, 0, FALSE);
    forks->unk10 = create_default_affine_sprite(anim_fork_hit_none2, 0, 104, 60, INT_TO_FIXED(72), 1, 0x7f, FALSE);
    forks->unk1A = forks->unk18 = forks->unk16 = forks->unk14 = 0;
}

// Update Forks 
void func_08043064(void) {
    struct SickBeatsForks *forks = &gSickBeatsInfo->forks;
    u16 buttons = DPAD_LEFT | DPAD_RIGHT | DPAD_UP | DPAD_DOWN;

    affine_sprite_play_anim(forks->unk4, 1);
    affine_sprite_play_anim(forks->unk8, 1);
    affine_sprite_play_anim(forks->unkC, 1);
    affine_sprite_play_anim(forks->unk10, 1);
    if (forks->unk14) {
        forks->unk14--;
        buttons = DPAD_LEFT | DPAD_RIGHT | DPAD_DOWN;
        affine_sprite_set_anim_frame(forks->unk4, 0);
        affine_sprite_play_anim(forks->unk4, 0);
    }
    if (forks->unk16) {
        forks->unk16--;
        buttons &= ~(DPAD_DOWN);
        affine_sprite_set_anim_frame(forks->unk8, 0);
        affine_sprite_play_anim(forks->unk8, 0);
    }
    if (forks->unk18) {
        forks->unk18--;
        buttons &= ~(DPAD_LEFT);
        affine_sprite_set_anim_frame(forks->unkC, 0);
        affine_sprite_play_anim(forks->unkC, 0);
    }
    if (forks->unk1A) {
        forks->unk1A--;
        buttons &= ~(DPAD_RIGHT);
        affine_sprite_set_anim_frame(forks->unk10, 0);
        affine_sprite_play_anim(forks->unk10, 0);
    }
    
    gameplay_set_input_buttons(buttons, 0);
}

void func_08043124(u32 arg0) {
    struct SickBeatsForks *forks = &gSickBeatsInfo->forks;
    u32 temp_r1 = beats_to_ticks(30);

    if (arg0 & DPAD_UP) {
        forks->unk14 = temp_r1;
    }
    if (arg0 & DPAD_DOWN) {
        forks->unk16 = temp_r1;
    }
    if (arg0 & DPAD_LEFT) {
        forks->unk18 = temp_r1;
    }
    if (arg0 & DPAD_RIGHT) {
        forks->unk1A = temp_r1;
    } 
    func_0804cebc(D_03005380, forks->launcher, 0);
}

// Init Yellow Microbe
void func_0804317c(void) {
    struct SickBeatsYellowMicrobe *ymicrobe = &gSickBeatsInfo->yellowMicrobe;

    ymicrobe->sprite = func_0804d160(D_03005380, anim_yellow_microbe_beat, 0, 0xae, 0x8a, 0x8900, 1, 0x7f, 0);
    ymicrobe->unk2 = 0;
}

// Update Yellow Microbe
void func_080431c4(void) {
    struct SickBeatsYellowMicrobe *yellowMicrobe = &gSickBeatsInfo->yellowMicrobe;

    if (yellowMicrobe->unk4) {
        yellowMicrobe->unk4--;
        return;
    } else {
        switch (yellowMicrobe->unk2) {
            case 0:
                return;
            case 1:
                if (yellowMicrobe->unk3) {
                    func_080432d8(2);
                    play_sound(&s_f_virus_face_fadeout_seqData);
                    func_080435e8(3);
                }
                if (gSickBeatsInfo->unk1FC && (!gSickBeatsInfo->unk202)) {
                    gSickBeatsInfo->unk202 = TRUE;
                    gSickBeatsInfo->unk200 = 9999;
                    func_0801d968(gSickBeatsInfo->unk1FC);
                }
                break;
            case 2:
                if (yellowMicrobe->unk3) {
                    func_080432d8(3);
                }
                break;
            case 3:
                if (yellowMicrobe->unk3) {
                    if (gSickBeatsInfo->unk202) {
                        func_0804dae0(D_03005380, yellowMicrobe->sprite, 1, 0, 0);
                        func_0804daa8(D_03005380, yellowMicrobe->sprite, 0, 0);
                        yellowMicrobe->unk3 = 0;
                    } else {
                        func_080432d8(4);
                    }
                }
                break;
            case 4:
                if (yellowMicrobe->unk3) {
                    func_080432d8(0);
                }
                break;
            
        }
    }
}

void func_080432d0(u32 arg0, u32 arg1, u8 *arg2) {
    *arg2 = 1;
}

void func_080432d8(u32 arg0) {
    struct SickBeatsYellowMicrobe *yellowMicrobe = &gSickBeatsInfo->yellowMicrobe;
    if (arg0 == 0) {
        func_0804d8f8(D_03005380, yellowMicrobe->sprite, sick_beats_microbe_event_anim[0], 0, 1, 0x1b, 0);
        func_0804daa8(D_03005380, yellowMicrobe->sprite, 0, 0);
    } else {
        func_0804d8f8(D_03005380, yellowMicrobe->sprite, sick_beats_microbe_event_anim[arg0], 0, 1, 0, 4);
        func_0804daa8(D_03005380, yellowMicrobe->sprite, func_080432d0, (u32)&yellowMicrobe->unk3);
    }

    yellowMicrobe->unk2 = arg0;
    yellowMicrobe->unk3 = 0;
    yellowMicrobe->unk4 = beats_to_ticks(sick_beats_microbe_event_durations[arg0]);
}

// Graphics Init. 3
void sick_beats_init_gfx3(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}

// Graphics Init. 2
void sick_beats_init_gfx2(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), gfx_table_sick_beats, 0x2000);
    run_func_after_task(task, sick_beats_init_gfx3, 0);
}

// Graphics Init. 1
void sick_beats_init_gfx1(void) {
    u32 task;

    func_0800c604(0);
    task = start_new_texture_loader(get_current_mem_id(), sick_beats_buffered_textures);
    run_func_after_task(task, sick_beats_init_gfx2, 0);
}

// Game Engine Start
void sick_beats_engine_start(u32 version) {
    gSickBeatsInfo->version = version;
    sick_beats_init_gfx1();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);
    scene_set_bg_layer_display(BG_LAYER_2, TRUE, 0, 0, 0, 30, 2);
    func_0804317c();
    func_08042f6c();
    func_08042d74();
    gSickBeatsInfo->unk1F6 = func_0804d160(D_03005380, anim_virus_doctor_beat, 0, 17, 155, 0x800, 1, 0x7f, 0);
    gSickBeatsInfo->unk1F8 = func_0804d160(D_03005380, anim_sick_beats_radio, 0, 17, 155, 0x810, 1, 0x7f, 0);
    gSickBeatsInfo->unk1F0 = 0;
    gSickBeatsInfo->unk1F1 = -1;
    gSickBeatsInfo->unk1F2 = 0;
    gSickBeatsInfo->unk1F4 = 0;
    func_08042b88();
    func_08042cec(0, 0);
    func_08042cec(1, D_030046a8->data.unk294[2]);
    func_08042864();
    gameplay_set_input_buttons(0, 0);
    gameplay_prevent_dpad_overlap(FALSE);
    gSickBeatsInfo->unk202 = 0;
    gSickBeatsInfo->unk1FC = 0;
    gSickBeatsInfo->unk200 = 0;
}

// Engine Event 0x07 (STUB)
void sick_beats_engine_event_stub(void) {

}

void func_08043534(void) {
    if (gSickBeatsInfo->unk1F4) {
        gSickBeatsInfo->unk1F4--;
        if ((!gSickBeatsInfo->unk1F4) && (gSickBeatsInfo->unk1F1 > -1)) {
            gSickBeatsInfo->unk1F0 = gSickBeatsInfo->unk1F1;
            gSickBeatsInfo->unk1F1 = -1;
            gSickBeatsInfo->unk1F2 = 0;
        }
    }
}

// Game Engine Update
void sick_beats_engine_update(void) {
    func_080431c4();
    func_08043064();
    func_08042e80();
    func_08043534();
    func_08042934();
    if (gSickBeatsInfo->unk202) {
        if (gSickBeatsInfo->unk200) {
            gSickBeatsInfo->unk200--;
        } else {
            if (D_03004afc & A_BUTTON) {
                set_pause_beatscript_scene(FALSE);
            }
        }
    }
}

void func_080435e8(s32 arg0) {
    if ((gSickBeatsInfo->unk1F0 <= arg0) && (gSickBeatsInfo->unk1F1 <= arg0)) {
        if ((gSickBeatsInfo->unk1F0 == 1 || gSickBeatsInfo->unk1F0 == 2) && (arg0 == 1)) {
            arg0 = 2;
        }
        gSickBeatsInfo->unk1F1 = arg0;
    }
}


void func_08043634(struct Beatscript *arg0) {
    gSickBeatsInfo->unk1FC = arg0;
}

// Engine Event 0x05 (Endless Game Over?)
void func_08043648(void) {
    func_0804d160(D_03005380, anim_sick_beats_game_over, 0, 0x78, 0x50, 0x400, 1, 0, 0);
    gSickBeatsInfo->unk200 = 20;
    D_030046a8->data.unk294[2] = gSickBeatsInfo->unk204[1].unkA; // high score
}

// Game Engine Stop
void sick_beats_engine_stop(void) {

}

struct SickBeatsVirusData *func_080436a8(u32 arg0) {
    u32 i = 0;
    struct SickBeatsVirus *virus = &gSickBeatsInfo->virus;
    struct SickBeatsVirusData *virusData = gSickBeatsInfo->virus.unk130;
    struct SickBeatsVirusData *virusData1 = virus->unk130;

    for (i; (i < ARRAY_SIZE(gSickBeatsInfo->virus.unk130)); virusData++, virusData1++, i++) {
        if (virusData->unk0 && virusData->unk6 == arg0) return virusData1;
    }
    
    return NULL;
}

// Cue - Spawn
void sick_beats_cue_spawn(struct Cue *cue, struct SickBeatsCue *info, u32 unused) {
    struct SickBeatsVirus *virus = &gSickBeatsInfo->virus;
    struct VirusAction *act;
    u32 isVirusHit = FALSE;
    
    info->unk0_b6 = virus->unk128;
    //
    info->unk4 = virus->unk129;
    info->unk2E = virus->unk12C;
    info->unk2F = virus->unk12D;
    act = &sick_beats_virus_actions[info->unk0_b6];
    if (act->rotation) {
        info->unk8 = create_affine_sprite(act->anim, 0, act->x, act->y, 0x8800, 0x100, act->rotation,
                                            act->playbackArg1, act->playbackArg2, act->playbackArg3, 1);
    } else {
        info->unk8 = create_default_affine_sprite(act->anim, 0, act->x, act->y, 0x8800, 
                                            act->playbackArg1, act->playbackArg2, act->playbackArg3);
    }
    func_080101f8(info->unk8, act->unkC);
    affine_sprite_set_palette(info->unk8, info->unk2F);
    if (info->unk0_b6 == 0) {
        virus->unk28[info->unk4] = TRUE;
    } else if (!virus->unk28[info->unk4]) {
        affine_sprite_play_anim(info->unk8, 0);
        isVirusHit = TRUE;
    }
    info->unk0_b4 = 0;
    info->unk0_b5 = 0;
    switch (info->unk0_b6) {
        case 1:
        case 4:
        case 7:
        case 10:
            if (isVirusHit) break;
            play_sound(&s_f_virus_uhihi_seqData);
            break;
        case 3:
        case 6:
        case 9:
        case 12:
            if (isVirusHit) break;
            play_sound(&s_virus_dash_seqData);
            break;
        case 2:
            gameplay_set_cue_input_buttons(cue, DPAD_RIGHT);
            break;
        case 5:
            gameplay_set_cue_input_buttons(cue, DPAD_UP);
            break;
        case 8:
            gameplay_set_cue_input_buttons(cue, DPAD_LEFT);
            break;
        case 11:
            gameplay_set_cue_input_buttons(cue, DPAD_DOWN);
            break;
        case 13:
            if (isVirusHit) break;
            play_sound(&s_f_virus_in_seqData);
            break;
        case 0:
            return;
    }
}

// Cue - Update
u32 sick_beats_cue_update(struct Cue *cue, struct SickBeatsCue *info, u32 runningTime, u32 duration) {
    struct SickBeatsVirus *virus = &gSickBeatsInfo->virus;

    if (!virus->unk28[info->unk4]) {
        return TRUE;
    }

    if (runningTime > beats_to_ticks(0x78)) {
        return TRUE;
    }

    switch (info->unk0_b6) {
        case 0:
            affine_sprite_set_x(info->unk8, math_lerp(256, 176, runningTime, beats_to_ticks(0x18)));
            if (runningTime > beats_to_ticks(0x18)) {
                return TRUE;
            }
            break;

        case 1:
        case 4:
        case 7:
        case 10:
            if (runningTime > beats_to_ticks(0x18)) {
                return TRUE;
            }
            break;

        case 2:
        case 5:
        case 8:
        case 11:
            if (!info->unk0_b4 && (runningTime > beats_to_ticks(0x18))) {
                info->unk0_b4 = TRUE;
                play_sound(&s_virus_dash_seqData);
            }
            if (runningTime > beats_to_ticks(0x30)) {
                return TRUE;
            }
            break;

        case 13:
            affine_sprite_set_y(info->unk8, math_lerp(104, 138, runningTime, beats_to_ticks(0x30)));
            if (!info->unk0_b4 && (runningTime > beats_to_ticks(0x28))) {
                info->unk0_b4 = TRUE;
                if (!gSickBeatsInfo->unk202) {
                    func_080432d8(1);
                }
            }
            if (runningTime > beats_to_ticks(0x30)) {
                virus->unk28[info->unk4] = FALSE;
                play_sound(&s_virus_miss_seqData);
                return TRUE;
            }
            break;
    }

    return FALSE;
}

// Cue - Despawn
void sick_beats_cue_despawn(struct Cue *cue, struct SickBeatsCue *info) {
    delete_affine_sprite(info->unk8);
}

void func_08043a2c(u32 arg0, u32 arg1, struct AffineSprite *arg2) {
    delete_affine_sprite(arg2);
}

struct AffineSprite *func_08043a38(struct SickBeatsCue *info, struct Animation *anim, struct SequenceData *seqData) {
    s16 virusEffectSprite;
    struct SickBeatsVirus *virus = &gSickBeatsInfo->virus;
    struct AffineSprite *baseVirusAfSprite = info->unk8;
    struct AffineSprite *nextVirusAfSprite = NULL; // hit animation
    s32 virusX = affine_sprite_get_base_sprite_x(info->unk8);
    s32 virusY = affine_sprite_get_base_sprite_y(info->unk8);
    u32 palette = info->unk2F; // sp30

    if (info->unk2E > 1) {
        if (palette == 8) {
            palette = 0;
        }
        if (info->unk2F == 9) {
            palette = 8;
        }
        anim = anim_fork_hit_tough_virus;
        virusEffectSprite = func_0804d160(D_03005380, anim_tough_virus_hit_effect, 0, virusX, virusY, 0x87ff, 1, 0, 3);
        func_0804d8c4(D_03005380, virusEffectSprite, info->unk2F);
    }
    
    virusEffectSprite = -1;
    switch (info->unk0_b6) {
        case 2:
            nextVirusAfSprite = create_affine_sprite(anim, 0, virusX, virusY, 0x8800, 0x100, 0, 1, 0x7f, 4, 0);
            virusEffectSprite = func_0804d160(D_03005380, anim_virus_dash_up_half, 0, virusX, virusY, 0x8800, 1, 0, 3);
            func_08043124(DPAD_RIGHT);
            break;
        case 5:
            nextVirusAfSprite = create_affine_sprite(anim, 0, virusX, virusY, 0x8800, 0x100, 0xfe00, 1, 0x7f, 4, 0);
            virusEffectSprite = func_0804d160(D_03005380, anim_virus_dash_left_half, 0, virusX, virusY, 0x8800, 1, 0, 3);
            func_08043124(DPAD_UP);
            break;
        case 8:
            nextVirusAfSprite = create_affine_sprite(anim, 0, virusX, virusY, 0x8800, 0x100, 0x400, 1, 0x7f, 4, 0);
            virusEffectSprite = func_0804d294(D_03005380, anim_virus_dash_up_half, 0, virusX, virusY, 0x8800, 1, 0, 3, 0x2000);
            func_08043124(DPAD_LEFT);
            break;
        case 11:
            nextVirusAfSprite = create_affine_sprite(anim, 0, virusX, virusY, 0x8800, 0x100, 0x200, 1, 0x7f, 4, 0);
            virusEffectSprite = func_0804d294(D_03005380, anim_virus_dash_left_half, 0, virusX, virusY, 0x8800, 1, 0, 3, 0x1000);
            func_08043124(DPAD_DOWN);
            break;
        default:
            gameplay_ignore_this_cue_result();
            break;
    }
    
    if (virusEffectSprite > -1) {
        func_0804d8c4(D_03005380, virusEffectSprite, info->unk2F);
    }
    if (nextVirusAfSprite) {
        func_08010238(nextVirusAfSprite, func_08043a2c, (u32)nextVirusAfSprite);
        affine_sprite_set_palette(nextVirusAfSprite, palette);
        func_08010174(nextVirusAfSprite, (u32)INT_TO_FIXED(get_beatscript_tempo()) / 125);
        affine_sprite_play_anim(baseVirusAfSprite, 0);
        if (--info->unk2E) {
            struct SickBeatsVirusData *virusData = func_080436a8(info->unk4);
            virusData->unk4--;
            virusData->unk5 = palette;
            info->unk0_b4 = 1;
            info->unk0_b5 = 1;
            play_sound_in_player(SFX_PLAYER_1, &s_block_hit_seqData);
        } else {
            virus->unk28[info->unk4] = 0;
            play_sound(seqData);
        }
    }
    return nextVirusAfSprite;
}

// Cue - Hit
void sick_beats_cue_hit(struct Cue *cue, struct SickBeatsCue *info, u32 pressed, u32 released) {
    if (func_08043a38(info, anim_fork_hit_virus, &s_f_virus_hit_seqData)) {
        func_080435e8(1);
        if (gSickBeatsInfo->unk1F1 == 2) {
            func_08042d4c(5);
            func_08042b30(7);
        } else {
            func_08042d4c(2);
            func_08042b30(5);
        }
    }
}

// Cue - Barely
void sick_beats_cue_barely(struct Cue *cue, struct SickBeatsCue *info, u32 pressed, u32 released) {
    if (func_08043a38(info, (gameplay_get_last_hit_offset() < 0) ? anim_fork_hit_early : anim_fork_hit_late, &s_f_virus_osii_seqData)) {
        func_08042d4c(1);
        func_08042b30(2);
    }
}

// Cue - Miss
void sick_beats_cue_miss(struct Cue *cue, struct SickBeatsCue *info) {
    if (info->unk0_b6 != 11) { // Anything but the last dash will be ignored 
        gameplay_ignore_this_cue_result();
    }
    switch (info->unk0_b6) {
        case 11:
        case 5:
        case 2:
        case 8:
            if (!info->unk0_b5) {
                info->unk0_b5 = TRUE;
                affine_sprite_play_anim(info->unk8, 1);
            }
            break;
    }
}

// Input Event
void sick_beats_input_event(u32 pressed, u32 released) {
    s32 posY;
    s32 rotation;
    s32 posX;
    struct AffineSprite *affineSprite;
    
    if (pressed & DPAD_UP) {
        posX = 0x68;
        posY = 0x10;
        rotation = -0x200;
        func_08043124(DPAD_UP);
    } else if (pressed & DPAD_DOWN) {
        posX = 0x68;
        posY = 0x68;
        rotation = 0x200;
        func_08043124(DPAD_DOWN);
    } else if (pressed & DPAD_LEFT) {
        posX = 0x20;
        posY = 0x3c;
        rotation = 0x400;
        func_08043124(DPAD_LEFT);
    } else if (pressed & DPAD_RIGHT) {
        posX = 0xb0;
        posY = 0x3c;
        rotation = 0;
        func_08043124(DPAD_RIGHT);
    }
    affineSprite = create_affine_sprite(anim_fork_hit_none1, 0, posX, posY, 0x8800, 0x100, rotation, 1, 0x7f, 4, 1);
    if (affineSprite) {
        func_08010238(affineSprite, func_08043a2c, (u32)affineSprite);
    }
    gameplay_add_cue_result(0, 3, 0);
    play_sound(&s_virus_fork_seqData);
}

// Common Event 0 (Beat Animation)
void sick_beats_common_beat_animation(void) {
    struct SickBeatsYellowMicrobe *ymicrobe = &gSickBeatsInfo->yellowMicrobe;
    
    if (gSickBeatsInfo->unk1F2 == 0) {
        func_0804d8f8(D_03005380, gSickBeatsInfo->unk1F6, sick_beats_doctor_anim[gSickBeatsInfo->unk1F0], 0, 1, 0x7f, 0);
    }
    gSickBeatsInfo->unk1F2++;
    if (gSickBeatsInfo->unk1F2 >= D_089e92f0[gSickBeatsInfo->unk1F0]) {
        gSickBeatsInfo->unk1F0 = 0;
        func_080435e8(0);
    }
    gSickBeatsInfo->unk1F4 = beats_to_ticks(12);
    if (ymicrobe->unk2 == 0) {
        func_0804cebc(D_03005380, ymicrobe->sprite, 0);
    }
    func_0804cebc(D_03005380, gSickBeatsInfo->unk1F8, 1);
}

// Common Event 1 (Display Text, Unimplemented)
void sick_beats_common_display_text(void) {

}
