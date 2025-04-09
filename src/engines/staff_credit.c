#include "engines/staff_credit.h"

asm(".include \"include/gba.inc\""); // Temporary

// For readability.
#define gStaffCredit ((struct StaffCreditEngineData *)gCurrentEngineData)


/* STAFF CREDIT */

// Graphics Init. 3
void staff_credit_init_gfx3(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();

    D_03004b10.objPalette[0][1] = 0x7fff;
}

// Graphics Init. 2
void staff_credit_init_gfx2(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(get_current_mem_id(), staff_credit_gfx_table, 0x2000);
    run_func_after_task(data, staff_credit_init_gfx3, 0);
}


// Graphics Init. 1
void staff_credit_init_gfx1(void) {
    u32 data;

    func_0800c604(0);
    data = start_new_texture_loader(get_current_mem_id(), staff_credit_buffered_textures);
    run_func_after_task(data, staff_credit_init_gfx2, 0);
}

void staff_credit_engine_start(u8 version) {
    gStaffCredit->version = version;
    
    staff_credit_init_gfx1();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);
    func_08023694();

    D_03004b10.DISPCNT |= 0x2000;
    D_03004b10.BLDMOD = 0xc2;
    D_03004b10.WIN0H = 0xf0;
    D_03004b10.WIN0V = 0xa0;
    D_03004b10.WININ = 0x3f;

    gStaffCredit->unk_76 = 0x1000;
    gStaffCredit->unk_78 = 0;

    D_03004b10.COLEY = (s16)gStaffCredit->unk_76 >> 8;

    gStaffCredit->unk_7c = 0;
    gameplay_set_input_buttons(0, 0);
}

void staff_credit_engine_event_stub(void) {
}

void func_08023694(void) {
    u32 i;
    struct StaffCreditUnkStruct *unk;
    gStaffCredit->unk_1 = 0;

    for (i = 0; i < 0xe; i++) {
        unk = &gStaffCredit->unk_4[i];
        unk->sprite = 0xffff;
    }

    gStaffCredit->unk_74 = 1;
    gStaffCredit->unk_75 = gStaffCredit->unk_74;
    gStaffCredit->unk_2 = 1;
}

void func_080236e4(u32 arg0) {
    struct StaffCreditUnkStruct *unk = &gStaffCredit->unk_4[arg0];

    if (unk->sprite >= 0) {
        text_printer_delete_anim(sprite_get_data(gSpriteHandler, unk->sprite, SPRITE_DATA_ANIMATION));
        sprite_delete(gSpriteHandler, unk->sprite);
        unk->sprite = -1;
    }
}

void func_0802372c(const char *arg0) {
    struct StaffCreditUnkStruct *unk = &gStaffCredit->unk_4[gStaffCredit->unk_1];
    struct Animation *anim;
    u32 unk3;
    u32 color;
    
    unk3 = (u32)gStaffCredit->unk_1;
    
    func_080236e4(unk3);
    
    color = 0;
    text_printer_fill_vram_tiles(0, unk3 * 2 + 4, 0x20, 2, color);
    
    anim = text_printer_get_formatted_line_anim(
        get_current_mem_id(),
        0,
        unk3 * 2 + 4,
        TEXT_PRINTER_FONT_SMALL,
        &arg0,
        D_089df628[gStaffCredit->unk_2].anchor,
        0, 
        0x100,
        0,
        0xFFFFFFFF
    );

    unk->x = D_089df628[gStaffCredit->unk_2].xPos;
    unk->y = 0xa8;
    unk->sprite = sprite_create(gSpriteHandler, anim, 0, unk->x, 0xa8, 0x800, 0, 0, 0);

    unk3 = gStaffCredit->unk_1 + 1;
    gStaffCredit->unk_1 = unk3;
    
    if ((u8)unk3 > 0xd) {
        gStaffCredit->unk_1 = 0;
    }
}

void func_080237ec(u8 arg0) {
    gStaffCredit->unk_2 = arg0;
}

void func_080237f8(u8 arg0) {
    gStaffCredit->unk_74 = arg0;
}

void func_08023808(void) {
    u32 i;
    u32 unk2;
    struct StaffCreditUnkStruct *unk;
    
    if (gStaffCredit->unk_74 == FALSE) {
        return;
    }

    unk2 = gStaffCredit->unk_75 - 1;
    gStaffCredit->unk_75 = unk2;

    if ((u8)unk2 != 0xFF) {
        return;
    }

    gStaffCredit->unk_75 = gStaffCredit->unk_74;

    for (i = 0; i < 0xe; i++) {
        unk = &gStaffCredit->unk_4[i];

        if (unk->sprite < 0) {
            continue;
        }
        
        unk->y--;

        if (unk->y < -8) {
            func_080236e4(i);
        } else {
            sprite_set_x_y(gSpriteHandler, unk->sprite, unk->x, unk->y);
        }
    }
}

void func_08023898(u32 arg0) {
    gStaffCredit->unk_78 = 0x33;
    gStaffCredit->unk_7c = arg0;
}

void func_080238ac(void) {
    gStaffCredit->unk_78 = 0xffcd;
}

void func_080238c0(void) {
    gStaffCredit->unk_76 += gStaffCredit->unk_78;
    gStaffCredit->unk_76 = clamp_int32(gStaffCredit->unk_76, 0x400, 0x1000);

    D_03004b10.COLEY = (s16)gStaffCredit->unk_76 >> 8;

    if (gStaffCredit->unk_7c && gStaffCredit->unk_76 == 0x1000) {
        run_func_after_task(func_08002ee0(get_current_mem_id(), gStaffCredit->unk_7c, 0x2000), func_080238ac, 0);
        gStaffCredit->unk_7c = FALSE;
    } 
}

void staff_credit_engine_update(void) {
    func_080238c0();
    func_08023808();
}

void staff_credit_engine_stop(void) {
    D_03004b10.DISPCNT &= 0xdfff;
}

void staff_credit_cue_spawn(struct Cue *cue, struct StaffCreditCue *info, u32 arg) {
}

u32 staff_credit_cue_update(struct Cue *cue, struct StaffCreditCue *info, u32 runningTime, u32 released) {
    if (runningTime > ticks_to_frames(0x78)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

void staff_credit_cue_despawn(struct Cue *cue, struct StaffCreditCue *info) {
}

void staff_credit_cue_hit(struct Cue *cue, struct StaffCreditCue *info, u32 pressed, u32 released) {
}

void staff_credit_cue_barely(struct Cue *cue, struct StaffCreditCue *info, u32 pressed, u32 released) {
}

void staff_credit_cue_miss(struct Cue *cue, struct StaffCreditCue *info) {
}

void staff_credit_input_event(u32 pressed, u32 released) {
}

void staff_credit_common_beat_animation(void) {
}

void staff_credit_common_display_text(void) {
}

void staff_credit_common_init_tutorial(void) {
}
