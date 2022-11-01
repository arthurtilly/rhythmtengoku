#pragma once

#include "global.h"
#include "engines.h"

// Engine Macros/Enums:

// OAM Animations:

// Palettes:

// Sound Effects:

// Engine Data:

// Engine Definition Data:

// Functions - Intro Drumming Scenes:
// extern ? func_080239a0(?); // DRUM INTRO - Engine Event 0x08 (?)
// extern ? func_080239bc(?); // DRUM INTRO - Engine Event 0x09 (?)
// extern ? func_080239ec(?);
// extern ? func_08023a18(?);
// extern ? func_08023bb8(?); // DRUM INTRO - Engine Event 0x0B (?)
// extern ? func_08023bcc(?); // DRUM INTRO - Engine Event 0x0C (?)
// extern ? func_08023bf4(?); // DRUM INTRO - Engine Event 0x0D (?)
// extern ? func_08023c0c(?); // DRUM INTRO - Engine Event 0x0E (?)
// extern ? func_08023c44(?); // DRUM INTRO - Engine Event 0x0F (?)
// extern ? func_08023c58(?); // DRUM INTRO - Engine Event 0x0A (?)
// extern ? func_08023c6c(?); // DRUM INTRO - Cue Spawn (5)
// extern ? func_08023d44(?); // DRUM INTRO - Cue Update (5)
// extern ? func_08023d60(?); // DRUM INTRO - Cue Despawn (5)
// extern ? func_08023d64(?); // DRUM INTRO - Cue Hit (5)
// extern ? func_08023d68(?); // DRUM INTRO - Cue Barely (5)
// extern ? func_08023d6c(?); // DRUM INTRO - Cue Miss (5)
// extern ? func_08023d78(?);
// extern ? func_08023da0(?);
// extern ? func_08023da4(?);
// extern ? func_08023df8(?);
// extern ? func_08023e4c(?);
// extern ? func_08023e50(?);
// extern ? func_08023edc(?);
// extern ? func_08023f68(?);
// extern ? func_08023f6c(?);
// extern ? func_08023ffc(?);
// extern ? func_080240a4(?);
// extern ? func_08024134(?);
// extern ? func_080241c0(?);
// extern ? func_0802424c(?);
// extern ? func_0802428c(?);
// extern ? func_080242cc(?);
// extern ? func_080242f8(?); // DRUM INTRO - Game Engine Init.
// extern ? func_08024978(?); // DRUM INTRO - Engine Event 0x10 (STUB)
// extern ? func_0802497c(?); // DRUM INTRO - Engine Event 0x00 (?)
// extern ? func_080249c0(?); // DRUM INTRO - Engine Event 0x01 (?)
// extern ? func_080249f0(?);
// extern ? func_08024a4c(?); // DRUM INTRO - Engine Event 0x02 (?)
// extern ? func_08024ae4(?); // DRUM INTRO - Engine Event 0x03 (?)
// extern ? func_08024ba0(?); // DRUM INTRO - Engine Event 0x04 (?)
// extern ? func_08024bd0(?);
// extern ? func_08024be8(?); // DRUM INTRO - Engine Event 0x07 (?)
// extern ? func_08024bfc(?);
// extern ? func_08024c2c(?);
// extern ? func_08024cb0(?); // DRUM INTRO - Game Engine Update
// extern ? func_08024d44(?); // DRUM INTRO - Game Engine Stop
// extern ? func_08024d48(?); // DRUM INTRO - Cue Spawn (0-4)
// extern ? func_08024d4c(?); // DRUM INTRO - Cue Update (0-4)
// extern ? func_08024d68(?); // DRUM INTRO - Cue Despawn (0-4)
// extern ? func_08024d6c(?); // DRUM INTRO - Cue Hit (0-4)
// extern ? func_08024da4(?); // DRUM INTRO - Cue Barely (0-4)
// extern ? func_08024ddc(?); // DRUM INTRO - Cue Miss (0-4)
// extern ? func_08024e0c(?); // DRUM INTRO - Input Event
// extern ? func_08024e48(?); // DRUM INTRO - Common Event 0 (Beat Animation)
// extern ? func_08024ecc(?); // DRUM INTRO - Common Event 1 (Display Text)
// extern ? func_08024ed0(?);
// extern ? func_08024ef4(?); // DRUM INTRO - Engine Event 0x05 (?)
// extern ? func_08024f64(?); // DRUM INTRO - Engine Event 0x06 (?)
// extern ? func_08024fb4(?);
// extern ? func_08024fbc(?);
// extern ? func_08024fc4(?);
// extern ? func_08024ff4(?);
// extern ? func_08025020(?);
// extern ? func_08025038(?);
// extern ? func_080251d0(?);
// extern ? func_080251d8(?);
// extern ? func_080251e8(?);
// extern ? func_080251ec(?);
// extern ? func_080251f0(?);
// extern ? func_080251fc(?);
// extern ? func_08025204(?);
// extern ? func_0802520c(?);
// extern ? func_08025214(?);
// extern ? func_08025218(?);
// extern ? func_0802521c(?);
// extern ? func_08025220(?);

