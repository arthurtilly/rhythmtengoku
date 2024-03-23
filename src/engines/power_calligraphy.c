#include "engines/power_calligraphy.h"

// For readability.
#define gPowerCalligraphy ((struct PowerCalligraphyEngineData *)gCurrentEngineData)


/* POWER CALLIGRAPHY */


// Initialise Little People
void power_calligraphy_init_little_people(void) {
    struct LittlePerson *person = gPowerCalligraphy->littlePeople;
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
    gPowerCalligraphy->peopleCurrentState = LITTLE_PEOPLE_STATE_NULL;
}


// Update Little People
void power_calligraphy_update_little_people(void) {
    struct LittlePerson *person = gPowerCalligraphy->littlePeople; // useless assignment required for match
    u32 swapSide = FALSE;
    u32 i;

    gPowerCalligraphy->danceTimer -= func_0800c398();
    if (gPowerCalligraphy->danceTimer < 0) {
        gPowerCalligraphy->danceTimer += INT_TO_FIXED(24);
        gPowerCalligraphy->danceSide ^= 1;
        swapSide = TRUE;
    }

    switch (gPowerCalligraphy->peopleCurrentState) {
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
                power_calligraphy_set_little_people_state(gPowerCalligraphy->peopleReturnState);
            }
            break;
    }
}


