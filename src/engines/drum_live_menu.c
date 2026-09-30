#include "engines/drum_live_menu.h"

// For readability.
#define gDrumLiveMenu ((struct DrumLiveMenuEngineData *)gCurrentEngineData)


/* LIVE MENU */


// Graphics Init. 3
void drum_live_menu_init_gfx3(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}

// Graphics Init. 2
void drum_live_menu_init_gfx2(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), drum_live_menu_gfx_table, 0x2000);
    run_func_after_task(task, drum_live_menu_init_gfx3, 0);
}

// Graphics Init. 1
void drum_live_menu_init_gfx1(void) {
    s32 task;

    func_0800c604(0);
    task = start_new_texture_loader(get_current_mem_id(), drum_live_menu_buffered_textures);
    run_func_after_task(task, drum_live_menu_init_gfx2, 0);
}

// Game Engine Start
void drum_live_menu_engine_start(u32 version) {
    struct TextPrinter *printer;
    u32 i;
    s16 sprite;
    
    gDrumLiveMenu->version = version;

    drum_live_menu_init_gfx1();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, FALSE, 0, 0, 0, 29, 0x8001);

    printer = text_printer_create_new(get_current_mem_id(), 8, 148, 30);
    text_printer_set_x_y(printer, 92, 40);
    text_printer_set_layer(printer, 0x4800);
    text_printer_center_by_content(printer, FALSE);
    text_printer_set_palette(printer, 4);
    text_printer_set_colors(printer, 0);
    text_printer_set_x_controller(printer, &gDrumLiveMenu->otherSpritesOffset);
    gameplay_set_text_printer(printer);
    gameplay_set_text_advance_icon(1);
    drum_live_menu_set_description_text(POSTER_DRUM_GIRLS_LIVE);

    gDrumLiveMenu->printer = printer;

    for (i = 0; i < 3; i++) {
        sprite = sprite_create(gSpriteHandler, anim_drum_live_menu_poster, i, 8, i * 256 + 32, 0x4a00, 0, 0, 0);
        sprite_set_origin_x_y(gSpriteHandler, sprite, 0, &D_03004b10.BG_OFS[1].y);
    }

    gDrumLiveMenu->arrowUpSprite = sprite_create(gSpriteHandler, anim_drum_live_menu_arrow_up, 0, 44, 80, 0x800, 1, 0, 0x8000);
    gDrumLiveMenu->arrowDownSprite = sprite_create(gSpriteHandler, anim_drum_live_menu_arrow_down, 0, 44, 80, 0x800, 1, 0, 0x8000);

    sprite_set_origin_x_y(gSpriteHandler, gDrumLiveMenu->arrowUpSprite, 0, &gDrumLiveMenu->otherSpritesOffset);
    sprite_set_origin_x_y(gSpriteHandler, gDrumLiveMenu->arrowDownSprite, 0, &gDrumLiveMenu->otherSpritesOffset);

    gDrumLiveMenu->startSprite = sprite_create(gSpriteHandler, anim_drum_live_menu_start_icon, 0, 240, 160, 0x800, 1, 0, 0x8000);
    
    gDrumLiveMenu->currentSelection = 0;
    gDrumLiveMenu->sceneFrozen = FALSE;
    gDrumLiveMenu->inputTimer = 20;
    gDrumLiveMenu->bgOffsetGoal = 0;
    gDrumLiveMenu->bgOffset = 0;
    gDrumLiveMenu->otherSpritesOffset = 0;

    gameplay_set_input_buttons(0, 0);
}

// Engine Event 01 (Stub)
void drum_live_menu_engine_event_stub(void) {
}

// Set Description Text
void drum_live_menu_set_description_text(u32 arg0) {
    gameplay_display_text(drum_live_menu_poster_desc[arg0]);
}

// Handle Menu Navigation
void drum_live_menu_handle_navigation(void) {
    u32 nextSelection;
    
    if (gDrumLiveMenu->sceneFrozen == FALSE) {
        return;
    }

    nextSelection = gDrumLiveMenu->currentSelection;
    
    if (D_03004afc & DPAD_UP && nextSelection > POSTER_DRUM_GIRLS_LIVE) {
        nextSelection--;
        play_sound(&s_keytoy_count2_seqData);
    }

    if (D_03004afc & DPAD_DOWN && nextSelection < POSTER_DRUM_SAMURAI_BAND_LIVE) {
        nextSelection++;
        play_sound(&s_keytoy_count1_seqData);
    }

    if (gDrumLiveMenu->currentSelection != nextSelection) {
        gDrumLiveMenu->currentSelection = nextSelection;
        drum_live_menu_set_description_text(nextSelection);

        gDrumLiveMenu->bgOffsetGoal = nextSelection << 0x10;
        gDrumLiveMenu->inputTimer = 40;

        sprite_set_visible(gSpriteHandler, gDrumLiveMenu->startSprite, FALSE);
        sprite_set_visible(gSpriteHandler, gDrumLiveMenu->arrowUpSprite, FALSE);
        sprite_set_visible(gSpriteHandler, gDrumLiveMenu->arrowDownSprite, FALSE);
    }
}

