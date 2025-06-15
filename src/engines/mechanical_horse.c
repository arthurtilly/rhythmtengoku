#include "engines/mechanical_horse.h"

asm(".include \"include/gba.inc\""); // Temporary

// For readability.
#define gMechanicalHorse ((struct MechanicalHorseEngineData *)gCurrentEngineData)


/* MECHANICAL HORSE */


void func_08040c2c() {
    gMechanicalHorse->unk2fe = 0;
    gMechanicalHorse->unk306 = -1;
    gMechanicalHorse->unk300 = 0;
}

void func_08040c58() {
    u32* temp;
    switch (gMechanicalHorse->unk2fe) {
        case 0:
        case 1:
        case 2:
            gMechanicalHorse->unk30c += gMechanicalHorse->unk2d0 / 2;
            break;
        case 3:
            gMechanicalHorse->unk30c += INT_TO_FIXED(13);
            break;
        case 4:
            gMechanicalHorse->unk30c = 0;
            break;
        case 5:
            gMechanicalHorse->unk30c = 0;
            break;
    }
    scene_set_bg_layer_pos(0, FIXED_TO_INT(gMechanicalHorse->unk30c), 0);
}


void func_08040cfc() {
    gMechanicalHorse->unk300 = 0;
}

void func_08040d10() {
    u16 a = get_current_mem_id();
    s32 task = palette_fade_in(a, gMechanicalHorse->unk304, 2, gMechanicalHorse->unk302, &mechanical_horse_backgrounds[gMechanicalHorse->unk2ff].palette[0][0], D_03004b10.bgPalette[0]);
    run_func_after_task(task, func_08040cfc, 0);
    gMechanicalHorse->unk2fe = gMechanicalHorse->unk2ff;
}

#include "asm/engines/mechanical_horse/asm_08040d90.s"

#include "asm/engines/mechanical_horse/asm_08040dd8.s"

void func_08040e80() {
    if (gMechanicalHorse->unk300 == 0 && gMechanicalHorse->unk306 >= 0) {
        func_08040dd8();
    }
    func_08040c58();
}

#include "asm/engines/mechanical_horse/asm_08040eb0.s"

void mechanical_horse_init_gfx3() {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}

void mechanical_horse_init_gfx2() {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), gfx_table_mechanical_horse, 0x2000);
    run_func_after_task(task, mechanical_horse_init_gfx3, 0);
}

void mechanical_horse_init_gfx1() {
    s32 task;

    func_0800c604(0);
    task = start_new_texture_loader(get_current_mem_id(), mechanical_horse_buffered_textures);
    run_func_after_task(task, mechanical_horse_init_gfx2, 0);
}

#include "asm/engines/mechanical_horse/asm_08040f6c.s"

#include "asm/engines/mechanical_horse/asm_08041444.s"

#include "asm/engines/mechanical_horse/asm_080415c0.s"

// prints specified text?
void func_080416cc(const char* string) {
    delete_bmp_font_obj_text_anim(gMechanicalHorse->textFont, gMechanicalHorse->textSprite);
    sprite_set_anim(gSpriteHandler, gMechanicalHorse->textSprite, (struct Animation*)bmp_font_obj_print_c(gMechanicalHorse->textFont, string, 1, 0xc), 0, 1, 0, 0);
}

void func_08041730(u8 unk) {
    gMechanicalHorse->unk2e8 = unk;
}

#include "asm/engines/mechanical_horse/asm_08041744.s"

#include "asm/engines/mechanical_horse/asm_080417ac.s"

#include "asm/engines/mechanical_horse/asm_0804188c.s"

u8 func_08041940(void) {
    u8 i;
    for (i = 0; i < 20; i++) {
        if (gMechanicalHorse->unk3c[i].unk2 == 0) {
            return i;
        }  
    }
    return 0;
}

