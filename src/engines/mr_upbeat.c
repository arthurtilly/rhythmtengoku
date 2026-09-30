#include "engines/mr_upbeat.h"
#include "src/affine_sprite.h"

// For readability.
#define gMrUpbeat ((struct MrUpbeatEngineData *)gCurrentEngineData)

/* MR. UPBEAT */

// Init. Score Counter
void mr_upbeat_init_score_counter(void) {
    u32 i;
    gMrUpbeat->scoreCounterSprite = sprite_create(gSpriteHandler, anim_metronome_score_counter, 0, 216, 20, 0x4801, 0, 0, 0);

    for (i = 0; i < 3; i++) {
        gMrUpbeat->scoreNumberSprites[i] = sprite_create(gSpriteHandler, anim_metronome_score_num, 0, 216, 20, 0x4800, 0, 0x7f, 0);
    }

    for (i = 0; i < 3; i++) {
        gMrUpbeat->highscoreNumberSprites[i] = sprite_create(gSpriteHandler, anim_mr_upbeat_high_score_num , 0, 216, 20, 0x4800, 0, 0x7f, 0);
    }

    gMrUpbeat->score = 0;
    gMrUpbeat->highscore = D_030046a8->data.unk294[0];

    mr_upbeat_update_score_counter();

    gMrUpbeat->isHighscore = FALSE;
}

// Update Score Counter Sprites
void mr_upbeat_update_score_counter(void) {
    u32 digits;
    u32 i;
    s32 digitX;
    u32 score;
    u32 highscore;

    score = gMrUpbeat->score;
    digits = 1;
    
    if (9 < score) {
        digits = 2;
    }
    if (99 < score) {
        digits++;
    }

    for (i = 0; i < 3; i++) {
        sprite_set_anim_cel(gSpriteHandler, gMrUpbeat->scoreNumberSprites[i], 0x7f);
    }

    digitX = (digits - 1) * 5 + 216;

    for (i = 0; i < digits; i++) {
        sprite_set_anim_cel(gSpriteHandler, gMrUpbeat->scoreNumberSprites[i], score % 10);
        score = score / 10;
        sprite_set_x(gSpriteHandler, gMrUpbeat->scoreNumberSprites[i], digitX); 

        digitX -= 10;
    }

    highscore = gMrUpbeat->highscore;
    digits = 1;
    
    if (9 < highscore) {
        digits = 2;
    }
    if (99 < highscore) {
        digits++;
    }

    for (i = 0; i < 3; i++) {
        sprite_set_anim_cel(gSpriteHandler, gMrUpbeat->highscoreNumberSprites[i], 0x7f);
    }

    digitX = (digits - 1) * 2 + 215;

    for (i = 0; i < digits; i++) {
        sprite_set_anim_cel(gSpriteHandler, gMrUpbeat->highscoreNumberSprites[i], highscore % 10);
        highscore = highscore / 10;
        sprite_set_x(gSpriteHandler, gMrUpbeat->highscoreNumberSprites[i], digitX); 

        digitX -= 5;
    }
}

// Engine Event 0x03 (Increment Score)
void func_08034d6c(void) {
    gMrUpbeat->score++;

    if (99 < gMrUpbeat->score) {
        gMrUpbeat->score = 99;
    }

    if (gMrUpbeat->score > gMrUpbeat->highscore) {
        gMrUpbeat->highscore = gMrUpbeat->score;
        gMrUpbeat->isHighscore = TRUE;
    }

    mr_upbeat_update_score_counter();
}

// Engine Event 0x04 (Save Highscore)
void func_08034db0(void) {
    D_030046a8->data.unk294[0] = gMrUpbeat->highscore;
}

