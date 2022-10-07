#pragma once
#include "sound.h"

// extern ? func_0800b778(?);
// extern ? func_0800b834(?);
// extern ? func_0800b974(?);
// extern ? func_0800b9fc(?); // BEATSCRIPT - Main
// extern ? func_0800bc14(?); // BEATSCRIPT - Check if no threads are running
// extern ? func_0800bc40(?);
// extern ? func_0800bc58(?);
// extern ? func_0800bc68(?);
// extern ? func_0800bcb8(?);
// extern ? func_0800bcc4(?);
// extern ? func_0800bce4(?);
// extern ? func_0800bcf4(?);
extern void func_0800bd04(u32);
// extern ? func_0800bd1c(?);
// extern ? func_0800bd2c(?);
// extern ? func_0800bdf8(?); // BEATSCRIPT - Set Tempo
// extern ? func_0800be64(?);
// extern ? func_0800be88(?); // BEATSCRIPT - Set Speed
// extern ? func_0800be9c(?);
// extern ? func_0800bea0(?);
// extern ? func_0800bebc(?);
// extern ? func_0800bed0(?); // BEATSCRIPT - Play Music (arg1 = Stop Previous; arg2 = SoundPlayer ID)
// extern ? func_0800bf7c(?); // BEATSCRIPT - Play Music
// extern ? func_0800bf8c(?); // BEATSCRIPT - Play Music (No Override)
// extern ? func_0800bf9c(?); // BEATSCRIPT - Play Music in Given SoundPlayer
// extern ? func_0800bfac(?); // BEATSCRIPT - Play Music in Given SoundPlayer (No Override)
// extern ? func_0800bfbc(?);
// extern ? func_0800c01c(?); // BEATSCRIPT - Stop Music
// extern ? func_0800c030(?);
// extern ? func_0800c048(?);
// extern ? func_0800c060(?);
// extern ? func_0800c088(?); // BEATSCRIPT - Set Music Pitch (CMD_3E)
// extern ? func_0800c0c4(?); // BEATSCRIPT - Set Music Pitch (CMD_3D)
// extern ? func_0800c0d8(?); // BEATSCRIPT - Set Music Volume
extern void func_0800c0f8(u16, u16); // BEATSCRIPT - Set Music Volume for Selected Tracks
// extern ? func_0800c128(?);
// extern ? func_0800c138(u32 volume, u32 duration); // BEATSCRIPT - Change Music Volume
// extern ? func_0800c154(?);
// extern ? func_0800c168(u32 volume, u32 duration); // BEATSCRIPT - Change Music Volume for Selected Tracks
// extern ? func_0800c184(?); // BEATSCRIPT - Set Music Pitch (in Semitones)
extern void func_0800c1a4_stub(void);
extern u32 func_0800c1a8(void); // BEATSCRIPT - Get Tempo
// extern ? func_0800c1b4(?);
// extern ? func_0800c1c0(?);
// extern ? func_0800c1d0(?);
// extern ? func_0800c1e8(?);
// extern ? func_0800c228(?);
// extern ? func_0800c280(?);
// extern ? func_0800c2b0(?);
// extern ? func_0800c2d0(?);
// extern ? func_0800c310(?);
// extern ? func_0800c350(?);
// extern ? func_0800c390(?);
// extern ? func_0800c394(?);
extern u32 func_0800c398(void);
extern s32 func_0800c3a4(u32); // BEATSCRIPT - Beats to Ticks
extern u32 func_0800c3b8(void); // Get Next Memory ID(?)
// extern ? func_0800c3c4(?);
// extern ? func_0800c3e4(?);
// extern ? func_0800c3e8(?);
// extern ? func_0800c3ec(?);
// extern ? func_0800c3fc(?);
// extern ? func_0800c400(?);
// extern ? func_0800c404(?);
// extern ? func_0800c408(?);
// extern ? func_0800c40c(?);
// extern ? func_0800c410(?);
// extern ? func_0800c414(?);
// extern ? func_0800c418(?);
// extern ? func_0800c41c(?);
// extern ? func_0800c420(?);
// extern ? func_0800c424(?);
// extern ? func_0800c428(?);
// extern ? func_0800c42c(?);
extern u32 *func_0800c43c(u32);
// extern ? func_0800c454(?);
// extern ? func_0800c484(?);
// extern ? func_0800c490(?);
// extern ? func_0800c494(?);
// extern ? func_0800c4ac(?);
// extern ? func_0800c4b0(?);
// extern ? func_0800c508(?);
// extern ? func_0800c560(?);
// extern ? func_0800c5b8(?);
// extern ? func_0800c604(?);
// extern ? func_0800c654(?);
// extern ? func_0800c658(?);
// extern ? func_0800c65c(?);
extern struct TextObject1 *func_0800c660(u16, u8);
// extern ? func_0800c694(?);
// extern ? func_0800c6a4(?);
// extern ? func_0800c6c8(?);
// extern ? func_0800c6d4(?);
// extern ? func_0800c6d8(?);
// extern ? func_0800c6dc(?);
// extern ? func_0800c6e0(?);
// extern ? func_0800c6e4(?); // BEATSCRIPT - IF Statement Start
// extern ? func_0800c824(?); // BEATSCRIPT - ELSE Statement Start
// extern ? func_0800c95c(?); // BEATSCRIPT - SWITCH Statement Start
// extern ? func_0800c9a4(?); // BEATSCRIPT - CASE Statement End
// extern ? func_0800c9c8(?); // BEATSCRIPT - CMD_1E/CMD_1F Statement Start ("If?")
// extern ? func_0800ca1c(?); // BEATSCRIPT - CMD_20 Statement Start ("Else"?)
// extern ? func_0800ca70(?);
// extern ? func_0800cb28(?); // BEATSCRIPT - Update Stream
// extern ? func_0800dfbc(?);
// extern ? func_0800dfc0(?);
// extern ? func_0800dfc4(?);
// extern ? func_0800dfe0(?);
// extern ? func_0800dfe4(?);
// extern ? func_0800dfe8(?);
// extern ? func_0800dfec(?);
// extern ? func_0800dff0(?);
// extern ? func_0800dff4(?);
// extern ? func_0800dff8(?);
// extern ? func_0800dffc(?);
// extern ? func_0800e000(?);
// extern ? func_0800e004(?);
// extern ? func_0800e008(?);
// extern ? func_0800e00c(?);
// extern ? func_0800e010(?);
// extern ? func_0800e014(?);
// extern ? func_0800e018(?);
// extern ? func_0800e030(s32 layer); // Show Layer
// extern ? func_0800e044(s32 layer); // Hide Layer
extern void func_0800e058(s32 layer, s16 x, s16 y); // Move BG Layer
// extern ? func_0800e068(?);
// extern ? func_0800e084(?);
// extern ? func_0800e0a0(?);
extern void func_0800e0ec(void);
// extern ? func_0800e100(?);
// extern ? func_0800e114(?);
// extern ? func_0800e128(?);
// extern ? func_0800e13c(?);
// extern ? func_0800e184(?);
// extern ? func_0800e1cc(?);
// extern ? func_0800e208(?);
// extern ? func_0800e25c(?);
// extern ? func_0800e2a8(?);
// extern ? func_0800e30c(?);
// extern ? func_0800e364(?);
extern u32 func_0800e3e4(s16, u32, u32, s8, s8, u16);
// extern ? func_0800e430(?);
// extern ? func_0800e490(?);
// extern ? func_0800e4f8(?);
// extern ? func_0800e57c(?);
extern void func_0800e62c(s16, u32, s16, u32, u16);
// extern ? func_0800e694(?);
// extern ? func_0800e6ec(?);
// extern ? func_0800e75c(?);
// extern ? func_0800e768(?);
// extern ? func_0800e7e8(?);
// extern ? func_0800e830(?);
// extern ? func_0800e850(?);
// extern ? func_0800e86c(?);
// extern ? func_0800e888(?);
// extern ? func_0800e8b0(?);
// extern ? func_0800e8d8(?);
// extern ? func_0800e8f4(?);
// extern ? func_0800e940(?);
// extern ? func_0800e944(?);
// extern ? func_0800e948(?);
// extern ? func_0800e970(?);
// extern ? func_0800e9d8(?);
// extern ? func_0800e9f8(?);
// extern ? func_0800ea1c(?);
// extern ? func_0800ea2c(?);
// extern ? func_0800ea3c(?);
// extern ? func_0800ea70(?);
// extern ? func_0800eaa0(?);
// extern ? func_0800eb0c(?);
// extern ? func_0800eb1c(?);
// extern ? func_0800ebac(?);
// extern ? func_0800ebf8(u32 target, u32 duration); // BEATSCRIPT - Change Tempo
// extern ? func_0800ec20(?);
// extern ? func_0800ec34(?);
// extern ? func_0800ecac(?);
// extern ? func_0800ecec(s32 target, u32 duration); // BEATSCRIPT - Change Music Pitch
// extern ? func_0800ed08(?);
// extern ? func_0800ed24(?); // BEATSCRIPT - Fade-In Music
// extern ? func_0800ed3c(?); // BEATSCRIPT - Fade-Out Music
// extern ? func_0800ed54(?);
// extern ? func_0800ed58(?);
// extern ? func_0800ed5c(?);
// extern ? func_0800ed60(?); // Stub
// extern ? func_0800ed64(?);
// extern ? func_0800edb8(?);
// extern ? func_0800edc8(?);
// extern ? func_0800edfc(?);
// extern ? func_0800ee1c(?);
// extern ? func_0800ee3c(?);
// extern ? func_0800ee5c(?);
// extern ? func_0800ee7c(?);
// extern ? func_0800ee9c(?);
// extern ? func_0800eebc(?);
// extern ? func_0800f070(?);
// extern ? func_0800f084(?);
// extern ? func_0800f09c(?);
// extern ? func_0800f0b4(?);
// extern ? func_0800f180(?);
// extern ? func_0800f1ec(?);
// extern ? func_0800f218(?);
// extern ? func_0800f22c(?);
// extern ? func_0800f4a0(?);
// extern ? func_0800f524(?);
// extern ? func_0800f570(?);
// extern ? func_0800f578(?);
// extern ? func_0800f580(?);
// extern ? func_0800f588(?);
// extern ? func_0800f614(?);
// extern ? func_0800f7c0(?);
// extern ? func_0800f89c(?);
// extern ? func_0800f8d8(?);
// extern ? func_0800f8ec(?);
// extern ? func_0800f8f8(?);
