#include "engines/mechanical_horse.h"

asm(".include \"include/gba.inc\""); // Temporary

// For readability.
#define gMechanicalHorse ((struct MechanicalHorseEngineData *)gCurrentEngineData)


/* MECHANICAL HORSE */


#include "asm/engines/mechanical_horse/asm_08040c2c.s"

#include "asm/engines/mechanical_horse/asm_08040c58.s"

void func_08040cfc() {
    gMechanicalHorse->unk300 = 0;
}

#include "asm/engines/mechanical_horse/asm_08040d10.s"

#include "asm/engines/mechanical_horse/asm_08040d90.s"

#include "asm/engines/mechanical_horse/asm_08040dd8.s"

#include "asm/engines/mechanical_horse/asm_08040e80.s"

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

#include "asm/engines/mechanical_horse/asm_080416cc.s"

void func_08041730(u8 unk) {
    gMechanicalHorse->unk2e8 = unk;
}

#include "asm/engines/mechanical_horse/asm_08041744.s"

#include "asm/engines/mechanical_horse/asm_080417ac.s"

#include "asm/engines/mechanical_horse/asm_0804188c.s"

#include "asm/engines/mechanical_horse/asm_08041940.s"

#include "asm/engines/mechanical_horse/asm_08041970.s"

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

#include "asm/engines/mechanical_horse/asm_08042718.s"

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

#include "asm/engines/mechanical_horse/asm_0804283c.s"

void mechanical_horse_common_beat_animation() {
}

void mechanical_horse_common_display_text() {
}
