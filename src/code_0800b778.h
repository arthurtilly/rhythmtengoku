#pragma once

#include "global.h"
#include "graphics.h"
#include "sound.h"
#include "task_pool.h"
#include "data/beatscript_scene_data.h"


/* BEATSCRIPT SCENE HANDLER */


// TYPES
struct Struct_0800b71c_sub {
    u32 id:8;
    u32 unk1_0:10;
    u32 unk4;
};

struct Struct_0800b71c {
    u32 total:8;
    u32 unk1_0:1;
    u32 unk1_1:23;
    struct Struct_0800b71c_sub *objects;
};


// FUNCTIONS
extern u8 func_0800b634(s16 *arg0, s16 *arg1, s16 *arg2, s16 *arg3);
extern void run_beatscript_scene_callback(void);
extern void set_beatscript_scene_callback(void function(s32), s32 argument);
extern void func_0800b6dc(struct Struct_0800b71c *, u32, u32, struct Struct_0800b71c_sub *);
extern void func_0800b71c(struct Struct_0800b71c *, u32, u32, u32);
extern void func_0800b768_stub(void);
extern void func_0800b76c_stub(void);
extern void func_0800b770_stub(void);
extern void func_0800b774_stub(void);
extern void start_beatscript_scene(u32 mode); // Beatscript Init.
extern void set_beatscript_subscenes(const struct SubScene **subScenes); // Set SubScenes
extern void update_paused_beatscript_scene(void); // ? (called each loop after the pause menu has been opened at least once)
extern void update_active_beatscript_scene(void); // Beatscript Update
extern s32 beatscript_scene_is_inactive(void); // Check if No Beatscript Threads Are Active
extern void beatscript_enable_loops(void); // Enable Loops
extern void beatscript_exit_loop_after_delay_callback(void); // Delayed Loop Exit Task Function
extern void beatscript_exit_loop_after_delay(u32 duration); // Exit Loop After Delay
extern void beatscript_exit_loop_after_one_beat(void); // Exit Loop After One Beat
extern void beatscript_force_exit_loop(void); // Exit Loop (If Within a Loop)
extern void beatscript_disable_loops(void); // Force Stop Loop
extern void beatscript_force_exit_loop_next_update(void); // Exit Loop on Next Update
extern void set_pause_beatscript_scene(u32); // Pause Script
extern u32 beatscript_scene_is_paused(void); // Check if Beatscript Handler Is Paused
extern void stop_beatscript_scene(void); // Beatscript Engine Force Quit
extern void set_beatscript_tempo(u16 tempo); // Set Script Tempo
extern void update_beatscript_tempo(void); // Update Script Tempo
extern void set_beatscript_speed(u16 speed); // Set Script Speed (Q8.8)
extern void func_0800be9c_stub(void);
extern void func_0800bea0(u32 arg); // Set unk0_b7
extern void func_0800bebc(u32 arg); // Set unk1C
extern u32  scene_change_music(struct SequenceData *, u32 override, s32 soundPlayer); // Play Music
extern void scene_set_music(struct SequenceData *); // Play Music (Override)
extern void scene_play_music(struct SequenceData *); // Play Music (No Override)
extern void scene_set_music_with_soundplayer(struct SequenceData *, s32 soundPlayer); // Play Music in Given SoundPlayer (Override)
extern void scene_play_music_with_soundplayer(struct SequenceData *, s32 soundPlayer); // Play Music in Given SoundPlayer (No Override)
extern void scene_set_music_player_by_sound(struct SequenceData *); // Play Music (override, use predefined SoundPlayer ID)
extern void scene_stop_music(void); // Stop Music
extern void scene_fade_in_music(u16 duration); // Fade-In Music
extern void scene_fade_out_music(u16 duration); // Fade-Out Music
extern void scene_update_music_pitch(void); // Update Music Pitch
extern void scene_set_music_pitch(s16 pitch); // Set Music Pitch
extern void scene_set_music_pitch_env(s16 pitch); // Set Music Pitch Source 2
extern void scene_set_music_volume(u16 volume); // Set Music Volume
extern void scene_set_music_track_volume(u16 selection, u16 volume); // Set Music Volume for Selected Tracks
extern void scene_set_music_volume_env(u32 volume); // Set Music Volume 2 (just calls the other one)
extern void scene_interpolate_music_volume(u32 volume, u32 duration); // Interpolate Music Volume
extern void scene_set_music_track_volume_env(u32 selection, u32 volume); // Set Music Volume for Selected Tracks (Integer)
extern void scene_interpolate_music_track_volume(u32 volume, u32 duration); // Interpolate Music Volume for Selected Tracks
extern void scene_set_music_key(s32 key); // Set Music Key Offset
extern void func_0800c1a4_stub(void);
extern u32 get_beatscript_tempo(void); // Get Current Script Tempo
extern u32 func_0800c1b4(void); // Get Sprite Animation Speed
extern s32 func_0800c1c0(s24_8 arg); // Return (arg * spriteAnimSpeed)
extern s32 func_0800c1d0(s24_8 arg); // Return (arg * (spriteAnimSpeed ^ 2))
extern void scene_set_soundplayer_panning(struct SoundPlayer *player, s16 panning); // Set Music Panning
extern struct SoundPlayer *scene_set_random_music(struct SequenceData **musicPool);
extern struct SoundPlayer *scene_play_sound_to_tempo_and_pitch(struct SequenceData *sfx);
extern struct SoundPlayer *scene_play_sound_to_tempo(struct SequenceData *sfx);
extern struct SoundPlayer *scene_play_random_sound(struct SequenceData **sfxPool);
extern struct SoundPlayer *scene_play_random_sound_to_tempo_and_pitch(struct SequenceData **sfxPool);
extern struct SoundPlayer *scene_play_random_sound_to_tempo(struct SequenceData **sfxPool);
extern void func_0800c390_stub(void);
extern u32 func_0800c394(void);
extern u32 func_0800c398(void);
extern s32 beats_to_ticks(u32); // Convert Script Tatums to Real-Time Frames
extern u32 get_current_mem_id(void); // Get Current Active Thread (Memory ID / SubScene)
extern void set_current_mem_id(u32 id); // Set Current Active Thread (Memory ID / SubScene)
extern void func_0800c3e4_stub(void);
extern void func_0800c3e8_stub(u32 arg);
extern void func_0800c3ec(u32 arg);
extern void func_0800c3fc_stub(void);
extern void func_0800c400_stub(void);
extern void func_0800c404_stub(void);
extern void func_0800c408_stub(void);
extern void func_0800c40c_stub(void);
extern void func_0800c410_stub(void);
extern void func_0800c414_stub(void);
extern void func_0800c418_stub(void);
extern void func_0800c41c_stub(void);
extern void func_0800c420_stub(void);
extern void func_0800c424_stub(void);
extern void func_0800c428_stub(void);
extern s32 scene_affine_group_alloc(void);
extern void *scene_mem_heap_alloc(u32 size);
extern s32 scene_start_new_task(struct TaskMethods *methods, void *inputs, TaskFinalFunc onFinish, u32 onFinishArg);
extern void scene_flush_save_buffer(void);
extern u32 func_0800c490(void);
extern void func_0800c494(u32 thread);
extern void func_0800c4ac_stub(void);
extern s32 func_0800c4b0(u32 type, u32 duration, void *source, s32 initial, s32 target);
extern s32 func_0800c508(u32 type, u32 interval, void *source, s32 initial, s32 target);
extern s32 func_0800c560(u32 type, u32 interval, void *source, s32 initial, s32 increment);
extern s32 func_0800c5b8(u32 type, void *source, s32 baseValue, s24_8 initialAngle, s24_8 speed);
extern void func_0800c604(u32 thread);
extern void func_0800c654_stub(void);
extern void func_0800c658_stub(void);
extern void func_0800c65c_stub(void);
extern struct BitmapFontOBJ *func_0800c660(u16 baseTileNum, u8 maxTileRows);
extern void func_0800c694(u32 arg);
extern void func_0800c6a4(void);
extern void func_0800c6c8(void);
extern void func_0800c6d4_stub(void);
extern void func_0800c6d8_stub(void);
extern void func_0800c6dc_stub(void);
extern void func_0800c6e0_stub(void);
// extern ? func_0800c6e4(?); // BEATSCRIPT - IF Statement Start
// extern ? func_0800c824(?); // BEATSCRIPT - ELSE Statement Start
// extern ? func_0800c95c(?); // BEATSCRIPT - SWITCH Statement Start
// extern ? func_0800c9a4(?); // BEATSCRIPT - CASE Statement End
// extern ? func_0800c9c8(?); // BEATSCRIPT - CMD_1E/CMD_1F Statement Start ("If?")
// extern ? func_0800ca1c(?); // BEATSCRIPT - CMD_20 Statement Start ("Else"?)
// extern ? func_0800ca70(?);
// extern ? func_0800cb28(?); // BEATSCRIPT - Update Stream
extern void func_0800dfbc_stub(void);
extern void func_0800dfc0_stub(void);
extern s32 func_0800dfc4(void); // a very broken (and unused) function
extern void func_0800dfe0_stub(void);
extern void func_0800dfe4_stub(void);
extern void func_0800dfe8_stub(void);
extern void func_0800dfec_stub(void);
extern void func_0800dff0_stub(void);
extern void func_0800dff4_stub(void);
extern void func_0800dff8_stub(void);
extern void func_0800dffc_stub(void);
extern void func_0800e000_stub(void);
extern void func_0800e004_stub(void);
extern void func_0800e008_stub(void);
extern void func_0800e00c_stub(void);
extern void func_0800e010_stub(void);
extern void func_0800e014_stub(void);
extern void scene_set_video_mode(s32 videoMode); // VIDEO - Set Video Mode
extern void scene_show_bg_layer(s32 layer); // VIDEO - Show BG Layer
extern void scene_hide_bg_layer(s32 layer); // VIDEO - Hide BG Layer
extern void scene_set_bg_layer_pos(s32 layer, s16 x, s16 y); // VIDEO - Set BG Layer Position
extern void scene_set_bg_layer_controls(s32 layer, s32 tileset, s32 map, s32 priority); // VIDEO - Set BG Layer Render Data
extern void scene_set_bg_layer_priority(s32 layer, s32 priority); // VIDEO - Set BG Layer Priority
extern void scene_set_bg_layer_display(s32 layer, s32 show, s32 x, s32 y, s32 tileset, s32 map, s32 params); // VIDEO - Set BG Layer Controls
extern void scene_show_obj_layer(void); // VIDEO - Display OBJ Layer
extern void scene_hide_obj_layer(void); // VIDEO - Hide OBJ Layer
extern void scene_enable_obj_windows(void); // Enable OBJ Windows
extern void scene_disable_obj_windows(void); // Disable OBJ Windows
extern void scene_set_obj_mosaic_size(s16 xSize, s16 ySize); // Set OBJ Mosaic Size
extern void scene_set_bg_mosaic_size(s16 xSize, s16 ySize); // Set BG Mosaic Size
extern s32 func_0800e1cc(s16 sprite, s16 startX, s16 startY, s8_8 xVel, s8_8 yVel);
extern s32 func_0800e208(s16 sprite, s8_8 xVel, s8_8 yVel);
extern s32 func_0800e25c(s16 sprite, s16 startX, s16 startY, s16 destX, s16 destY, s8_8 multiplier);
extern s32 func_0800e2a8(s16 sprite, s16 destX, s16 destY, s8_8 multiplier);
extern s32 func_0800e30c(s16 sprite, s16 startX, s16 startY, s16 destX, s16 destY, s8_8 velocity, s8_8 acceleration);
extern s32 func_0800e364(s16 sprite, s16 destX, s16 destY, s8_8 velocity, s8_8 acceleration);
extern s32 func_0800e3e4(s16 sprite, s16 startX, s16 startY, s16 destX, s16 destY, u16 duration);
extern s32 func_0800e430(s16 sprite, s16 destX, s16 destY, u16 duration);
extern s32 func_0800e490(s16 sprite, u8 angle, s16 baseX, s16 baseY, s16 baseOffset, s16 amplitude, s16 waveStart, s16 waveEnd, u16 duration);
extern s32 func_0800e4f8(s16 sprite, u8 angle, s16 amplitude, s16 waveStart, s16 waveEnd, u16 duration);
extern s32 func_0800e57c(s16 sprite, u32 mode, s16 startX, s16 startY, s16 destX, s16 destY, u16 duration);
extern s32 func_0800e62c(s16 sprite, u32 mode, s16 destX, s16 destY, u16 duration);
extern s32 func_0800e694(s16 sprite, s16 startX, s16 startY, s16 destX, s16 destY, s16 amplitude, u16 duration);
extern s32 func_0800e6ec(s16 sprite, s16 destX, s16 destY, s16 amplitude, u16 duration);
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
extern void func_0800e940_stub(void);
extern void func_0800e944_stub(void);
extern void func_0800e948(void);
extern void func_0800e970(void);
extern void func_0800e9d8(void);
extern void func_0800e9f8(void);
extern void func_0800ea1c(u16 arg);
extern void func_0800ea2c(s16 arg);
extern void func_0800ea3c(u16 arg);
extern void func_0800ea70(u16 arg);
extern s32 func_0800eaa0(void);
extern void scene_tempo_interp_stop(void);
extern void scene_tempo_interp_update(void);
extern void scene_tempo_interp_start(u32 initial, u32 target, u32 duration);
extern void scene_interpolate_tempo(u32 target, u32 duration); // BEATSCRIPT - Change Tempo
extern void scene_music_pitch_interp_stop(void);
extern void scene_music_pitch_interp_update(void);
extern void scene_music_pitch_interp_start(s32 initial, s32 target, u32 duration);
extern void scene_interpolate_music_pitch(s32 target, u32 duration); // BEATSCRIPT - Change Music Pitch
extern void scene_set_music_interp_enabled(u32 enable);
extern void func_0800ed24(u32 duration); // BEATSCRIPT - Fade-In Music
extern void func_0800ed3c(u32 duration); // BEATSCRIPT - Fade-Out Music
extern void func_0800ed54_stub(void);
extern void func_0800ed58_stub(void);
extern void func_0800ed5c_stub(void);
extern void func_0800ed60_stub(u32 speed);
// extern ? func_0800ed64(?);
extern void func_0800edb8(void *data);
// extern ? func_0800edc8(?);
extern void func_0800edfc(void *bgPalette);
extern void func_0800ee1c(void *objPalette);
extern void func_0800ee3c(void *bgPalette);
extern void func_0800ee5c(void *objPalette);
extern void func_0800ee7c(void *bgPalette);
extern void func_0800ee9c(void *objPalette);
extern void func_0800eebc(char *dest, const char *src);
extern void func_0800f070(u32 id, const char *string);
extern void func_0800f084(void);
extern void func_0800f09c(struct BitmapFontOBJ *objFont);

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
