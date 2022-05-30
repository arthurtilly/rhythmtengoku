#pragma once

#include "global.h"

// Sneaky Spirits

extern void func_0801ee98(u32);     // [func_0801ee98] ENGINE Func_00 - Appear At Position
extern void func_0801ef70(void);    // [func_0801ef70] SUB - Initialise Rain
extern void func_0801f040(void);    // [func_0801f040] SUB - Update Rain
extern void func_0801f17c(void);    // [func_0801f17c] SUB - Update Rain If Not In Slow-Motion
extern void func_0801f194(u32);     // [func_0801f194] SUB - Set Rain { 0 = Normal; 1 = Slow-Motion }
extern void func_0801f30c(u32);     // [func_0801f30c] ENGINE Func_06 - Set Rain (Tutorial) { 0 = Normal; 1 = Slow-Motion }
extern void func_0801f318(u32);     // [func_0801f318] ENGINE Func_07 - Freeze Slow-Motion Rain (Tutorial)
extern void func_0801f328(void);    // [func_0801f328] GFX_LOAD Func_02
extern void func_0801f338(void);    // [func_0801f338] GFX_LOAD Func_01
extern void func_0801f378(void);    // [func_0801f378] GFX_LOAD Func_00
extern void func_0801f3a4(u32);     // [func_0801f3a4] MAIN - Load
extern void func_0801f5bc(void);    // [func_0801f5bc] ENGINE Func_10 - Unknown (STUB, Unused)
extern void func_0801f5c0(u32);     // [func_0801f5c0] ENGINE Func_01 - Next Vertical Position
extern void func_0801f5f4(void);    // [func_0801f5f4] ENGINE Func_02 - Bow Appear
extern void func_0801f638(void);    // [func_0801f638] ENGINE Func_03 - Draw Bow
extern void func_0801f684(u32);     // [func_0801f684] ENGINE Func_04 - Play Wind/Rain SFX
extern void func_0801f6d0(void);    // [func_0801f6d0] SUB - Cross-Fade Music and Wind/Rain SFX
extern void func_0801f71c(char *);  // [func_0801f71c] ENGINE Func_05 - Display Text (Tutorial)
extern void func_0801f76c(u32);     // [func_0801f76c] ENGINE Func_08 - Display Dashing Sneaky Spirit (Tutorial)
extern void func_0801f794(u32);     // [func_0801f794] ENGINE Func_09 - Animate Dashing Sneaky Spirit (Tutorial)
extern void func_0801f7bc(void);    // [func_0801f7bc] MAIN - Loop
extern void func_0801f7cc(void);    // [func_0801f7cc] MAIN - Unload
extern void func_0801f7e8(u32, struct struct_080179f4_sub1 *, u32); // [func_0801f7e8] CUE Spawn - (ARG2 = Disable Taunt)
extern u32  func_0801f7f0(u32, struct struct_080179f4_sub1 *, u32); // [func_0801f7f0] CUE Behaviour
extern void func_0801f80c(u32, struct struct_080179f4_sub1 *, u32); // [func_0801f80c] CUE Despawn (STUB)
extern void func_0801f810(void);    // [func_0801f810] SUB - Revert Slow-Motion Effects
extern void func_0801f8d0(u32, struct struct_080179f4_sub1 *, u32); // [func_0801f8d0] CUE Hit
extern void func_0801fa4c(u32, struct struct_080179f4_sub1 *, u32); // [func_0801fa4c] CUE Barely
extern void func_0801fb14(u32, struct struct_080179f4_sub1 *, u32); // [func_0801fb14] CUE Miss
extern void func_0801fbb0(void);    // [func_0801fbb0] MAIN - Input Event
extern void func_0801fc3c(void);    // [func_0801fc3c] GRAPHICAL Func_00 - Unknown (STUB)
extern void func_0801fc40(void);    // [func_0801fc40] GRAPHICAL Func_01 - Unknown (STUB)

// Spaceball

// extern ? func_0801fc44(?);
// extern ? func_0801fcb0(?);
// extern ? func_0801fd1c(?);
// extern ? func_0801fd70(?);
// extern ? func_0801fdc4(?);
// extern ? func_0801fe6c(?);
// extern ? func_0801ff60(?);
// extern ? func_0801ff70(?);
// extern ? func_0801ffa0(?);
// extern ? func_0801ffcc(?);
// extern ? func_080201a0(?);
// extern ? func_080201a4(?);
// extern ? func_080201cc(?);
// extern ? func_08020200(?);
// extern ? func_08020238(?);
// extern ? func_0802026c(?);
// extern ? func_08020290(?);
// extern ? func_080202a4(?);
// extern ? func_080202f0(?);
// extern ? func_08020308(?);
// extern ? func_0802030c(?);
// extern ? func_080203fc(?);
// extern ? func_080204b8(?);
// extern ? func_08020500(?);
// extern ? func_08020564(?);
// extern ? func_080205a0(?);
// extern ? func_080205ac(?);
// extern ? func_080205e8(?);
// extern ? func_08020644(?);
// extern ? func_08020660(?);
// extern ? func_08020698(?);
// extern ? func_0802069c(?);

// Bon Odori

extern u32* func_080206a0(u32);
extern void func_080206c0(void);
extern u32* func_0802075c(u32, u32);  // Returns donpan animation
extern void func_08020778(u32, u32); // Potentially sets donpan animation?
extern void func_080207d0(u32);
extern void func_080207ec(u32);
extern void func_080207f8(u32);
extern void func_0802080c(u32);
extern void func_08020834(void);
extern void func_0802085c(void);
extern void func_08020880(void);
extern void func_080208c0(void);
extern void func_080208ec(u32);
extern void func_08020a48(void);
extern void func_08020a4c(u32, s32, u32);
extern void func_08020be4(u8);
extern void func_08020bf4(s32);
extern void func_08020c0c(s32);
extern void func_08020c24(s32);
extern void func_08020c3c(s32);
extern void func_08020c4c(u32);
extern void func_08020c8c(u32);
extern void func_08020d20(u32);
extern void func_08020da0(u32);
extern void func_08020e1c(void);
extern void func_08020e50(void);
extern void func_08020e90(void);
extern void func_08020ed4(void);
extern void func_08020ee8(void);
extern void func_08020f48(void);
extern void func_08020f8c(void);
extern void func_08020f98(u32, struct struct_080179f4_sub *, u32);
extern u8 func_08020fb0(u32, struct struct_080179f4_sub *, u32);
extern void func_08020fcc(u32, struct struct_080179f4_sub *);
extern void func_08020fd0(u32, struct struct_080179f4_sub *);
extern void func_08020fe8(u32, struct struct_080179f4_sub *);
extern void func_0802100c(u32, struct struct_080179f4_sub *);
extern void func_08021034(void);
extern void func_08021084(void);
extern void func_08021188(void);
extern void func_0802118c(void);

// Karate Man

extern void func_08021190(void);
extern void func_080211a4(void);
extern void func_080211e4(void);
extern void func_08021210(u32);
extern void func_0802139c(u32, u32);
extern void func_080213d4(u32);
extern void func_080213e4(void);
extern void func_08021408(void);
extern void func_08021424(void);
extern void func_08021440(char *);
extern void func_08021458(void);
extern void func_080214a0(u32);
extern void func_080214d4(u32);
extern void func_08021524(void);
extern void func_08021544(u8);
extern void func_08021554(void);
extern void func_080215cc(void);
extern void func_0802160c(struct struct_080179f4 *);
extern void func_08021644(struct struct_080179f4 *, struct KarateManCue *, u32);
extern void func_08021740(struct KarateManCue *);
extern void func_080217ec(struct KarateManCue *);
extern void func_08021818(struct KarateManCue *);
extern u32 func_08021888(u32, struct KarateManCue *, u32, u32);
extern void func_08021974(u32, struct KarateManCue *);
extern void func_080219a8(void);
extern void func_08021a0c(void);
extern void func_08021a60(struct struct_080179f4 *, struct KarateManCue *);
extern void func_08021d38(struct struct_080179f4 *, struct KarateManCue *);
extern void func_08021dcc(void);
extern void func_08021dd8(struct KarateManJoe *);
extern void func_08021e40(struct KarateManJoe *);
extern void func_08021e58(struct KarateManJoe *);
extern void func_08021e88(void);
extern void func_08021f04(void);
extern void func_08022010(u32);
extern void func_08022050(void);
extern void func_080220c4(void);
extern void func_08022114(void);
extern void func_08022170(void);
extern void func_080221cc(void);
extern void func_0802221c(u32);

// Mannequin Factory

// extern ? func_08022244(?);
// extern ? func_08022268(?);
// extern ? func_080223ac(?);
// extern ? func_080223d0(?);
// extern ? func_080224a8(?);
// extern ? func_080225bc(?);
// extern ? func_08022614(?);
// extern ? func_080226a0(?);
// extern ? func_080226d4(?);
// extern ? func_08022894(?);
// extern ? func_080228d8(?);
// extern ? func_080229bc(?);
// extern ? func_080229f0(?);
// extern ? func_08022a7c(?);
// extern ? func_08022b0c(?);
// extern ? func_08022ba0(?);
// extern ? func_08022bb4(?);
// extern ? func_08022ca0(?);
// extern ? func_08022ce8(?);
// extern ? func_08022dec(?);
// extern ? func_08022dfc(?);
// extern ? func_08022e2c(?);
// extern ? func_08022e58(?);
// extern ? func_08022efc(?);
// extern ? func_08022f00(?);
// extern ? func_08022f1c(?);
// extern ? func_08022f4c(?);
// extern ? func_08022fb8(?);
// extern ? func_0802303c(?);
// extern ? func_0802308c(?);
// extern ? func_080230cc(?);
// extern ? func_0802310c(?);
// extern ? func_08023150(?);
// extern ? func_08023164(?);
// extern ? func_080231c8(?);
// extern ? func_0802327c(?);
// extern ? func_080233b4(?);
// extern ? func_08023400(?);
// extern ? func_08023404(?);
// extern ? func_08023418(?);
// extern ? func_08023434(?);
// extern ? func_08023438(?);
// extern ? func_080234f4(?);
// extern ? func_08023500(?);
// extern ? func_08023530(?);
// extern ? func_08023574(?);
// extern ? func_08023578(?);
// extern ? func_0802357c(?);

// Staff Credit

// extern ? func_08023580(?);
// extern ? func_080235a8(?);
// extern ? func_080235d8(?);
// extern ? func_08023604(?);
// extern ? func_08023690(?);
// extern ? func_08023694(?);
// extern ? func_080236e4(?);
// extern ? func_0802372c(?);
// extern ? func_080237ec(?);
// extern ? func_080237f8(?);
// extern ? func_08023808(?);
// extern ? func_08023898(?);
// extern ? func_080238ac(?);
// extern ? func_080238c0(?);
// extern ? func_0802393c(?);
// extern ? func_0802394c(?);
// extern ? func_08023960(?);
// extern ? func_08023964(?);
// extern ? func_08023980(?);
// extern ? func_08023984(?);
// extern ? func_08023988(?);
// extern ? func_0802398c(?);
// extern ? func_08023990(?);
// extern ? func_08023994(?);
// extern ? func_08023998(?);
// extern ? func_0802399c(?);

// Drumming Lessons

