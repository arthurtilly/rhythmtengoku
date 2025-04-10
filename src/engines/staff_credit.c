#include "engines/staff_credit.h"

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

// Game Engine Start
void staff_credit_engine_start(u8 version) {
    gStaffCredit->version = version;
    
    staff_credit_init_gfx1();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);
    staff_credit_initialize_text();

    D_03004b10.DISPCNT |= 0x2000;
    D_03004b10.BLDMOD = 0xc2;
    D_03004b10.WIN0H = 0xf0;
    D_03004b10.WIN0V = 0xa0;
    D_03004b10.WININ = 0x3f;

    gStaffCredit->bgBrightness = 0x1000;
    gStaffCredit->brightnessMod = 0;

    D_03004b10.COLEY = (s16)gStaffCredit->bgBrightness >> 8;

    gStaffCredit->gfxTable = NULL;
    gameplay_set_input_buttons(0, 0);
}

// Engine Event 0x04 (Stub)
void staff_credit_engine_event_stub(void) {
}

// Init. Text Structs
void staff_credit_initialize_text(void) {
    u32 i;
    struct CreditsText *text;
    gStaffCredit->currentText = 0;

    for (i = 0; i < STAFF_CREDIT_TEXT_AMOUNT; i++) {
        text = &gStaffCredit->creditsText[i];
        text->sprite = 0xffff;
    }

    gStaffCredit->scrollText = TRUE;
    gStaffCredit->scrollTimer = gStaffCredit->scrollText;
    gStaffCredit->textAlignment = 1;
}

// Clear Text Sprite
void staff_credit_clear_text(u32 index) {
    struct CreditsText *text = &gStaffCredit->creditsText[index];

    if (text->sprite >= 0) {
        text_printer_delete_anim(sprite_get_data(gSpriteHandler, text->sprite, SPRITE_DATA_ANIMATION));
        sprite_delete(gSpriteHandler, text->sprite);
        text->sprite = -1;
    }
}

// Engine Event 0x00 (Print Scrolling Text)
void staff_credit_print_text(const char *string) {
    struct CreditsText *text = &gStaffCredit->creditsText[gStaffCredit->currentText];
    struct Animation *anim;
    u32 currentTextId;
    u32 color;
    
    currentTextId = (u32)gStaffCredit->currentText;
    
    staff_credit_clear_text(currentTextId);
    
    color = 0;
    text_printer_fill_vram_tiles(0, currentTextId * 2 + 4, 0x20, 2, color);
    
    anim = text_printer_get_formatted_line_anim(
        get_current_mem_id(),
        0,
        currentTextId * 2 + 4,
        TEXT_PRINTER_FONT_SMALL,
        &string,
        staff_credit_text_positions[gStaffCredit->textAlignment].anchor,
        0, 
        0x100,
        0,
        0xFFFFFFFF
    );

    text->x = staff_credit_text_positions[gStaffCredit->textAlignment].xPos;
    text->y = 0xa8;
    text->sprite = sprite_create(gSpriteHandler, anim, 0, text->x, 0xa8, 0x800, 0, 0, 0);

    currentTextId = gStaffCredit->currentText + 1;
    gStaffCredit->currentText = currentTextId;
    
    if ((u8)currentTextId >= STAFF_CREDIT_TEXT_AMOUNT) {
        gStaffCredit->currentText = 0;
    }
}

// Engine Event 0x01 (Set Text Alignment)
void staff_credit_set_text_alignment(u8 alignment) {
    gStaffCredit->textAlignment = alignment;
}

// Engine Event 0x02 (Set Text Scrolling)
void staff_credit_set_text_scroll(u8 enabled) {
    gStaffCredit->scrollText = enabled;
}

// Update Text Scroll
void staff_credit_update_text_scroll(void) {
    u32 i;
    u32 scrollTimer;
    struct CreditsText *text;
    
    if (gStaffCredit->scrollText == FALSE) {
        return;
    }

    scrollTimer = gStaffCredit->scrollTimer - 1;
    gStaffCredit->scrollTimer = scrollTimer;

    if ((u8)scrollTimer != 0xFF) {
        return;
    }

    gStaffCredit->scrollTimer = gStaffCredit->scrollText;

    for (i = 0; i < STAFF_CREDIT_TEXT_AMOUNT; i++) {
        text = &gStaffCredit->creditsText[i];

        if (text->sprite < 0) {
            continue;
        }
        
        text->y--;

        if (text->y < -8) {
            staff_credit_clear_text(i);
        } else {
            sprite_set_x_y(gSpriteHandler, text->sprite, text->x, text->y);
        }
    }
}

// Engine Event 0x03 (Set Background)
void staff_credit_set_bg(u32 gfxTable) {
    gStaffCredit->brightnessMod = 0x33;
    gStaffCredit->gfxTable = gfxTable;
}

// Background Fade In
void staff_credit_bg_fade_in(void) {
    gStaffCredit->brightnessMod = -0x33;
}

// Update Background Brightness
void staff_credit_update_bg_brightness(void) {
    gStaffCredit->bgBrightness += gStaffCredit->brightnessMod;
    gStaffCredit->bgBrightness = clamp_int32(gStaffCredit->bgBrightness, 0x400, 0x1000);

    D_03004b10.COLEY = (s16)gStaffCredit->bgBrightness >> 8;

    if (gStaffCredit->gfxTable && gStaffCredit->bgBrightness == 0x1000) {
        run_func_after_task(func_08002ee0(get_current_mem_id(), gStaffCredit->gfxTable, 0x2000), staff_credit_bg_fade_in, 0);
        gStaffCredit->gfxTable = NULL;
    } 
}

// Game Engine Update
void staff_credit_engine_update(void) {
    staff_credit_update_bg_brightness();
    staff_credit_update_text_scroll();
}

// Game Engine Stop
void staff_credit_engine_stop(void) {
    D_03004b10.DISPCNT &= 0xdfff;
}

// Cue - Spawn
void staff_credit_cue_spawn(struct Cue *cue, struct StaffCreditCue *info, u32 arg) {
}

// Cue - Update
u32 staff_credit_cue_update(struct Cue *cue, struct StaffCreditCue *info, u32 runningTime, u32 released) {
    if (runningTime > ticks_to_frames(0x78)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

// Cue - Despawn
void staff_credit_cue_despawn(struct Cue *cue, struct StaffCreditCue *info) {
}

// Cue - Hit
void staff_credit_cue_hit(struct Cue *cue, struct StaffCreditCue *info, u32 pressed, u32 released) {
}

// Cue - Barely
void staff_credit_cue_barely(struct Cue *cue, struct StaffCreditCue *info, u32 pressed, u32 released) {
}

// Cue - Miss
void staff_credit_cue_miss(struct Cue *cue, struct StaffCreditCue *info) {
}

// Input Event
void staff_credit_input_event(u32 pressed, u32 released) {
}

// Common Event 0 (Beat Animation, Unimplemented)
void staff_credit_common_beat_animation(void) {
}

// Common Event 1 (Display Text, Unimplemented)
void staff_credit_common_display_text(void) {
}

// Common Event 2 (Init. Tutorial, Unimplemented)
void staff_credit_common_init_tutorial(void) {
}
