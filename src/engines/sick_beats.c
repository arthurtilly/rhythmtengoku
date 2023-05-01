#include "engines/sick_beats.h"
#include "src/scenes/gameplay.h"
#include "src/memory.h"
#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_08008dcc.h"
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
    gSickBeatsInfo->particleSprites[0] = func_0804d160(D_03005380, anim_sick_beats_endless_particle, 0, 64, 64, 0x800, 0, 0, 0x8000);
    for (i = 1; i < ARRAY_COUNT(gSickBeatsInfo->particleSprites); i++) { // Copy particles
        gSickBeatsInfo->particleSprites[i] = func_0804d3cc(D_03005380, gSickBeatsInfo->particleSprites[0]);
    }

    for (i = 0; i < ARRAY_COUNT(gSickBeatsInfo->particleCounters); i++) {
        gSickBeatsInfo->particleCounters[i] = 0;
    }
    gSickBeatsInfo->particleCurrent = 0;
    gSickBeatsInfo->particlePitch = 1;
    gSickBeatsInfo->particleCels = func_0804ddb0(D_03005380, gSickBeatsInfo->particleSprites[0], 2);
}

// Update Particles
void func_08042934(void) {
    u32 i;

    if ((gSickBeatsInfo->version != ENGINE_VER_SICK_BEATS_ENDLESS) || gSickBeatsInfo->microbeWasHurt) return;
    for (i = 0; i < ARRAY_COUNT(gSickBeatsInfo->particleCounters); i++) {
        if (gSickBeatsInfo->particleCounters[i]) {
            gSickBeatsInfo->particleCounters[i] -= 1;
            if (!gSickBeatsInfo->particleCounters[i]) {
                func_0804d770(D_03005380, gSickBeatsInfo->particleSprites[i], 0);
            }
        }
    }
}

// Play Particle Sound
void func_0804299c(void) {
    u32 particlePitch;
    s32 pitch;
    
    func_0800c604(0);
    particlePitch = clamp_int32(gSickBeatsInfo->particlePitch, 1, 8);
    pitch = sick_beats_particle_sfx_pitch[agb_random(particlePitch)];
    play_sound_w_pitch_volume(&s_f_virus_note_land_seqData, 128, pitch);
}

// https://decomp.me/scratch/N1kry
// Process Particle
#include "asm/engines/sick_beats/asm_080429e8.s"

// Process X Particles
void func_08042b30(u32 particleAmount) {
    u32 i;

    if (gSickBeatsInfo->version != ENGINE_VER_SICK_BEATS_ENDLESS) return;
    for (i = 0; i < particleAmount; i++) {
        func_080429e8();
    }
}

// Engine Event 0x06 (Increment Particle Pitch)
void func_08042b58(void) {
    if (gSickBeatsInfo->version != ENGINE_VER_SICK_BEATS_ENDLESS) return;
    if (gSickBeatsInfo->particlePitch < gSickBeatsInfo->particleCels) {
        gSickBeatsInfo->particlePitch++;
    }
}

// Init Counters
void func_08042b88(void) {
    u32 i, j;
    s32 x, y;
    struct SickBeatsScoreCounter *counter;
    
    if (gSickBeatsInfo->version != ENGINE_VER_SICK_BEATS_ENDLESS) return;
    for (i = 0; i < ARRAY_COUNT(gSickBeatsInfo->scoreCounters); i++) {
        counter = &gSickBeatsInfo->scoreCounters[i];
        
        if (i == 0) {
            counter->counterSprite = func_0804d160(D_03005380, anim_sick_beats_score_counter, 0, 214, 40, 0x8f00, 0, 0, 0);
            x = 214;
            y = 40;
        } else {
            counter->counterSprite = func_0804d160(D_03005380, anim_sick_beats_high_score_counter, 0, 214, 16, 0x8f00, 0, 0, 0);
            x = 214;
            y = 16;
        }

        for (j = 0; j < ARRAY_COUNT(counter->digitSprite); j++) {
            counter->digitSprite[j] = func_0804d160(D_03005380, anim_sick_beats_score_num, 0, x - 5 * j, y, 0x8f00, 0, 0, 0);
        }
    }
    gSickBeats->unk21C = 0;
}

