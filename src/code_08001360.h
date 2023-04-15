#pragma once

#include "global.h"
#include "graphics.h"
#include "sound.h"
#include "data/data_089363cc.h"

typedef u32 (*D_0300009c_func)(void);

extern u16 D_03004ac0;
extern u16 D_03004afc; // Button Press Buffer
extern u16 D_03004b00; // Button Release Buffer
extern u16 D_030053b8;

extern u16 D_030046b4;
extern u16 D_030046b8;
extern u16 D_03005378;
extern u16 D_0300537c;

extern u32 sRecCurrentKey;
extern u32 sRecMaxKeys;


/* AGB ... */


extern void func_08001360(void);
extern void func_08001380(void);
extern void func_080013a8(void);
extern void func_080013e8(D_0300009c_func);


/* AGB INPUT */


enum InputRecordingModesEnum {
    INPUT_REC_MODE_NONE,
    INPUT_REC_MODE_RECORD,
    INPUT_REC_MODE_PLAY_AS_REALTIME,
    INPUT_REC_MODE_PLAY_AS_SECONDARY,
    INPUT_REC_MODE_PLAY_WITH_REALTIME
};

extern void reset_main_key_buffers(u16 keys);
extern void reset_rec_key_buffers(u16 keys);
extern void init_key_listener(void);
extern void update_main_key_buffers(u16 keys);
extern void update_rec_key_buffers(u16 keys);
extern void update_key_listener(void);
extern void key_rec_set_mode(u32 mode, u16 keyFilter, u16 *recording, u32 maxInputs);
extern void key_rec_set_paused(u32 pause);
extern u32 key_rec_get_next(void);
extern u32 key_rec_reached_end(void);


/* AGB DMA3 */


extern void dma3_set(const void *source, void *destination, u32 bytesToSet, u16 unit, u32 bytesPerInterrupt); // DMA3 Set
extern void dma3_fill(u32 value, void *destination, u32 bytesToFill, u16 unit, u32 bytesPerInterrupt); // DMA3 Fill


/* AGB RANDOM */


extern void set_agb_random_var(u32); // Set Global Random Value
extern u16 get_agb_random_var(void); // Get Global Random Value
extern u16 agb_random(u16); // AGB Random


/* AGB ... */


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
extern void *func_08001f34(struct struct_08001f94 *);
extern void *func_08001f64(struct struct_08001f94 *);
extern void *func_08001f94(struct struct_08001f94 *);
extern u8 func_08001fc4(u8 *);
extern s32 func_08001fe0(u16 id, u8 duration, u32 count, const u16 *initial, const u16 *final, u16 *target); // Gradual Set (may be about palettes specifically)
extern s32 func_08002018(u16 id, u8 duration, u32 count, u32 initial, const void *final, void *target); // Gradual Set (for a singular initial and array final)
extern s32 func_08002050(u16 id, u8 duration, u32 count, const void *initial, u32 final, void *target); // Gradual Set (for an array initial and singular final)
// extern ? func_08002088(?);


/* AGB ROTATION/SCALING PARAMETER GROUPS */


// extern ? func_080020ec(?);
// extern ? func_08002150(?);
// extern ? func_08002194(?); // AFFINE GROUP - Allocate New
// extern ? func_080021b8(?); // AFFINE GROUP - Delete
// extern ? func_0800222c(?); // AFFINE GROUP - Delete by Mem. ID
extern void func_08002260(s16, u32); // AFFINE GROUP - Update Horizontal & Vertical Flip (and probably more)
// extern ? func_08002280(?);
extern void func_080022bc(s16); // AFFINE GROUP - ?? (Reduced Angle Precision)
extern void func_080022d8(s16); // AFFINE GROUP - ?? (Fine Angle Precision)
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


/* AGB SOUND */


extern u16 get_sound_num(struct SequenceData *); // Get Sound ID
extern struct SoundPlayer *play_sound(struct SequenceData *); // Play Sound
extern struct SoundPlayer *play_sound_in_player(u32 player, struct SequenceData *); // Play Sound in Specified Player
extern struct SoundPlayer *play_sound_w_pitch_volume(struct SequenceData *, u32 volume, s32 pitch); // Play Sound at Given Volume & Pitch
extern struct SoundPlayer *play_sound_in_player_w_pitch_volume(u32 player, struct SequenceData *, u32 volume, s32 pitch); // Play Sound in Specified Player, at Given Volume & Pitch
// extern ? func_080026fc(?); // Play Sound Unless It Is Already Playing
// extern ? stop_sound(?); // Mute All Players Playing the Given Sound
// extern ? func_08002794(?);
// extern ? func_080027dc(?);
extern void stop_soundplayer(struct SoundPlayer *player); // Stop Player
extern void stop_all_soundplayers(); // Stop All Players
extern void pause_soundplayer(u32 pause); // Pause Player
extern void pause_all_soundplayers(u32 pause); // Pause All Players
extern void set_soundplayer_speed(struct SoundPlayer *player, u16 speed); // Set Player Speed Envelope
extern void set_soundplayer_pitch(struct SoundPlayer *player, s16 pitch); // Set Player Pitch Envelope
extern void fade_in_soundplayer(struct SoundPlayer *player, u16 duration); // Fade-In Player for Given Duration
extern void fade_out_soundplayer(struct SoundPlayer *player, u16 duration); // Fade-Out Player and Remove Sound
extern void fade_out_all_soundplayers(u16 duration); // Fade-Out All Players
extern void set_soundplayer_volume(struct SoundPlayer *player, u16 volume); // Set Player Gain Envelope
extern void set_soundplayer_track_volume(struct SoundPlayer *player, u16 selection, u16 volume); // Set Player Volume for Selected Tracks
extern void set_soundplayer_panning(struct SoundPlayer *player, s8 panning); // Set Player Panning
extern struct SequenceData *get_sound_from_player(struct SoundPlayer *player); // Get Sound from SoundPlayer
extern struct SequenceData *get_sound_from_player_id(u32 player); // Get Sound from Player ID
extern struct SoundPlayer *get_soundplayer_from_id(u32 id); // Get Player from ID
extern u32 soundplayer_is_playing(struct SoundPlayer *player); // Check if Player is Currently Playing Sound
extern void set_soundplayer_key(struct SoundPlayer *player, s32 key); // Set Player Key Offset
// extern ? func_080029d8(?);
extern struct SoundPlayer *get_soundplayer_by_sound(struct SequenceData *); // Return Player Currently Playing the Given Sound


/* AGB GRAPHICS TABLES */


extern void *func_08002a54(void *dest); // Remove the highest bit from a pointer (since that shouldn't be set, not that this keeps the pointer in range though)
extern void func_08002a6c(struct GfxTableLoader *info, const struct GraphicsTable *gfxTable, u32 limit); // Initialise GfxTableLoader
extern void func_08002b10(struct GfxTableLoader *info); // Update GfxTableLoader
// extern ? func_08002db0(?);
// extern ? func_08002db8(?);
// extern ? func_08002dc4(?);
// extern ? func_08002dec(?);
// extern ? func_08002e18(?);
// extern ? func_08002e2c(?);
// extern ? func_08002e44(?);
// extern ? func_08002e5c(?);
// extern ? func_08002e78(?);
extern void *func_08002eb0(struct LoadGfxTableTaskInputs *inputs); // LoadGfxTableTask Start
extern u32 func_08002ecc(struct GfxTableLoader *info); // LoadGfxTableTask Update
extern s32 func_08002ee0(u16 memID, const struct GraphicsTable *gfxTable, u32 limit); // New LoadGfxTableTask
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
