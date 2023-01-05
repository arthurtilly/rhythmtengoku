// Might need some more splitting

#include "engines/drumming_lessons.h"
#include "scenes/gameplay.h"
#include "src/memory.h"
#include "src/code_08001360.h"
#include "src/task_pool.h"
#include "src/memory_heap.h"
#include "src/code_08007468.h"
#include "src/text_printer.h"
#include "src/code_0800b778.h"
#include "src/lib_0804c870.h"

asm(".include \"include/gba.inc\""); // Temporary

// For readability.
#define gDrumIntroInfo ((struct DrumIntroInfo *)D_030055d0)
#define gDrumLiveInfo ((struct DrumLiveInfo *)D_030055d0)
#define gDrumLessonsInfo ((struct DrumLessonsInfo *)D_030055d0)

static s32 D_03001564; // unknown type


/* DRUMMING LESSONS */


#include "asm/engines/drumming_lessons/asm_080239a0.s"

#include "asm/engines/drumming_lessons/asm_080239bc.s"

#include "asm/engines/drumming_lessons/asm_080239ec.s"

#include "asm/engines/drumming_lessons/asm_08023a18.s"

#include "asm/engines/drumming_lessons/asm_08023bb8.s"

#include "asm/engines/drumming_lessons/asm_08023bcc.s"

#include "asm/engines/drumming_lessons/asm_08023bf4.s"

#include "asm/engines/drumming_lessons/asm_08023c0c.s"

#include "asm/engines/drumming_lessons/asm_08023c44.s"

#include "asm/engines/drumming_lessons/asm_08023c58.s"

#include "asm/engines/drumming_lessons/asm_08023c6c.s"

#include "asm/engines/drumming_lessons/asm_08023d44.s"

#include "asm/engines/drumming_lessons/asm_08023d60.s"

#include "asm/engines/drumming_lessons/asm_08023d64.s"

#include "asm/engines/drumming_lessons/asm_08023d68.s"

#include "asm/engines/drumming_lessons/asm_08023d6c.s"

#include "asm/engines/drumming_lessons/asm_08023d78.s"

#include "asm/engines/drumming_lessons/asm_08023da0.s"

#include "asm/engines/drumming_lessons/asm_08023da4.s"

#include "asm/engines/drumming_lessons/asm_08023df8.s"

#include "asm/engines/drumming_lessons/asm_08023e4c.s"

#include "asm/engines/drumming_lessons/asm_08023e50.s"

#include "asm/engines/drumming_lessons/asm_08023edc.s"

#include "asm/engines/drumming_lessons/asm_08023f68.s"

#include "asm/engines/drumming_lessons/asm_08023f6c.s"

#include "asm/engines/drumming_lessons/asm_08023ffc.s"

#include "asm/engines/drumming_lessons/asm_080240a4.s"

#include "asm/engines/drumming_lessons/asm_08024134.s"

#include "asm/engines/drumming_lessons/asm_080241c0.s"

#include "asm/engines/drumming_lessons/asm_0802424c.s"

#include "asm/engines/drumming_lessons/asm_0802428c.s"

#include "asm/engines/drumming_lessons/asm_080242cc.s"

#include "asm/engines/drumming_lessons/asm_080242f8.s"

#include "asm/engines/drumming_lessons/asm_08024978.s"

#include "asm/engines/drumming_lessons/asm_0802497c.s"

#include "asm/engines/drumming_lessons/asm_080249c0.s"

#include "asm/engines/drumming_lessons/asm_080249f0.s"

#include "asm/engines/drumming_lessons/asm_08024a4c.s"

#include "asm/engines/drumming_lessons/asm_08024ae4.s"

#include "asm/engines/drumming_lessons/asm_08024ba0.s"

#include "asm/engines/drumming_lessons/asm_08024bd0.s"

#include "asm/engines/drumming_lessons/asm_08024be8.s"

#include "asm/engines/drumming_lessons/asm_08024bfc.s"

#include "asm/engines/drumming_lessons/asm_08024c2c.s"

#include "asm/engines/drumming_lessons/asm_08024cb0.s"

#include "asm/engines/drumming_lessons/asm_08024d44.s"

#include "asm/engines/drumming_lessons/asm_08024d48.s"

#include "asm/engines/drumming_lessons/asm_08024d4c.s"

#include "asm/engines/drumming_lessons/asm_08024d68.s"

#include "asm/engines/drumming_lessons/asm_08024d6c.s"

#include "asm/engines/drumming_lessons/asm_08024da4.s"

#include "asm/engines/drumming_lessons/asm_08024ddc.s"

#include "asm/engines/drumming_lessons/asm_08024e0c.s"

#include "asm/engines/drumming_lessons/asm_08024e48.s"

#include "asm/engines/drumming_lessons/asm_08024ecc.s"

#include "asm/engines/drumming_lessons/asm_08024ed0.s"

#include "asm/engines/drumming_lessons/asm_08024ef4.s"

#include "asm/engines/drumming_lessons/asm_08024f64.s"

#include "asm/engines/drumming_lessons/asm_08024fb4.s"

#include "asm/engines/drumming_lessons/asm_08024fbc.s"

#include "asm/engines/drumming_lessons/asm_08024fc4.s"

#include "asm/engines/drumming_lessons/asm_08024ff4.s"

#include "asm/engines/drumming_lessons/asm_08025020.s"