// Draw Score
void func_08042c84(u32 arg0) {
    u32 i;
    struct SickBeatsScoreCounter *scoreCounters = &gSickBeatsInfo->scoreCounters[arg0];
    u32 value = scoreCounters->value;

    for (i = 0; i < 4; i++) {
        func_0804cebc(D_03005380, scoreCounters->digitSprite[i], value % 10);
        value /= 10;
    }
}

// Update Score
void func_08042cec(u32 arg0, u32 arg1) {
    if (gSickBeatsInfo->version != ENGINE_VER_SICK_BEATS_ENDLESS) return;
    gSickBeatsInfo->scoreCounters[arg0].value = clamp_int32(arg1, 0, 9999);
    func_08042c84(arg0);
    if (arg0 != SICK_BEATS_SCORE_CURRENT) return;
    if (gSickBeatsInfo->scoreCounters[SICK_BEATS_SCORE_CURRENT].value > gSickBeatsInfo->scoreCounters[SICK_BEATS_SCORE_HIGH].value) {
        gSickBeatsInfo->scoreCounters[SICK_BEATS_SCORE_HIGH].value = gSickBeatsInfo->scoreCounters[SICK_BEATS_SCORE_CURRENT].value;
        func_08042c84(1);
    }
}

// Add Score
void func_08042d4c(u32 arg0) {
    if (gSickBeatsInfo->version == ENGINE_VER_SICK_BEATS_ENDLESS) {
        func_08042cec(0, gSickBeatsInfo->scoreCounters[SICK_BEATS_SCORE_CURRENT].value + arg0);
    }
}

// Init Virus
void func_08042d74(void) {
    u32 i;
    struct SickBeatsVirus *virus = &gSickBeats->virus;

    for (i = 0; i < ARRAY_COUNT(virus->exists); i++) virus->exists[i] = FALSE;
    virus->unk128 = -1;
    virus->unk129 = 0;
    virus->unk12A = 0;
    virus->unk12C = 1;
    virus->virusCuePalette = 0;
    virus->unk12E = 1;
    virus->virusPalette = 0;

    for (i = 0; i < ARRAY_COUNT(virus->unk130); i++) virus->unk130[i].unk0 = NULL;
}

// Process Virus Data
void func_08042de8(struct SickBeatsVirusData *arg0) {
    struct SickBeatsVirus *virus = &gSickBeats->virus;
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
            case 0xf: // create a virus
                virus->exists[arg0->unk6] = TRUE;
                break;
            default: // spawn a cue
                virus->unk128 = path->command; // cue
                virus->unk129 = arg0->unk6;
                virus->unk12C = arg0->unk4;
                virus->virusCuePalette = arg0->unk5;
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
    struct SickBeatsEngineData *engineData;
    struct SickBeatsVirusData *virusData;
    
    engineData = gSickBeats;
    i = 0;
    virusData = engineData->virus.unk130;

    for (i; i < ARRAY_COUNT(gSickBeatsInfo->virus.unk130); i++) {
        func_08042de8(virusData);
        virusData++;
    }
}

// Engine Event 0x00 (Set Virus/Virus Action)
void func_08042ea8(u32 arg0) {
    struct SickBeatsVirus *virus = &gSickBeats->virus;
    virus->unk128 = (arg0 >> 8);
    virus->unk129 = (arg0 >> 0); 
}

// Engine Event 0x01 (Spawn Virus)
void func_08042ecc(struct SickBeatsPath *path) {
    struct SickBeatsVirus *virus = &gSickBeats->virus;
    struct SickBeatsVirusData *virusData;
    u32 i = 0;
    
    virusData = gSickBeats->virus.unk130;
    if (virusData->unk0) {
        struct SickBeatsVirusData *virusDatatemp = virus->unk130;
        
        do {
            virusDatatemp++;
            if (++i > ARRAY_COUNT(gSickBeatsInfo->virus.unk130)-1) return;
            virusData = virusDatatemp;
        } while (virusData->unk0);
    }
    if (i > ARRAY_COUNT(gSickBeatsInfo->virus.unk130)-1) return;
    virusData->unk0 = path;
    virusData->unk6 = virus->unk12A;
    virusData->unk8 = 0;
    virusData->unk4 = virus->unk12E;
    virusData->unk5 = virus->virusPalette;
    if (++virus->unk12A > 0xff) {
        virus->unk12A = 0;
    }
}

