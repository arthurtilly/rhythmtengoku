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
    gPowerCalligraphy->unk213 = 0;
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

    switch (gPowerCalligraphy->unk213) {
        case 1:
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

        case 2:
            if (--gPowerCalligraphy->unk215 == 0) {
                func_08032a64(gPowerCalligraphy->unk214);
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


#include "asm/engines/power_calligraphy/asm_08032a64.s"


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
    gPowerCalligraphy->pattern1Sprite = sprite_create(gSpriteHandler, anim_power_calligraphy_kokoro, 0, 120, 84, 0x8800, 0, 0, 0x8000);
    sprite_set_origin_x_y(gSpriteHandler, gPowerCalligraphy->pattern1Sprite, &D_03004b10.BG_OFS[BG_LAYER_2].x, &D_03004b10.BG_OFS[BG_LAYER_2].y);
    gPowerCalligraphy->pattern2Sprite = sprite_create(gSpriteHandler, anim_power_calligraphy_kokoro, 0, 120, 84, 0x4800, 0, 0, 0x8000);
    sprite_set_origin_x_y(gSpriteHandler, gPowerCalligraphy->pattern2Sprite, &D_03004b10.BG_OFS[BG_LAYER_1].x, &D_03004b10.BG_OFS[BG_LAYER_1].y);

    gPowerCalligraphy->unk6 = -1;
    gPowerCalligraphy->unk7 = 0;
    gPowerCalligraphy->unkA = -1;
    gPowerCalligraphy->unkB = 0;
    gPowerCalligraphy->unkC = 0;
    gPowerCalligraphy->unk1AA = -1;
    gPowerCalligraphy->skipIcon = sprite_create(gSpriteHandler, anim_power_calligraphy_skip_icon, 0, 240, 160, 0x8800, 0, 0, 0x8000);
    power_calligraphy_init_ink_dots();
    power_calligraphy_init_people();
    gameplay_set_input_buttons(A_BUTTON, 0);
}


// Engine Event 0x0D (Stub)
void power_calligraphy_engine_event_stub(void) {
}


#include "asm/engines/power_calligraphy/asm_0803312c.s"


#include "asm/engines/power_calligraphy/asm_0803316c.s"


#include "asm/engines/power_calligraphy/asm_080331c0.s"


#include "asm/engines/power_calligraphy/asm_080331dc.s"


#include "asm/engines/power_calligraphy/asm_08033370.s"


#include "asm/engines/power_calligraphy/asm_080333dc.s"


#include "asm/engines/power_calligraphy/asm_080333e8.s"


#include "asm/engines/power_calligraphy/asm_08033468.s"


#include "asm/engines/power_calligraphy/asm_080334d4.s"


#include "asm/engines/power_calligraphy/asm_080334ec.s"


#include "asm/engines/power_calligraphy/asm_08033558.s"


#include "asm/engines/power_calligraphy/asm_080335e8.s"


// Game Engine Update
void power_calligraphy_engine_update(void) {
    s32 x, y;

    func_08033370();
    power_calligraphy_update_ink_dots();
    power_calligraphy_update_people();

    x = sprite_get_x(gSpriteHandler, gPowerCalligraphy->brushSprite);
    y = sprite_get_y(gSpriteHandler, gPowerCalligraphy->brushSprite);
    sprite_set_x_y(gSpriteHandler, gPowerCalligraphy->brushChargeSprite, x, y);
}


#include "asm/engines/power_calligraphy/asm_0803369c.s"


#include "asm/engines/power_calligraphy/asm_080336a0.s"


#include "asm/engines/power_calligraphy/asm_08033790.s"


#include "asm/engines/power_calligraphy/asm_080337a4.s"


#include "asm/engines/power_calligraphy/asm_080337c0.s"


#include "asm/engines/power_calligraphy/asm_080337c4.s"


#include "asm/engines/power_calligraphy/asm_080337d4.s"


#include "asm/engines/power_calligraphy/asm_080337fc.s"


#include "asm/engines/power_calligraphy/asm_0803382c.s"


#include "asm/engines/power_calligraphy/asm_08033830.s"


#include "asm/engines/power_calligraphy/asm_08033834.s"


#include "asm/engines/power_calligraphy/asm_080338fc.s"