#include "asm/engines/drumming_lessons/asm_08025038.s"

#include "asm/engines/drumming_lessons/asm_080251d0.s"

#include "asm/engines/drumming_lessons/asm_080251d8.s"

#include "asm/engines/drumming_lessons/asm_080251e8.s"

#include "asm/engines/drumming_lessons/asm_080251ec.s"

#include "asm/engines/drumming_lessons/asm_080251f0.s"

#include "asm/engines/drumming_lessons/asm_080251fc.s"

#include "asm/engines/drumming_lessons/asm_08025204.s"

#include "asm/engines/drumming_lessons/asm_0802520c.s"

#include "asm/engines/drumming_lessons/asm_08025214.s"

#include "asm/engines/drumming_lessons/asm_08025218.s"

#include "asm/engines/drumming_lessons/asm_0802521c.s"

#include "asm/engines/drumming_lessons/asm_08025220.s"

#include "asm/engines/drumming_lessons/asm_08025228.s"

#include "asm/engines/drumming_lessons/asm_08025248.s"

#include "asm/engines/drumming_lessons/asm_08025460.s"

#include "asm/engines/drumming_lessons/asm_08025538.s"

#include "asm/engines/drumming_lessons/asm_0802555c.s"

#include "asm/engines/drumming_lessons/asm_080255f8.s"

#include "asm/engines/drumming_lessons/asm_08025748.s"

#include "asm/engines/drumming_lessons/asm_0802575c.s"

#include "asm/engines/drumming_lessons/asm_080257b8.s"

#include "asm/engines/drumming_lessons/asm_08025848.s"

#include "asm/engines/drumming_lessons/asm_080258c0.s"

#include "asm/engines/drumming_lessons/asm_08025a2c.s"

#include "asm/engines/drumming_lessons/asm_08025a58.s"

#include "asm/engines/drumming_lessons/asm_08025a64.s"

#include "asm/engines/drumming_lessons/asm_08025a98.s"

#include "asm/engines/drumming_lessons/asm_08025aa4.s"

#include "asm/engines/drumming_lessons/asm_08025abc.s"

#include "asm/engines/drumming_lessons/asm_08025ad4.s"

#include "asm/engines/drumming_lessons/asm_08025ae8.s"

#include "asm/engines/drumming_lessons/asm_08025afc.s"

#include "asm/engines/drumming_lessons/asm_08025b88.s"

#include "asm/engines/drumming_lessons/asm_08025bcc.s"

#include "asm/engines/drumming_lessons/asm_08025be0.s"

#include "asm/engines/drumming_lessons/asm_08025bec.s"

#include "asm/engines/drumming_lessons/asm_08025c48.s"

#include "asm/engines/drumming_lessons/asm_08025c4c.s"

#include "asm/engines/drumming_lessons/asm_08025c8c.s"

#include "asm/engines/drumming_lessons/asm_08025ccc.s"

#include "asm/engines/drumming_lessons/asm_08025cd0.s"

#include "asm/engines/drumming_lessons/asm_08025d34.s"

#include "asm/engines/drumming_lessons/asm_08025d98.s"

#include "asm/engines/drumming_lessons/asm_08025d9c.s"

#include "asm/engines/drumming_lessons/asm_08025e00.s"

#include "asm/engines/drumming_lessons/asm_08025e74.s"

#include "asm/engines/drumming_lessons/asm_08025ed8.s"

#include "asm/engines/drumming_lessons/asm_08025f3c.s"

#include "asm/engines/drumming_lessons/asm_08025f50.s"

#include "asm/engines/drumming_lessons/asm_08025f90.s"

#include "asm/engines/drumming_lessons/asm_08025fbc.s"

#include "asm/engines/drumming_lessons/asm_08026024.s"

#include "asm/engines/drumming_lessons/asm_0802663c.s"

#include "asm/engines/drumming_lessons/asm_08026640.s"

#include "asm/engines/drumming_lessons/asm_080268cc.s"

#include "asm/engines/drumming_lessons/asm_08026930.s"

#include "asm/engines/drumming_lessons/asm_08026968.s"

#include "asm/engines/drumming_lessons/asm_080269e8.s"

#include "asm/engines/drumming_lessons/asm_08026a0c.s"

#include "asm/engines/drumming_lessons/asm_08026a50.s"

#include "asm/engines/drumming_lessons/asm_08026aac.s"

#include "asm/engines/drumming_lessons/asm_08026b0c.s"

#include "asm/engines/drumming_lessons/asm_08026b18.s"

#include "asm/engines/drumming_lessons/asm_08026b24.s"

#include "asm/engines/drumming_lessons/asm_08026b3c.s"

#include "asm/engines/drumming_lessons/asm_08026bc8.s"

#include "asm/engines/drumming_lessons/asm_08026c1c.s"

#include "asm/engines/drumming_lessons/asm_08026c38.s"

#include "asm/engines/drumming_lessons/asm_08026c3c.s"

#include "asm/engines/drumming_lessons/asm_08026c84.s"

#include "asm/engines/drumming_lessons/asm_08026cc4.s"

#include "asm/engines/drumming_lessons/asm_08026d04.s"

#include "asm/engines/drumming_lessons/asm_08026d28.s"

#include "asm/engines/drumming_lessons/asm_08026d68.s"