// Engine Event 0x02 (Set Hits Required)
void func_08042f44(u32 arg0) {
    struct SickBeatsVirus *virus = &gSickBeats->virus;

    virus->unk12E = arg0;
}

// Engine Event 0x03 (Set Virus Palette)
void func_08042f58(u32 arg0) {
    struct SickBeatsVirus *virus = &gSickBeats->virus;

    virus->virusPalette = arg0;
}

// Init Forks 
void func_08042f6c(void) {
    struct SickBeatsForks *forks = &gSickBeatsInfo->forks;
    forks->launcher = func_0804d160(D_03005380, anim_fork_launcher, 0, 104, 60, 0x4800, 1, 0x7f, 0);
    forks->spriteUp = create_affine_sprite(anim_fork_hit_none2, 0, 104, 60, 0x4800, INT_TO_FIXED(1), 
                                        INT_TO_FIXED(-2), 1, 0x7f, 0, FALSE); // facing up
    forks->spriteDown = create_affine_sprite(anim_fork_hit_none2, 0, 104, 60, 0x4800, INT_TO_FIXED(1), 
                                        INT_TO_FIXED(2), 1, 0x7f, 0, FALSE); // facing down
    forks->spriteLeft = create_affine_sprite(anim_fork_hit_none2, 0, 104, 60, 0x4800, INT_TO_FIXED(1), 
                                        INT_TO_FIXED(4), 1, 0x7f, 0, FALSE); // facing left
    forks->spriteRight = create_default_affine_sprite(anim_fork_hit_none2, 0, 104, 60, 0x4800, 1, 0x7f, FALSE); // facing right
    forks->counterRight = forks->counterLeft = forks->counterDown = forks->counterUp = 0;
}

// Update Forks 
void func_08043064(void) {
    struct SickBeatsForks *forks = &gSickBeats->forks;
    u16 buttons = DPAD_LEFT | DPAD_RIGHT | DPAD_UP | DPAD_DOWN;

    affine_sprite_play_anim(forks->spriteUp, 1);
    affine_sprite_play_anim(forks->spriteDown, 1);
    affine_sprite_play_anim(forks->spriteLeft, 1);
    affine_sprite_play_anim(forks->spriteRight, 1);
    if (forks->counterUp) {
        forks->counterUp--;
        buttons = DPAD_LEFT | DPAD_RIGHT | DPAD_DOWN;
        affine_sprite_set_anim_frame(forks->spriteUp, 0);
        affine_sprite_play_anim(forks->spriteUp, 0);
    }
    if (forks->counterDown) {
        forks->counterDown--;
        buttons &= ~(DPAD_DOWN);
        affine_sprite_set_anim_frame(forks->spriteDown, 0);
        affine_sprite_play_anim(forks->spriteDown, 0);
    }
    if (forks->counterLeft) {
        forks->counterLeft--;
        buttons &= ~(DPAD_LEFT);
        affine_sprite_set_anim_frame(forks->spriteLeft, 0);
        affine_sprite_play_anim(forks->spriteLeft, 0);
    }
    if (forks->counterRight) {
        forks->counterRight--;
        buttons &= ~(DPAD_RIGHT);
        affine_sprite_set_anim_frame(forks->spriteRight, 0);
        affine_sprite_play_anim(forks->spriteRight, 0);
    }
    
    gameplay_set_input_buttons(buttons, 0);
}

// Set Fork Counter
void func_08043124(u32 arg0) {
    struct SickBeatsForks *forks = &gSickBeatsInfo->forks;
    u32 forkCounter = beats_to_ticks(30);

    if (arg0 & DPAD_UP) {
        forks->counterUp = forkCounter;
    }
    if (arg0 & DPAD_DOWN) {
        forks->counterDown = forkCounter;
    }
    if (arg0 & DPAD_LEFT) {
        forks->counterLeft = forkCounter;
    }
    if (arg0 & DPAD_RIGHT) {
        forks->counterRight = forkCounter;
    } 
    func_0804cebc(D_03005380, forks->launcher, 0);
}