// extern ? func_080239a0(?);
// extern ? func_080239bc(?);
// extern ? func_080239ec(?);
// extern ? func_08023a18(?);
// extern ? func_08023bb8(?);
// extern ? func_08023bcc(?);
// extern ? func_08023bf4(?);
// extern ? func_08023c0c(?);
// extern ? func_08023c44(?);
// extern ? func_08023c58(?);
// extern ? func_08023c6c(?);
// extern ? func_08023d44(?);
// extern ? func_08023d60(?);
// extern ? func_08023d64(?);
// extern ? func_08023d68(?);
// extern ? func_08023d6c(?);
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
// extern ? func_080242f8(?);
// extern ? func_08024978(?);
// extern ? func_0802497c(?);
// extern ? func_080249c0(?);
// extern ? func_080249f0(?);
// extern ? func_08024a4c(?);
// extern ? func_08024ae4(?);
// extern ? func_08024ba0(?);
// extern ? func_08024bd0(?);
// extern ? func_08024be8(?);
// extern ? func_08024bfc(?);
// extern ? func_08024c2c(?);
// extern ? func_08024cb0(?);
// extern ? func_08024d44(?);
// extern ? func_08024d48(?);
// extern ? func_08024d4c(?);
// extern ? func_08024d68(?);
// extern ? func_08024d6c(?);
// extern ? func_08024da4(?);
// extern ? func_08024ddc(?);
// extern ? func_08024e0c(?);
// extern ? func_08024e48(?);
// extern ? func_08024ecc(?);
// extern ? func_08024ed0(?);
// extern ? func_08024ef4(?);
// extern ? func_08024f64(?);
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
// extern ? func_08025228(?);
// extern ? func_08025248(?);
// extern ? func_08025460(?);
// extern ? func_08025538(?);
// extern ? func_0802555c(?);
// extern ? func_080255f8(?);
// extern ? func_08025748(?);
// extern ? func_0802575c(?);
// extern ? func_080257b8(?);
// extern ? func_08025848(?);
// extern ? func_080258c0(?);
// extern ? func_08025a2c(?);
// extern ? func_08025a58(?);
// extern ? func_08025a64(?);
// extern ? func_08025a98(?);
// extern ? func_08025aa4(?);
// extern ? func_08025abc(?);
// extern ? func_08025ad4(?);
// extern ? func_08025ae8(?);
// extern ? func_08025afc(?);
// extern ? func_08025b88(?);
// extern ? func_08025bcc(?);
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
// extern ? func_08026024(?);
// extern ? func_0802663c(?);
// extern ? func_08026640(?);
// extern ? func_080268cc(?);
// extern ? func_08026930(?);
// extern ? func_08026968(?);
// extern ? func_080269e8(?);
// extern ? func_08026a0c(?);
// extern ? func_08026a50(?);
// extern ? func_08026aac(?);
// extern ? func_08026b0c(?);
// extern ? func_08026b18(?);
// extern ? func_08026b24(?);
// extern ? func_08026b3c(?);
// extern ? func_08026bc8(?);
// extern ? func_08026c1c(?);
// extern ? func_08026c38(?);
// extern ? func_08026c3c(?);
// extern ? func_08026c84(?);
// extern ? func_08026cc4(?);
// extern ? func_08026d04(?);
// extern ? func_08026d28(?);
// extern ? func_08026d68(?);
// extern ? func_08026de8(?);
// extern ? func_08026dec(?);
// extern ? func_08026e10(?);
// extern ? func_08026e74(?);
// extern ? func_080271a8(?);
// extern ? func_080271d4(?);
// extern ? func_080271f0(?);
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
// extern ? func_08027728(?);
// extern ? func_08027744(?);
// extern ? func_08027760(?);
// extern ? func_0802777c(?);
// extern ? func_080277a0(?);
// extern ? func_080277b8(?);
// extern ? func_08027888(?);
// extern ? func_080278d0(?);
// extern ? func_080278e8(?);
// extern ? func_08027948(?);
// extern ? func_08027964(?);
// extern ? func_08027ba0(?);
// extern ? func_08027bbc(?);
// extern ? func_08027bd8(?);
// extern ? func_08027c54(?);
// extern ? func_08027c90(?);
// extern ? func_08027d08(?);
// extern ? func_08027dfc(?);
// extern ? func_08027f1c(?);
// extern ? func_08027f4c(?);
// extern ? func_08027f70(?);
// extern ? func_08027f90(?);
// extern ? func_08027fc8(?);
// extern ? func_08028004(?);
// extern ? func_0802818c(?);
// extern ? func_080281c4(?);
// extern ? func_080281e8(?);
// extern ? func_080281fc(?);
// extern ? func_08028210(?);
// extern ? func_08028254(?);
// extern ? func_0802830c(?);
// extern ? func_08028318(?);
// extern ? func_08028330(?);
// extern ? func_080283a0(?);
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
// extern ? func_080289ec(?);
// extern ? func_080290c0(?);
// extern ? func_080290c4(?);
// extern ? func_08029178(?);
// extern ? func_0802918c(?);
// extern ? func_080291bc(?);
// extern ? func_08029204(?);
// extern ? func_080292e0(?);
// extern ? func_080293b0(?);
// extern ? func_080295d4(?);
// extern ? func_080296b0(?);
// extern ? func_0802972c(?);
// extern ? func_0802979c(?);
// extern ? func_0802981c(?);
// extern ? func_080298e0(?);
// extern ? func_0802992c(?);
// extern ? func_08029988(?);
// extern ? func_08029a1c(?);
// extern ? func_08029b8c(?);
// extern ? func_08029ba0(?);
// extern ? func_08029cac(?);
// extern ? func_08029cec(?);
// extern ? func_08029d20(?);
// extern ? func_08029d40(?);
// extern ? func_08029d84(?);
// extern ? func_08029e0c(?);
// extern ? func_08029e10(?);
// extern ? func_08029e74(?);
// extern ? func_08029e90(?);
// extern ? func_08029eac(?);
// extern ? func_08029ed8(?);
// extern ? func_08029f00(?);
// extern ? func_08029f04(?);
// extern ? func_08029f08(?);

// Night Walk

// extern ? func_08029f0c(?);
// extern ? func_08029f68(?);
// extern ? func_08029fe8(?);
// extern ? func_0802a154(?);
// extern ? func_0802a224(?);
// extern ? func_0802a26c(?);
// extern ? func_0802a2a4(?);
// extern ? func_0802a300(?);
// extern ? func_0802a32c(?);
// extern ? func_0802a38c(?);
// extern ? func_0802a48c(?);
// extern ? func_0802a500(?);
// extern ? func_0802a564(?);
// extern ? func_0802a674(?);
// extern ? func_0802a730(?);
// extern ? func_0802a78c(?);
// extern ? func_0802a840(?);
// extern ? func_0802a85c(?);
// extern ? func_0802a868(?);
// extern ? func_0802a8f0(?);
// extern ? func_0802a90c(?);
// extern ? func_0802a954(?);
// extern ? func_0802a970(?);
// extern ? func_0802a994(?);
// extern ? func_0802a9b4(?);
// extern ? func_0802aa4c(?);
// extern ? func_0802aa84(?);
// extern ? func_0802aac0(?);
// extern ? func_0802ab34(?);
// extern ? func_0802ab44(?);
// extern ? func_0802ab5c(?);
// extern ? func_0802ab7c(?);
// extern ? func_0802ac44(?);
// extern ? func_0802ac50(?);
// extern ? func_0802ac8c(?);
// extern ? func_0802ad20(?);
// extern ? func_0802ad2c(?);
// extern ? func_0802ad38(?);
// extern ? func_0802ade0(?);
// extern ? func_0802af68(?);
// extern ? func_0802af7c(?);
// extern ? func_0802afb0(?);
// extern ? func_0802b03c(?);
// extern ? func_0802b050(?);
// extern ? func_0802b064(?);
// extern ? func_0802b098(?);
// extern ? func_0802b0a8(?);
// extern ? func_0802b0d8(?);
// extern ? func_0802b104(?);
// extern ? func_0802b1fc(?);
// extern ? func_0802b200(?);
// extern ? func_0802b214(?);
// extern ? func_0802b230(?);
// extern ? func_0802b244(?);
// extern ? func_0802b258(?);
// extern ? func_0802b274(?);
// extern ? func_0802b288(?);
// extern ? func_0802b28c(?);
// extern ? func_0802b2b4(?);
// extern ? func_0802b2c8(?);
// extern ? func_0802b49c(?);
// extern ? func_0802b648(?);
// extern ? func_0802b6fc(?);
// extern ? func_0802b730(?);
// extern ? func_0802b9dc(?);
// extern ? func_0802bafc(?);
// extern ? func_0802bb98(?);
// extern ? func_0802bbf4(?);
// extern ? func_0802bbf8(?);
// extern ? func_0802bbfc(?);
// extern ? func_0802bc0c(?);

// Showtime

// extern ? func_0802bc4c(?);
// extern ? func_0802bc78(?);
// extern ? func_0802bd40(?);
// extern ? func_0802bd44(?);
// extern ? func_0802be10(?);
// extern ? func_0802be24(?);
// extern ? func_0802be40(?);
// extern ? func_0802be58(?);
// extern ? func_0802be74(?);
// extern ? func_0802be78(?);
// extern ? func_0802be90(?);
// extern ? func_0802beac(?);
// extern ? func_0802beb0(?);
// extern ? func_0802bec8(?);
// extern ? func_0802bee4(?);
// extern ? func_0802bee8(?);
// extern ? func_0802bf00(?);
// extern ? func_0802bf1c(?);
// extern ? func_0802bf20(?);
// extern ? func_0802bf38(?);
// extern ? func_0802bf54(?);
// extern ? func_0802bf58(?);
// extern ? func_0802bf88(?);
// extern ? func_0802c078(?);
// extern ? func_0802c084(?);
// extern ? func_0802c0c8(?);
// extern ? func_0802c150(?);
// extern ? func_0802c1cc(?);
// extern ? func_0802c1f0(?);
// extern ? func_0802c23c(?);
// extern ? func_0802c334(?);
// extern ? func_0802c36c(?);
// extern ? func_0802c3d0(?);
// extern ? func_0802c40c(?);
// extern ? func_0802c4b0(?);
// extern ? func_0802c4c0(?);
// extern ? func_0802c4f4(?);
// extern ? func_0802c528(?);
// extern ? func_0802c55c(?);
// extern ? func_0802c5c8(?);
// extern ? func_0802ce70(?);
// extern ? func_0802cf8c(?);
// extern ? func_0802cfa4(?);
// extern ? func_0802cfc8(?);
// extern ? func_0802cfe0(?);
// extern ? func_0802d068(?);
// extern ? func_0802d080(?);
// extern ? func_0802d0b8(?);
// extern ? func_0802d0dc(?);
// extern ? func_0802d104(?);
// extern ? func_0802d250(?);
// extern ? func_0802d2bc(?);
// extern ? func_0802d38c(?);
// extern ? func_0802d394(?);
// extern ? func_0802d43c(?);
// extern ? func_0802d81c(?);
// extern ? func_0802d8bc(?);
// extern ? func_0802d918(?);
// extern ? func_0802d96c(?);
// extern ? func_0802d9fc(?);
// extern ? func_0802da84(?);
// extern ? func_0802db08(?);
// extern ? func_0802dc54(?);

// Bouncy Road