#include "asm/engines/drumming_lessons/asm_08026de8.s"

#include "asm/engines/drumming_lessons/asm_08026dec.s"





// Init. Drum Samurai Sprite
void drum_lessons_init_teacher_sprite(s16 sprite) {
    struct StudioDrummer *teacher = &gDrumLessonsInfo->teacher;

    func_0804d5d4(D_03005380, sprite, 152, 136);
    func_0804db44(D_03005380, sprite, &teacher->xController, &teacher->yController);
    func_0804d890(D_03005380, sprite, 640);
    gDrumLessonsInfo->unk3C0 = 0;
}


// Init. Drum Samurai
void drum_lessons_init_teacher(void) {
    struct StudioDrummer *teacher = &gDrumLessonsInfo->teacher;

    teacher->snareDrum = func_0804d160(D_03005380, anim_drum_teacher_kit_snare, 0, 64, 64, 0x480c, 1, 0x7f, 0);
    teacher->bassDrum = func_0804d160(D_03005380, anim_drum_teacher_kit_bass, 0, 152, 136, 0x480f, 1, 0x7f, 0);
    teacher->tomDrum = func_0804d160(D_03005380, anim_drum_teacher_kit_tom, 0, 64, 64, 0x4814, 1, 0x7f, 0);
    teacher->hiHat = func_0804d160(D_03005380, anim_drum_teacher_kit_hihat, 0, 64, 64, 0x4819, 1, 0x7f, 0);
    teacher->pedalHiHat = -1;
    teacher->rightPedal = func_0804d160(D_03005380, anim_drum_teacher_kit_pedal_r, 0, 64, 64, 0x480a, 1, 0x7f, 0);
    teacher->leftPedal = func_0804d160(D_03005380, anim_drum_teacher_kit_pedal_l, 0, 64, 64, 0x480b, 1, 0x7f, 0);
    teacher->splashCymbal = func_0804d160(D_03005380, anim_drum_teacher_kit_splash, 0, 64, 64, 0x481e, 1, 0x7f, 0);
    teacher->crashCymbal = func_0804d160(D_03005380, anim_drum_teacher_kit_crash, 0, 64, 64, 0x47ec, 1, 0x7f, 0);
    teacher->head = func_0804d160(D_03005380, anim_drum_teacher_head, 0, 64, 64, 0x47f4, 1, 0x7f, 0);
    teacher->body = func_0804d160(D_03005380, anim_drum_teacher_body, 0, 64, 64, 0x47ec, 1, 0x7f, 0);
    teacher->rightLeg = func_0804d160(D_03005380, anim_drum_teacher_use_pedal_r, 0, 64, 64, 0x47ee, 1, 0x7f, 0);
    teacher->leftLeg = func_0804d160(D_03005380, anim_drum_teacher_use_pedal_l, 0, 64, 64, 0x47fb, 1, 0x7f, 0);
    teacher->leftArm = func_0804d160(D_03005380, anim_drum_teacher_use_snare_l, 0, 64, 64, 0x47f6, 1, 0x7f, 0);
    teacher->rightArm = func_0804d160(D_03005380, anim_drum_teacher_use_snare_r, 0, 64, 64, 0x47e2, 1, 0x7f, 0);
    teacher->seat = func_0804d160(D_03005380, anim_drum_teacher_kit_seat, 0, 64, 64, 0x47f0, 1, 0x7f, 0);
    teacher->coffeeSteam = -1;

    drum_lessons_init_teacher_sprite(teacher->snareDrum);
    drum_lessons_init_teacher_sprite(teacher->bassDrum);
    drum_lessons_init_teacher_sprite(teacher->tomDrum);
    drum_lessons_init_teacher_sprite(teacher->hiHat);
    drum_lessons_init_teacher_sprite(teacher->rightPedal);
    drum_lessons_init_teacher_sprite(teacher->leftPedal);
    drum_lessons_init_teacher_sprite(teacher->splashCymbal);
    drum_lessons_init_teacher_sprite(teacher->crashCymbal);
    drum_lessons_init_teacher_sprite(teacher->head);
    drum_lessons_init_teacher_sprite(teacher->body);
    drum_lessons_init_teacher_sprite(teacher->rightLeg);
    drum_lessons_init_teacher_sprite(teacher->leftLeg);
    drum_lessons_init_teacher_sprite(teacher->leftArm);
    drum_lessons_init_teacher_sprite(teacher->rightArm);
    drum_lessons_init_teacher_sprite(teacher->seat);

    teacher->xController = 0;
    teacher->yController = 0;
    teacher->headPosX = 152;
    teacher->headPosY = 136;
    teacher->leftArmPosX = 152;
    teacher->leftArmPosY = 136;
    teacher->rightArmPosX = 152;
    teacher->rightArmPosY = 136;
    gDrumLessonsInfo->unk3C1 = TRUE;
}


#include "asm/engines/drumming_lessons/asm_080271a8.s"

#include "asm/engines/drumming_lessons/asm_080271d4.s"

#include "asm/engines/drumming_lessons/asm_080271f0.s"

#include "asm/engines/drumming_lessons/asm_08027304.s"

#include "asm/engines/drumming_lessons/asm_08027350.s"

#include "asm/engines/drumming_lessons/asm_0802739c.s"

#include "asm/engines/drumming_lessons/asm_080273e4.s"