// Init Yellow Microbe
void func_0804317c(void) {
    struct SickBeatsYellowMicrobe *yellowMicrobe = &gSickBeatsInfo->yellowMicrobe;

    yellowMicrobe->sprite = func_0804d160(D_03005380, anim_yellow_microbe_beat, 0, 174, 138, 0x8900, 1, 0x7f, 0);
    yellowMicrobe->unk2 = 0;
}

// Update Yellow Microbe
void func_080431c4(void) {
    struct SickBeatsYellowMicrobe *yellowMicrobe = &gSickBeats->yellowMicrobe;

    if (yellowMicrobe->unk4) {
        yellowMicrobe->unk4--;
        return;
    } else {
        switch (yellowMicrobe->unk2) {
            case SICK_BEATS_MICROBE_STATE_BEAT:
                return;
            case SICK_BEATS_MICROBE_STATE_HURT:
                if (yellowMicrobe->unk3) {
                    func_080432d8(SICK_BEATS_MICROBE_STATE_VANISH);
                    play_sound(&s_f_virus_face_fadeout_seqData);
                    func_080435e8(SICK_BEATS_DOCTOR_STATE_FAIL);
                }
                if (gSickBeatsInfo->unk1FC && (!gSickBeatsInfo->microbeWasHurt)) {
                    gSickBeatsInfo->microbeWasHurt = TRUE;
                    gSickBeatsInfo->gameEndCounter = 9999;
                    func_0801d968(gSickBeatsInfo->unk1FC);
                }
                break;
            case SICK_BEATS_MICROBE_STATE_VANISH:
                if (yellowMicrobe->unk3) {
                    func_080432d8(SICK_BEATS_MICROBE_STATE_VIRUS);
                }
                break;
            case SICK_BEATS_MICROBE_STATE_VIRUS:
                if (yellowMicrobe->unk3) {
                    if (gSickBeatsInfo->microbeWasHurt) {
                        func_0804dae0(D_03005380, yellowMicrobe->sprite, 1, 0, 0);
                        func_0804daa8(D_03005380, yellowMicrobe->sprite, 0, 0);
                        yellowMicrobe->unk3 = FALSE;
                    } else {
                        func_080432d8(SICK_BEATS_MICROBE_STATE_RETURN);
                    }
                }
                break;
            case SICK_BEATS_MICROBE_STATE_RETURN:
                if (yellowMicrobe->unk3) {
                    func_080432d8(SICK_BEATS_MICROBE_STATE_BEAT);
                }
                break;
            
        }
    }
}

// Yellow Microbe Sprite Playback End Callback
void func_080432d0(u32 arg0, u32 arg1, u8 *arg2) {
    *arg2 = TRUE;
}