// Engine Event 0x0C (Set Little People Position)
void power_calligraphy_set_little_people_pos(s32 y) {
    struct LittlePerson *person = gPowerCalligraphy->littlePeople;
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
    struct LittlePerson *person = gPowerCalligraphy->littlePeople;
    u32 i, j;

    gPowerCalligraphy->peopleCurrentState = state;

    switch (state) {
        case LITTLE_PEOPLE_STATE_DANCE:
            gPowerCalligraphy->peopleReturnState = LITTLE_PEOPLE_STATE_DANCE;
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
            gPowerCalligraphy->peopleReturnState = LITTLE_PEOPLE_STATE_BOW;
            for (i = 0; i < 2; i++) {
                for (j = 0; j < ARRAY_COUNT(gPowerCalligraphy->littlePeople) / 2; j++) {
                    sprite_set_anim(gSpriteHandler, person->sprite, power_calligraphy_people_bow_anim[person->type][i], 0, 1, 0x7F, 0);
                    person++;
                }
            }
            break;

        case LITTLE_PEOPLE_STATE_END_BOW:
            gPowerCalligraphy->peopleReturnState = LITTLE_PEOPLE_STATE_END_BOW;
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
void power_calligraphy_init_ink_swirl(void) {
    u32 i;

    for (i = 0; i < ARRAY_COUNT(gPowerCalligraphy->inkDots); i++) {
        struct InkDot *inkDot = &gPowerCalligraphy->inkDots[i];

        inkDot->sprite = sprite_create(gSpriteHandler, anim_power_calligraphy_ink_dot, 0, 64, 64, 0x4800, 1, 0x7F, 0x8000);
        sprite_set_origin_x_y(gSpriteHandler, inkDot->sprite, &D_03004b10.BG_OFS[BG_LAYER_2].x, &D_03004b10.BG_OFS[BG_LAYER_2].y);
        sprite_set_anim_speed(gSpriteHandler, inkDot->sprite, 200);
    }

    gPowerCalligraphy->inkSwirlActive = FALSE;
}


// Engine Event 0x0A (Start Ink Dots)
void power_calligraphy_start_ink_swirl(u32 ticks) {
    struct InkDot *inkDot;
    u32 i;

    gPowerCalligraphy->inkSwirlActive = TRUE;
    gPowerCalligraphy->inkSwirlCurrentFrame = 0;
    gPowerCalligraphy->inkSwirlTotalFrames = ticks_to_frames(ticks - 8);

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

    power_calligraphy_update_ink_swirl();
    gPowerCalligraphy->inkSwirlCurrentFrame = 0;
}


// Update Ink Dots
void power_calligraphy_update_ink_swirl(void) {
    struct InkDot *inkDot;
    s24_8 progress;
    s32 distance;
    s32 brushX, dotX;
    s32 brushY, dotY;
    u32 brushZ, dotZ;
    u32 i;

    if (!gPowerCalligraphy->inkSwirlActive) {
        return;
    }

    if (++gPowerCalligraphy->inkSwirlCurrentFrame > gPowerCalligraphy->inkSwirlTotalFrames) {
        for (i = 0; i < ARRAY_COUNT(gPowerCalligraphy->inkDots); i++) {
            sprite_set_visible(gSpriteHandler, gPowerCalligraphy->inkDots[i].sprite, FALSE);
        }

        gPowerCalligraphy->inkSwirlActive = FALSE;
        return;
    }

    brushX = sprite_get_x(gSpriteHandler, gPowerCalligraphy->brushSprite);
    brushY = sprite_get_y(gSpriteHandler, gPowerCalligraphy->brushSprite);
    brushZ = sprite_get_z(gSpriteHandler, gPowerCalligraphy->brushSprite);
    brushY += 16;

    for (i = 0; i < ARRAY_COUNT(gPowerCalligraphy->inkDots); i++) {
        inkDot = &gPowerCalligraphy->inkDots[i];
        progress = math_lerp(inkDot->cycleStartPos, INT_TO_FIXED(4.0), gPowerCalligraphy->inkSwirlCurrentFrame, gPowerCalligraphy->inkSwirlTotalFrames);

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
    gPowerCalligraphy->brushEffectSprite = sprite_create(gSpriteHandler, anim_power_calligraphy_brush_charge_effect, 0, 64, 64, 0x4737, 1, 0, 0x8000 | 2);
    sprite_set_origin_x_y(gSpriteHandler, gPowerCalligraphy->brushEffectSprite, &D_03004b10.BG_OFS[BG_LAYER_2].x, &D_03004b10.BG_OFS[BG_LAYER_2].y);
    gPowerCalligraphy->kanaSprite = sprite_create(gSpriteHandler, anim_power_calligraphy_kokoro, 0, 120, 84, 0x8800, 0, 0, 0x8000);
    sprite_set_origin_x_y(gSpriteHandler, gPowerCalligraphy->kanaSprite, &D_03004b10.BG_OFS[BG_LAYER_2].x, &D_03004b10.BG_OFS[BG_LAYER_2].y);
    gPowerCalligraphy->kanaExitSprite = sprite_create(gSpriteHandler, anim_power_calligraphy_kokoro, 0, 120, 84, 0x4800, 0, 0, 0x8000);
    sprite_set_origin_x_y(gSpriteHandler, gPowerCalligraphy->kanaExitSprite, &D_03004b10.BG_OFS[BG_LAYER_1].x, &D_03004b10.BG_OFS[BG_LAYER_1].y);

    gPowerCalligraphy->currentKana = -1;
    gPowerCalligraphy->paperExitActive = FALSE;
    gPowerCalligraphy->nextInputType = -1;
    gPowerCalligraphy->totalInputSprites = 0;
    gPowerCalligraphy->totalInputExitSprites = 0;
    gPowerCalligraphy->textSprite = -1;
    gPowerCalligraphy->skipIcon = sprite_create(gSpriteHandler, anim_power_calligraphy_skip_icon, 0, 240, 160, 0x8800, 0, 0, 0x8000);
    power_calligraphy_init_ink_swirl();
    power_calligraphy_init_little_people();
    gameplay_set_input_buttons(A_BUTTON, 0);
}


// Engine Event 0x0D (Stub)
void power_calligraphy_engine_event_stub(void) {
}


// Engine Event 0x00 (Set Kana)
void power_calligraphy_set_kana(u32 kana) {
    gPowerCalligraphy->currentKana = kana;
    sprite_set_anim(gSpriteHandler, gPowerCalligraphy->kanaSprite, power_calligraphy_kana_anim[kana], 0, 0, 0, 0);
}


// Engine Event 0x01 (Set Kana Current Cel)
void power_calligraphy_set_kana_cel(s32 cel) {
    if (cel < 0) {
        sprite_set_visible(gSpriteHandler, gPowerCalligraphy->kanaSprite, FALSE);
    } else {
        sprite_set_visible(gSpriteHandler, gPowerCalligraphy->kanaSprite, TRUE);
        sprite_set_anim_cel(gSpriteHandler, gPowerCalligraphy->kanaSprite, cel);
    }
}


// Engine Event 0x02 (Shift Paper)
void power_calligraphy_offset_paper(s32 args) {
    D_03004b10.BG_OFS[BG_LAYER_2].x += (s8)(args);
    D_03004b10.BG_OFS[BG_LAYER_2].y += (s8)(args >> 8);
}


// Engine Event 0x03 (Remove Paper)
void power_calligraphy_remove_paper(u32 slowly) {
    struct Animation *anim;
    s32 cel;
    s16 sprite;
    u32 i;

    gPowerCalligraphy->paperExitActive = TRUE;

    if (slowly) {
        gPowerCalligraphy->paperExitX = 0;
        gPowerCalligraphy->paperExitY = -1;
    } else {
        gPowerCalligraphy->paperExitX = -4;
        gPowerCalligraphy->paperExitY = -8;
    }

    scene_show_bg_layer(BG_LAYER_1);
    scene_set_bg_layer_pos(BG_LAYER_1, D_03004b10.BG_OFS[BG_LAYER_2].x, D_03004b10.BG_OFS[BG_LAYER_2].y);

    if (gPowerCalligraphy->currentKana < 0) {
        sprite_set_anim(gSpriteHandler, gPowerCalligraphy->brushSprite, anim_power_calligraphy_brush, 0, 0, 0, 0);
        sprite_set_visible(gSpriteHandler, gPowerCalligraphy->kanaExitSprite, FALSE);
    } else {
        anim = sprite_get_anim(gSpriteHandler, gPowerCalligraphy->kanaSprite);
        cel = sprite_get_anim_cel(gSpriteHandler, gPowerCalligraphy->kanaSprite);
        sprite_set_anim(gSpriteHandler, gPowerCalligraphy->kanaExitSprite, anim, cel, 0, 0, 0);
        sprite_set_visible(gSpriteHandler, gPowerCalligraphy->kanaExitSprite, TRUE);
    }

    sprite_set_visible(gSpriteHandler, gPowerCalligraphy->kanaSprite, FALSE);
    scene_set_bg_layer_pos(BG_LAYER_2, 0, 0);

    for (i = 0; i < gPowerCalligraphy->totalInputExitSprites; i++) {
        sprite_delete(gSpriteHandler, gPowerCalligraphy->inputExitSprites[i]);
    }

    for (i = 0; i < gPowerCalligraphy->totalInputSprites; i++) {
        sprite = gPowerCalligraphy->inputSprites[i];
        gPowerCalligraphy->inputExitSprites[i] = sprite;
        sprite_set_z(gSpriteHandler, sprite, 0x47F6);
        sprite_set_origin_x_y(gSpriteHandler, sprite, &D_03004b10.BG_OFS[BG_LAYER_1].x, &D_03004b10.BG_OFS[BG_LAYER_1].y);
    }

    gPowerCalligraphy->totalInputExitSprites = gPowerCalligraphy->totalInputSprites;
    gPowerCalligraphy->totalInputSprites = 0;
    gPowerCalligraphy->currentKana = -1;
}


// Update Paper Movement
void power_calligraphy_update_paper_motion(void) {
    s16 bgX, bgY;
    s16 x, y;

    if (!gPowerCalligraphy->paperExitActive) {
        return;
    }

    bgX = D_03004b10.BG_OFS[BG_LAYER_1].x;
    x = gPowerCalligraphy->paperExitX + bgX;
    bgY = D_03004b10.BG_OFS[BG_LAYER_1].y;
    y = gPowerCalligraphy->paperExitY + bgY;

    if (y < (0 - SCREEN_HEIGHT)) {
        gPowerCalligraphy->paperExitActive = FALSE;
        scene_hide_bg_layer(BG_LAYER_1);
        sprite_set_visible(gSpriteHandler, gPowerCalligraphy->kanaExitSprite, FALSE);
    } else {
        scene_set_bg_layer_pos(BG_LAYER_1, x, y);
    }
}


// Engine Event 0x04 (Set Next Input Stroke Type)
void power_calligraphy_set_next_input(u32 inputStrokeType) {
    gPowerCalligraphy->nextInputType = inputStrokeType;
}


// Engine Event 0x05 (Finish Unused Input KOKORO_2)
void power_calligraphy_finish_input_kokoro2(void) {
    struct Animation *anim;
    s32 cel;
    s16 sprite;
    u32 i;

    for (i = 0; i < gPowerCalligraphy->totalInputSprites; i++) {
        sprite = gPowerCalligraphy->inputSprites[i];
        anim = sprite_get_anim(gSpriteHandler, sprite);
        cel = sprite_get_anim_cel(gSpriteHandler, sprite);

        if ((anim == anim_power_calligraphy_kokoro_input2) && (cel == 0)) {
            sprite_set_anim_cel(gSpriteHandler, sprite, 3);
            power_calligraphy_offset_paper(0 | (2 << 8));
            play_sound(&s_furi_seqData);
            return;
        }
    }
}


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


// Engine Event 0x07 (Charge Brush)
void power_calligraphy_charge_brush(u32 chargeType) {
    switch (chargeType) {
        case CALLIGRAPHY_BRUSH_CHARGE_DEFAULT:
            sprite_set_anim(gSpriteHandler, gPowerCalligraphy->brushSprite, anim_power_calligraphy_brush_charge1, 1, 1, 6, 0);
            break;

        case CALLIGRAPHY_BRUSH_CHARGE_COMMA:
            sprite_set_anim(gSpriteHandler, gPowerCalligraphy->brushSprite, anim_power_calligraphy_brush_charge2, 0, 1, 4, 0);
            break;
    }
}


// Engine Event 0x08 (Start/Stop Charge Effect)
void power_calligraphy_set_charge_effect(u32 start) {
    if (start) {
        palette_fade_to(get_current_mem_id(), ticks_to_frames(12), 1,
                        power_calligraphy_pal[11], power_calligraphy_pal[12], D_03004b10.objPalette[11]);
    } else {
        sprite_set_anim_cel(gSpriteHandler, gPowerCalligraphy->brushEffectSprite, 0);
        // sprite_set_visible(gSpriteHandler, gPowerCalligraphy->brushEffectSprite, TRUE);
        palette_fade_to(get_current_mem_id(), ticks_to_frames(12), 1,
                        power_calligraphy_pal[13], power_calligraphy_pal[11], D_03004b10.objPalette[11]);
    }
}


// Engine Event 0x09 (Raise Brush (Early))
    // Only used with the SUN kana.
void power_calligraphy_raise_brush(void) {
    s16 y = sprite_get_y(gSpriteHandler, gPowerCalligraphy->brushSprite);

    sprite_set_y(gSpriteHandler, gPowerCalligraphy->brushSprite, y - 24);
    sprite_set_anim(gSpriteHandler, gPowerCalligraphy->brushSprite, anim_power_calligraphy_brush, 0, 0, 0, 0);
}


// Game Engine Update
void power_calligraphy_engine_update(void) {
    s32 x, y;

    power_calligraphy_update_paper_motion();
    power_calligraphy_update_ink_swirl();
    power_calligraphy_update_little_people();

    x = sprite_get_x(gSpriteHandler, gPowerCalligraphy->brushSprite);
    y = sprite_get_y(gSpriteHandler, gPowerCalligraphy->brushSprite);
    sprite_set_x_y(gSpriteHandler, gPowerCalligraphy->brushEffectSprite, x, y);
}


// Game Engine Stop
void power_calligraphy_engine_stop(void) {
}


// Express Cue Result
void power_calligraphy_express_input(u32 inputStroke, s32 timingType) {
    struct CalligraphyBrushMotion *brushMotion;
    struct Vector2 *paperMotion;
    s16 sprite;

    if (timingType < 0) {
        return;
    }

    sprite = sprite_create(gSpriteHandler, power_calligraphy_pattern_input_anim[inputStroke], timingType, 120, 84, 0x87F6, 0, 0, 0);
    sprite_set_origin_x_y(gSpriteHandler, sprite, &D_03004b10.BG_OFS[BG_LAYER_2].x, &D_03004b10.BG_OFS[BG_LAYER_2].y);
    gPowerCalligraphy->inputSprites[gPowerCalligraphy->totalInputSprites] = sprite;
    stop_sound(&s_f_shuji_v_funuue_seqData);

    if (timingType != 0) {
        play_sound(power_calligraphy_input_barely_sfx[inputStroke]);
    } else {
        paperMotion = &power_calligraphy_paper_motions[inputStroke];
        power_calligraphy_offset_paper((-paperMotion->x & 0xFF) | (-paperMotion->y & 0xFF) << 8);
        play_sound(power_calligraphy_input_hit_sfx[inputStroke]);
    }

    gPowerCalligraphy->totalInputSprites++;
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
