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
#define gSickBeatsInfo ((struct SickBeatsInfo *)D_030055d0)
#define ARRAY_SIZE(a) (size_t) (sizeof(a))/sizeof((a)[0])


/* SICK BEATS */


// setup stuff for endless version
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

#include "asm/engines/sick_beats/asm_08042b30.s"

#include "asm/engines/sick_beats/asm_08042b58.s"

#include "asm/engines/sick_beats/asm_08042b88.s"

#include "asm/engines/sick_beats/asm_08042c84.s"

#include "asm/engines/sick_beats/asm_08042cec.s"

#include "asm/engines/sick_beats/asm_08042d4c.s"

void func_08042d74(void) {
    u32 i;
    struct SickBeatsVirus *sub = &gSickBeatsInfo->virus;

    for (i = 0; i < ARRAY_SIZE(sub->unk28); i++) sub->unk28[i] = 0;
    sub->unk128 = -1;
    sub->unk129 = 0;
    sub->unk12A = 0;
    sub->unk12C = 1;
    sub->unk12D = 0;
    sub->unk12E = 1;
    sub->unk12F = 0;

    for (i = 0; i < ARRAY_SIZE(sub->unk130); i++) sub->unk130[i].unk0 = NULL;
}

void func_08042de8(struct SickBeatsSub1 *arg0) {
    struct SickBeatsVirus *sub = &gSickBeatsInfo->virus;
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
                sub->unk28[arg0->unk6] = TRUE;
                break;
            default: // spawn a cue
                sub->unk128 = path->command; // cue
                sub->unk129 = arg0->unk6;
                sub->unk12C = arg0->unk4;
                sub->unk12D = arg0->unk5;
                gameplay_spawn_cue(path->arg);
        }
        path += 1;
        arg0->unk8 += INT_TO_FIXED(path->rest);
    }
    arg0->unk0 = path;
}

// Update Virus
void func_08042e80(void) {
    u32 i;
    struct SickBeatsInfo *info;
    struct SickBeatsSub1 *sub1;
    
    info = gSickBeatsInfo;
    i = 0;
    sub1 = info->virus.unk130;

    //sub1 = gSickBeatsInfo->virus.unk130;
    for (i; i < ARRAY_SIZE(gSickBeatsInfo->virus.unk130); i++) {
        func_08042de8(sub1);
        sub1++;
    }
}

#include "asm/engines/sick_beats/asm_08042ea8.s"

// Engine Event 0x01 (Spawn Virus)
void func_08042ecc(struct SickBeatsPath *path) {
    struct SickBeatsVirus *sub = &gSickBeatsInfo->virus;
    struct SickBeatsSub1 *sub1;
    u32 i = 0;
    
    sub1 = gSickBeatsInfo->virus.unk130;
    if (sub1->unk0) {
        struct SickBeatsSub1 *sub1temp = sub->unk130;
        
        do {
            sub1temp++;
            if (++i > ARRAY_SIZE(gSickBeatsInfo->virus.unk130)-1) return;
            sub1 = sub1temp;
        } while (sub1->unk0);
    }
    if (i > ARRAY_SIZE(gSickBeatsInfo->virus.unk130)-1) return;
    sub1->unk0 = path;
    sub1->unk6 = sub->unk12A;
    sub1->unk8 = 0;
    sub1->unk4 = sub->unk12E;
    sub1->unk5 = sub->unk12F;
    if (++sub->unk12A > 0xff) {
        sub->unk12A = 0;
    }
}

#include "asm/engines/sick_beats/asm_08042f44.s"

#include "asm/engines/sick_beats/asm_08042f58.s"

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

#include "asm/engines/sick_beats/asm_08043064.s"

#include "asm/engines/sick_beats/asm_08043124.s"

// Init Microbe
void func_0804317c(void) {
    struct SickBeatsYellowMicrobe *ymicrobe = &gSickBeatsInfo->yellowMicrobe;

    ymicrobe->sprite = func_0804d160(D_03005380, anim_yellow_microbe_beat, 0, 0xae, 0x8a, 0x8900, 1, 0x7f, 0);
    ymicrobe->unk2 = 0;
}

#include "asm/engines/sick_beats/asm_080431c4.s"

#include "asm/engines/sick_beats/asm_080432d0.s"

#include "asm/engines/sick_beats/asm_080432d8.s"

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
    task = func_080087b4(get_current_mem_id(), sick_beats_buffered_textures);
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

#include "asm/engines/sick_beats/asm_08043530.s"

#include "asm/engines/sick_beats/asm_08043534.s"

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
                pause_beatscript_scene(FALSE);
            }
        }
    }
}


#include "asm/engines/sick_beats/asm_080435e8.s"

#include "asm/engines/sick_beats/asm_08043634.s"

#include "asm/engines/sick_beats/asm_08043648.s"

#include "asm/engines/sick_beats/asm_080436a4.s"

#include "asm/engines/sick_beats/asm_080436a8.s"

#include "asm/engines/sick_beats/asm_080436e4.s"

#include "asm/engines/sick_beats/asm_080438c8.s"

#include "asm/engines/sick_beats/asm_08043a20.s"

#include "asm/engines/sick_beats/asm_08043a2c.s"

#include "asm/engines/sick_beats/asm_08043a38.s"

#include "asm/engines/sick_beats/asm_08043d98.s"

#include "asm/engines/sick_beats/asm_08043df0.s"

#include "asm/engines/sick_beats/asm_08043e2c.s"

#include "asm/engines/sick_beats/asm_08043e78.s"

void sick_beats_common_beat_animation(void) {
    struct SickBeatsYellowMicrobe *ymicrobe = &gSickBeatsInfo->yellowMicrobe;
    
    if (gSickBeatsInfo->unk1F2 == 0) {
        func_0804d8f8(D_03005380, gSickBeatsInfo->unk1F6, sick_beats_doctor_anim[gSickBeatsInfo->unk1F0], 0, 1, 0x7f, 0);
    }
    gSickBeatsInfo->unk1F2++;
    if (gSickBeatsInfo->unk1F2 >= D_089e92f0[gSickBeatsInfo->unk1F0]) {
        gSickBeatsInfo->unk1F0 = 0;
        func_080435e8();
    }
    gSickBeatsInfo->unk1F4 = beats_to_ticks(12);
    if (ymicrobe->unk2 == 0) {
        func_0804cebc(D_03005380, ymicrobe->sprite, 0);
    }
    func_0804cebc(D_03005380, gSickBeatsInfo->unk1F8, 1);
}

#include "asm/engines/sick_beats/asm_08044010.s"
