#pragma once

#include "global.h"
#include "sound.h"

typedef u32 (*D_0300009c_func)(void);

extern u16 D_03004ac0;
extern u16 D_03004afc; // Button Press Buffer
extern u16 D_030053b8;
extern u16 D_03004b00; // Button Release Buffer

extern u16 D_030046b8;
extern u16 D_03005378;
extern u16 D_0300537c;
extern u16 D_030046b4;

extern u32 D_030053b4;
extern u32 D_03005374;

struct struct_08001f94 {
    u8 unk0;
    u8 unk1;
    u8 filler[2];
    u32 unk4;
    u32 unk8;
    u32 unkC;
};

extern void func_08001360(void);
extern void func_08001380(void);
extern void func_080013a8(void);
extern void func_080013e8(D_0300009c_func);
extern void func_080013f4(u16);
extern void func_0800142c(u16);
extern void func_08001464(u16);
extern void func_0800149c(u16);
extern void func_0800152c(u16);
// extern ? func_080015bc(?);
// extern ? func_08001724(?);
extern void func_0800181c(u8);
extern u32 func_08001828(void);
extern u8 func_0800184c(void);
// extern ? func_0800186c(?);
// extern ? func_080018e0(?); // DMA3 Fill?
extern void func_08001958(u32);
extern u16 func_08001964(void);
extern u16 func_08001980(u16);
// extern ? func_080019a4(?);
// extern ? func_080019e4(?);
extern void func_08001a24_stub(void);
// extern ? func_08001a28(?);
// extern ? func_08001a64(?);
// extern ? func_08001b48(?);
// extern ? func_08001b98(?);
// extern ? func_08001bf8(?);
// extern ? func_08001c64(?);
// extern ? func_08001cd8(?);
// extern ? func_08001d44(?);
// extern ? func_08001d74(?);
// extern ? func_08001ddc(?);
// extern ? func_08001e4c(?);
// extern ? func_08001ec4(?);
extern u32 func_08001f34(struct struct_08001f94 *);
extern u32 func_08001f64(struct struct_08001f94 *);
extern u32 func_08001f94(struct struct_08001f94 *);
extern u8 func_08001fc4(u8 *);
extern void func_08001fe0(u16 id, u8 duration, u32 size, u16 *initial, u16 *final, u16 *target); // Gradual Set (may be about palettes specifically)
// extern ? func_08002018(u16 id, u8 duration, u32 size, u32 initial, u32 final, u16 *target); // Gradual Set (for a singular initial and final)
// extern ? func_08002050(u16 id, u8 duration, u32 size, u16 *initial, u32 final, u16 *target); // Gradual Set (for an array initial and singular final)
// extern ? func_08002088(?);
// extern ? func_080020ec(?);
// extern ? func_08002150(?);
// extern ? func_08002194(?);
// extern ? func_080021b8(?);
// extern ? func_0800222c(?);
extern void func_08002260(s16, u32); // ROTATION/SCALING PARAMETER GROUP - Update Horizontal & Vertical Flip (and probably more)
// extern ? func_08002280(?);
extern void func_080022bc(s16); // ROTATION/SCALING PARAMETER GROUP - ?? (Reduced Angle Precision)
extern void func_080022d8(s16); // ROTATION/SCALING PARAMETER GROUP - ?? (Fine Angle Precision)
// extern ? func_080022f4(?);
// extern ? func_08002310(?);
// extern ? func_0800232c(?);
// extern ? func_080024dc(?);
// extern ? func_08002500(?);
// extern ? func_08002520(?);
// extern ? func_0800253c(?);
// extern ? func_08002584(?);
// extern ? func_080025bc(?);
// extern ? func_080025d8(?);
// extern ? func_080025fc(?);

/* SOUND */

// extern ? func_08002630(?); // Get Sound ID
extern struct SoundPlayer *func_08002634(const struct SequenceData *); // Play Sound
extern struct SoundPlayer *func_0800267c(u32 player, const struct SequenceData *); // Play Sound in Specified Player
extern struct SoundPlayer *func_08002698(const struct SequenceData *, u32 volume, s32 pitch); // Play Sound at Given Volume & Pitch
extern struct SoundPlayer *func_080026c4(u32 player, const struct SequenceData *, u32 volume, s32 pitch); // Play Sound in Specified Player, at Given Volume & Pitch
// extern ? func_080026fc(?);
// extern ? func_0800274c(?); // Mute All Players Playing the Given Sound
// extern ? func_08002794(?);
// extern ? func_080027dc(?);
extern void func_08002828(struct SoundPlayer *player); // Stop Player
// extern ? func_08002838(?); // Stop All Players
// extern ? func_08002868(?);
extern void func_08002880(u32 pause); // Pause All Players
extern void func_08002894(struct SoundPlayer *player, u16 speed); // Set Player Speed Envelope
extern void func_080028a8(struct SoundPlayer *player, s16 pitch); // Set Player Pitch Envelope
// extern ? func_080028c4(?); // Fade-In Player for Given Duration
// extern ? func_080028d8(?);
// extern ? func_080028ec(?);
extern void func_08002920(struct SoundPlayer *player, u16 volume); // Set Player Gain Envelope
// extern ? func_08002934(?);
// extern ? func_0800294c(?);
// extern ? func_08002968(?);
// extern ? func_08002978(?);
// extern ? func_0800298c(?);
// extern ? func_080029b0(?);
// extern ? func_080029c4(?);
// extern ? func_080029d8(?);
// extern ? func_08002a18(?);

/* Graphics..? */

// extern ? func_08002a54(?); // Remove the highest bit from a pointer (since that shouldn't be set, not that this keeps the pointer in range though)
// extern ? func_08002a6c(?);
// extern ? func_08002b10(?); // Decompress Graphics..?
// extern ? func_08002db0(?);
// extern ? func_08002db8(?);
// extern ? func_08002dc4(?);
// extern ? func_08002dec(?);
// extern ? func_08002e18(?);
// extern ? func_08002e2c(?);
// extern ? func_08002e44(?);
// extern ? func_08002e5c(?);
// extern ? func_08002e78(?);
// extern ? func_08002eb0(?); // D_089363fc Function 0
// extern ? func_08002ecc(?); // D_089363fc Function 2
extern u32 func_08002ee0(u16, u32 *, u32); // Load Graphics (or something. uses D_089363fc)
// extern ? func_08002f04(?);
// extern ? func_08002f40(?);
// extern ? func_08002f48(?);
// extern ? func_08002f54(?);
// extern ? func_08002f5c(?);
// extern ? func_08002f68(?);
// extern ? func_08002f9c(?);
// extern ? func_08003004(?);
// extern ? func_08003070(?);
// extern ? func_0800318c(?);
// extern ? func_08003278(?);
// extern ? func_08003384(?);
// extern ? func_08003398(?);
// extern ? func_080033a0(?);
// extern ? func_0800351c(?);
// extern ? func_08003598(?);
// extern ? func_080035a0(?);
// extern ? func_080036c4(?);
// extern ? func_08003720(?);
// extern ? func_0800387c(?);
// extern ? func_080038b0(?);
// extern ? func_08003974(?);