// Update Poster Position
void drum_live_update_poster_position(void) {
    s32 unk;
    s32 unk2;

    unk = gDrumLiveMenu->bgOffsetGoal - gDrumLiveMenu->bgOffset;
    unk2 = unk;
    
    if (unk < 0) {
        unk2 = -unk;    
    }
    
    if (unk2 < 0x200) {
        gDrumLiveMenu->bgOffset = gDrumLiveMenu->bgOffsetGoal;
    } else {
        gDrumLiveMenu->bgOffset += (unk * 0x20) >> 8;
    }

    D_03004b10.BG_OFS[1].y = gDrumLiveMenu->bgOffset >> 8;
    gDrumLiveMenu->otherSpritesOffset = (gDrumLiveMenu->bgOffset >> 8) + gDrumLiveMenu->currentSelection * -0x100;
}

// Update Input Timer
void drum_live_menu_update_input_timer(void) {
    if (gDrumLiveMenu->sceneFrozen == FALSE) {
        return;
    }

    if (gDrumLiveMenu->inputTimer == 0) {
        return;
    }

    gDrumLiveMenu->inputTimer--;

    if (gDrumLiveMenu->inputTimer != 0) {
        return;
    }

    sprite_set_anim_cel(gSpriteHandler, gDrumLiveMenu->arrowUpSprite, 1);
    sprite_set_anim_cel(gSpriteHandler, gDrumLiveMenu->arrowDownSprite, 1);

    if (gDrumLiveMenu->currentSelection > POSTER_DRUM_GIRLS_LIVE) {
        sprite_set_visible(gSpriteHandler, gDrumLiveMenu->arrowUpSprite, TRUE);
    }

    if (gDrumLiveMenu->currentSelection < POSTER_DRUM_SAMURAI_BAND_LIVE) {
        sprite_set_visible(gSpriteHandler, gDrumLiveMenu->arrowDownSprite, TRUE);
    }

    sprite_set_visible(gSpriteHandler, gDrumLiveMenu->startSprite, TRUE);
}

// Engine Event 00 (Freeze Beatscript Scene)
void func_08036f94(void) {
    gDrumLiveMenu->sceneFrozen = TRUE;
    set_pause_beatscript_scene(TRUE);
}

// Handle Menu Selection
void drum_live_menu_handle_selection(void) {
    if (gDrumLiveMenu->sceneFrozen == FALSE) {
        return;
    }   

    if (gDrumLiveMenu->inputTimer == 0 && D_03004afc & A_BUTTON) {
        gDrumLiveMenu->sceneFrozen = FALSE;

        gameplay_set_inter_engine_variable(0, gDrumLiveMenu->currentSelection);
        set_pause_beatscript_scene(FALSE);
        play_sound(&s_menu_kettei2_seqData);
    }
}

// Handle Menu Exit
void drum_live_menu_handle_exit(void) {
    if (gDrumLiveMenu->sceneFrozen == FALSE) {
        return;
    }

    if (gDrumLiveMenu->inputTimer == 0) {
        if (D_03004afc & B_BUTTON) {
            gDrumLiveMenu->sceneFrozen = FALSE;
            set_next_scene(get_scene_trans_target(get_current_scene_trans_target()));
            gameplay_skip_tutorial();

            play_sound(&s_menu_cancel3_seqData);
        }
    }
}

// Game Engine Update
void drum_live_menu_engine_update(void) {
    drum_live_menu_handle_selection();
    drum_live_menu_handle_exit();
    drum_live_menu_handle_navigation();
    drum_live_update_poster_position();
    drum_live_menu_update_input_timer();
}

// Game Engine Stop
void drum_live_menu_engine_stop(void) {
}

// Cue - Spawn
void drum_live_menu_cue_spawn(struct Cue *cue, struct DrumLiveMenuCue *info) {
}

// Cue - Update
u32 drum_live_menu_cue_update(struct Cue *cue, struct DrumLiveMenuCue *info, u32 runningTime, u32 duration) {
    if (runningTime > ticks_to_frames(0x78)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

// Cue - Despawn
void drum_live_menu_cue_despawn(struct Cue *cue, struct DrumLiveMenuCue *info) {
}

// Cue - Hit
void drum_live_menu_cue_hit(struct Cue *cue, struct DrumLiveMenuCue *info, u32 pressed, u32 released) {
}

// Cue - Barely
void drum_live_menu_cue_barely(struct Cue *cue, struct DrumLiveMenuCue *info, u32 pressed, u32 released) {
}

// Cue - Miss
void drum_live_menu_cue_miss(struct Cue *cue, struct DrumLiveMenuCue *info) {
}

// Input Event
void drum_live_menu_input_event(u32 pressed, u32 released) {
}

// Common Event 0 (Beat Animation, Unimplemented)
void drum_live_menu_common_beat_animation(void) {
}

// Common Event 1 (Display Text, Unimplemented)
void drum_live_menu_common_display_text(void) {
}

// Common Event 2 (Init. Tutorial, Unimplemented)
void drum_live_menu_common_init_tutorial(void) {
}