#include "asm/engines/drumming_lessons/asm_0802742c.s"

#include "asm/engines/drumming_lessons/asm_08027474.s"

#include "asm/engines/drumming_lessons/asm_080274d0.s"

#include "asm/engines/drumming_lessons/asm_08027518.s"

#include "asm/engines/drumming_lessons/asm_08027560.s"

#include "asm/engines/drumming_lessons/asm_080275a8.s"

#include "asm/engines/drumming_lessons/asm_080275d0.s"

#include "asm/engines/drumming_lessons/asm_080275f8.s"

#include "asm/engines/drumming_lessons/asm_08027668.s"

#include "asm/engines/drumming_lessons/asm_08027728.s"

#include "asm/engines/drumming_lessons/asm_08027744.s"

#include "asm/engines/drumming_lessons/asm_08027760.s"

#include "asm/engines/drumming_lessons/asm_0802777c.s"

#include "asm/engines/drumming_lessons/asm_080277a0.s"

#include "asm/engines/drumming_lessons/asm_080277b8.s"

#include "asm/engines/drumming_lessons/asm_08027888.s"

#include "asm/engines/drumming_lessons/asm_080278d0.s"

#include "asm/engines/drumming_lessons/asm_080278e8.s"

#include "asm/engines/drumming_lessons/asm_08027948.s"


// Init. Drum Lessons
void drum_lessons_init_lesson(void) {
    u32 i;

    gDrumLessonsInfo->unk426 = 64;
    gDrumLessonsInfo->unk41C = 0;
    gDrumLessonsInfo->unk420 = 0x7800;
    gDrumLessonsInfo->unk427 = 0;
    gDrumLessonsInfo->unk42E = 0;
    gDrumLessonsInfo->unk424 = 0;
    gDrumLessonsInfo->unk458 = 0;
    gDrumLessonsInfo->unk45A = 0;
    gDrumLessonsInfo->unk45C = 0;
    gDrumLessonsInfo->lessonTextPrinter = text_printer_create_new(get_current_mem_id(), 4, 128, 32);
    text_printer_set_x_y(gDrumLessonsInfo->lessonTextPrinter, 110, 40);
    text_printer_set_layer(gDrumLessonsInfo->lessonTextPrinter, 0x700);
    text_printer_set_colors(gDrumLessonsInfo->lessonTextPrinter, 0);
    text_printer_set_palette(gDrumLessonsInfo->lessonTextPrinter, 3);
    text_printer_center_by_content(gDrumLessonsInfo->lessonTextPrinter, TRUE);
    text_printer_set_alignment(gDrumLessonsInfo->lessonTextPrinter, 1);
    gDrumLessonsInfo->textAdvIconSprite = func_0804d160(D_03005380, anim_drum_lessons_text_adv_icon, 0, 64, 64, 0x700, 1, 0, 0x8000);
    func_0804d890(D_03005380, gDrumLessonsInfo->textAdvIconSprite, 640);
    gDrumLessonsInfo->lessonRankSprite = func_0804d160(D_03005380, anim_drum_lessons_rank_s, 0, 208, 96, 0x700, 1, 0, 0x8000);
    gDrumLessonsInfo->slowIconSprite = func_0804d160(D_03005380, anim_drum_lessons_slow_icon, 0, 120, 80, 0x600, 1, 0, 0x8000);
    func_0804d890(D_03005380, gDrumLessonsInfo->slowIconSprite, 640);
    gDrumLessonsInfo->unk562 = 0;
    gDrumLessonsInfo->unk563 = 0;
    gDrumLessonsInfo->unk564 = 0;

    for (i = 0; i < 7; i++) {
        gDrumLessonsInfo->accuracyLightSprites[i] = func_0804d160(D_03005380, D_089e172c[i], 0x7f, D_089e1748[i].x, D_089e1748[i].y, 0x4f00, 1, 0x7f, 0x8002);
        func_0804d890(D_03005380, gDrumLessonsInfo->accuracyLightSprites[i], 640);
    }

    gDrumLessonsInfo->unk576 = 0;
    gDrumLessonsInfo->unk578 = 0;
}


#include "asm/engines/drumming_lessons/asm_08027ba0.s"

#include "asm/engines/drumming_lessons/asm_08027bbc.s"

#include "asm/engines/drumming_lessons/asm_08027bd8.s"

#include "asm/engines/drumming_lessons/asm_08027c54.s"

#include "asm/engines/drumming_lessons/asm_08027c90.s"

#include "asm/engines/drumming_lessons/asm_08027d08.s"

#include "asm/engines/drumming_lessons/asm_08027dfc.s"

#include "asm/engines/drumming_lessons/asm_08027f1c.s"

#include "asm/engines/drumming_lessons/asm_08027f4c.s"

#include "asm/engines/drumming_lessons/asm_08027f70.s"

#include "asm/engines/drumming_lessons/asm_08027f90.s"

#include "asm/engines/drumming_lessons/asm_08027fc8.s"

#include "asm/engines/drumming_lessons/asm_08028004.s"

#include "asm/engines/drumming_lessons/asm_0802818c.s"

#include "asm/engines/drumming_lessons/asm_080281c4.s"

#include "asm/engines/drumming_lessons/asm_080281e8.s"

#include "asm/engines/drumming_lessons/asm_080281fc.s"


