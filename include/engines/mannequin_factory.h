#pragma once

#include "global.h"
#include "engines.h"

#include "games/mannequin_factory/graphics/mannequin_factory_graphics.h"

// Engine Types:
struct MannequinFactoryEngineData {
    u8 pad[0x434];
};

struct MannequinFactoryCue {
};


// Engine Definition Data:
extern struct Animation *mannequin_finish_anim[];
extern u16 mannequin_input_buttons[];
extern struct CompressedData *mannequin_buffered_textures[];
extern struct GraphicsTable mannequin_gfx_table[];
extern struct SongHeader *D_089df404[];


// Functions:
// extern ? func_08022244(?);
// extern ? func_08022268(?);
// extern ? func_080223ac(?);
// extern ? func_080223d0(?);
// extern ? func_080224a8(?);
// extern ? func_080225bc(?);
// extern ? func_08022614(?);
// extern ? func_080226a0(?);
extern void func_080226d4(); // Engine Event 0x00 (?)
// extern ? func_08022894(?);
// extern ? func_080228d8(?);
extern void func_080229bc(); // Engine Event 0x01 (?)
// extern ? func_080229f0(?);
// extern ? func_08022a7c(?);
// extern ? func_08022b0c(?);
extern void func_08022ba0(); // Engine Event 0x06 (?)
// extern ? func_08022bb4(?);
// extern ? func_08022ca0(?);
// extern ? func_08022ce8(?);
extern void mannequin_init_gfx3(void); // Graphics Init. 3
extern void mannequin_init_gfx2(void); // Graphics Init. 2
extern void mannequin_init_gfx1(void); // Graphics Init. 1
extern void mannequin_engine_start(u32); // Game Engine Start
extern void mannequin_engine_event_stub(); // Engine Event 0x07 (STUB)
extern void func_08022f00(); // Engine Event 0x02 (?)
extern void func_08022f1c(); // Engine Event 0x03 (?)
// extern ? func_08022f4c(?);
// extern ? func_08022fb8(?);
extern void mannequin_engine_update(void); // Game Engine Update
// extern ? func_0802308c(?);
// extern ? func_080230cc(?);
// extern ? func_0802310c(?);
extern void func_08023150(); // Engine Event 0x04 (?)
extern void func_08023164(); // Engine Event 0x05 (?)
// extern ? func_080231c8(?);
// extern ? func_0802327c(?);
// extern ? func_080233b4(?);
extern void mannequin_engine_stop(void); // Game Engine Stop
extern void mannequin_cue_spawn(struct Cue *, struct MannequinFactoryCue *, u32 arg); // Cue - Spawn
extern u32  mannequin_cue_update(struct Cue *, struct MannequinFactoryCue *, u32 runningTime, u32 duration); // Cue - Update
extern void mannequin_cue_despawn(struct Cue *, struct MannequinFactoryCue *); // Cue - Despawn
extern void mannequin_cue_hit(struct Cue *, struct MannequinFactoryCue *, u32 pressed, u32 released); // Cue - Hit
extern void mannequin_cue_barely(struct Cue *, struct MannequinFactoryCue *, u32 pressed, u32 released); // Cue - Barely
extern void mannequin_cue_miss(struct Cue *, struct MannequinFactoryCue *); // Cue - Miss
extern void mannequin_input_event(u32 pressed, u32 released); // Input Event
extern void mannequin_common_beat_animation(void); // Common Event 0 (Beat Animation)
extern void mannequin_common_display_text(void); // Common Event 1 (Display Text)
extern void mannequin_common_init_tutorial(void); // Common Event 2 (Init. Tutorial)