// Functions - LIVE:
// extern ? func_08025228(?);
// extern ? func_08025248(?);
// extern ? func_08025460(?);
// extern ? func_08025538(?);
// extern ? func_0802555c(?);
// extern ? func_080255f8(?);
// extern ? func_08025748(?); // DRUM LIVE - Engine Event 0x05 (?)
// extern ? func_0802575c(?);
// extern ? func_080257b8(?);
// extern ? func_08025848(?);
// extern ? func_080258c0(?);
// extern ? func_08025a2c(?); // DRUM LIVE - Engine Event 0x06 (?)
// extern ? func_08025a58(?); // DRUM LIVE - Engine Event 0x07 (?)
// extern ? func_08025a64(?);
// extern ? func_08025a98(?); // DRUM LIVE - Engine Event 0x02 (?)
// extern ? func_08025aa4(?);
// extern ? func_08025abc(?);
// extern ? func_08025ad4(?); // DRUM LIVE - Engine Event 0x03 (?)
// extern ? func_08025ae8(?); // DRUM LIVE - Engine Event 0x04 (?)
// extern ? func_08025afc(?);
// extern ? func_08025b88(?);
// extern ? func_08025bcc(?); // DRUM LIVE - Engine Event 0x09 (?)
// extern ? func_08025be0(?);
// extern ? func_08025bec(?);
// extern ? func_08025c48(?);
// extern ? func_08025c4c(?);
// extern ? func_08025c8c(?);
// extern ? func_08025ccc(?);
// extern ? func_08025cd0(?);
// extern ? func_08025d34(?);
// extern ? func_08025d98(?);
// extern ? func_08025d9c(?);
// extern ? func_08025e00(?);
// extern ? func_08025e74(?);
// extern ? func_08025ed8(?);
// extern ? func_08025f3c(?);
// extern ? func_08025f50(?);
// extern ? func_08025f90(?);
// extern ? func_08025fbc(?);
// extern ? func_08026024(?); // DRUM LIVE - Game Engine Init.
// extern ? func_0802663c(?); // DRUM LIVE - Engine Event 0x0A (?)
// extern ? func_08026640(?);
// extern ? func_080268cc(?); // DRUM LIVE - Engine Event 0x00 (?)
// extern ? func_08026930(?);
// extern ? func_08026968(?); // DRUM LIVE - Engine Event 0x01 (?)
// extern ? func_080269e8(?); // DRUM LIVE - Engine Event 0x08 (?)
// extern ? func_08026a0c(?);
// extern ? func_08026a50(?);
// extern ? func_08026aac(?); // DRUM LIVE - Game Engine Update
// extern ? func_08026b0c(?);
// extern ? func_08026b18(?);
// extern ? func_08026b24(?); // DRUM LIVE - Game Engine Stop
// extern ? func_08026b3c(?);
// extern ? func_08026bc8(?); // DRUM LIVE - Cue Spawn
// extern ? func_08026c1c(?); // DRUM LIVE - Cue Update
// extern ? func_08026c38(?); // DRUM LIVE - Cue Despawn
// extern ? func_08026c3c(?);
// extern ? func_08026c84(?); // DRUM LIVE - Cue Hit
// extern ? func_08026cc4(?); // DRUM LIVE - Cue Barely
// extern ? func_08026d04(?); // DRUM LIVE - Cue Miss
// extern ? func_08026d28(?); // DRUM LIVE - Input Event
// extern ? func_08026d68(?); // DRUM LIVE - Common Event 0 (Beat Animation)
// extern ? func_08026de8(?); // DRUM LIVE - Common Event 1 (Display Text)
// extern ? func_08026dec(?); // DRUM LIVE - Common Event 2 (Set Tutorial Skip Destination)