// Change BG Monitor Palette
void drum_studio_start_monitor2(const Palette *palette) {
    func_0800c604(0);
    scene_show_bg_layer(BG_LAYER_2);
    scene_show_bg_layer(BG_LAYER_3);
    func_08002018(get_current_mem_id(), 0x40, 4, drum_lessons_bg_screen_pal[0][0], palette, BG_PALETTE_BUFFER(0));
}


// Start BG Monitor Display
void drum_studio_start_monitor1(void) {
    s32 task;
    u32 id;

    id = *gDrumLessonsInfo->unk3C8;
    gDrumLessonsInfo->unk3F0 = id;
    gDrumLessonsInfo->bg2PosX = gDrumLessonsInfo->bg2PosY = 0;
    gDrumLessonsInfo->bg3PosX = gDrumLessonsInfo->bg3PosY = 0;
    gDrumLessonsInfo->bg2VelX = D_089e17a0[id].bg2VelX;
    gDrumLessonsInfo->bg2VelY = D_089e17a0[id].bg2VelY;
    gDrumLessonsInfo->bg3VelX = D_089e17a0[id].bg3VelX;
    gDrumLessonsInfo->bg3VelY = D_089e17a0[id].bg3VelY;
    task = func_08002ee0(get_current_mem_id(), D_089e17a0[id].gfxTable, 0x2000);
    task_run_after(task, drum_studio_start_monitor2, (s32)D_089e17a0[id].palette);
}


// Engine Event 03 (Start BG Monitor Display)
void drum_studio_event_start_monitor(u32 unused) {
    drum_studio_start_monitor1();
}


// Stop BG Monitor Display
void drum_studio_stop_monitor2(void) {
    func_0800c604(0);
    scene_hide_bg_layer(BG_LAYER_2);
    scene_hide_bg_layer(BG_LAYER_3);
}


// Revert BG Monitor Palette
void drum_studio_stop_monitor1(void) {
    const Palette *palette;
    s32 task;

    if (gDrumLessonsInfo->unk3F0 < 0) {
        return;
    }

    palette = D_089e17a0[gDrumLessonsInfo->unk3F0].palette;
    task = func_08002050(get_current_mem_id(), 0x20, 4, palette, drum_lessons_bg_screen_pal[0][0], BG_PALETTE_BUFFER(0));
    task_run_after(task, drum_studio_stop_monitor2, 0);
    gDrumLessonsInfo->unk3F0 = -1;
}


// Engine Event 04 (Stop BG Monitor Display)
void drum_studio_event_stop_monitor(void) {
    drum_studio_stop_monitor1();
}


#include "asm/engines/drumming_lessons/asm_080283ac.s"

#include "asm/engines/drumming_lessons/asm_080283f8.s"

#include "asm/engines/drumming_lessons/asm_08028444.s"

#include "asm/engines/drumming_lessons/asm_080284a4.s"

#include "asm/engines/drumming_lessons/asm_08028504.s"

#include "asm/engines/drumming_lessons/asm_08028564.s"

#include "asm/engines/drumming_lessons/asm_080285d4.s"

#include "asm/engines/drumming_lessons/asm_08028634.s"

#include "asm/engines/drumming_lessons/asm_08028694.s"

#include "asm/engines/drumming_lessons/asm_080286f4.s"

#include "asm/engines/drumming_lessons/asm_0802871c.s"

#include "asm/engines/drumming_lessons/asm_08028744.s"


// Init. Drum Kit
void drum_studio_init_kit(void) {
    struct StudioDrummer *student = &gDrumLessonsInfo->student;
    const struct DrumKit *drumKit;
    DrumPlayFunc playFunc;
    u32 drummingButtons;

    func_0804d770(D_03005380, student->snareDrum, TRUE);
    func_0804d770(D_03005380, student->bassDrum, TRUE);
    func_0804d770(D_03005380, student->tomDrum, TRUE);
    func_0804d770(D_03005380, student->hiHat, TRUE);
    func_0804d770(D_03005380, student->leftPedal, TRUE);
    func_0804d770(D_03005380, student->rightPedal, TRUE);
    func_0804d770(D_03005380, student->crashCymbal, TRUE);
    func_0804d770(D_03005380, student->splashCymbal, TRUE);
    func_0804dae0(D_03005380, student->hiHat, 0, 0, 0);
    func_0804cebc(D_03005380, student->hiHat, 2);
    func_0804d770(D_03005380, student->pedalHiHat, FALSE);
    func_0804dae0(D_03005380, student->pedalHiHat, 1, 0x7f, 0);
    func_0804d8f8(D_03005380, student->rightLeg, anim_drum_student_use_pedal_r, 0x7f, 1, 0x7f, 0);
    set_drumtech_hihat_gfx(student->hiHat);
    set_drumtech_pedal_hihat_gfx(student->pedalHiHat, student->rightLeg, anim_drum_student_use_pedal_r, anim_drum_student_use_pedal_hihat);

    playFunc = D_089e2988[gDrumLessonsInfo->studioKitID];
    if (playFunc != NULL) {
        CALL_DRUM_PLAY_FUNC(playFunc);
    }

    drumKit = drum_studio_kits[gDrumLessonsInfo->studioKitID];
    drummingButtons = 0;

    if (drumKit->aButton != NULL) {
        drummingButtons |= A_BUTTON;
    }
    if (drumKit->bButton != NULL) {
        drummingButtons |= B_BUTTON;
    }
    if (drumKit->dpadUp != NULL) {
        drummingButtons |= DPAD_UP;
    }
    if (drumKit->dpadDown != NULL) {
        drummingButtons |= DPAD_DOWN;
    }
    if (drumKit->dpadLeft != NULL) {
        drummingButtons |= DPAD_LEFT;
    }
    if (drumKit->dpadRight != NULL) {
        drummingButtons |= DPAD_RIGHT;
    }
    if (drumKit->lButton != NULL) {
        drummingButtons |= LEFT_SHOULDER_BUTTON;
    }
    if (drumKit->rButton != NULL) {
        drummingButtons |= RIGHT_SHOULDER_BUTTON;
    }

    gDrumLessonsInfo->drummingButtons = drummingButtons;
    gameplay_set_input_buttons(drummingButtons, 0);
}


