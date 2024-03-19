#include "engines/power_calligraphy.h"

asm(".include \"include/gba.inc\""); // Temporary

// For readability.
#define gPowerCalligraphy ((struct PowerCalligraphyEngineData *)gCurrentEngineData)


/* POWER CALLIGRAPHY */


// Initialise Little People
void power_calligraphy_init_people(void) {
    struct LittlePeople *person = gPowerCalligraphy->littlePeople;
    u32 i, j;
    s32 x, y;

    for (i = 0; i < 2; i++) {
        x = power_calligraphy_people_start_pos[i].x;
        y = power_calligraphy_people_start_pos[i].y;

        for (j = 0; j < ARRAY_COUNT(gPowerCalligraphy->littlePeople) / 2; j++) {
            person->type = j & 1;
            person->sprite = sprite_create(gSpriteHandler, power_calligraphy_people_dance_anim[person->type][0], 0, x, y, ((-y) - 0x7800), 1, 0x7F, 0);
            sprite_set_base_tile(gSpriteHandler, person->sprite, 0x2C0);
            person->unk3 = 0;
            person->yPos = INT_TO_FIXED(y);
            y += 32;
            person++;
        }
    }

    gPowerCalligraphy->danceTimer = 0;
    gPowerCalligraphy->danceSide = 0;
    gPowerCalligraphy->littlePeopleCurrentState = LITTLE_PEOPLE_STATE_NULL;
}


// Update Little People
void power_calligraphy_update_people(void) {
    struct LittlePeople *person = gPowerCalligraphy->littlePeople; // useless assignment required for match
    u32 swapSide = FALSE;
    u32 i;

    gPowerCalligraphy->danceTimer -= func_0800c398();
    if (gPowerCalligraphy->danceTimer < 0) {
        gPowerCalligraphy->danceTimer += INT_TO_FIXED(24);
        gPowerCalligraphy->danceSide ^= 1;
        swapSide = TRUE;
    }

    switch (gPowerCalligraphy->littlePeopleCurrentState) {
        case LITTLE_PEOPLE_STATE_DANCE:
            person = gPowerCalligraphy->littlePeople;
            for (i = 0; i < ARRAY_COUNT(gPowerCalligraphy->littlePeople) / 2; i++) {
                person->yPos += 32;
                if (person->yPos >= INT_TO_FIXED(184)) {
                    person->yPos -= INT_TO_FIXED(192);
                }
                sprite_set_y(gSpriteHandler, person->sprite, FIXED_TO_INT(person->yPos));
                person++;
            }
            for (; i < ARRAY_COUNT(gPowerCalligraphy->littlePeople); i++) {
                person->yPos -= 32;
                if (person->yPos < 0) {
                    person->yPos += INT_TO_FIXED(192);
                }
                sprite_set_y(gSpriteHandler, person->sprite, FIXED_TO_INT(person->yPos));
                person++;
            }

            if (swapSide) {
                person = gPowerCalligraphy->littlePeople;

                for (i = 0; i < ARRAY_COUNT(gPowerCalligraphy->littlePeople); i++) {
                    sprite_set_anim(gSpriteHandler, person->sprite, power_calligraphy_people_dance_anim[person->type][gPowerCalligraphy->danceSide], 0, 1, 0x7F, 0);
                    person++;
                }
            }
            break;

        case LITTLE_PEOPLE_STATE_STUMBLE:
            if (--gPowerCalligraphy->stumbleTimer == 0) {
                power_calligraphy_set_little_people_state(gPowerCalligraphy->littlePeopleBaseState);
            }
            break;
    }
}


// Engine Event 0x0C (Set Little People Position)
void power_calligraphy_set_little_people_pos(s32 y) {
    struct LittlePeople *person = gPowerCalligraphy->littlePeople;
    u32 i;

    for (i = 0; i < ARRAY_COUNT(gPowerCalligraphy->littlePeople) / 2; i++) {
        person->yPos += INT_TO_FIXED(y);
        sprite_set_y(gSpriteHandler, person->sprite, FIXED_TO_INT(person->yPos));
        person++;
    }

    for (; i < ARRAY_COUNT(gPowerCalligraphy->littlePeople); i++) {
        person->yPos -= INT_TO_FIXED(y);
        sprite_set_y(gSpriteHandler, person->sprite, FIXED_TO_INT(person->yPos));
        person++;
    }
}