// Init. Metronome
void mr_upbeat_init_metronome(void) {
    struct Metronome *metronome = &gMrUpbeat->metronome;
    metronome->sprite = create_affine_sprite(anim_metronome_pendulum, 0, 120, 144, 0x480a, 256, 0, 1, 0, 0, 0);
    metronome->unused = 0;
    metronome->rotation = 360;
    metronome->rotationMaxFrames = 0;
    metronome->rotationFrames = 0;
    metronome->direction = FALSE;
    metronome->rotationStart = 1024;
    metronome->rotationGoal = 0;
    metronome->stopped = FALSE;

    affine_sprite_set_rotation(metronome->sprite, (s16)metronome->rotation);
}

// Fade Mr Upbeat's Light
void mr_upbeat_fade_light(void) {
    if (-1 < gMrUpbeat->fadeOutTask) {
        force_cancel_task(gMrUpbeat->fadeOutTask);
    }

    gMrUpbeat->fadeOutTask = palette_fade_out(get_current_mem_id(), 0x14, 1, metronome_pal[2], 0, D_03004b10.objPalette[2]);
}

// Engine Event 0x02 (Mr. Upbeat Beep)
void func_08034e84(u32 unk) {
    mr_upbeat_fade_light();
    sprite_set_anim_cel(gSpriteHandler, gMrUpbeat->sprite, 0);
    play_sound(&s_metro_count1_seqData);
}

// Update Metronome
void mr_upbeat_update_metronome(void) {
    struct Metronome *metronome = &gMrUpbeat->metronome;
    u32 lerpResult;
    s32 rotation;
    
    if (metronome->rotationFrames < metronome->rotationMaxFrames) {
        metronome->rotationFrames++;

        if (metronome->rotationFrames == metronome->beepFrames) {
            func_08034e84(0);
        }

        lerpResult = math_lerp(metronome->rotationStart, metronome->rotationGoal, metronome->rotationFrames, metronome->rotationMaxFrames);
        rotation = FIXED_TO_INT(coss(lerpResult) * metronome->rotation);

        affine_sprite_set_rotation(
            metronome->sprite, (s16)rotation
        );
    }
}

// Engine Event 0x00 (Swap Metronome Direction)
void func_08034f18(u32 ticks) {
    u32 frames;
    u32 previousRotationStart;
    
    struct Metronome *metronome = &gMrUpbeat->metronome;
    
    if (metronome->stopped == FALSE) {
        play_sound(&s_metro_hit_seqData);
        metronome->rotationFrames = 0;

        frames = ticks_to_frames(ticks);
        metronome->rotationMaxFrames = frames;
        metronome->beepFrames = frames / 2;
        previousRotationStart = metronome->rotationStart;
        metronome->rotationStart = metronome->rotationGoal;
        metronome->rotationGoal = previousRotationStart;

        metronome->direction = metronome->direction ^ 1;
    }
}

// Init. Mr Upbeat
void mr_upbeat_init_mr_upbeat(void) {
    struct MrUpbeat *mrUpbeat = &gMrUpbeat->mrUpbeat;
    
    mrUpbeat->sprite = sprite_create(gSpriteHandler, anim_mr_upbeat_l_step, 0x7f, 64, 64, 0x4800, 1, 0x7f, 0);
    sprite_set_x_y(gSpriteHandler, mrUpbeat->sprite, 120, 80);

    mrUpbeat->shadow = sprite_create(gSpriteHandler, anim_mr_upbeat_shadow, 1, 120, 80, 0x4814, 0, 0, 0);

    mrUpbeat->side = TRUE;
    mrUpbeat->nextSide = 2;
    mrUpbeat->unused = 0;
}