// Get Total Drum Kits (15)
s32 drum_studio_get_total_kits(void) {
    return 15;
}


// Graphics Init. 3
void drum_studio_init_gfx3(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
    func_080041d0(0, 1, 0);
    func_0800425c(64, 120);
}


// Graphics Init. 2
void drum_studio_init_gfx2(void) {
    const struct GraphicsTable *gfxTable = drum_studio_gfx_table;
    s32 task;

    func_0800c604(0);
    if (gDrumLessonsInfo->version == 4) {
        gfxTable = drum_lessons_gfx_table;
    }
    task = func_08002ee0(get_current_mem_id(), gfxTable, 0x2000);
    task_run_after(task, drum_studio_init_gfx3, 0);

}


// Graphics Init. 1
void drum_studio_init_gfx1(void) {
    s32 task;

    func_0800c604(0);
    task = func_080087b4(get_current_mem_id(), drum_studio_buffered_textures);
    task_run_after(task, drum_studio_init_gfx2, 0);
}


// Game Engine Start
void drum_studio_engine_start(u32 version) {
    struct StudioDrummer *student = &gDrumLessonsInfo->student;
    s32 var;

    gDrumLessonsInfo->version = version;
    drum_studio_init_gfx1();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, BG_PRIORITY_HIGH);
    scene_set_bg_layer_display(BG_LAYER_2, FALSE, 0, 0, 2, 30, BG_PRIORITY_LOW);
    scene_set_bg_layer_display(BG_LAYER_3, FALSE, 0, 0, 2, 31, BG_PRIORITY_LOWEST);

    student->snareDrum = func_0804d160(D_03005380, anim_drum_student_kit_snare, 0, 120, 100, 0x480c, 1, 0x7f, 0);
    student->bassDrum = func_0804d160(D_03005380, anim_drum_student_kit_bass, 0, 120, 100, 0x480f, 1, 0x7f, 0);
    student->tomDrum = func_0804d160(D_03005380, anim_drum_student_kit_tom, 0, 120, 100, 0x4814, 1, 0x7f, 0);
    student->hiHat = func_0804d160(D_03005380, anim_drum_student_kit_hihat, 0, 120, 100, 0x4819, 1, 0x7f, 0);
    student->pedalHiHat = func_0804d160(D_03005380, anim_drum_student_kit_pedal_hihat, 0, 120, 100, 0x4808, 1, 0x7f, 0x8000);
    student->rightPedal = func_0804d160(D_03005380, anim_drum_student_kit_pedal_r, 0, 123, 97, 0x480a, 1, 0x7f, 0);
    student->leftPedal = func_0804d160(D_03005380, anim_drum_student_kit_pedal_l, 0, 119, 96, 0x480b, 1, 0x7f, 0);
    student->splashCymbal = func_0804d160(D_03005380, anim_drum_student_kit_splash, 0, 120, 100, 0x481e, 1, 0x7f, 0);
    student->crashCymbal = func_0804d160(D_03005380, anim_drum_student_kit_crash, 0, 120, 100, 0x47ec, 1, 0x7f, 0);
    student->head = func_0804d160(D_03005380, anim_drum_student_head, 0, 120, 100, 0x47f4, 1, 0x7f, 0);
    student->body = func_0804d160(D_03005380, anim_drum_student_body, 0, 120, 100, 0x47ec, 1, 0x7f, 0);
    student->rightLeg = func_0804d160(D_03005380, anim_drum_student_use_pedal_r, 0, 120, 100, 0x47ee, 1, 0x7f, 0);
    student->leftLeg = func_0804d160(D_03005380, anim_drum_student_use_pedal_l, 0, 120, 100, 0x47fb, 1, 0x7f, 0);
    student->leftArm = func_0804d160(D_03005380, anim_drum_student_use_snare_l, 0, 102, 90, 0x47f6, 1, 0x7f, 0);
    student->rightArm = func_0804d160(D_03005380, anim_drum_student_use_snare_r, 0, 120, 100, 0x47e2, 1, 0x7f, 0);
    student->seat = func_0804d160(D_03005380, anim_drum_student_kit_seat, 0, 120, 100, 0x47f0, 1, 0x7f, 0);
    student->coffeeSteam = func_0804d160(D_03005380, anim_drum_student_coffee_steam, 0, 99, 82, 0x47eb, 1, 0, 0x8000);
    student->xController = 56;
    student->yController = -8;
    func_0804e188(D_03005380, get_current_mem_id(), &student->xController, &student->yController);
    student->headPosX = 120;
    student->headPosY = 100;
    student->leftArmPosX = 102;
    student->leftArmPosY = 90;
    student->rightArmPosX = 120;
    student->rightArmPosY = 100;

    gDrumLessonsInfo->songTitlePrinter = text_printer_create_new(get_current_mem_id(), 1, 144, 32);
    text_printer_set_x_y(gDrumLessonsInfo->songTitlePrinter, 96, 9);
    text_printer_set_layer(gDrumLessonsInfo->songTitlePrinter, 0x700);
    text_printer_set_colors(gDrumLessonsInfo->songTitlePrinter, 3);
    text_printer_set_palette(gDrumLessonsInfo->songTitlePrinter, 3);
    text_printer_center_by_content(gDrumLessonsInfo->songTitlePrinter, TRUE);
    text_printer_set_x_controller(gDrumLessonsInfo->songTitlePrinter, &gDrumLessonsInfo->songTitlePosX);
    gDrumLessonsInfo->songTitleBgSprite = func_0804d160(D_03005380, anim_drum_studio_song_title_bubble, 0, 224, 8, 0x800, 0, 0, 0);
    func_0804db90(D_03005380, gDrumLessonsInfo->songTitleBgSprite, &gDrumLessonsInfo->songTitlePosX);
    gDrumLessonsInfo->songTitlePosX = -144;
    gDrumLessonsInfo->unk3FC = 0;

    gDrumLessonsInfo->replaySaveOptionSprite = func_0804d160(D_03005380, anim_drum_studio_save_option_y, 0, 180, 102, 0x800, 1, 0, 0x8000);
    gDrumLessonsInfo->unk40C = 0;
    gDrumLessonsInfo->replayTextPrinter = text_printer_create_new(get_current_mem_id(), 2, 120, 32);
    text_printer_set_x_y(gDrumLessonsInfo->replayTextPrinter, 120, 64);
    text_printer_set_layer(gDrumLessonsInfo->replayTextPrinter, 0x700);
    text_printer_set_colors(gDrumLessonsInfo->replayTextPrinter, 0);
    text_printer_set_palette(gDrumLessonsInfo->replayTextPrinter, 3);
    text_printer_center_by_content(gDrumLessonsInfo->replayTextPrinter, TRUE);

    gDrumLessonsInfo->memoryWarningSprite = func_0804d160(D_03005380, anim_drum_studio_memory_warning, 0, 240, 160, 0x800, 1, 0, 0x8000);

    init_drumtech(&gDrumLessonsInfo->drumTech);

    gDrumLessonsInfo->unk3CC = 0;
    switch (version) {
        case 1:
        case 2:
        case 3:
            gDrumLessonsInfo->unk3CC = (s32)func_0800061c(); // ???
            break;
    }

    if (gDrumLessonsInfo->version == 3) {
        while (D_030046a8->data.unkB4[gDrumLessonsInfo->unk3CC].unk3 & 2) {
            if (++gDrumLessonsInfo->unk3CC >= D_030046a8->data.unkB2) {
                gDrumLessonsInfo->unk3CC = 0;
            }
        }
    }

    gDrumLessonsInfo->studioKitID = 0;
    switch (version) {
        case 1:
            gDrumLessonsInfo->studioKitID = func_080087d4(func_0801c504(), 0, drum_studio_get_total_kits());
            break;
        case 3:
            gDrumLessonsInfo->studioKitID = D_030046a8->data.unkB4[gDrumLessonsInfo->unk3CC].unk2;
            break;
    }

    gDrumLessonsInfo->unk3C4 = mem_heap_alloc_id(get_current_mem_id(), 0x3800);
    gDrumLessonsInfo->drummingButtons = (A_BUTTON | B_BUTTON | DPAD_RIGHT | DPAD_LEFT | DPAD_UP | DPAD_DOWN | RIGHT_SHOULDER_BUTTON | LEFT_SHOULDER_BUTTON);
    gameplay_set_input_buttons(gDrumLessonsInfo->drummingButtons, 0);
    gameplay_prevent_dpad_overlap(FALSE);
    gDrumLessonsInfo->unk1 = 1;
    gDrumLessonsInfo->unk3CD = 0;
    gDrumLessonsInfo->unk3CE = FALSE;
    gDrumLessonsInfo->bg2PosX = gDrumLessonsInfo->bg2PosY = 0;
    gDrumLessonsInfo->bg2VelX = gDrumLessonsInfo->bg2VelY = 0;
    gDrumLessonsInfo->bg3PosX = gDrumLessonsInfo->bg3PosY = 0;
    gDrumLessonsInfo->bg3VelX = gDrumLessonsInfo->bg3VelY = 0;
    gDrumLessonsInfo->unk3F0 = -1;
    gDrumLessonsInfo->unk3C1 = FALSE;
    gDrumLessonsInfo->unk57C = 0;

    switch (version) {
        case 0:
        case 1:
        case 2:
        case 3:
            break;
        case 4: // Drum Lessons
            scene_show_bg_layer(BG_LAYER_2);
            scene_show_bg_layer(BG_LAYER_3);
            drum_lessons_init_lesson();
            drum_lessons_init_teacher();
            break;
    }

    drum_studio_init_kit();
    gameplay_assess_irrelevant_inputs(FALSE);
}


