#pragma once

#include "global.h"
#include "engines.h"

// Engine Types:
struct MannequinFactoryInfo {
};

struct MannequinFactoryCue {
};

// Engine Macros/Enums:

// OAM Animations:

// Palettes:

// Sound Effects:

// Engine Data:

// Engine Definition Data:

// Functions:
// extern ? func_08022244(?);
// extern ? func_08022268(?);
// extern ? func_080223ac(?);
// extern ? func_080223d0(?);
// extern ? func_080224a8(?);
// extern ? func_080225bc(?);
// extern ? func_08022614(?);
// extern ? func_080226a0(?);
extern void func_080226d4(); // Engine Event 0 (?)
// extern ? func_08022894(?);
// extern ? func_080228d8(?);
extern void func_080229bc(); // Engine Event 1 (?)
// extern ? func_080229f0(?);
// extern ? func_08022a7c(?);
// extern ? func_08022b0c(?);
extern void func_08022ba0(); // Engine Event 6 (?)
// extern ? func_08022bb4(?);
// extern ? func_08022ca0(?);
// extern ? func_08022ce8(?);
// extern ? func_08022dec(?);
// extern ? func_08022dfc(?);
// extern ? func_08022e2c(?);
extern void func_08022e58(u32); // Game Engine Init.
extern void func_08022efc(); // Engine Event 7 (?)
extern void func_08022f00(); // Engine Event 2 (?)
extern void func_08022f1c(); // Engine Event 3 (?)
// extern ? func_08022f4c(?);
// extern ? func_08022fb8(?);
extern void func_0802303c(void); // Game Engine Update
// extern ? func_0802308c(?);
// extern ? func_080230cc(?);
// extern ? func_0802310c(?);
extern void func_08023150(); // Engine Event 4 (?)
extern void func_08023164(); // Engine Event 5 (?)
// extern ? func_080231c8(?);
// extern ? func_0802327c(?);
// extern ? func_080233b4(?);
extern void func_08023400(void); // Game Engine Stop
extern void func_08023404(struct Cue *, struct MannequinFactoryCue *, u32 arg); // Cue - Spawn
extern u32 func_08023418(struct Cue *, struct MannequinFactoryCue *, u32 runningTime, u32 duration); // Cue - Update
extern void func_08023434(struct Cue *, struct MannequinFactoryCue *); // Cue - Despawn
extern void func_08023438(struct Cue *, struct MannequinFactoryCue *, u32 pressed, u32 released); // Cue - Hit
extern void func_080234f4(struct Cue *, struct MannequinFactoryCue *, u32 pressed, u32 released); // Cue - Barely
extern void func_08023500(struct Cue *, struct MannequinFactoryCue *); // Cue - Missed
extern void func_08023530(u32 pressed, u32 released); // Input Event
extern void func_08023574(void); // Common Event 0 (Beat Animation)
extern void func_08023578(void); // Common Event 1 (Display Text)
extern void func_0802357c(void); // Common Event 2 (Init. Tutorial)
