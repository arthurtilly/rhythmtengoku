#include "global.h"
#include "title.h"
#include "graphics/title/title_graphics.h"

#include "src/memory.h"
#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/text_printer.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

asm(".include \"include/gba.inc\"");//Temporary

// For readability.
#define gTitleInfo ((struct TitleSceneInfo *)D_030046a4)


extern const struct Scene D_089d3984; // Opening - A Type
extern const struct Scene D_089d3a6c; // Opening - B Type
extern const struct Scene scene_main_menu;
extern const struct Scene scene_riq_title;
extern const struct BeatScript D_089dcff0[];
extern struct SequenceData s_nyuka_fan_seqData;


/* TITLE SCREEN */


// Update Logo Bubble Position
void func_0801ca34(s32 id) {
    struct LogoBubble *bubble = &gTitleInfo->logoBubbles[id];
    s24_8 xOfs, yOfs, xB, yB;
    s32 x, y, rise;

    rise = FIXED_POINT_MUL(bubble->riseDistance, coss2(bubble->riseAngle));
    xOfs = FIXED_POINT_MUL(bubble->bounceDistance, coss2(bubble->bounceAngle));
    yOfs = FIXED_POINT_MUL(bubble->bounceDistance, sins2(bubble->bounceAngle));
    x = bubble->centerX + FIXED_TO_INT(xOfs);
    y = bubble->centerY + FIXED_TO_INT(yOfs) + rise;
    func_0804d5d4(D_03005380, bubble->letter, x, y);

    xB = xOfs * 15;
    yB = yOfs * 15;
    x = bubble->centerX + FIXED_TO_INT(xB >> 5);
    y = bubble->centerY + FIXED_TO_INT(yB >> 5) + rise;
    func_0804d5d4(D_03005380, bubble->inner, x, y);
    func_0804d5d4(D_03005380, bubble->outer, x, y);
}


// Init. Logo Bubbles
void func_0801cb0c(void) {
    u32 i;

    for (i = 0; i < TOTAL_TITLE_LOGO_BUBBLES; i++) {
        struct LogoBubble *bubble = &gTitleInfo->logoBubbles[i];
        struct TitleLogoCharData *letter = &title_logo_char_data[i];

        bubble->active = FALSE;
        bubble->letter = func_0804d160(D_03005380, letter->anim, 0, letter->x, letter->y, 0x4800, 0, 0, 0x8000);
        bubble->inner = func_0804d160(D_03005380, anim_title_logo_bubble_inner, 0, letter->x, letter->y, 0x4801, 0, 0, 0x8000);
        bubble->outer = func_0804d160(D_03005380, anim_title_logo_bubble_outer, 0, letter->x, letter->y, 0x4802, 0, 0, 0x8000);
        bubble->centerX = letter->x;
        bubble->centerY = letter->y;
        bubble->riseDistance = (agb_random(20) - 10) + 160;
        bubble->riseSpeed = (agb_random(5) - 2) + INT_TO_FIXED(0.94);
        bubble->riseAngle = agb_random(INT_TO_FIXED(2.0 / 16)) - INT_TO_FIXED(1.0 / 16);
        bubble->riseTurnSpeed = agb_random(INT_TO_FIXED(1.5 / 32)) + INT_TO_FIXED(1.0 / 32);
        bubble->bounceAngle = letter->bounceAngle;
        bubble->bounceBaseAngle = letter->bounceAngle;
        bubble->bounceDistance = INT_TO_FIXED(0.0);
        func_0801ca34(i);
    }

    gTitleInfo->nextLogoBubble = 0;
}


// Start Logo Bubble Rise (Script Function)
void func_0801cc2c(void) {
    u32 i;

    for (i = 0; i < TOTAL_TITLE_LOGO_BUBBLES; i++) {
        struct LogoBubble *bubble = &gTitleInfo->logoBubbles[i];

        bubble->active = TRUE;
        func_0804d770(D_03005380, bubble->letter, TRUE);
        func_0804d770(D_03005380, bubble->inner, TRUE);
        func_0804d770(D_03005380, bubble->outer, TRUE);
    }
}


// Update Logo Bubbles
void func_0801cc84(void) {
    u32 i;

    for (i = 0; i < TOTAL_TITLE_LOGO_BUBBLES; i++) {
        struct LogoBubble *bubble = &gTitleInfo->logoBubbles[i];

        if (bubble->active) {
            bubble->riseAngle += bubble->riseTurnSpeed;
            bubble->riseDistance = FIXED_POINT_MUL(bubble->riseDistance, bubble->riseSpeed);
            bubble->bounceDistance = FIXED_POINT_MUL(bubble->bounceDistance, INT_TO_FIXED(0.9));
            func_0801ca34(i);
        }
    }
}


// Logo Bubbles Beat Animation
void func_0801ccd0(void) {
    u32 i;

    for (i = 0; i < TOTAL_TITLE_LOGO_BUBBLES; i++) {
        struct LogoBubble *bubble = &gTitleInfo->logoBubbles[i];

        if (bubble->active) {
            bubble->bounceDistance += INT_TO_FIXED(6.0);
            bubble->bounceAngle = bubble->bounceBaseAngle + agb_random(INT_TO_FIXED(2.0 / 8)) - INT_TO_FIXED(1.0 / 8);
            func_0801ca34(i);
        }
    }
}