// Engine Event 0x1A (STUB)
void drum_studio_engine_event_stub(void) {
}


#include "asm/engines/drumming_lessons/asm_080290c4.s"

#include "asm/engines/drumming_lessons/asm_08029178.s"

#include "asm/engines/drumming_lessons/asm_0802918c.s"

#include "asm/engines/drumming_lessons/asm_080291bc.s"

#include "asm/engines/drumming_lessons/asm_08029204.s"

#include "asm/engines/drumming_lessons/asm_080292e0.s"

#include "asm/engines/drumming_lessons/asm_080293b0.s"

#include "asm/engines/drumming_lessons/asm_080295d4.s"


// Align Drummer Parts to Body
void drum_studio_align_drummer_sprites(struct StudioDrummer *drummer, const struct Vector2 *vecOfs) {
    vecOfs += func_0804d6cc(D_03005380, drummer->body);
    func_0804d5d4(D_03005380, drummer->head, drummer->headPosX + vecOfs->x, drummer->headPosY + vecOfs->y);
    func_0804d5d4(D_03005380, drummer->leftArm, drummer->leftArmPosX + vecOfs->x, drummer->leftArmPosY + vecOfs->y);
    func_0804d5d4(D_03005380, drummer->rightArm, drummer->rightArmPosX + vecOfs->x, drummer->rightArmPosY + vecOfs->y);
}