// Set Yellow Microbe State
void func_080432d8(u32 arg0) {
    struct SickBeatsYellowMicrobe *yellowMicrobe = &gSickBeats->yellowMicrobe;
    if (arg0 == 0) {
        func_0804d8f8(D_03005380, yellowMicrobe->sprite, sick_beats_microbe_event_anim[0], 0, 1, 0x1b, 0);
        func_0804daa8(D_03005380, yellowMicrobe->sprite, 0, 0);
    } else {
        func_0804d8f8(D_03005380, yellowMicrobe->sprite, sick_beats_microbe_event_anim[arg0], 0, 1, 0, 4);
        func_0804daa8(D_03005380, yellowMicrobe->sprite, func_080432d0, (u32)&yellowMicrobe->unk3);
    }

    yellowMicrobe->unk2 = arg0;
    yellowMicrobe->unk3 = FALSE;
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
    gSickBeats->version = version;
    sick_beats_init_gfx1();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);
    scene_set_bg_layer_display(BG_LAYER_2, TRUE, 0, 0, 0, 30, 2);
    func_0804317c();
    func_08042f6c();
    func_08042d74();
    gSickBeatsInfo->doctorSprite = func_0804d160(D_03005380, anim_virus_doctor_beat, 0, 17, 155, 0x800, 1, 0x7f, 0);
    gSickBeatsInfo->radioSprite = func_0804d160(D_03005380, anim_sick_beats_radio, 0, 17, 155, 0x810, 1, 0x7f, 0);
    gSickBeatsInfo->doctorCurrentState = SICK_BEATS_DOCTOR_STATE_BEAT;
    gSickBeatsInfo->doctorNextState = SICK_BEATS_DOCTOR_STATE_INVALID;
    gSickBeatsInfo->unk1F2 = 0;
    gSickBeatsInfo->doctorBeatCounter = 0;
    func_08042b88();
    func_08042cec(0, 0);
    func_08042cec(1, D_030046a8->data.unk294[2]);
    func_08042864();
    gameplay_set_input_buttons(0, 0);
    gameplay_prevent_dpad_overlap(FALSE);
    gSickBeatsInfo->microbeWasHurt = FALSE;
    gSickBeatsInfo->unk1FC = NULL;
    gSickBeatsInfo->gameEndCounter = 0;
}

// Engine Event 0x07 (STUB)
void sick_beats_engine_event_stub(void) {

}