// Engine Event 0x0B (Set Little People State)
void power_calligraphy_set_little_people_state(u32 state) {
    struct LittlePeople *person = gPowerCalligraphy->littlePeople;
    u32 i, j;

    gPowerCalligraphy->littlePeopleCurrentState = state;

    switch (state) {
        case LITTLE_PEOPLE_STATE_DANCE:
            gPowerCalligraphy->littlePeopleBaseState = LITTLE_PEOPLE_STATE_DANCE;
            for (i = 0; i < 2; i++) {
                for (j = 0; j < ARRAY_COUNT(gPowerCalligraphy->littlePeople) / 2; j++) {
                    sprite_set_anim(gSpriteHandler, person->sprite, power_calligraphy_people_dance_anim[person->type][0], 0x7F, 1, 0x7F, 0);
                    person++;
                }
            }
            break;

        case LITTLE_PEOPLE_STATE_STUMBLE:
            gPowerCalligraphy->stumbleTimer = ticks_to_frames(48);
            for (i = 0; i < 2; i++) {
                for (j = 0; j < ARRAY_COUNT(gPowerCalligraphy->littlePeople) / 2; j++) {
                    sprite_set_anim(gSpriteHandler, person->sprite, power_calligraphy_people_fall_anim[person->type][i], 0, 1, 0, 0);
                    person++;
                }
            }
            break;

        case LITTLE_PEOPLE_STATE_BOW:
            gPowerCalligraphy->littlePeopleBaseState = LITTLE_PEOPLE_STATE_BOW;
            for (i = 0; i < 2; i++) {
                for (j = 0; j < ARRAY_COUNT(gPowerCalligraphy->littlePeople) / 2; j++) {
                    sprite_set_anim(gSpriteHandler, person->sprite, power_calligraphy_people_bow_anim[person->type][i], 0, 1, 0x7F, 0);
                    person++;
                }
            }
            break;

        case LITTLE_PEOPLE_STATE_END_BOW:
            gPowerCalligraphy->littlePeopleBaseState = LITTLE_PEOPLE_STATE_END_BOW;
            for (i = 0; i < 2; i++) {
                for (j = 0; j < ARRAY_COUNT(gPowerCalligraphy->littlePeople) / 2; j++) {
                    sprite_set_anim(gSpriteHandler, person->sprite, power_calligraphy_people_bow_anim[person->type][i], 0, 0, 0, 0);
                    person++;
                }
            }
            break;
    }
}


// Initialise Ink Dots
void power_calligraphy_init_ink_dots(void) {
    u32 i;

    for (i = 0; i < ARRAY_COUNT(gPowerCalligraphy->inkDots); i++) {
        struct InkDot *inkDot = &gPowerCalligraphy->inkDots[i];

        inkDot->sprite = sprite_create(gSpriteHandler, anim_power_calligraphy_ink_dot, 0, 64, 64, 0x4800, 1, 0x7F, 0x8000);
        sprite_set_origin_x_y(gSpriteHandler, inkDot->sprite, &D_03004b10.BG_OFS[BG_LAYER_2].x, &D_03004b10.BG_OFS[BG_LAYER_2].y);
        sprite_set_anim_speed(gSpriteHandler, inkDot->sprite, 200);
    }

    gPowerCalligraphy->inkDotEventIsActive = FALSE;
}


// Engine Event 0x0A (Start Ink Dots)
void power_calligraphy_start_ink_dots(u32 ticks) {
    struct InkDot *inkDot;
    u32 i;

    gPowerCalligraphy->inkDotEventIsActive = TRUE;
    gPowerCalligraphy->inkDotEventCurrentFrame = 0;
    gPowerCalligraphy->inkDotEventTotalFrames = ticks_to_frames(ticks - 8);

    for (i = 0; i < ARRAY_COUNT(gPowerCalligraphy->inkDots); i++) {
        inkDot = &gPowerCalligraphy->inkDots[i];
        inkDot->angle = agb_random(INT_TO_FIXED(8.0));
        inkDot->rotationSpeed = agb_random(32) + 16;
        if (agb_random(2)) {
            inkDot->rotationSpeed = -inkDot->rotationSpeed;
        }
        inkDot->offset = agb_random(120) + 120;
        inkDot->cycleStartPos = -agb_random(INT_TO_FIXED(4.0) - 24);
        sprite_set_anim_cel(gSpriteHandler, inkDot->sprite, 0);
    }

    power_calligraphy_update_ink_dots();
    gPowerCalligraphy->inkDotEventCurrentFrame = 0;
}