#include "asm/engines/drumming_lessons/asm_0802972c.s"


// Update BG Monitor Display
void drum_studio_update_monitor(void) {
    gDrumLessonsInfo->bg2PosX += gDrumLessonsInfo->bg2VelX;
    gDrumLessonsInfo->bg2PosY += gDrumLessonsInfo->bg2VelY;
    gDrumLessonsInfo->bg3PosX += gDrumLessonsInfo->bg3VelX;
    gDrumLessonsInfo->bg3PosY += gDrumLessonsInfo->bg3VelY;
    D_03004b10.BG_OFS[BG_LAYER_2].x = FIXED_TO_INT(gDrumLessonsInfo->bg2PosX);
    D_03004b10.BG_OFS[BG_LAYER_2].y = FIXED_TO_INT(gDrumLessonsInfo->bg2PosY);
    D_03004b10.BG_OFS[BG_LAYER_3].x = FIXED_TO_INT(gDrumLessonsInfo->bg3PosX);
    D_03004b10.BG_OFS[BG_LAYER_3].y = FIXED_TO_INT(gDrumLessonsInfo->bg3PosY);
}


#include "asm/engines/drumming_lessons/asm_0802981c.s"

#include "asm/engines/drumming_lessons/asm_080298e0.s"

#include "asm/engines/drumming_lessons/asm_0802992c.s"

#include "asm/engines/drumming_lessons/asm_08029988.s"

#include "asm/engines/drumming_lessons/asm_08029a1c.s"

#include "asm/engines/drumming_lessons/asm_08029b8c.s"


// Game Engine Update
void drum_studio_engine_update(void) {
    if (gDrumLessonsInfo->version == 4) {
        func_08027dfc();
        if ((gDrumLessonsInfo->unk1 == 1) && (gDrumLessonsInfo->unk3CD == 1)) {
            if (D_03004afc & gDrumLessonsInfo->drummingButtons) {
                set_drumtech_volume(INT_TO_FIXED(1.0));
                if (gDrumLessonsInfo->unk41C < 30) {
                    gDrumLessonsInfo->unk45A = 30;
                }
                gDrumLessonsInfo->unk41C = beats_to_ticks(0x5A);
            }
        }
    }

    switch (gDrumLessonsInfo->unk1) {
        case 1:
            func_0802981c();
            break;
        case 2:
            func_08029a1c();
            break;
    }

    update_drumtech();
    drum_studio_align_drummer_sprites(&gDrumLessonsInfo->student, D_089e2b58);
    if (gDrumLessonsInfo->unk3C1) {
        drum_studio_align_drummer_sprites(&gDrumLessonsInfo->teacher, D_089e2b78);
    }
    func_0802972c();
    drum_studio_update_monitor();
    func_08029204();
    if (gDrumLessonsInfo->unk3CE && (D_03004afc & SELECT_BUTTON)) {
        func_080290c4();
    }
    gDrumLessonsInfo->unk57C++;
}


#include "asm/engines/drumming_lessons/asm_08029cac.s"

#include "asm/engines/drumming_lessons/asm_08029cec.s"

#include "asm/engines/drumming_lessons/asm_08029d20.s"

#include "asm/engines/drumming_lessons/asm_08029d40.s"

#include "asm/engines/drumming_lessons/asm_08029d84.s"

#include "asm/engines/drumming_lessons/asm_08029e0c.s"

#include "asm/engines/drumming_lessons/asm_08029e10.s"

#include "asm/engines/drumming_lessons/asm_08029e74.s"

#include "asm/engines/drumming_lessons/asm_08029e90.s"

#include "asm/engines/drumming_lessons/asm_08029eac.s"

#include "asm/engines/drumming_lessons/asm_08029ed8.s"


// Common Event 0 (Beat Animation)
void drum_studio_common_beat_animation(void) {
}


// Common Event 1 (Display Text)
void drum_studio_common_display_text(void) {
}


// Common Event 2 (Init. Tutorial)
void drum_studio_common_init_tutorial(void) {
}