// extern ? func_0802dd08(?);
// extern ? func_0802dd84(?);
// extern ? func_0802de60(?);
// extern ? func_0802deb0(?);
// extern ? func_0802debc(?);
// extern ? func_0802df08(?);
// extern ? func_0802df44(?);
// extern ? func_0802df98(?);
// extern ? func_0802dfa4(?);
// extern ? func_0802dfc8(?);
// extern ? func_0802e024(?);
// extern ? func_0802e078(?);
// extern ? func_0802e208(?);
// extern ? func_0802e234(?);
// extern ? func_0802e248(?);
// extern ? func_0802e25c(?);
// extern ? func_0802e270(?);
// extern ? func_0802e2f0(?);
// extern ? func_0802e3a4(?);
// extern ? func_0802e3b8(?);
// extern ? func_0802e3bc(?);
// extern ? func_0802e3dc(?);
// extern ? func_0802e41c(?);
// extern ? func_0802e448(?);
// extern ? func_0802e538(?);
// extern ? func_0802e53c(?);
// extern ? func_0802e590(?);
// extern ? func_0802e5a0(?);
// extern ? func_0802e5fc(?);
// extern ? func_0802e640(?);
// extern ? func_0802e644(?);
// extern ? func_0802e650(?);
// extern ? func_0802e6e0(?);
// extern ? func_0802e6ec(?);
// extern ? func_0802e718(?);
// extern ? func_0802e748(?);
// extern ? func_0802e74c(?);

// Rhythm Tweezers

#define RT_VEGETABLE_BG_MAP_L *(u32 *)(VRAMBase + 0xF000) // VRAM BG Map for vegetable textures (left).
#define RT_VEGETABLE_BG_MAP_R *(u32 *)(VRAMBase + 0xF800) // VRAM BG Map for vegetable textures (right).

extern void func_0802e750(void);        // [func_0802e750] SUB - Initialise Vegetable Face
extern void func_0802e828(u32);         // [func_0802e828] ENGINE Func_02 - Scroll to New Vegetable
extern void func_0802e89c(void);        // [func_0802e89c] ENGINE Func_04 - Play Cash Register SFX
extern void func_0802e8ac(void);        // [func_0802e8ac] SUB - Update Vegetable Face - Scrolling To New Vegetable
extern void func_0802e96c(u32);         // [func_0802e96c] ENGINE Func_03 - Define New Vegetable Type
extern void func_0802e97c_stub(void);   // [func_0802e97c] ENGINE Func_06 - Unknown (STUB)
extern void func_0802e980(void);        // [func_0802e980] SUB - Update Vegetable Face
extern void func_0802e99c(void);        // [func_0802e99c] SUB - Initialise Falling Hairs
extern void func_0802ea20(void);        // [func_0802ea20] SUB - Update Falling Hairs
extern void func_0802ea74(u32);         // [func_0802ea74] SUB - Create Falling Hair
extern void func_0802eaf8(void);        // [func_0802eaf8] SUB - Initialise Tweezers
extern void func_0802eb7c(void);        // [func_0802eb7c] ENGINE Func_00 - Spawn Tweezers
extern void func_0802eba0(void);        // [func_0802eba0] SUB - Update Tweezers - Position
extern void func_0802ebdc(void);        // [func_0802ebdc] SUB - Update Tweezers - Vertical Scroll
extern void func_0802ebf8(void);        // [func_0802ebf8] SUB - Update Tweezers
extern void func_0802ec50(void);        // [func_0802ec50] GFX_LOAD Func_02
extern void func_0802ec60(void);        // [func_0802ec60] GFX_LOAD Func_01
extern void func_0802eca0(void);        // [func_0802eca0] GFX_LOAD Func_00
extern void func_0802eccc(u8);          // [func_0802eccc] MAIN - Load
extern void func_0802edc4_stub(void);   // [func_0802edc4] ENGINE Func_09 - Unknown (STUB, Unused)
extern void func_0802edc8(void);        // [func_0802edc8] SUB - Update Mask
extern void func_0802ee00(void);        // [func_0802ee00] ENGINE Func_07 - Show Mask
extern void func_0802ee10(void);        // [func_0802ee10] ENGINE Func_08 - Hide Mask
extern void func_0802ee24(void);        // [func_0802ee24] MAIN - Loop
extern void func_0802ee40_stub(void);   // [func_0802ee40] MAIN - Unload (STUB)
extern void func_0802ee44(void);        // [func_0802ee44] ENGINE Func_01 - Reset Hair Position Cycle
extern void func_0802ee6c(void);        // [func_0802ee6c] SUB - Update Hair Position Cycle
extern void func_0802ee7c(u32, struct struct_080179f4_sub1 *, u32, u32);    // [func_0802ee7c] CUE Spawn - Short Hair, Long Hair
extern u32  func_0802ef54(u32, struct struct_080179f4_sub1 *, u32, u32);    // [func_0802ef54] CUE Behaviour - Short Hair
extern u32  func_0802ef68(u32, struct struct_080179f4_sub1 *, u32, u32);    // [func_0802ef68] CUE Behaviour - Long Hair
extern void func_0802f164(u32, struct struct_080179f4_sub1 *, u32, u32);    // [func_0802f164] CUE Despawn - Short Hair, Long Hair
extern void func_0802f170(u32, struct struct_080179f4_sub1 *, u32, u32);    // [func_0802f170] CUE Hit - Short Hair
extern void func_0802f21c(u32, struct struct_080179f4_sub1 *, u32, u32);    // [func_0802f21c] CUE Hit, CUE Barely - Long Hair
extern void func_0802f2a0(u32, struct struct_080179f4_sub1 *, u32, u32);    // [func_0802f2a0] CUE Barely - Short Hair
extern void func_0802f330(u32, struct struct_080179f4_sub1 *, u32, u32);    // [func_0802f330] CUE Miss - Short Hair, Long Hair
extern void func_0802f33c(void);        // [func_0802f33c] MAIN - Input Event
extern void func_0802f378_stub(void);   // [func_0802f378] GRAPHICAL Func_00 - Unknown (STUB, Unused)
extern void func_0802f37c_stub(void);   // [func_0802f37c] GRAPHICAL Func_01 - Unknown (STUB, Unused)
extern void func_0802f380(void);        // [func_0802f380] ENGINE Func_05 - Unknown (Unused)

// Fireworks

// extern ? func_0802f3a4(?);
// extern ? func_0802f3b4(?);
// extern ? func_0802f3f4(?);
// extern ? func_0802f420(?);
// extern ? func_0802f5b8(?);
// extern ? func_0802f5f0(?);
// extern ? func_0802f650(?);
// extern ? func_0802f664(?);
// extern ? func_0802f74c(?);
// extern ? func_0802fc38(?);
// extern ? func_0802fc6c(?);
// extern ? func_0802fc70(?);
// extern ? func_0802ff70(?);
// extern ? func_08030114(?);
// extern ? func_0803012c(?);
// extern ? func_080301d0(?);
// extern ? func_08030288(?);
// extern ? func_08030294(?);
// extern ? func_08030298(?);
// extern ? func_0803029c(?);
// extern ? func_0803031c(?);

// Clappy Trio

// extern ? func_08030384(?);
// extern ? func_080303a4(?);
// extern ? func_0803050c(?);
// extern ? func_0803051c(?);
// extern ? func_0803055c(?);
// extern ? func_08030588(?);
// extern ? func_0803068c(?);
// extern ? func_0803074c(?);
// extern ? func_0803080c(?);
// extern ? func_0803088c(?);
// extern ? func_08030898(?);
// extern ? func_080308a4(?);
// extern ? func_080308b8(?);
// extern ? func_080308bc(?);
// extern ? func_080308d4(?);
// extern ? func_080308f0(?);
// extern ? func_080308f4(?);
// extern ? func_080309a8(?);
// extern ? func_080309f4(?);
// extern ? func_08030a10(?);
// extern ? func_08030a60(?);
// extern ? func_08030bd8(?);
// extern ? func_08030bf0(?);
// extern ? func_08030c14(?);

// Samurai Slice

// extern ? func_08030c48(?);
// extern ? func_08030c58(?);
// extern ? func_08030c88(?);
// extern ? func_08030cb4(?);
// extern ? func_08030e84(?);
// extern ? func_08030f00(?);
// extern ? func_08030f04(?);
// extern ? func_08030f34(?);
// extern ? func_08030f54(?);
// extern ? func_0803113c(?);
// extern ? func_0803118c(?);
// extern ? func_080311b4(?);
// extern ? func_080311c8(?);
// extern ? func_080311d4(?);
// extern ? func_080312b4(?);
// extern ? func_080312b8(?);
// extern ? func_08031588(?);
// extern ? func_080316e4(?);
// extern ? func_080316ec(?);
// extern ? func_08031770(?);
// extern ? func_080317c8(?);
// extern ? func_080317f4(?);
// extern ? func_0803193c(?);
// extern ? func_080319b0(?);
// extern ? func_080319b4(?);
// extern ? func_08031a6c(?);
// extern ? func_08031bc0(?);
// extern ? func_08031c54(?);
// extern ? func_08031c68(?);
// extern ? func_08031c94(?);
// extern ? func_08032070(?);
// extern ? func_080320c8(?);
// extern ? func_080321c8(?);
// extern ? func_08032228(?);
// extern ? func_08032298(?);
// extern ? func_08032330(?);
// extern ? func_08032430(?);
// extern ? func_08032478(?);
// extern ? func_080324a4(?);
// extern ? func_080324b8(?);
// extern ? func_08032510(?);
// extern ? func_08032708(?);
// extern ? func_080327a4(?);

// Power Calligraphy

// extern ? func_080327d4(?);
// extern ? func_080328b8(?);
// extern ? func_08032a04(?);
// extern ? func_08032a64(?);
// extern ? func_08032bf8(?);
// extern ? func_08032c8c(?);
// extern ? func_08032d34(?);
// extern ? func_08032ed0(?);
// extern ? func_08032ee0(?);
// extern ? func_08032f10(?);
// extern ? func_08032f3c(?);
// extern ? func_08033128(?);
// extern ? func_0803312c(?);
// extern ? func_0803316c(?);
// extern ? func_080331c0(?);
// extern ? func_080331dc(?);
// extern ? func_08033370(?);
// extern ? func_080333dc(?);
// extern ? func_080333e8(?);
// extern ? func_08033468(?);
// extern ? func_080334d4(?);
// extern ? func_080334ec(?);
// extern ? func_08033558(?);
// extern ? func_080335e8(?);
// extern ? func_08033644(?);
// extern ? func_0803369c(?);
// extern ? func_080336a0(?);
// extern ? func_08033790(?);
// extern ? func_080337a4(?);
// extern ? func_080337c0(?);
// extern ? func_080337c4(?);
// extern ? func_080337d4(?);
// extern ? func_080337fc(?);
// extern ? func_0803382c(?);
// extern ? func_08033830(?);
// extern ? func_08033834(?);
// extern ? func_080338fc(?);

// Rhythm Test

// extern ? func_08033960(?);
// extern ? func_0803397c(?);
// extern ? func_080339bc(?);
// extern ? func_08033b24(?);
// extern ? func_08033b34(?);
// extern ? func_08033b48(?);
// extern ? func_08033b9c(?);
// extern ? func_08033c2c(?);
// extern ? func_08033c50(?);
// extern ? func_08033c80(?);
// extern ? func_08033cac(?);
// extern ? func_08033dfc(?);
// extern ? func_08033e00(?);
// extern ? func_08033f08(?);
// extern ? func_08033f28(?);
// extern ? func_08033f80(?);
// extern ? func_08034004(?);
// extern ? func_08034014(?);
// extern ? func_08034018(?);
// extern ? func_0803401c(?);
// extern ? func_08034038(?);
// extern ? func_0803403c(?);
// extern ? func_08034068(?);
// extern ? func_08034094(?);
// extern ? func_080340a4(?);
// extern ? func_080340b8(?);
// extern ? func_080340cc(?);
// extern ? func_080340f8(?);
// extern ? func_080340fc(?);

// Marching Orders