// Mr. Upbeat Step
void mr_upbeat_step(void) {
    struct MrUpbeat *mrUpbeat = &gMrUpbeat->mrUpbeat;
    
    play_sound(&s_tap_kick_monky_seqData);

    switch(mrUpbeat->nextSide) {
        case 1:
            sprite_set_anim(gSpriteHandler, mrUpbeat->sprite, anim_mr_upbeat_l_step, 0, 1, 0x7f, 0);
            mrUpbeat->side = TRUE;
            mrUpbeat->nextSide = 2;
            sprite_set_anim_cel(gSpriteHandler, mrUpbeat->shadow, 1);
            break;
        case 2:
            sprite_set_anim(gSpriteHandler, mrUpbeat->sprite, anim_mr_upbeat_r_step, 0, 1, 0x7f, 0);
            mrUpbeat->side = FALSE;
            mrUpbeat->nextSide = 1;
            sprite_set_anim_cel(gSpriteHandler, mrUpbeat->shadow, 2);
            break;
    }
}

// Mr. Upbeat Trip 
void mr_upbeat_trip(u32 arg0) {
    struct MrUpbeat *mrUpbeat = &gMrUpbeat->mrUpbeat;
    struct Metronome *metronome = &gMrUpbeat->metronome;
    u8 isFlipped = (mrUpbeat->side);

    if (mrUpbeat->side == FALSE) {
        if (arg0 == 0) {
            mrUpbeat->tripAnim = 0;
        } else {
            mrUpbeat->tripAnim = 1;
        }
    } else {
        if (arg0 == 1) {
            mrUpbeat->tripAnim = 2;
        } else {
            mrUpbeat->tripAnim = 3;
        }
    }

    sprite_set_anim(gSpriteHandler, mrUpbeat->sprite, mr_upbeat_trip_anim[mrUpbeat->tripAnim], 0, 1, 0x7f, 0);

    // ?????
    isFlipped = (mrUpbeat->side != 0) ? isFlipped : (metronome->direction != 0);
    isFlipped = (metronome->direction != 0);
    
    sprite_attr_set(gSpriteHandler, mrUpbeat->shadow, isFlipped ? 0x1000 : 0);
    sprite_set_anim_cel(gSpriteHandler, mrUpbeat->shadow, 3);
    play_sound(&s_f_shuji_v_ouch_seqData);
    mrUpbeat->unused = ticks_to_frames(0xc);
    gameplay_set_input_buttons(0, 0);
    metronome->stopped = TRUE;
    gameplay_enable_cue_spawning(FALSE);

    if (gMrUpbeat->gameOverScript) {
        func_0801d968(gMrUpbeat->gameOverScript);
    }
}

// Stub Update Function
void mr_upbeat_update_stub(void) {
}

// Engine Event 0x05 (Play Game Over Jingle)
void func_0803516c(void) {
    struct MrUpbeat *mrUpbeat = &gMrUpbeat->mrUpbeat;

    sprite_set_anim(gSpriteHandler, mrUpbeat->sprite, mr_upbeat_game_over_anim[gMrUpbeat->isHighscore][mrUpbeat->tripAnim], 0, 1, 0x7f, 0);

    if (gMrUpbeat->isHighscore) {
        gameplay_display_text(&D_0805a674);
        play_sound(&s_intro_pat1_seqData);
    } else {
        gameplay_display_text(&D_0805a684);
        play_sound(&s_gameover_fan_seqData);
    }
}

// Graphics Init. 3
void mr_upbeat_init_gfx3(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}

// Graphics Init. 2
void mr_upbeat_init_gfx2(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), mr_upbeat_gfx_table, 0x2000);
    run_func_after_task(task, mr_upbeat_init_gfx3, 0);
}

// Graphics Init. 1
void mr_upbeat_init_gfx1(void) {
    s32 task;

    func_0800c604(0);
    task = start_new_texture_loader(get_current_mem_id(), mr_upbeat_buffered_textures);
    run_func_after_task(task, mr_upbeat_init_gfx2, 0);
}