// Animate Logo Bubble (Script Function)
void func_0801cd14(s32 id) {
    struct LogoBubble *bubble;

    if (id >= 0) {
        gTitleInfo->nextLogoBubble = id;
    }

    bubble = &gTitleInfo->logoBubbles[gTitleInfo->nextLogoBubble];

    if (bubble->active) {
        bubble->bounceDistance += INT_TO_FIXED(10.0);

        gTitleInfo->nextLogoBubble++;
        if (gTitleInfo->nextLogoBubble >= TOTAL_TITLE_LOGO_BUBBLES) {
            gTitleInfo->nextLogoBubble = 0;
        }
    }
}


// Init. Static Variables
void func_0801cd60(void) {
}


// Graphics Init. 3
void func_0801cd64(void) {
    s32 task;

    func_0800c604(0);
    task = start_new_texture_loader(get_current_mem_id(), title_buffered_textures);
    run_func_after_task(task, set_pause_beatscript_scene, FALSE);
}


// Graphics Init. 2
void func_0801cd90(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), title_gfx_table, 0x3000);
    run_func_after_task(task, func_0801cd64, 0);
}


// Graphics Init. 1
void func_0801cdc0(void) {
    schedule_function_call(get_current_mem_id(), func_0801cd90, 0, 2);
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, BGCNT_PRIORITY(1));
}


// Scene Start
void func_0801cdfc(void *sceneVar, s32 dataArg) {
    struct TextPrinter *textPrinter;

    func_08007324(0);
    func_080073f0();

    gTitleInfo->directiveText = func_0804d160(D_03005380, anim_title_text, 0, 120, 132, 0x800, 1, 0x7f, 0x8000);
    gTitleInfo->stars = func_0804d160(D_03005380, anim_title_stars_appear, 0, 120, 64, 0x4864, 1, 0x7f, 0x8000);
    textPrinter = text_printer_create_new(get_current_mem_id(), 1, 240, 32);
    text_printer_set_x_y(textPrinter, 0, 8);
    text_printer_set_layer(textPrinter, 0);
    text_printer_center_by_content(textPrinter, TRUE);
    text_printer_set_palette(textPrinter, 2);
    text_printer_set_colors(textPrinter, 0);
    gTitleInfo->textPrinter = textPrinter;

    func_0801cdc0();
    func_0801cb0c();
    gTitleInfo->scriptIsReady = FALSE;
    gTitleInfo->timeUntilDemo = 180 * 16;
    gTitleInfo->titleIsDisplayed = FALSE;
    func_08000584(&D_089d3984);
    func_080006d0(&scene_main_menu, 0);
}


// Finish Intro (Script Function)
void func_0801cefc(void) {
    func_0804d770(D_03005380, gTitleInfo->directiveText, TRUE);
    func_0804d8f8(D_03005380, gTitleInfo->stars, anim_title_stars_spin, 0, 1, 0, 0);
    gTitleInfo->titleIsDisplayed = TRUE;
}


// Beat Animation (Script Function)
void func_0801cf44(void) {
    if (!gTitleInfo->titleIsDisplayed) {
        s32 frame = func_0804d6cc(D_03005380, gTitleInfo->stars);
        func_0804cebc(D_03005380, gTitleInfo->stars, frame + 1);
        func_0804d770(D_03005380, gTitleInfo->stars, TRUE);
    }

    func_0804cebc(D_03005380, gTitleInfo->directiveText, 0);
    func_0801ccd0();
}


// Scene Update (Paused)
void func_0801cfa4(void *sceneVar, s32 dataArg) {
}


// Update Inputs
void func_0801cfa8(void) {
    if (D_03004afc & (A_BUTTON | START_BUTTON)) {
        if (D_030046a8->data.unkB0) {
            func_08000584(&scene_main_menu);
        } else {
            func_08000584(&D_089d3a6c);
        }

        func_0801d968(D_089dcff0);
        gTitleInfo->scriptIsReady = FALSE;
        play_sound_w_pitch_volume(&s_nyuka_fan_seqData, INT_TO_FIXED(1.25), INT_TO_FIXED(0.0));
        scene_set_music_volume_env(100);
        D_030046a8->data.unkB0 = TRUE;
        gTitleInfo->timeUntilDemo = 9999;
    }
}


// Scene Update (Active)
void func_0801d02c(void *sceneVar, s32 dataArg) {
    if (gTitleInfo->timeUntilDemo > 0) {
        if (--gTitleInfo->timeUntilDemo == 0) {
            func_08000584(&D_089d3984);
            func_080006b0(&D_089d3984, &scene_riq_title);
            func_0801d968(D_089dcff0);
            gTitleInfo->scriptIsReady = FALSE;
        }
    }

    if (func_0801d08c()) {
        func_0801cfa8();
    }

    func_0801cc84();
    text_printer_update(gTitleInfo->textPrinter);
}


// Communicate with Script
u32 func_0801d08c(void) {
    if (gTitleInfo->scriptIsReady) {
        return TRUE;
    } else {
        return FALSE;
    }
}


// Scene Stop
void func_0801d0a8(void *sceneVar, s32 dataArg) {
    func_08008628();
    func_08004058();
}