// extern ? func_08034100(?);
// extern ? func_08034130(?);
// extern ? func_08034140(?);
// extern ? func_08034180(?);
// extern ? func_080341ac(?);
// extern ? func_080343b4(?);
// extern ? func_080343b8(?);
// extern ? func_08034544(?);
// extern ? func_080345cc(?);
// extern ? func_080346b0(?);
// extern ? func_080346e0(?);
// extern ? func_080347c0(?);
// extern ? func_0803481c(?);
// extern ? func_0803482c(?);
// extern ? func_08034850(?);
// extern ? func_08034860(?);
// extern ? func_08034880(?);
// extern ? func_08034884(?);
// extern ? func_08034888(?);
// extern ? func_080348a4(?);
// extern ? func_080348a8(?);
// extern ? func_0803492c(?);
// extern ? func_0803493c(?);
// extern ? func_0803494c(?);
// extern ? func_08034988(?);
// extern ? func_080349ac(?);
// extern ? func_080349d0(?);
// extern ? func_080349f4(?);
// extern ? func_08034a4c(?);
// extern ? func_08034a50(?);
// extern ? func_08034ae0(?);
// extern ? func_08034ae4(?);

// Mr. Upbeat

// extern ? func_08034b14(?);
// extern ? func_08034bf4(?);
// extern ? func_08034d6c(?);
// extern ? func_08034db0(?);
// extern ? func_08034dd0(?);
// extern ? func_08034e40(?);
// extern ? func_08034e84(?);
// extern ? func_08034eb4(?);
// extern ? func_08034f18(?);
// extern ? func_08034f64(?);
// extern ? func_08034ff4(?);
// extern ? func_08035094(?);
// extern ? func_08035168(?);
// extern ? func_0803516c(?);
// extern ? func_080351e8(?);
// extern ? func_080351f8(?);
// extern ? func_08035228(?);
// extern ? func_08035254(?);
// extern ? func_08035310(?);
// extern ? func_08035314(?);
// extern ? func_08035320(?);
// extern ? func_08035330(?);
// extern ? func_08035334(?);
// extern ? func_08035338(?);
// extern ? func_08035354(?);
// extern ? func_08035358(?);
// extern ? func_0803538c(?);
// extern ? func_080353bc(?);
// extern ? func_080353ec(?);
// extern ? func_08035404(?);
// extern ? func_08035410(?);
// extern ? func_08035414(?);
// extern ? func_08035418(?);

// Metronome

// extern ? func_0803541c(?);
// extern ? func_0803542c(?);
// extern ? func_0803545c(?);
// extern ? func_08035488(?);
// extern ? func_08035780(?);
// extern ? func_080357c4(?);
// extern ? func_080358b0(?);
// extern ? func_080358d8(?);
// extern ? func_080358f8(?);
// extern ? func_080358fc(?);
// extern ? func_080359e8(?);
// extern ? func_08035ab0(?);
// extern ? func_08035b3c(?);
// extern ? func_08035b40(?);
// extern ? func_08035b44(?);
// extern ? func_08035b60(?);
// extern ? func_08035b64(?);
// extern ? func_08035bc0(?);
// extern ? func_08035bf4(?);
// extern ? func_08035c04(?);
// extern ? func_08035c2c(?);
// extern ? func_08035c30(?);
// extern ? func_08035cf8(?);

// Polyrhythm

// extern ? func_08035d1c(?);
// extern ? func_08035d2c(?);
// extern ? func_08035d6c(?);
// extern ? func_08035d98(?);
// extern ? func_08035e84(?);
// extern ? func_08035e88(?);
// extern ? func_08035e94(?);
// extern ? func_08035e98(?);
// extern ? func_08035eac(?);
// extern ? func_08035ecc(?);
// extern ? func_08035ed0(?);
// extern ? func_08035f08(?);
// extern ? func_08035f40(?);
// extern ? func_08035f4c(?);
// extern ? func_08035f74(?);
// extern ? func_08035f78(?);
// extern ? func_08035f7c(?);
// extern ? func_080360a8(?);
// extern ? func_080360f8(?);
// extern ? func_080361c0(?);
// extern ? func_08036250(?);
// extern ? func_080362e4(?);
// extern ? func_0803638c(?);
// extern ? func_08036428(?);
// extern ? func_0803646c(?);
// extern ? func_0803647c(?);
// extern ? func_0803648c(?);
// extern ? func_080364d4(?);
// extern ? func_080364f4(?);
// extern ? func_0803656c(?);
// extern ? func_080365c8(?);
// extern ? func_080365f8(?);
// extern ? func_08036604(?);
// extern ? func_0803661c(?);
// extern ? func_08036630(?);
// extern ? func_08036758(?);
// extern ? func_08036848(?);
// extern ? func_08036988(?);
// extern ? func_0803698c(?);
// extern ? func_08036aa4(?);
// extern ? func_08036b3c(?);
// extern ? func_08036b48(?);
// extern ? func_08036b94(?);
// extern ? func_08036be0(?);

// Concert Hall

// extern ? func_08036bec(?);
// extern ? func_08036bfc(?);
// extern ? func_08036c2c(?);
// extern ? func_08036c58(?);
// extern ? func_08036e0c(?);
// extern ? func_08036e10(?);
// extern ? func_08036e28(?);
// extern ? func_08036ec8(?);
// extern ? func_08036f18(?);
// extern ? func_08036f94(?);
// extern ? func_08036fac(?);
// extern ? func_08036ff4(?);
// extern ? func_0803703c(?);
// extern ? func_08037058(?);
// extern ? func_0803705c(?);
// extern ? func_08037060(?);
// extern ? func_0803707c(?);
// extern ? func_08037080(?);
// extern ? func_08037084(?);
// extern ? func_08037088(?);
// extern ? func_0803708c(?);
// extern ? func_08037090(?);
// extern ? func_08037094(?);
// extern ? func_08037098(?);

// Quiz Show

// extern ? func_0803709c(?);
// extern ? func_08037178(?);
// extern ? func_08037280(?);
// extern ? func_080372c0(?);
// extern ? func_080372e8(?);
// extern ? func_08037378(?);
// extern ? func_080373ac(?);
// extern ? func_080373dc(?);
// extern ? func_080373f4(?);
// extern ? func_08037404(?);
// extern ? func_08037434(?);
// extern ? func_08037460(?);
// extern ? func_08037858(?);
// extern ? func_0803785c(?);
// extern ? func_080378d8(?);
// extern ? func_08037a64(?);
// extern ? func_08037a78(?);
// extern ? func_08037be0(?);
// extern ? func_08037bf4(?);
// extern ? func_08037cb8(?);
// extern ? func_08037cd0(?);
// extern ? func_08037cf4(?);
// extern ? func_08037d00(?);
// extern ? func_08037d0c(?);
// extern ? func_08037d1c(?);
// extern ? func_08037d2c(?);
// extern ? func_08037d6c(?);
// extern ? func_08037d90(?);
// extern ? func_08037dc8(?);
// extern ? func_08037e24(?);
// extern ? func_08037e4c(?);
// extern ? func_08037e50(?);
// extern ? func_08037e54(?);
// extern ? func_08037e70(?);
// extern ? func_08037e74(?);
// extern ? func_08037e78(?);
// extern ? func_08037e7c(?);
// extern ? func_08037e80(?);
// extern ? func_08037f58(?);
// extern ? func_08037f5c(?);
// extern ? func_08037f60(?);

// Bunny Hop

// extern ? func_08037f84(?);
// extern ? func_08037f94(?);
// extern ? func_08037fd4(?);
// extern ? func_08038000(?);
// extern ? func_08038244(?);
// extern ? func_08038248(?);
// extern ? func_080382ac(?);
// extern ? func_080382b0(?);
// extern ? func_080382f4(?);
// extern ? func_08038314(?);
// extern ? func_0803833c(?);
// extern ? func_08038350(?);
// extern ? func_08038384(?);
// extern ? func_080383f0(?);
// extern ? func_08038414(?);
// extern ? func_08038418(?);
// extern ? func_0803841c(?);
// extern ? func_08038438(?);
// extern ? func_0803843c(?);
// extern ? func_080384b8(?);
// extern ? func_08038598(?);
// extern ? func_080385f4(?);
// extern ? func_080386e0(?);
// extern ? func_080387c4(?);
// extern ? func_080388a8(?);
// extern ? func_080388ac(?);
// extern ? func_080388b0(?);
// extern ? func_080388b4(?);
// extern ? func_080388d8(?);
// extern ? func_0803899c(?);
// extern ? func_08038a84(?);
// extern ? func_08038b98(?);
// extern ? func_08038ce0(?);
// extern ? func_08038d18(?);
// extern ? func_08038d54(?);
// extern ? func_08038ef8(?);
// extern ? func_08038f2c(?);
// extern ? func_08038fbc(?);
// extern ? func_08039128(?);
// extern ? func_08039164(?);
// extern ? func_0803934c(?);
// extern ? func_08039388(?);
// extern ? func_08039404(?);
// extern ? func_08039440(?);
// extern ? func_080394a4(?);
// extern ? func_080395dc(?);
// extern ? func_0803960c(?);
// extern ? func_08039698(?);
// extern ? func_08039738(?);
// extern ? func_0803978c(?);
// extern ? func_080397f8(?);

// Rap Men

extern u32 *func_080398b4(u32);
extern void func_080398d4(void);
extern void func_080398e4(void);
extern void func_08039924(void);
extern void func_08039950(u32);
extern void func_08039a40(void);
extern void func_08039a40(void);
extern void func_08039a98(u32);
extern void func_08039a98(u32 arg0);
extern void func_08039ad4(void);
extern void func_08039aa4(void);
extern void func_08039ad8(u32, struct struct_080179f4_sub *, u32);
extern u32 func_08039b2c(u32, u32, u32);
extern void func_08039b48(void);
extern void func_08039b4c(u32, struct struct_080179f4_sub *);
extern void func_08039c00(void);
extern void func_08039c60(void);
extern void func_08039cb8(void);
extern void func_08039d10(void);
extern void func_08039d7c(char *);
extern void func_08039df8(void);

// Rat Race

// extern ? func_08039dfc(?);
// extern ? func_08039e0c(?);
// extern ? func_08039e3c(?);
// extern ? func_08039e68(?);
// extern ? func_0803a154(?);
// extern ? func_0803a158(?);
// extern ? func_0803a164(?);
// extern ? func_0803a198(?);
// extern ? func_0803a1d4(?);
// extern ? func_0803a1e4(?);
// extern ? func_0803a1f8(?);
// extern ? func_0803a204(?);
// extern ? func_0803a230(?);
// extern ? func_0803a2a8(?);
// extern ? func_0803a350(?);
// extern ? func_0803a3b8(?);
// extern ? func_0803a3c4(?);
// extern ? func_0803a41c(?);
// extern ? func_0803a434(?);
// extern ? func_0803a458(?);
// extern ? func_0803a47c(?);
// extern ? func_0803a490(?);
// extern ? func_0803a4a4(?);
// extern ? func_0803a4a8(?);
// extern ? func_0803a4f8(?);
// extern ? func_0803a564(?);
// extern ? func_0803a5a4(?);
// extern ? func_0803a5bc(?);
// extern ? func_0803a5c0(?);
// extern ? func_0803a5dc(?);
// extern ? func_0803a5e0(?);
// extern ? func_0803a610(?);
// extern ? func_0803a640(?);
// extern ? func_0803a644(?);
// extern ? func_0803a648(?);
// extern ? func_0803a64c(?);
// extern ? func_0803a650(?);
// extern ? func_0803a654(?);
// extern ? func_0803a678(?);
// extern ? func_0803a798(?);
// extern ? func_0803a8e4(?);
// extern ? func_0803aa58(?);
// extern ? func_0803aa9c(?);
// extern ? func_0803aba4(?);
// extern ? func_0803ac98(?);
// extern ? func_0803ad50(?);
// extern ? func_0803ad60(?);
// extern ? func_0803aef4(?);
// extern ? func_0803b034(?);
// extern ? func_0803b1ac(?);
// extern ? func_0803b1e8(?);
// extern ? func_0803b230(?);
// extern ? func_0803b258(?);
// extern ? func_0803b37c(?);
// extern ? func_0803b924(?);
// extern ? func_0803b9fc(?);
// extern ? func_0803baa0(?);
// extern ? func_0803baf8(?);
// extern ? func_0803bb2c(?);
// extern ? func_0803bbd8(?);
// extern ? func_0803bc08(?);
// extern ? func_0803bc40(?);
// extern ? func_0803bc98(?);
// extern ? func_0803bd0c(?);
// extern ? func_0803bd58(?);