// Update Doctor
void func_08043534(void) {
    if (gSickBeatsInfo->doctorBeatCounter) {
        gSickBeatsInfo->doctorBeatCounter--;
        if ((!gSickBeatsInfo->doctorBeatCounter) && (gSickBeatsInfo->doctorNextState > SICK_BEATS_DOCTOR_STATE_INVALID)) {
            gSickBeatsInfo->doctorCurrentState = gSickBeatsInfo->doctorNextState;
            gSickBeatsInfo->doctorNextState = SICK_BEATS_DOCTOR_STATE_INVALID;
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
    if (gSickBeatsInfo->microbeWasHurt) {
        if (gSickBeatsInfo->gameEndCounter) {
            gSickBeatsInfo->gameEndCounter--;
        } else {
            if (D_03004afc & A_BUTTON) {
                set_pause_beatscript_scene(FALSE);
            }
        }
    }
}

// Set Next Doctor State
void func_080435e8(s32 arg0) {
    if ((gSickBeatsInfo->doctorCurrentState <= arg0) && (gSickBeatsInfo->doctorNextState <= arg0)) {
        if ((gSickBeatsInfo->doctorCurrentState == SICK_BEATS_DOCTOR_STATE_HITONE || gSickBeatsInfo->doctorCurrentState == SICK_BEATS_DOCTOR_STATE_HITCONSECUTIVE) && (arg0 == SICK_BEATS_DOCTOR_STATE_HITONE)) {
            arg0 = SICK_BEATS_DOCTOR_STATE_HITCONSECUTIVE;
        }
        gSickBeatsInfo->doctorNextState = arg0;
    }
}


void func_08043634(struct Beatscript *arg0) {
    gSickBeats->unk1FC = arg0;
}

// Engine Event 0x05 (Endless Game Over)
void func_08043648(void) {
    func_0804d160(D_03005380, anim_sick_beats_game_over, 0, 120, 80, 0x400, 1, 0, 0);
    gSickBeatsInfo->gameEndCounter = 20;
    D_030046a8->data.unk294[2] = gSickBeatsInfo->scoreCounters[SICK_BEATS_SCORE_HIGH].value; // high score
}

// Game Engine Stop
void sick_beats_engine_stop(void) {

}

// Get Virus Data From ID
struct SickBeatsVirusData *func_080436a8(u32 arg0) {
    u32 i = 0;
    struct SickBeatsVirus *virus = &gSickBeats->virus;
    struct SickBeatsVirusData *virusData = gSickBeats->virus.unk130;
    struct SickBeatsVirusData *virusData1 = virus->unk130;

    for (i; (i < ARRAY_COUNT(gSickBeatsInfo->virus.unk130)); virusData++, virusData1++, i++) {
        if (virusData->unk0 && virusData->unk6 == arg0) return virusData1;
    }
    
    return NULL;
}

// Cue - Spawn
void sick_beats_cue_spawn(struct Cue *cue, struct SickBeatsCue *info, u32 unused) {
    struct SickBeatsVirus *virus = &gSickBeats->virus;
    struct VirusAction *act;
    u32 isVirusHit = FALSE;
    
    info->unk0_b6 = virus->unk128;
    //
    info->unk4 = virus->unk129;
    info->unk2E = virus->unk12C;
    info->unk2F = virus->virusCuePalette;
    act = &sick_beats_virus_actions[info->unk0_b6];
    if (act->rotation) {
        info->unk8 = create_affine_sprite(act->anim, 0, act->x, act->y, 0x8800, INT_TO_FIXED(1), act->rotation,
                                            act->playbackArg1, act->playbackArg2, act->playbackArg3, 1);
    } else {
        info->unk8 = create_default_affine_sprite(act->anim, 0, act->x, act->y, 0x8800, 
                                            act->playbackArg1, act->playbackArg2, act->playbackArg3);
    }
    func_080101f8(info->unk8, act->unkC);
    affine_sprite_set_palette(info->unk8, info->unk2F);
    if (info->unk0_b6 == 0) {
        virus->exists[info->unk4] = TRUE;
    } else if (!virus->exists[info->unk4]) {
        affine_sprite_play_anim(info->unk8, 0);
        isVirusHit = TRUE;
    }
    info->unk0_b4 = FALSE;
    info->unk0_b5 = FALSE;
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
    struct SickBeatsVirus *virus = &gSickBeats->virus;

    if (!virus->exists[info->unk4]) {
        return TRUE;
    }

    if (runningTime > beats_to_ticks(120)) {
        return TRUE;
    }

    switch (info->unk0_b6) {
        case 0:
            affine_sprite_set_x(info->unk8, math_lerp(256, 176, runningTime, beats_to_ticks(24)));
            if (runningTime > beats_to_ticks(24)) {
                return TRUE;
            }
            break;

        case 1:
        case 4:
        case 7:
        case 10:
            if (runningTime > beats_to_ticks(24)) {
                return TRUE;
            }
            break;

        case 2:
        case 5:
        case 8:
        case 11:
            if (!info->unk0_b4 && (runningTime > beats_to_ticks(24))) {
                info->unk0_b4 = TRUE;
                play_sound(&s_virus_dash_seqData);
            }
            if (runningTime > beats_to_ticks(48)) {
                return TRUE;
            }
            break;

        case 13:
            affine_sprite_set_y(info->unk8, math_lerp(104, 138, runningTime, beats_to_ticks(48)));
            if (!info->unk0_b4 && (runningTime > beats_to_ticks(40))) {
                info->unk0_b4 = TRUE;
                if (!gSickBeatsInfo->microbeWasHurt) {
                    func_080432d8(SICK_BEATS_MICROBE_STATE_HURT);
                }
            }
            if (runningTime > beats_to_ticks(48)) {
                virus->exists[info->unk4] = FALSE;
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

// Fork Sprite End Callback
void func_08043a2c(u32 arg0, u32 arg1, struct AffineSprite *arg2) {
    delete_affine_sprite(arg2);
}

// Process Cue
struct AffineSprite *func_08043a38(struct SickBeatsCue *info, struct Animation *anim, struct SequenceData *seqData) {
    s16 virusEffectSprite;
    struct SickBeatsVirus *virus = &gSickBeats->virus;
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
            nextVirusAfSprite = create_affine_sprite(anim, 0, virusX, virusY, 0x8800, INT_TO_FIXED(1), INT_TO_FIXED(0), 1, 0x7f, 4, 0);
            virusEffectSprite = func_0804d160(D_03005380, anim_virus_dash_up_half, 0, virusX, virusY, 0x8800, 1, 0, 3);
            func_08043124(DPAD_RIGHT);
            break;
        case 5:
            nextVirusAfSprite = create_affine_sprite(anim, 0, virusX, virusY, 0x8800, INT_TO_FIXED(1), INT_TO_FIXED(-2), 1, 0x7f, 4, 0);
            virusEffectSprite = func_0804d160(D_03005380, anim_virus_dash_left_half, 0, virusX, virusY, 0x8800, 1, 0, 3);
            func_08043124(DPAD_UP);
            break;
        case 8:
            nextVirusAfSprite = create_affine_sprite(anim, 0, virusX, virusY, 0x8800, INT_TO_FIXED(1), INT_TO_FIXED(4), 1, 0x7f, 4, 0);
            virusEffectSprite = func_0804d294(D_03005380, anim_virus_dash_up_half, 0, virusX, virusY, 0x8800, 1, 0, 3, 0x2000);
            func_08043124(DPAD_LEFT);
            break;
        case 11:
            nextVirusAfSprite = create_affine_sprite(anim, 0, virusX, virusY, 0x8800, INT_TO_FIXED(1), INT_TO_FIXED(2), 1, 0x7f, 4, 0);
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
            info->unk0_b4 = TRUE;
            info->unk0_b5 = TRUE;
            play_sound_in_player(SFX_PLAYER_1, &s_block_hit_seqData);
        } else {
            virus->exists[info->unk4] = FALSE;
            play_sound(seqData);
        }
    }
    return nextVirusAfSprite;
}

// Cue - Hit
void sick_beats_cue_hit(struct Cue *cue, struct SickBeatsCue *info, u32 pressed, u32 released) {
    if (func_08043a38(info, anim_fork_hit_virus, &s_f_virus_hit_seqData)) {
        func_080435e8(SICK_BEATS_DOCTOR_STATE_HITONE);
        if (gSickBeatsInfo->doctorNextState == SICK_BEATS_DOCTOR_STATE_HITCONSECUTIVE) {
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
    struct AffineSprite *forkSprite;
    
    if (pressed & DPAD_UP) {
        posX = 104;
        posY = 16;
        rotation = INT_TO_FIXED(-2);
        func_08043124(DPAD_UP);
    } else if (pressed & DPAD_DOWN) {
        posX = 104;
        posY = 104;
        rotation = INT_TO_FIXED(2);
        func_08043124(DPAD_DOWN);
    } else if (pressed & DPAD_LEFT) {
        posX = 32;
        posY = 60;
        rotation = INT_TO_FIXED(4);
        func_08043124(DPAD_LEFT);
    } else if (pressed & DPAD_RIGHT) {
        posX = 176;
        posY = 60;
        rotation = INT_TO_FIXED(0);
        func_08043124(DPAD_RIGHT);
    }
    forkSprite = create_affine_sprite(anim_fork_hit_none1, 0, posX, posY, 0x8800, INT_TO_FIXED(1), rotation, 1, 0x7f, 4, 1);
    if (forkSprite) {
        func_08010238(forkSprite, func_08043a2c, (u32)forkSprite);
    }
    gameplay_add_cue_result(0, 3, 0);
    play_sound(&s_virus_fork_seqData);
}

// Common Event 0 (Beat Animation)
void sick_beats_common_beat_animation(void) {
    struct SickBeatsYellowMicrobe *yellowMicrobe = &gSickBeatsInfo->yellowMicrobe;
    
    if (gSickBeats->unk1F2 == 0) {
        func_0804d8f8(D_03005380, gSickBeats->doctorSprite, sick_beats_doctor_anim[gSickBeats->doctorCurrentState], 0, 1, 0x7f, 0);
    }
    gSickBeats->unk1F2++;
    if (gSickBeats->unk1F2 >= D_089e92f0[gSickBeats->doctorCurrentState]) {
        gSickBeats->doctorCurrentState = SICK_BEATS_DOCTOR_STATE_BEAT;
        func_080435e8(SICK_BEATS_DOCTOR_STATE_BEAT);
    }
    gSickBeats->doctorBeatCounter = beats_to_ticks(12);
    if (yellowMicrobe->unk2 == 0) {
        func_0804cebc(D_03005380, yellowMicrobe->sprite, 0);
    }
    func_0804cebc(D_03005380, gSickBeatsInfo->radioSprite, 1);
}

// Common Event 1 (Display Text, Unimplemented)
void sick_beats_common_display_text(void) {

}