// Game Engine Init.
void mr_upbeat_engine_start(u32 version) {
    struct TextPrinter *textPrinter;
    
    gMrUpbeat->version = version;
    mr_upbeat_init_gfx1();
    scene_show_obj_layer();

    mr_upbeat_init_mr_upbeat();
    mr_upbeat_init_metronome();
    mr_upbeat_init_score_counter();

    gMrUpbeat->sprite = sprite_create(gSpriteHandler, anim_mr_upbeat_beep, 0x7f, 120, 30, 0x4864, 1, 0x7f, 0x8000);
    
    gMrUpbeat->fadeOutTask = 0xFFFFFFFF;
    mr_upbeat_fade_light();
    gMrUpbeat->gameOverScript = 0;

    textPrinter = text_printer_create_new(get_current_mem_id(), 1, 240, 30);
    text_printer_set_x_y(textPrinter, 0, 100);
    text_printer_set_layer(textPrinter, 0x4800);
    text_printer_center_by_content(textPrinter, TRUE);
    text_printer_set_palette(textPrinter, 0);
    text_printer_set_colors(textPrinter, 0);
    gameplay_set_text_printer(textPrinter);
    gameplay_set_input_buttons(A_BUTTON, 0);
}

// Engine Event 0x06 (Stub)
void mr_upbeat_engine_event_stub(void) {
}

// Engine Event 0x01 (Set Game Over Script)
void func_08035314(u32 script) {
    gMrUpbeat->gameOverScript = script;
}

// Game Engine Update
void mr_upbeat_engine_update(void) {
    mr_upbeat_update_metronome();
    mr_upbeat_update_stub();
}

// Game Engine Stop
void mr_upbeat_engine_stop(void) {
}

// Cue - Spawn
void mr_upbeat_cue_spawn(void) {
}

// Cue - Update
u32 mr_upbeat_cue_update(struct Cue *cue, struct MrUpbeatCue *info, u32 runningTime) {
    if (runningTime > ticks_to_frames(120)) {
        return TRUE;   
    } else {
        return FALSE;
    }
}

// Cue - Despawn
void mr_upbeat_cue_despawn(void) {
}

// Check if Mr. Upbeat is tripped
u32 is_mr_upbeat_tripped(void) {
    u32 isHit;
    
    if (gMrUpbeat->mrUpbeat.side == FALSE) {
        isHit = FALSE;
        if (gMrUpbeat->metronome.direction == FALSE) { 
            isHit = TRUE;
        }
    } else {
        isHit = FALSE;
        if (gMrUpbeat->metronome.direction == TRUE) { 
            isHit = TRUE;
        }
    }

    return isHit;
}

// Cue - Hit
void mr_upbeat_cue_hit(struct Cue *cue, struct MrUpbeatCue *info, u32 pressed, u32 released) {
    struct Metronome *metronome = &gMrUpbeat->metronome;
    
    mr_upbeat_step();
    if (is_mr_upbeat_tripped() != FALSE) {
        gameplay_ignore_this_cue_result();
        gameplay_add_cue_result_miss(0);
        mr_upbeat_trip(metronome->direction);
    }
}

// Cue - Barely
void mr_upbeat_cue_barely(struct Cue *cue, struct MrUpbeatCue *info, u32 pressed, u32 released) {
    struct Metronome *metronome = &gMrUpbeat->metronome;
    
    mr_upbeat_step();
    if (is_mr_upbeat_tripped() != FALSE) {
        gameplay_ignore_this_cue_result();
        gameplay_add_cue_result_miss(0);
        mr_upbeat_trip(metronome->direction);
    }
}

// Cue - Miss
void mr_upbeat_cue_miss(void) {
    mr_upbeat_trip(gMrUpbeat->metronome.direction);
}

// Input Event
void mr_upbeat_input_event(void) {
    mr_upbeat_step();
}

// Common Event 0 (Beat Animation, Unimplemented)
void mr_upbeat_common_beat_animation(void) {
}

// Common Event 1 (Display Text, Unimplemented)
void mr_upbeat_common_display_text(void) {
}

// Common Event 2 (Init. Tutorial, Unimplemented)
void mr_upbeat_common_init_tutorial(void) {
}