// Ninja Bodyguard

// extern ? func_0803bd88(?);
// extern ? func_0803bda8(?);
// extern ? func_0803be04(?);
// extern ? func_0803be44(?);
// extern ? func_0803be88(?);
// extern ? func_0803bec4(?);
// extern ? func_0803bf14(?);
// extern ? func_0803bf74(?);
// extern ? func_0803c034(?);
// extern ? func_0803c08c(?);
// extern ? func_0803c190(?);
// extern ? func_0803c20c(?);
// extern ? func_0803c260(?);
// extern ? func_0803c28c(?);
// extern ? func_0803c2b8(?);
// extern ? func_0803c2f4(?);
// extern ? func_0803c3c4(?);
// extern ? func_0803c400(?);
// extern ? func_0803c43c(?);
// extern ? func_0803c52c(?);
// extern ? func_0803c5c0(?);
// extern ? func_0803c5cc(?);
// extern ? func_0803c5f8(?);
// extern ? func_0803c638(?);
// extern ? func_0803c6fc(?);
// extern ? func_0803c710(?);
// extern ? func_0803c834(?);
// extern ? func_0803c8c4(?);
// extern ? func_0803c960(?);
// extern ? func_0803c964(?);
// extern ? func_0803c9f4(?);
// extern ? func_0803c9f8(?);
// extern ? func_0803ca8c(?);
// extern ? func_0803cad0(?);
// extern ? func_0803cb0c(?);
// extern ? func_0803cb60(?);
// extern ? func_0803cb7c(?);
// extern ? func_0803cbbc(?);
// extern ? func_0803cbe8(?);
// extern ? func_0803ccb0(?);
// extern ? func_0803ccb4(?);
// extern ? func_0803cce0(?);
// extern ? func_0803ccf4(?);
// extern ? func_0803cd04(?);
// extern ? func_0803cd08(?);
// extern ? func_0803cd1c(?);
// extern ? func_0803cd38(?);
// extern ? func_0803cd3c(?);
// extern ? func_0803ce24(?);
// extern ? func_0803cf00(?);
// extern ? func_0803cf60(?);
// extern ? func_0803d010(?);
// extern ? func_0803d014(?);

// Space Dance

// extern ? func_0803d018(?);
// extern ? func_0803d038(?);
// extern ? func_0803d048(?);
// extern ? func_0803d088(?);
// extern ? func_0803d0b4(?);
// extern ? func_0803d2bc(?);
// extern ? func_0803d2c0(?);
// extern ? func_0803d388(?);
// extern ? func_0803d3fc(?);
// extern ? func_0803d408(?);
// extern ? func_0803d414(?);
// extern ? func_0803d460(?);
// extern ? func_0803d478(?);
// extern ? func_0803d4bc(?);
// extern ? func_0803d4e0(?);
// extern ? func_0803d4f0(?);
// extern ? func_0803d588(?);
// extern ? func_0803d598(?);
// extern ? func_0803d5bc(?);
// extern ? func_0803d5c0(?);
// extern ? func_0803d5c4(?);
// extern ? func_0803d5e0(?);
// extern ? func_0803d5e4(?);
// extern ? func_0803d5f4(?);
// extern ? func_0803d670(?);
// extern ? func_0803d6c0(?);
// extern ? func_0803d70c(?);
// extern ? func_0803d71c(?);
// extern ? func_0803d82c(?);
// extern ? func_0803d83c(?);
// extern ? func_0803d914(?);
// extern ? func_0803d9a0(?);
// extern ? func_0803da1c(?);

// Tap Trial

// extern ? func_0803da20(?);
// extern ? func_0803da40(?);
// extern ? func_0803db30(?);
// extern ? func_0803dd08(?);
// extern ? func_0803dd18(?);
// extern ? func_0803dd58(?);
// extern ? func_0803dd84(?);
// extern ? func_0803dda4(?);
// extern ? func_0803e088(?);
// extern ? func_0803e08c(?);
// extern ? func_0803e0bc(?);
// extern ? func_0803e0f8(?);
// extern ? func_0803e10c(?);
// extern ? func_0803e160(?);
// extern ? func_0803e1a4(?);
// extern ? func_0803e208(?);
// extern ? func_0803e258(?);
// extern ? func_0803e2e0(?);
// extern ? func_0803e2f4(?);
// extern ? func_0803e310(?);
// extern ? func_0803e324(?);
// extern ? func_0803e338(?);
// extern ? func_0803e354(?);
// extern ? func_0803e368(?);
// extern ? func_0803e420(?);
// extern ? func_0803e448(?);
// extern ? func_0803e44c(?);
// extern ? func_0803e48c(?);
// extern ? func_0803e4a4(?);
// extern ? func_0803e4bc(?);
// extern ? func_0803e4e0(?);
// extern ? func_0803e4fc(?);
// extern ? func_0803e50c(?);
// extern ? func_0803e510(?);
// extern ? func_0803e52c(?);
// extern ? func_0803e530(?);
// extern ? func_0803e54c(?);
// extern ? func_0803e580(?);
// extern ? func_0803e644(?);
// extern ? func_0803e6d0(?);
// extern ? func_0803e710(?);
// extern ? func_0803e7a8(?);

// Toss Boys

// extern ? func_0803e824(?);
// extern ? func_0803e884(?);
// extern ? func_0803e8b4(?);
// extern ? func_0803e908(?);
// extern ? func_0803e960(?);
// extern ? func_0803e990(?);
// extern ? func_0803e9b0(?);
// extern ? func_0803ea08(?);
// extern ? func_0803ea1c(?);
// extern ? func_0803ea2c(?);
// extern ? func_0803ea6c(?);
// extern ? func_0803ea98(?);
// extern ? func_0803ee14(?);
// extern ? func_0803ee18(?);
// extern ? func_0803ee58(?);
// extern ? func_0803eea0(?);
// extern ? func_0803ef64(?);
// extern ? func_0803f038(?);
// extern ? func_0803f0b8(?);
// extern ? func_0803f12c(?);
// extern ? func_0803f144(?);
// extern ? func_0803f1b8(?);
// extern ? func_0803f1bc(?);
// extern ? func_0803f1f4(?);
// extern ? func_0803f390(?);
// extern ? func_0803f3b0(?);
// extern ? func_0803f400(?);
// extern ? func_0803f4ec(?);
// extern ? func_0803f578(?);
// extern ? func_0803f598(?);
// extern ? func_0803f59c(?);
// extern ? func_0803f7b4(?);
// extern ? func_0803f7c0(?);
// extern ? func_0803f7cc(?);
// extern ? func_0803f9a0(?);
// extern ? func_0803fa64(?);
// extern ? func_0803fb00(?);
// extern ? func_0803fb14(?);
// extern ? func_0803fb68(?);
// extern ? func_0803fbd8(?);
// extern ? func_0803fc8c(?);
// extern ? func_0803fc90(?);

// Tram & Pauline

// extern ? func_0803fc94(?);
// extern ? func_0803fca4(?);
// extern ? func_0803fce4(?);
// extern ? func_0803fd10(?);
// extern ? func_08040064(?);
// extern ? func_080400d0(?);
// extern ? func_0804016c(?);
// extern ? func_08040314(?);
// extern ? func_08040434(?);
// extern ? func_080404c4(?);
// extern ? func_08040718(?);
// extern ? func_080409cc(?);
// extern ? func_08040a18(?);
// extern ? func_08040a1c(?);
// extern ? func_08040a20(?);
// extern ? func_08040a80(?);
// extern ? func_08040a84(?);
// extern ? func_08040b04(?);
// extern ? func_08040b14(?);
// extern ? func_08040b20(?);
// extern ? func_08040b24(?);
// extern ? func_08040b58(?);
// extern ? func_08040bd4(?);

// Mechanical Horse

// extern ? func_08040c2c(?);
// extern ? func_08040c58(?);
// extern ? func_08040cfc(?);
// extern ? func_08040d10(?);
// extern ? func_08040d90(?);
// extern ? func_08040dd8(?);
// extern ? func_08040e80(?);
// extern ? func_08040eb0(?);
// extern ? func_08040f00(?);
// extern ? func_08040f10(?);
// extern ? func_08040f40(?);
// extern ? func_08040f6c(?);
// extern ? func_08041444(?);
// extern ? func_080415c0(?);
// extern ? func_080416cc(?);
// extern ? func_08041730(?);
// extern ? func_08041744(?);
// extern ? func_080417ac(?);
// extern ? func_0804188c(?);
// extern ? func_08041940(?);
// extern ? func_08041970(?);
// extern ? func_08041c98(?);
// extern ? func_08041ddc(?);
// extern ? func_08041f80(?);
// extern ? func_08042020(?);
// extern ? func_080420c0(?);
// extern ? func_0804231c(?);
// extern ? func_08042438(?);
// extern ? func_0804249c(?);
// extern ? func_080424f0(?);
// extern ? func_08042504(?);
// extern ? func_08042548(?);
// extern ? func_08042718(?);
// extern ? func_08042754(?);
// extern ? func_08042758(?);
// extern ? func_080427b0(?);
// extern ? func_080427e8(?);
// extern ? func_080427ec(?);
// extern ? func_08042820(?);
// extern ? func_0804282c(?);
// extern ? func_0804283c(?);
// extern ? func_0804285c(?);
// extern ? func_08042860(?);

// Sick Beats

// extern ? func_08042864(?);
// extern ? func_08042934(?);
// extern ? func_0804299c(?);
// extern ? func_080429e8(?);
// extern ? func_08042b30(?);
// extern ? func_08042b58(?);
// extern ? func_08042b88(?);
// extern ? func_08042c84(?);
// extern ? func_08042cec(?);
// extern ? func_08042d4c(?);
// extern ? func_08042d74(?);
// extern ? func_08042de8(?);
// extern ? func_08042e80(?);
// extern ? func_08042ea8(?);
// extern ? func_08042ecc(?);
// extern ? func_08042f44(?);
// extern ? func_08042f58(?);
// extern ? func_08042f6c(?);
// extern ? func_08043064(?);
// extern ? func_08043124(?);
// extern ? func_0804317c(?);
// extern ? func_080431c4(?);
// extern ? func_080432d0(?);
// extern ? func_080432d8(?);
// extern ? func_0804337c(?);
// extern ? func_0804338c(?);
// extern ? func_080433bc(?);
// extern ? func_080433e8(?);
// extern ? func_08043530(?);
// extern ? func_08043534(?);
// extern ? func_0804358c(?);
// extern ? func_080435e8(?);
// extern ? func_08043634(?);
// extern ? func_08043648(?);
// extern ? func_080436a4(?);
// extern ? func_080436a8(?);
// extern ? func_080436e4(?);
// extern ? func_080438c8(?);
// extern ? func_08043a20(?);
// extern ? func_08043a2c(?);
// extern ? func_08043a38(?);
// extern ? func_08043d98(?);
// extern ? func_08043df0(?);
// extern ? func_08043e2c(?);
// extern ? func_08043e78(?);
// extern ? func_08043f3c(?);
// extern ? func_08044010(?);