// Update Ink Dots
void power_calligraphy_update_ink_dots(void) {
    struct InkDot *inkDot;
    s24_8 progress;
    s32 distance;
    s32 brushX, dotX;
    s32 brushY, dotY;
    u32 brushZ, dotZ;
    u32 i;

    if (!gPowerCalligraphy->inkDotEventIsActive) {
        return;
    }

    if (++gPowerCalligraphy->inkDotEventCurrentFrame > gPowerCalligraphy->inkDotEventTotalFrames) {
        for (i = 0; i < ARRAY_COUNT(gPowerCalligraphy->inkDots); i++) {
            sprite_set_visible(gSpriteHandler, gPowerCalligraphy->inkDots[i].sprite, FALSE);
        }

        gPowerCalligraphy->inkDotEventIsActive = FALSE;
        return;
    }

    brushX = sprite_get_x(gSpriteHandler, gPowerCalligraphy->brushSprite);
    brushY = sprite_get_y(gSpriteHandler, gPowerCalligraphy->brushSprite);
    brushZ = sprite_get_z(gSpriteHandler, gPowerCalligraphy->brushSprite);
    brushY += 16;

    for (i = 0; i < ARRAY_COUNT(gPowerCalligraphy->inkDots); i++) {
        inkDot = &gPowerCalligraphy->inkDots[i];
        progress = math_lerp(inkDot->cycleStartPos, INT_TO_FIXED(4.0), gPowerCalligraphy->inkDotEventCurrentFrame, gPowerCalligraphy->inkDotEventTotalFrames);

        if (progress < 0) {
            sprite_set_visible(gSpriteHandler, inkDot->sprite, FALSE);
            continue;
        }

        sprite_set_visible(gSpriteHandler, inkDot->sprite, TRUE);
        distance = FIXED_POINT_MUL(inkDot->offset, sins(progress));
        dotX = FIXED_POINT_MUL(distance, coss(inkDot->angle));
        dotY = FIXED_POINT_MUL(distance, sins(inkDot->angle)) >> 1;
        inkDot->angle += inkDot->rotationSpeed;
        dotZ = (dotY < 0) ? (brushZ + 1) : (brushZ - 1);
        sprite_set_x_y_z(gSpriteHandler, inkDot->sprite, dotX + brushX, dotY + brushY, dotZ);
    }
}


// Startup Task - Fade In
void power_calligraphy_init_gfx3(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// Startup Task - Load Graphics
void power_calligraphy_init_gfx2(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), power_calligraphy_gfx_table, 0x2000);
    run_func_after_task(task, power_calligraphy_init_gfx3, 0);
}


// Startup Task - Buffer Textures
void power_calligraphy_init_gfx1(void) {
    s32 task;

    func_0800c604(0);
    task = start_new_texture_loader(get_current_mem_id(), power_calligraphy_buffered_textures);
    run_func_after_task(task, power_calligraphy_init_gfx2, 0);
}


// Game Engine Start
void power_calligraphy_engine_start(u32 version) {
    gPowerCalligraphy->version = version;
    power_calligraphy_init_gfx1();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, FALSE, 0, 0, 0, 29, 0x8000 | 1);
    scene_set_bg_layer_display(BG_LAYER_2, TRUE, 0, 0, 0, 29, 2);
    scene_set_bg_layer_display(BG_LAYER_3, TRUE, 0, 0, 0, 29, 3);

    gPowerCalligraphy->brushSprite = sprite_create(gSpriteHandler, anim_power_calligraphy_brush, 0, 64, 64, 0x4738, 0, 0, 0);
    sprite_set_x_y(gSpriteHandler, gPowerCalligraphy->brushSprite, 180, 100);
    sprite_set_origin_x_y(gSpriteHandler, gPowerCalligraphy->brushSprite, &D_03004b10.BG_OFS[BG_LAYER_2].x, &D_03004b10.BG_OFS[BG_LAYER_2].y);
    gPowerCalligraphy->brushChargeSprite = sprite_create(gSpriteHandler, anim_power_calligraphy_brush_charge_effect, 0, 64, 64, 0x4737, 1, 0, 0x8000 | 2);
    sprite_set_origin_x_y(gSpriteHandler, gPowerCalligraphy->brushChargeSprite, &D_03004b10.BG_OFS[BG_LAYER_2].x, &D_03004b10.BG_OFS[BG_LAYER_2].y);
    gPowerCalligraphy->kana1Sprite = sprite_create(gSpriteHandler, anim_power_calligraphy_kokoro, 0, 120, 84, 0x8800, 0, 0, 0x8000);
    sprite_set_origin_x_y(gSpriteHandler, gPowerCalligraphy->kana1Sprite, &D_03004b10.BG_OFS[BG_LAYER_2].x, &D_03004b10.BG_OFS[BG_LAYER_2].y);
    gPowerCalligraphy->kana2Sprite = sprite_create(gSpriteHandler, anim_power_calligraphy_kokoro, 0, 120, 84, 0x4800, 0, 0, 0x8000);
    sprite_set_origin_x_y(gSpriteHandler, gPowerCalligraphy->kana2Sprite, &D_03004b10.BG_OFS[BG_LAYER_1].x, &D_03004b10.BG_OFS[BG_LAYER_1].y);

    gPowerCalligraphy->currentKana = -1;
    gPowerCalligraphy->paperIsMoving = FALSE;
    gPowerCalligraphy->nextInputType = -1;
    gPowerCalligraphy->nextInputSprite = 0;
    gPowerCalligraphy->unkC = 0;
    gPowerCalligraphy->textSprite = -1;
    gPowerCalligraphy->skipIcon = sprite_create(gSpriteHandler, anim_power_calligraphy_skip_icon, 0, 240, 160, 0x8800, 0, 0, 0x8000);
    power_calligraphy_init_ink_dots();
    power_calligraphy_init_people();
    gameplay_set_input_buttons(A_BUTTON, 0);
}