void func_08041970(void) {
    u8 i;
    boolean isPlayer;
    u32 temp2;
    for (i = 0; i < 20; i++) {
        switch (gMechanicalHorse->unk3c[i].unk2) {
            case 2:
            case 3:
                isPlayer = FALSE;
                if (gMechanicalHorse->unk3c[i].unk2 == 2) {
                    isPlayer = TRUE;
                }

                if (isPlayer) {
                    gMechanicalHorse->unk3c[i].pos_x = gMechanicalHorse->unk0[0].unkc;
                    gMechanicalHorse->unk3c[i].pos_z = INT_TO_FIXED(128.0078125);
                } else {
                    gMechanicalHorse->unk3c[i].pos_x = gMechanicalHorse->unk0[1].unkc;
                    gMechanicalHorse->unk3c[i].pos_z = INT_TO_FIXED(128.01953125);
                }
                gMechanicalHorse->unk3c[i].pos_y = INT_TO_FIXED(96);
                gMechanicalHorse->unk3c[i].unk14[0] = D_0805aa40[gMechanicalHorse->unk2cc][0];
                gMechanicalHorse->unk3c[i].unk14[1] = D_0805aa40[gMechanicalHorse->unk2cc][1];
                gMechanicalHorse->unk3c[i].unk4 = 0;
                if (gMechanicalHorse->unk2cc == 0) {
                    if (gMechanicalHorse->unk3c[i].unk3 == 0 || gMechanicalHorse->unk3c[i].unk3 == 2) {
                        sprite_set_anim(gSpriteHandler, gMechanicalHorse->unk3c[i].sprite, anim_horse_text_pak, 0, 0, 0, 0);
                    } else {
                        sprite_set_anim(gSpriteHandler, gMechanicalHorse->unk3c[i].sprite, anim_horse_text_ka, 0, 0, 0, 0);
                    }
                } else {
                    if (gMechanicalHorse->unk2cc == 1) {                    
                        sprite_set_anim(gSpriteHandler, gMechanicalHorse->unk3c[i].sprite, anim_horse_text_tot, 0, 0, 0, 0);
                    } else if (gMechanicalHorse->unk2cc == 2) {
                        if (gMechanicalHorse->unk3c[i].unk3 == 0) {
                            sprite_set_anim(gSpriteHandler, gMechanicalHorse->unk3c[i].sprite, anim_horse_text_pa, 0, 0, 0, 0);
                        } else if (gMechanicalHorse->unk3c[i].unk3 == 1) {
                            sprite_set_anim(gSpriteHandler, gMechanicalHorse->unk3c[i].sprite, anim_horse_text_ka, 0, 0, 0, 0); 
                        } else {
                            sprite_set_anim(gSpriteHandler, gMechanicalHorse->unk3c[i].sprite, anim_horse_text_rap, 0, 0, 0, 0);
                        }
                    } else {
                        if (gMechanicalHorse->unk3c[i].unk3 <= 2) {
                             sprite_set_anim(gSpriteHandler, gMechanicalHorse->unk3c[i].sprite, anim_horse_text_do, 0, 0, 0, 0);
                        } else {
                             sprite_set_anim(gSpriteHandler, gMechanicalHorse->unk3c[i].sprite, anim_horse_text_dod, 0, 0, 0, 0);
                        }
                    }
                }
                sprite_set_x_y_z(gSpriteHandler, gMechanicalHorse->unk3c[i].sprite, FIXED_TO_INT(gMechanicalHorse->unk3c[i].pos_x), FIXED_TO_INT(gMechanicalHorse->unk3c[i].pos_y), gMechanicalHorse->unk3c[i].pos_z);
                sprite_set_visible(gSpriteHandler, gMechanicalHorse->unk3c[i].sprite, 1);
                gMechanicalHorse->unk3c[i].unk2 = 4;
                break;
            case 4:
                gMechanicalHorse->unk3c[i].pos_x += gMechanicalHorse->unk3c[i].unk14[0];
                gMechanicalHorse->unk3c[i].pos_y += gMechanicalHorse->unk3c[i].unk14[1];
                gMechanicalHorse->unk3c[i].unk14[1] += INT_TO_FIXED(0.125); 
                sprite_set_x_y(gSpriteHandler, gMechanicalHorse->unk3c[i].sprite, FIXED_TO_INT(gMechanicalHorse->unk3c[i].pos_x), FIXED_TO_INT(gMechanicalHorse->unk3c[i].pos_y));
                if ((gMechanicalHorse->unk3c[i].pos_x < INT_TO_FIXED(-16)) || (gMechanicalHorse->unk3c[i].pos_y > INT_TO_FIXED(112))) {
                    gMechanicalHorse->unk3c[i].unk2 = 0;
                    sprite_set_visible(gSpriteHandler, gMechanicalHorse->unk3c[i].sprite, 0);
                }
                break;
            case 1:
                if (gMechanicalHorse->unk3c[i].unk4-- > 0) {
                    break;
                }
                gMechanicalHorse->unk3c[i].unk2 = 3;
                break;
            case 0:
                break;
        }
    }
}

#include "asm/engines/mechanical_horse/asm_08041c98.s"

#include "asm/engines/mechanical_horse/asm_08041ddc.s"

#include "asm/engines/mechanical_horse/asm_08041f80.s"

#include "asm/engines/mechanical_horse/asm_08042020.s"

#include "asm/engines/mechanical_horse/asm_080420c0.s"

#include "asm/engines/mechanical_horse/asm_0804231c.s"

#include "asm/engines/mechanical_horse/asm_08042438.s"

#include "asm/engines/mechanical_horse/asm_0804249c.s"

void func_080424f0(u16 unk) {
    gMechanicalHorse->unk2ee = unk;
}

#include "asm/engines/mechanical_horse/asm_08042504.s"

#include "asm/engines/mechanical_horse/asm_08042548.s"

void mechanical_horse_engine_update() {
    func_080420c0();
    func_0804188c();
    func_08041970();
    func_0804231c();
    func_08042548();
    func_08042438();
    func_08040e80();
    func_0804249c();
    scene_set_music_volume(gMechanicalHorse->musicVolume);
}

void mechanical_horse_engine_stop() {
}

#include "asm/engines/mechanical_horse/asm_08042758.s"

#include "asm/engines/mechanical_horse/asm_080427b0.s"

void mechanical_horse_cue_despawn(struct Cue *cue, struct MechanicalHorseCue *data) {
}

#include "asm/engines/mechanical_horse/asm_080427ec.s"

void mechanical_horse_cue_barely(struct Cue *cue, struct MechanicalHorseCue *data, u32 pressed, u32 released) {
    mechanical_horse_cue_hit(cue, data, pressed, released);
}

void mechanical_horse_cue_miss(struct Cue *cue, struct MechanicalHorseCue *data) {
    gameplay_ignore_this_cue_result();
    func_08042020();
}

void mechanical_horse_input_event(u32 pressed, u32 released) {
    if (gMechanicalHorse->unk0[0].unk6 == 0) {
        func_08041c98();
    } else {
        func_08041f80();
    }
}

void mechanical_horse_common_beat_animation() {
}

void mechanical_horse_common_display_text() {
}