// Machines

// extern ? func_08044014(?);
// extern ? func_08044074(?);
// extern ? func_080441cc(?);
// extern ? func_08044208(?);
// extern ? func_08044228(?);
// extern ? func_08044248(?);
// extern ? func_08044268(?);
// extern ? func_08044320(?);
// extern ? func_080443c0(?);
// extern ? func_0804442c(?);
// extern ? func_080444b4(?);
// extern ? func_080444c4(?);
// extern ? func_08044504(?);
// extern ? func_08044530(?);
// extern ? func_0804472c(?);
// extern ? func_08044730(?);
// extern ? func_0804475c(?);
// extern ? func_080447f4(?);
// extern ? func_08044810(?);
// extern ? func_0804482c(?);
// extern ? func_08044960(?);
// extern ? func_08044964(?);
// extern ? func_08044968(?);
// extern ? func_08044984(?);
// extern ? func_08044988(?);
// extern ? func_0804498c(?);
// extern ? func_08044990(?);
// extern ? func_08044994(?);
// extern ? func_08044998(?);
// extern ? func_0804499c(?);
// extern ? func_080449a0(?);

// Wizard's Waltz

extern void func_080449a4(void);                // [func_080449a4] GFX_LOAD Func_02
extern void func_080449b4(void);                // [func_080449b4] GFX_LOAD Func_01
extern void func_080449e4(void);                // [func_080449e4] GFX_LOAD Func_00
extern void func_08044a10(u32);                 // [func_08044a10] MAIN - Load
extern void func_08044b80(u32);                 // [func_08044b80] ENGINE Func_00 - Set Rotation Interval
extern void func_08044ba8(struct ScaledEntity *, s32, s32, u32);    // [func_08044ba8] SUB - Update Entity Position
extern void func_08044c04(void);                // [func_08044c04] MAIN - Loop
extern void func_08044e60(u32);                 // [func_08044e60] ENGINE Func_01 - Set Tutorial Flag
extern void func_08044e74_stub(void);           // [func_08044e74] MAIN - Unload (STUB)
extern void func_08044e78(u32, struct struct_080179f4_sub *, u32);  // [func_08044e78] CUE Spawn
extern u32  func_08044f94(u32, struct struct_080179f4_sub *, u32);  // [func_08044f94] CUE Behaviour
extern void func_08044fc0(u32, struct struct_080179f4_sub *, u32);  // [func_08044fc0] CUE Despawn
extern void func_08044fcc(u32, struct struct_080179f4_sub *, u32);  // [func_08044fcc] CUE Hit
extern void func_0804503c(u32, struct struct_080179f4_sub *, u32);  // [func_0804503c] CUE Barely
extern void func_080450d0(u32, struct struct_080179f4_sub *, u32);  // [func_080450d0] CUE Miss
extern void func_080450dc_stub(void);           // [func_080450dc] MAIN - Input Event (STUB)
extern void func_080450e0_stub(void);           // [func_080450e0] GRAPHICAL Func_00 - Unknown (STUB, Unused)
extern void func_080450e4_stub(void);           // [func_080450e4] GRAPHICAL Func_01 - Unknown (STUB, Unused)
extern void func_080450e8(u32);                 // [func_080450e8] GRAPHICAL Func_02 - Unknown (Unused?)

// Prologue: Sneaky Spirits

extern void func_0804510c(void);    // [func_0804510c] GFX_LOAD Func_02
extern void func_0804511c(void);    // [func_0804511c] GFX_LOAD Func_01
extern void func_0804514c(void);    // [func_0804514c] GFX_LOAD Func_00
extern void func_0804517c(u32);     // [func_0804517c] MAIN - Load
extern void func_080451d8(void);    // [func_080451d8] ENGINE Func_00   (STUB)
extern void func_080451dc(void);    // [func_080451dc] MAIN - Loop      (STUB)
extern void func_080451e0(void);    // [func_080451e0] MAIN - Unload    (STUB)
extern void func_080451e4(u32);     // [func_080451e4] Event 0 - Set Animation Frame (Text)

// Prologue: Spaceball

extern void func_08045208(void);    // [func_08045208] GFX_LOAD Func_02
extern void func_08045218(void);    // [func_08045218] GFX_LOAD Func_01
extern void func_08045248(void);    // [func_08045248] GFX_LOAD Func_00
extern void func_08045278(u32);     // [func_08045278] MAIN - Load
extern void func_080452d4(void);    // [func_080452d4] ENGINE Func_00   (STUB)
extern void func_080452d8(void);    // [func_080452d8] MAIN - Loop      (STUB)
extern void func_080452dc(void);    // [func_080452dc] MAIN - Unload    (STUB)
extern void func_080452e0(u32);     // [func_080452e0] Event 0 - Set Animation Frame (Text)

// Prologue: The Bon Odori

extern void func_08045304(void);    // [func_08045304] GFX_LOAD Func_02
extern void func_08045314(void);    // [func_08045314] GFX_LOAD Func_01
extern void func_08045344(void);    // [func_08045344] GFX_LOAD Func_00
extern void func_08045374(u32);     // [func_08045374] MAIN - Load
extern void func_080453d0(void);    // [func_080453d0] ENGINE Func_00   (STUB)
extern void func_080453d4(void);    // [func_080453d4] MAIN - Loop      (STUB)
extern void func_080453d8(void);    // [func_080453d8] MAIN - Unload    (STUB)
extern void func_080453dc(void);    // [func_080453dc] Event 0 - Play Animation (Text)

// Prologue: Bon Dance

extern void func_08045408(void);    // [func_08045408] GFX_LOAD Func_02
extern void func_08045418(void);    // [func_08045418] GFX_LOAD Func_01
extern void func_08045448(void);    // [func_08045448] GFX_LOAD Func_00
extern void func_08045478(u32);     // [func_08045478] MAIN - Load
extern void func_080454d4(void);    // [func_080454d4] ENGINE Func_00   (STUB)
extern void func_080454d8(void);    // [func_080454d8] MAIN - Loop      (STUB)
extern void func_080454dc(void);    // [func_080454dc] MAIN - Unload    (STUB)
extern void func_080454e0(void);    // [func_080454e0] Event 0 - Play Animation (Text)

// Prologue: Karate Man

extern void func_0804550c(void);    // [func_0804550c] GFX_LOAD Func_02
extern void func_0804551c(void);    // [func_0804551c] GFX_LOAD Func_01
extern void func_0804554c(void);    // [func_0804554c] GFX_LOAD Func_00
extern void func_0804557c(u32);     // [func_0804557c] MAIN - LOAD
extern void func_080455f8(void);    // [func_080455f8] ENGINE Func_00   (STUB)
extern void func_080455fc(void);    // [func_080455fc] MAIN - Loop      (STUB)
extern void func_08045600(void);    // [func_08045600] MAIN - Unload    (STUB)
extern void func_08045604(u32);     // [func_08045604] Event 0 - Set Animation Frame (Text)
extern void func_08045628(void);    // [func_08045628] Event 1 - Play Animation (Kick)

// Prologue: Cosmic Dance

extern void func_08045664(void);    // [func_08045664] GFX_LOAD Func_02
extern void func_08045674(void);    // [func_08045674] GFX_LOAD Func_01
extern void func_080456a4(void);    // [func_080456a4] GFX_LOAD Func_00
extern void func_080456d4(u32);     // [func_080456d4] MAIN - Load
extern void func_08045730(void);    // [func_08045730] ENGINE Func_00   (STUB)
extern void func_08045734(void);    // [func_08045734] MAIN - Loop      (STUB)
extern void func_08045738(void);    // [func_08045738] MAIN - Unload    (STUB)
extern void func_0804573c(void);    // [func_0804573c] Event 0 - Show Dancers

// Prologue: Night Walk

extern void func_080457b4(void);    // [func_080457b4] GFX_LOAD Func_02
extern void func_080457c4(void);    // [func_080457c4] GFX_LOAD Func_01
extern void func_080457f4(void);    // [func_080457f4] GFX_LOAD Func_00
extern void func_08045824(u32);     // [func_08045824] MAIN - Load
extern void func_080458e0(void);    // [func_080458e0] ENGINE Func_00   (STUB)
extern void func_080458e4(void);    // [func_080458e4] MAIN - Loop      (STUB)
extern void func_080458e8(void);    // [func_080458e8] MAIN - Unload    (STUB)
extern void func_080458ec(u32);     // [func_080458ec] Event 0 - Play Animation (Play-yan); Event 1 - Play Animation (Text)

// Prologue: Showtime

extern void func_08045944(void);    // [func_08045944] GFX_LOAD Func_02
extern void func_08045954(void);    // [func_08045954] GFX_LOAD Func_01
extern void func_08045984(void);    // [func_08045984] GFX_LOAD Func_00
extern void func_080459b4(u32);     // [func_080459b4] MAIN - Load
extern void func_08045a44(void);    // [func_08045a44] ENGINE Func_00   (STUB)
extern void func_08045a48(void);    // [func_08045a48] MAIN - Loop      (STUB)
extern void func_08045a4c(void);    // [func_08045a4c] MAIN - Unload    (STUB)
extern void func_08045a50(void);    // [func_08045a50] Event 0 - Play Animation (Text), Play Animation (Penguin)

// Prologue: Bouncy Road

extern void func_08045a90(void);    // [func_08045a90] GFX_LOAD Func_02
extern void func_08045aa0(void);    // [func_08045aa0] GFX_LOAD Func_01
extern void func_08045ad0(void);    // [func_08045ad0] GFX_LOAD Func_00
extern void func_08045b00(u32);     // [func_08045b00] MAIN - Load
extern void func_08045b88(void);    // [func_08045b88] ENGINE Func_00   (STUB)
extern void func_08045b8c(void);    // [func_08045b8c] MAIN - Loop      (STUB)
extern void func_08045b90(void);    // [func_08045b90] MAIN - Unload    (STUB)
extern void func_08045b94(u32);     // [func_08045b94] Event 0 - Play Animation (Bouncers); Event 1 - Play Animation (Text)

// Prologue: Rhythm Tweezers

extern void func_08045bec(void);    // [func_08045bec] GFX_LOAD Func_02
extern void func_08045bfc(void);    // [func_08045bfc] GFX_LOAD Func_01
extern void func_08045c2c(void);    // [func_08045c2c] GFX_LOAD Func_00
extern void func_08045c5c(u32);     // [func_08045c5c] MAIN - Load
extern void func_08045cb8(void);    // [func_08045cb8] ENGINE Func_00   (STUB)
extern void func_08045cbc(void);    // [func_08045cbc] MAIN - Loop      (STUB)
extern void func_08045cc0(void);    // [func_08045cc0] MAIN - Unload    (STUB)
extern void func_08045cc4(void);    // [func_08045cc4] Event 0 - Play Animation (Text)

// Prologue: Fireworks