// Engine Event 0x0D (Stub)
void power_calligraphy_engine_event_stub(void) {
}


// Engine Event 0x00 (Set Kana)
void power_calligraphy_set_kana(u32 kana) {
    gPowerCalligraphy->currentKana = kana;
    sprite_set_anim(gSpriteHandler, gPowerCalligraphy->kana1Sprite, power_calligraphy_pattern_anim[kana], 0, 0, 0, 0);
}


#include "asm/engines/power_calligraphy/asm_0803316c.s"


#include "asm/engines/power_calligraphy/asm_080331c0.s"


#include "asm/engines/power_calligraphy/asm_080331dc.s"


// Update Paper Movement
void power_calligraphy_update_paper_motion(void) {
    s16 bgX, bgY;
    s16 x, y;

    if (!gPowerCalligraphy->paperIsMoving) {
        return;
    }

    bgX = D_03004b10.BG_OFS[BG_LAYER_1].x;
    x = gPowerCalligraphy->paperPosX + bgX;
    bgY = D_03004b10.BG_OFS[BG_LAYER_1].y;
    y = gPowerCalligraphy->paperPosY + bgY;

    if (y < (0 - SCREEN_HEIGHT)) {
        gPowerCalligraphy->paperIsMoving = FALSE;
        scene_hide_bg_layer(BG_LAYER_1);
        sprite_set_visible(gSpriteHandler, gPowerCalligraphy->kana2Sprite, FALSE);
    } else {
        scene_set_bg_layer_pos(BG_LAYER_1, x, y);
    }
}


#include "asm/engines/power_calligraphy/asm_080333dc.s"


#include "asm/engines/power_calligraphy/asm_080333e8.s"


// Set Brush
void power_calligraphy_set_brush(s32 x, s32 y, u32 cel) {
    sprite_set_anim(gSpriteHandler, gPowerCalligraphy->brushSprite, anim_power_calligraphy_brush, cel, 0, 0, 0);
    sprite_set_x_y(gSpriteHandler, gPowerCalligraphy->brushSprite, 120 + x, 84 + y);
}


// Engine Event 0x06 (Set Brush)
void power_calligraphy_event_set_brush(u32 args) {
    s8 x = args;
    s8 y = args >> 8;
    s8 cel = args >> 16;

    power_calligraphy_set_brush(x, y, cel);
}


#include "asm/engines/power_calligraphy/asm_080334ec.s"


#include "asm/engines/power_calligraphy/asm_08033558.s"


#include "asm/engines/power_calligraphy/asm_080335e8.s"


// Game Engine Update
void power_calligraphy_engine_update(void) {
    s32 x, y;

    power_calligraphy_update_paper_motion();
    power_calligraphy_update_ink_dots();
    power_calligraphy_update_people();

    x = sprite_get_x(gSpriteHandler, gPowerCalligraphy->brushSprite);
    y = sprite_get_y(gSpriteHandler, gPowerCalligraphy->brushSprite);
    sprite_set_x_y(gSpriteHandler, gPowerCalligraphy->brushChargeSprite, x, y);
}


// Game Engine Stop
void power_calligraphy_engine_stop(void) {
}