// Functions - Drum Lessons:
// extern ? func_08026e10(?);
// extern ? func_08026e74(?);
// extern ? func_080271a8(?);
// extern ? func_080271d4(?);
// extern ? func_080271f0(?); // DRUM LESSON - Engine Event 0x12 (?)
// extern ? func_08027304(?);
// extern ? func_08027350(?);
// extern ? func_0802739c(?);
// extern ? func_080273e4(?);
// extern ? func_0802742c(?);
// extern ? func_08027474(?);
// extern ? func_080274d0(?);
// extern ? func_08027518(?);
// extern ? func_08027560(?);
// extern ? func_080275a8(?);
// extern ? func_080275d0(?);
// extern ? func_080275f8(?);
// extern ? func_08027668(?);
// extern ? func_08027728(?); // DRUM LESSON - Engine Event 0x07 (?)
// extern ? func_08027744(?); // DRUM LESSON - Engine Event 0x08 (?)
// extern ? func_08027760(?); // DRUM LESSON - Engine Event 0x09 (?)
// extern ? func_0802777c(?); // DRUM LESSON - Engine Event 0x0A (?)
// extern ? func_080277a0(?); // DRUM LESSON - Engine Event 0x0B (?)
// extern ? func_080277b8(?); // DRUM LESSON - Engine Event 0x0C (?)
// extern ? func_08027888(?); // DRUM LESSON - Engine Event 0x0E (?)
// extern ? func_080278d0(?); // DRUM LESSON - Engine Event 0x0F (?)
// extern ? func_080278e8(?);
// extern ? func_08027948(?);
// extern ? func_08027964(?);
// extern ? func_08027ba0(?); // DRUM LESSON - Engine Event 0x0D (?)
// extern ? func_08027bbc(?); // DRUM LESSON - Engine Event 0x10 (?)
// extern ? func_08027bd8(?); // DRUM LESSON - Engine Event 0x15 (?)
// extern ? func_08027c54(?); // DRUM LESSON - Engine Event 0x16 (?)
// extern ? func_08027c90(?); // DRUM LESSON - Engine Event 0x17 (?)
// extern ? func_08027d08(?);
// extern ? func_08027dfc(?);
// extern ? func_08027f1c(?);
// extern ? func_08027f4c(?);
// extern ? func_08027f70(?); // DRUM LESSON - Engine Event 0x11 (?)
// extern ? func_08027f90(?);
// extern ? func_08027fc8(?);
// extern ? func_08028004(?); // DRUM LESSON - Engine Event 0x14 (?)
// extern ? func_0802818c(?);
// extern ? func_080281c4(?);
// extern ? func_080281e8(?); // DRUM LESSON - Engine Event 0x18 (?)
// extern ? func_080281fc(?); // DRUM LESSON - Engine Event 0x19 (?)
// extern ? func_08028210(?);
// extern ? func_08028254(?);
// extern ? func_0802830c(?); // DRUM LESSON - Engine Event 0x03 (?)
// extern ? func_08028318(?);
// extern ? func_08028330(?);
// extern ? func_080283a0(?); // DRUM LESSON - Engine Event 0x04 (?)
// extern ? func_080283ac(?);
// extern ? func_080283f8(?);
// extern ? func_08028444(?);
// extern ? func_080284a4(?);
// extern ? func_08028504(?);
// extern ? func_08028564(?);
// extern ? func_080285d4(?);
// extern ? func_08028634(?);
// extern ? func_08028694(?);
// extern ? func_080286f4(?);
// extern ? func_0802871c(?);
// extern ? func_08028744(?);
// extern ? func_080287b4(?);
// extern ? func_08028950(?);
// extern ? func_08028954(?);
// extern ? func_08028978(?);
// extern ? func_080289c0(?);
// extern ? func_080289ec(?); // DRUM LESSON - Game Engine Init.
// extern ? func_080290c0(?); // DRUM LESSON - Engine Event 0x1A (?)
// extern ? func_080290c4(?);
// extern ? func_08029178(?); // DRUM LESSON - Engine Event 0x02 (?)
// extern ? func_0802918c(?);
// extern ? func_080291bc(?);
// extern ? func_08029204(?);
// extern ? func_080292e0(?);
// extern ? func_080293b0(?); // DRUM LESSON - Engine Event 0x00 (?)
// extern ? func_080295d4(?); // DRUM LESSON - Engine Event 0x01 (?)
// extern ? func_080296b0(?);
// extern ? func_0802972c(?);
// extern ? func_0802979c(?);
// extern ? func_0802981c(?);
// extern ? func_080298e0(?);
// extern ? func_0802992c(?); // DRUM LESSON - Engine Event 0x05 (?)
// extern ? func_08029988(?);
// extern ? func_08029a1c(?);
// extern ? func_08029b8c(?); // DRUM LESSON - Engine Event 0x06 (?)
// extern ? func_08029ba0(?); // DRUM LESSON - Game Engine Update
// extern ? func_08029cac(?);
// extern ? func_08029cec(?); // DRUM LESSON - Engine Event 0x13 (?)
// extern ? func_08029d20(?); // DRUM LESSON - Game Engine Stop
// extern ? func_08029d40(?); // DRUM LESSON - Cue Spawn
// extern ? func_08029d84(?); // DRUM LESSON - Cue Update
// extern ? func_08029e0c(?); // DRUM LESSON - Cue Despawn
// extern ? func_08029e10(?);
// extern ? func_08029e74(?); // DRUM LESSON - Cue Hit
// extern ? func_08029e90(?); // DRUM LESSON - Cue Barely
// extern ? func_08029eac(?); // DRUM LESSON - Cue Miss
// extern ? func_08029ed8(?); // DRUM LESSON - Input Event
// extern ? func_08029f00(?); // DRUM LESSON - Common Event 0 (Beat Animation)
// extern ? func_08029f04(?); // DRUM LESSON - Common Event 1 (Display Text)
// extern ? func_08029f08(?); // DRUM LESSON - Common Event 2 (Set Tutorial Skip Destination)