extern void func_08045cf0(void);    // [func_08045cf0] GFX_LOAD Func_02
extern void func_08045d00(void);    // [func_08045d00] GFX_LOAD Func_01
extern void func_08045d30(void);    // [func_08045d30] GFX_LOAD Func_00
extern void func_08045d60(u32);     // [func_08045d60] MAIN - Load
extern void func_08045dbc(void);    // [func_08045dbc] ENGINE Func_00   (STUB)
extern void func_08045dc0(void);    // [func_08045dc0] MAIN - Loop      (STUB)
extern void func_08045dc4(void);    // [func_08045dc4] MAIN - Unload    (STUB)
extern void func_08045dc8(u32);     // [func_08045dc8] Event 0 - Set Animation Frame (Text)

// Prologue: The Clappy Trio

extern void func_08045dec(void);    // [func_08045dec] GFX_LOAD Func_02
extern void func_08045dfc(void);    // [func_08045dfc] GFX_LOAD Func_01
extern void func_08045e2c(void);    // [func_08045e2c] GFX_LOAD Func_00
extern void func_08045e5c(u32);     // [func_08045e5c] MAIN - Load
extern void func_08045eb8(void);    // [func_08045eb8] ENGINE Func_00   (STUB)
extern void func_08045ebc(void);    // [func_08045ebc] MAIN - Loop      (STUB)
extern void func_08045ec0(void);    // [func_08045ec0] MAIN - Unload    (STUB)
extern void func_08045ec4(u32);     // [func_08045ec4] Event 0 - Set Animation Frame (Text)

// Prologue: The Snappy Trio

extern void func_08045ee8(void);    // [func_08045ee8] GFX_LOAD Func_02
extern void func_08045ef8(void);    // [func_08045ef8] GFX_LOAD Func_01
extern void func_08045f28(void);    // [func_08045f28] GFX_LOAD Func_00
extern void func_08045f58(u32);     // [func_08045f58] MAIN - Load
extern void func_08045fb4(void);    // [func_08045fb4] ENGINE Func_00   (STUB)
extern void func_08045fb8(void);    // [func_08045fb8] MAIN - Loop      (STUB)
extern void func_08045fbc(void);    // [func_08045fbc] MAIN - Unload    (STUB)
extern void func_08045fc0(u32);     // [func_08045fc0] Event 0 - Set Animation Frame (Text)

// Prologue: Samurai Slice

extern void func_08045fe4(void);    // [func_08045fe4] GFX_LOAD Func_02
extern void func_08045ff4(void);    // [func_08045ff4] GFX_LOAD Func_01
extern void func_08046024(void);    // [func_08046024] GFX_LOAD Func_00
extern void func_08046054(u32);     // [func_08046054] MAIN - Load
extern void func_080460c8(void);    // [func_080460c8] ENGINE Func_00   (STUB)
extern void func_080460cc(void);    // [func_080460cc] MAIN - Loop      (STUB)
extern void func_080460d0(void);    // [func_080460d0] MAIN - Unload    (STUB)
extern void func_080460d4(u32);     // [func_080460d4] Event 0 - Set Animation Frame (Text)

// Prologue: Power Calligraphy

extern void func_080460f8(void);    // [func_080460f8] GFX_LOAD Func_02
extern void func_08046108(void);    // [func_08046108] GFX_LOAD Func_01
extern void func_08046138(void);    // [func_08046138] GFX_LOAD Func_00
extern void func_08046168(u32);     // [func_08046168] MAIN - Load
extern void func_080461c4(void);    // [func_080461c4] ENGINE Func_00   (STUB)
extern void func_080461c8(void);    // [func_080461c8] MAIN - Loop      (STUB)
extern void func_080461cc(void);    // [func_080461cc] MAIN - Unload    (STUB)
extern void func_080461d0(u32);     // [func_080461d0] Event 0 - Set Animation Frame (Text)
extern void func_080461f4(void);    // [func_080461f4] Event 1 - HAI

// Prologue: Marching Orders

extern void func_08046234(void);    // [func_08046234] GFX_LOAD Func_02
extern void func_08046244(void);    // [func_08046244] GFX_LOAD Func_01
extern void func_08046274(void);    // [func_08046274] GFX_LOAD Func_00
extern void func_080462a4(u32);     // [func_080462a4] MAIN - Load
extern void func_08046300(void);    // [func_08046300] ENGINE Func_00   (STUB)
extern void func_08046304(void);    // [func_08046304] MAIN - Loop      (STUB)
extern void func_08046308(void);    // [func_08046308] MAIN - Unload    (STUB)
extern void func_0804630c(u32);     // [func_0804630c] Event 0 - Set Animation Frame (Text)

// Prologue: Marching Orders 2

extern void func_08046330(void);    // [func_08046330] GFX_LOAD Func_02
extern void func_08046340(void);    // [func_08046340] GFX_LOAD Func_01
extern void func_08046370(void);    // [func_08046370] GFX_LOAD Func_00
extern void func_080463a0(u32);     // [func_080463a0] MAIN - Load
extern void func_080463fc(void);    // [func_080463fc] ENGINE Func_00   (STUB)
extern void func_08046400(void);    // [func_08046400] MAIN - Loop      (STUB)
extern void func_08046404(void);    // [func_08046404] MAIN - Unload    (STUB)
extern void func_08046408(u32);     // [func_08046408] Event 0 - Set Animation Frame (Text)

// Prologue: Polyrhythm

extern void func_0804642c(void);    // [func_0804642c] GFX_LOAD Func_02
extern void func_0804643c(void);    // [func_0804643c] GFX_LOAD Func_01
extern void func_0804646c(void);    // [func_0804646c] GFX_LOAD Func_00
extern void func_0804649c(u32);     // [func_0804649c] MAIN - Load
extern void func_080464f8(void);    // [func_080464f8] ENGINE Func_00   (STUB)
extern void func_080464fc(void);    // [func_080464fc] MAIN - Loop      (STUB)
extern void func_08046500(void);    // [func_08046500] MAIN - Unload    (STUB)
extern void func_08046504(u32);     // [func_08046504] Event 0 - Set Animation Frame (Text)

// Prologue: Quiz Show

extern void func_08046528(void);    // [func_08046528] GFX_LOAD Func_02
extern void func_08046538(void);    // [func_08046538] GFX_LOAD Func_01
extern void func_08046568(void);    // [func_08046568] GFX_LOAD Func_00
extern void func_08046598(u32);     // [func_08046598] MAIN - Load
extern void func_080465f8(void);    // [func_080465f8] ENGINE Func_00   (STUB)
extern void func_080465fc(void);    // [func_080465fc] MAIN - Loop      (STUB)
extern void func_08046600(void);    // [func_08046600] MAIN - Unload    (STUB)
extern void func_08046604(u32);     // [func_08046604] Event 0 - Set Animation Frame (Text)

// Prologue: Remix 1

extern void func_08046628(void);    // [func_08046628] GFX_LOAD Func_02
extern void func_08046638(void);    // [func_08046638] GFX_LOAD Func_01
extern void func_08046668(void);    // [func_08046668] GFX_LOAD Func_00
extern void func_08046698(u32);     // [func_08046698] MAIN - Load
extern void func_080466f4(void);    // [func_080466f4] ENGINE Func_00   (STUB)
extern void func_080466f8(void);    // [func_080466f8] MAIN - Loop      (STUB)
extern void func_080466fc(void);    // [func_080466fc] MAIN - Unload    (STUB)
extern void func_08046700(u32);     // [func_08046700] Event 0 - Set Animation Frame (Text)

// Prologue: Remix 2

extern void func_08046724(void);    // [func_08046724] GFX_LOAD Func_02
extern void func_08046734(void);    // [func_08046734] GFX_LOAD Func_01
extern void func_08046764(void);    // [func_08046764] GFX_LOAD Func_00
extern void func_08046794(u32);     // [func_08046794] MAIN - Load
extern void func_080467f0(void);    // [func_080467f0] ENGINE Func_00   (STUB)
extern void func_080467f4(void);    // [func_080467f4] MAIN - Loop      (STUB)
extern void func_080467f8(void);    // [func_080467f8] MAIN - Unload    (STUB)
extern void func_080467fc(u32);     // [func_080467fc] Event 0 - Set Animation Frame (Text)

// Prologue: Remix 3

extern void func_08046820(void);    // [func_08046820] GFX_LOAD Func_02
extern void func_08046830(void);    // [func_08046830] GFX_LOAD Func_01
extern void func_08046860(void);    // [func_08046860] GFX_LOAD Func_00
extern void func_08046890(u32);     // [func_08046890] MAIN - Load
extern void func_080468ec(void);    // [func_080468ec] ENGINE Func_00   (STUB)
extern void func_080468f0(void);    // [func_080468f0] MAIN - Loop      (STUB)
extern void func_080468f4(void);    // [func_080468f4] MAIN - Unload    (STUB)
extern void func_080468f8(u32);     // [func_080468f8] Event 0 - Set Animation Frame (Text)

// Prologue: Remix 4

extern void func_0804691c(void);    // [func_0804691c] GFX_LOAD Func_02
extern void func_0804692c(void);    // [func_0804692c] GFX_LOAD Func_01
extern void func_0804695c(void);    // [func_0804695c] GFX_LOAD Func_00
extern void func_0804698c(u32);     // [func_0804698c] MAIN - Load
extern void func_080469e8(void);    // [func_080469e8] ENGINE Func_00   (STUB)
extern void func_080469ec(void);    // [func_080469ec] MAIN - Loop      (STUB)
extern void func_080469f0(void);    // [func_080469f0] MAIN - Unload    (STUB)
extern void func_080469f4(u32);     // [func_080469f4] Event 0 - Set Animation Frame (Text)

// Prologue: Remix 5

extern void func_08046a18(void);    // [func_08046a18] GFX_LOAD Func_02
extern void func_08046a28(void);    // [func_08046a28] GFX_LOAD Func_01
extern void func_08046a58(void);    // [func_08046a58] GFX_LOAD Func_00
extern void func_08046a88(u32);     // [func_08046a88] MAIN - Load
extern void func_08046ae4(void);    // [func_08046ae4] ENGINE Func_00   (STUB)
extern void func_08046ae8(void);    // [func_08046ae8] MAIN - Loop      (STUB)
extern void func_08046aec(void);    // [func_08046aec] MAIN - Unload    (STUB)
extern void func_08046af0(u32);     // [func_08046af0] Event 0 - Set Animation Frame (Text)

// Prologue: Remix 6

extern void func_08046b14(void);    // [func_08046b14] GFX_LOAD Func_02
extern void func_08046b24(void);    // [func_08046b24] GFX_LOAD Func_01
extern void func_08046b54(void);    // [func_08046b54] GFX_LOAD Func_00
extern void func_08046b84(u32);     // [func_08046b84] MAIN - Load
extern void func_08046be0(void);    // [func_08046be0] ENGINE Func_00   (STUB)
extern void func_08046be4(void);    // [func_08046be4] MAIN - Loop      (STUB)
extern void func_08046be8(void);    // [func_08046be8] MAIN - Unload    (STUB)
extern void func_08046bec(u32);     // [func_08046af0] Event 0 - Set Animation Frame (Text)

// Prologue: Remix 7

extern void func_08046c10(void);    // [func_08046c10] GFX_LOAD Func_02
extern void func_08046c20(void);    // [func_08046c20] GFX_LOAD Func_01
extern void func_08046c50(void);    // [func_08046c50] GFX_LOAD Func_00
extern void func_08046c80(u32);     // [func_08046c80] MAIN - Load
extern void func_08046cdc(void);    // [func_08046cdc] ENGINE Func_00   (STUB)
extern void func_08046ce0(void);    // [func_08046ce0] MAIN - Loop      (STUB)
extern void func_08046ce4(void);    // [func_08046ce4] MAIN - Unload    (STUB)
extern void func_08046ce8(u32);     // [func_08046ce8] Event 0 - Set Animation Frame (Text)