// Express Cue Result
void power_calligraphy_express_input(u32 inputStroke, s32 timingType) {
    struct PowerCalligraphyBrushMotion *brushMotion;
    struct Vector2 *paperMotion;
    s16 sprite;

    if (timingType < 0) {
        return;
    }

    sprite = sprite_create(gSpriteHandler, power_calligraphy_pattern_input_anim[inputStroke], timingType, 120, 84, 0x87F6, 0, 0, 0);
    sprite_set_origin_x_y(gSpriteHandler, sprite, &D_03004b10.BG_OFS[BG_LAYER_2].x, &D_03004b10.BG_OFS[BG_LAYER_2].y);
    gPowerCalligraphy->inputSprites[gPowerCalligraphy->nextInputSprite] = sprite;
    stop_sound(&s_f_shuji_v_funuue_seqData);

    if (timingType != 0) {
        play_sound(power_calligraphy_input_barely_sfx[inputStroke]);
    } else {
        paperMotion = &power_calligraphy_paper_motions[inputStroke];
        func_080331c0((-paperMotion->x & 0xFF) | (-paperMotion->y & 0xFF) << 8);
        play_sound(power_calligraphy_input_hit_sfx[inputStroke]);
    }

    gPowerCalligraphy->nextInputSprite++;
    brushMotion = &power_calligraphy_brush_motions[inputStroke][timingType];
    power_calligraphy_set_brush(brushMotion->x, brushMotion->y, brushMotion->cel);
}


// Cue - Spawn
void power_calligraphy_cue_spawn(struct Cue *cue, struct PowerCalligraphyCue *info, u32 unused) {
    info->inputStrokeType = gPowerCalligraphy->nextInputType;
    gPowerCalligraphy->nextInputType = -1;
}


// Cue - Update
u32 power_calligraphy_cue_update(struct Cue *cue, struct PowerCalligraphyCue *info, u32 runningTime, u32 duration) {
    if (runningTime > ticks_to_frames(48)) {
        return TRUE;
    } else {
        return FALSE;
    }
}


// Cue - Despawn
void power_calligraphy_cue_despawn(struct Cue *cue, struct PowerCalligraphyCue *info) {
}


// Cue - Hit
void power_calligraphy_cue_hit(struct Cue *cue, struct PowerCalligraphyCue *info, u32 pressed, u32 released) {
    power_calligraphy_express_input(info->inputStrokeType, 0);
}


// Cue - Barely
void power_calligraphy_cue_barely(struct Cue *cue, struct PowerCalligraphyCue *info, u32 pressed, u32 released) {
    power_calligraphy_express_input(info->inputStrokeType, (gameplay_get_last_hit_offset() < 0) ? 1 : 2);
    beatscript_enable_loops();
    power_calligraphy_set_little_people_state(LITTLE_PEOPLE_STATE_STUMBLE);
}


// Cue - Miss
void power_calligraphy_cue_miss(struct Cue *cue, struct PowerCalligraphyCue *info) {
    sprite_set_playback(gSpriteHandler, gPowerCalligraphy->brushSprite, -1, 0, 0);
    beatscript_enable_loops();
}


// Input Event
void power_calligraphy_input_event(u32 pressed, u32 released) {
}


// Common Event 0 (Beat Animation, Unimplemented)
void power_calligraphy_common_beat_animation(void) {
}


// Common Event 1 (Display Text)
void power_calligraphy_common_display_text(const char *string) {
    struct Animation *textAnim;

    if (gPowerCalligraphy->textSprite >= 0) {
        textAnim = sprite_get_anim(gSpriteHandler, gPowerCalligraphy->textSprite);
        text_printer_delete_anim(textAnim);
        sprite_delete(gSpriteHandler, gPowerCalligraphy->textSprite);
        gPowerCalligraphy->textSprite = -1;
    }

    if (string != NULL) {
        dma3_fill(0, (u16 *)(VRAMBase + 0x17000), 0x800, 0x20, 0x200);
        textAnim = text_printer_get_unformatted_line_anim(get_current_mem_id(), 0, 28, TEXT_PRINTER_FONT_SMALL, string, TEXT_ANCHOR_BOTTOM_CENTER, 0, 0x100);
        gPowerCalligraphy->textSprite = sprite_create(gSpriteHandler, textAnim, 0, 128, 146, 0x46D4, 0, 0, 0);
        sprite_set_base_palette(gSpriteHandler, gPowerCalligraphy->textSprite, 9);
    }
}


// Common Event 2 (Initialise Tutorial)
void power_calligraphy_common_init_tutorial(struct Scene *skipDest) {
    if (skipDest != NULL) {
        gameplay_enable_tutorial(TRUE);
        gameplay_set_skip_destination(skipDest);
        sprite_set_visible(gSpriteHandler, gPowerCalligraphy->skipIcon, TRUE);
    } else {
        gameplay_enable_tutorial(FALSE);
        sprite_set_visible(gSpriteHandler, gPowerCalligraphy->skipIcon, FALSE);
    }
}