// Prologue: Remix 8

extern void func_08046d0c(void);    // [func_08046d0c] GFX_LOAD Func_02
extern void func_08046d1c(void);    // [func_08046d1c] GFX_LOAD Func_01
extern void func_08046d4c(void);    // [func_08046d4c] GFX_LOAD Func_00
extern void func_08046d7c(u32);     // [func_08046d7c] MAIN - Load
extern void func_08046dd8(void);    // [func_08046dd8] ENGINE Func_00   (STUB)
extern void func_08046ddc(void);    // [func_08046ddc] MAIN - Loop      (STUB)
extern void func_08046de0(void);    // [func_08046de0] MAIN - Unload    (STUB)
extern void func_08046de4(u32);     // [func_08046de4] Event 0 - Set Animation Frame (Text)

// Prologue: Bunny Hop

extern void func_08046e08(void);    // [func_08046e08] GFX_LOAD Func_02
extern void func_08046e18(void);    // [func_08046e18] GFX_LOAD Func_01
extern void func_08046e48(void);    // [func_08046e48] GFX_LOAD Func_00
extern void func_08046e78(u32);     // [func_08046e78] MAIN - Load
extern void func_08046f00(void);    // [func_08046f00] ENGINE Func_00   (STUB)
extern void func_08046f04(void);    // [func_08046f04] MAIN - Loop      (STUB)
extern void func_08046f08(void);    // [func_08046f08] MAIN - Unload    (STUB)
extern void func_08046f0c(u32);     // [func_08046f0c] Event 0 - Set Animation Frame (Text)
extern void func_08046f30(void);    // [func_08046f30] Event 1 - Play Animation (Rabbits)

// Prologue: Rap Men

extern void func_08046f5c(void);    // [func_08046f5c] GFX_LOAD Func_02
extern void func_08046f6c(void);    // [func_08046f6c] GFX_LOAD Func_01
extern void func_08046f9c(void);    // [func_08046f9c] GFX_LOAD Func_00
extern void func_08046fcc(u32);     // [func_08046fcc] MAIN - Load
extern void func_08047028(void);    // [func_08047028] ENGINE Func_00   (STUB)
extern void func_0804702c(void);    // [func_0804702c] MAIN - Loop      (STUB)
extern void func_08047030(void);    // [func_08047030] MAIN - Unload    (STUB)
extern void func_08047034(void);    // [func_08047034] Event 0 - Play Animation (Text)

// Prologue: Rap Women

extern void func_08047060(void);    // [func_08047060] GFX_LOAD Func_02
extern void func_08047070(void);    // [func_08047070] GFX_LOAD Func_01
extern void func_080470a0(void);    // [func_080470a0] GFX_LOAD Func_00
extern void func_080470d0(u32);     // [func_080470d0] MAIN - Load
extern void func_0804712c(void);    // [func_0804712c] ENGINE Func_00   (STUB)
extern void func_08047130(void);    // [func_08047130] MAIN - Loop      (STUB)
extern void func_08047134(void);    // [func_08047134] MAIN - Unload    (STUB)
extern void func_08047138(void);    // [func_08047138] Event 0 - Play Animation (Text)

// Prologue: Rat Race

extern void func_08047164(void);    // [func_08047164] GFX_LOAD Func_02
extern void func_08047174(void);    // [func_08047174] GFX_LOAD Func_01
extern void func_080471a4(void);    // [func_080471a4] GFX_LOAD Func_00
extern void func_080471d4(u32);     // [func_080471d4] MAIN - Load
extern void func_08047250(void);    // [func_08047250] ENGINE Func_00   (STUB)
extern void func_08047254(void);    // [func_08047254] MAIN - Loop      (STUB)
extern void func_08047258(void);    // [func_08047258] MAIN - Unload    (STUB)
extern void func_0804725c(u32);     // [func_0804725c] Event 0 - Set Animation Frame (Text)
extern void func_08047280(void);    // [func_08047280] Event 1 - Play Animation (Rat)

// Prologue: Ninja Bodyguard

extern void func_080472bc(void);    // [func_080472bc] GFX_LOAD Func_02
extern void func_080472cc(void);    // [func_080472cc] GFX_LOAD Func_01
extern void func_080472fc(void);    // [func_080472fc] GFX_LOAD Func_00
extern void func_0804732c(u32);     // [func_0804732c] MAIN - Load
extern void func_08047398(void);    // [func_08047398] ENGINE Func_00   (STUB)
extern void func_0804739c(void);    // [func_0804739c] MAIN - Loop      (STUB)
extern void func_080473a0(void);    // [func_080473a0] MAIN - Unload    (STUB)
extern void func_080473a4(u32);     // [func_080473a4] Event 0 - Play Animation (Text)

// Prologue: Ninja Bodyguard 2

extern void func_080473d4(void);    // [func_080473d4] GFX_LOAD Func_02
extern void func_080473e4(void);    // [func_080473e4] GFX_LOAD Func_01
extern void func_08047414(void);    // [func_08047414] GFX_LOAD Func_00
extern void func_08047444(u32);     // [func_08047444] MAIN - Load
extern void func_080474a0(void);    // [func_080474a0] ENGINE Func_00   (STUB)
extern void func_080474a4(void);    // [func_080474a4] MAIN - Loop      (STUB)
extern void func_080474a8(void);    // [func_080474a8] MAIN - Unload    (STUB)
extern void func_080474ac(u32);     // [func_080474ac] Event 0 - Play Animation (Text)

// Prologue: Space Dance

extern void func_080474dc(void);    // [func_080474dc] GFX_LOAD Func_02
extern void func_080474ec(void);    // [func_080474ec] GFX_LOAD Func_01
extern void func_0804751c(void);    // [func_0804751c] GFX_LOAD Func_00
extern void func_0804754c(u32);     // [func_0804754c] MAIN - Load
extern void func_08047624(void);    // [func_08047624] ENGINE Func_00   (STUB)
extern void func_08047628(void);    // [func_08047628] MAIN - Loop      (STUB)
extern void func_0804762c(void);    // [func_0804762c] MAIN - Unload    (STUB)
extern void func_08047630(u32);     // [func_08047630] Event 0 - Animate Entity { 0 = Text; 1 = Faces; 2 = Star }

// Prologue: Tap Trial

extern void func_08047678(void);    // [func_08047678] GFX_LOAD Func_02
extern void func_08047688(void);    // [func_08047688] GFX_LOAD Func_01
extern void func_080476b8(void);    // [func_080476b8] GFX_LOAD Func_00
extern void func_080476e8(u32);     // [func_080476e8] MAIN - Load
extern void func_08047764(void);    // [func_08047764] ENGINE Func_00   (STUB)
extern void func_08047768(void);    // [func_08047768] MAIN - Loop      (STUB)
extern void func_0804776c(void);    // [func_0804776c] MAIN - Unload    (STUB)
extern void func_08047770(u32);     // [func_08047770] Event 0 - Set Animation Frame (Text)
extern void func_08047794(void);    // [func_08047794] Event 1 - Animate Text

// Prologue: Tap Trial 2

extern void func_080477b4(void);    // [func_080477b4] GFX_LOAD Func_02
extern void func_080477c4(void);    // [func_080477c4] GFX_LOAD Func_01
extern void func_080477f4(void);    // [func_080477f4] GFX_LOAD Func_00
extern void func_08047824(u32);     // [func_08047824] MAIN - Load
extern void func_08047888(void);    // [func_08047888] ENGINE Func_00   (STUB)
extern void func_0804788c(void);    // [func_0804788c] MAIN - Loop      (STUB)
extern void func_08047890(void);    // [func_08047890] MAIN - Unload    (STUB)
extern void func_08047894(u32);     // [func_08047894] Event 0 - Set Animation Frame (Text)
extern void func_080478b8(void);    // [func_080478b8] Event 1 - Animate Text

// Prologue: Toss Boys

extern void func_080478d8(void);    // [func_080478d8] GFX_LOAD Func_02
extern void func_080478e8(void);    // [func_080478e8] GFX_LOAD Func_01
extern void func_08047918(void);    // [func_08047918] GFX_LOAD Func_00
extern void func_08047948(u32);     // [func_08047948] MAIN - Load
extern void func_080479a4(void);    // [func_080479a4] ENGINE Func_00   (STUB)
extern void func_080479a8(void);    // [func_080479a8] MAIN - Loop      (STUB)
extern void func_080479ac(void);    // [func_080479ac] MAIN - Unload    (STUB)
extern void func_080479b0(u32);     // [func_080479b0] Event 0 - Set Animation Frame (Text)

// Prologue: Toss Boys 2

extern void func_080479d4(void);    // [func_080479d4] GFX_LOAD Func_02
extern void func_080479e4(void);    // [func_080479e4] GFX_LOAD Func_01
extern void func_08047a14(void);    // [func_08047a14] GFX_LOAD Func_00
extern void func_08047a44(u32);     // [func_08047a44] MAIN - Load
extern void func_08047aa0(void);    // [func_08047aa0] ENGINE Func_00   (STUB)
extern void func_08047aa4(void);    // [func_08047aa4] MAIN - Loop      (STUB)
extern void func_08047aa8(void);    // [func_08047aa8] MAIN - Unload    (STUB)
extern void func_08047aac(u32);     // [func_08047aac] Event 0 - Set Animation Frame (Text)

// Prologue: Tram & Pauline

extern void func_08047ad0(void);    // [func_08047ad0] GFX_LOAD Func_02
extern void func_08047ae0(void);    // [func_08047ae0] GFX_LOAD Func_01
extern void func_08047b10(void);    // [func_08047b10] GFX_LOAD Func_00
extern void func_08047b40(u32);     // [func_08047b40] MAIN - Load
extern void func_08047bd0(void);    // [func_08047bd0] ENGINE Func_00   (STUB)
extern void func_08047bd4(void);    // [func_08047bd4] MAIN - Loop      (STUB)
extern void func_08047bd8(void);    // [func_08047bd8] MAIN - Unload    (STUB)
extern void func_08047bdc(void);    // [func_08047bdc] Event 0 - Play Animation (Text)

// Prologue: Sick Beats

extern void func_08047c08(void);    // [func_08047c08] GFX_LOAD Func_02
extern void func_08047c18(void);    // [func_08047c18] GFX_LOAD Func_01
extern void func_08047c48(void);    // [func_08047c48] GFX_LOAD Func_00
extern void func_08047c78(u32);     // [func_08047c78] MAIN - Load
extern void func_08047d00(void);    // [func_08047d00] ENGINE Func_00   (STUB)
extern void func_08047d04(void);    // [func_08047d04] MAIN - Loop      (STUB)
extern void func_08047d08(void);    // [func_08047d08] MAIN - Unload    (STUB)
extern void func_08047d0c(void);    // [func_08047d0c] Event 0 - Play Animation (Text), Play Animation (Virus)

// Prologue: Wizard's Waltz

extern void func_08047d4c(void);    // [func_08047d4c] GFX_LOAD Func_02
extern void func_08047d5c(void);    // [func_08047d5c] GFX_LOAD Func_01
extern void func_08047d8c(void);    // [func_08047d8c] GFX_LOAD Func_00
extern void func_08047dbc(u32);     // [func_08047dbc] MAIN - Load
extern void func_08047e18(void);    // [func_08047e18] ENGINE Func_00   (STUB)
extern void func_08047e1c(void);    // [func_08047e1c] MAIN - Loop      (STUB)
extern void func_08047e20(void);    // [func_08047e20] MAIN - Unload    (STUB)
extern void func_08047e24(void);    // [func_08047e24] Event 0 - Play Animation (Text)
