#pragma once
#include "sound.h"
#include "data/beatscript_scene_data.h"


/* Main Game Handler */


struct struct_0800b71c_sub {
    u8 unk0;
    u32 unk1:10;
    u32 unk4;
};

struct struct_0800b71c {
    u8 unk0;
    u32 unk1_0:1;
    u32 unk1_1:23;
    struct struct_0800b71c_sub *unk4;
};

extern u8 func_0800b634(s16 *arg0, s16 *arg1, s16 *arg2, s16 *arg3);
extern void func_0800b698(void);
extern void func_0800b6bc(void (*function)(s32), s32 param);
extern void func_0800b6dc(struct struct_0800b71c *, u32, u32, struct struct_0800b71c_sub *);
extern void func_0800b71c(struct struct_0800b71c *, u32, u32, u32);
extern void func_0800b768(void);
extern void func_0800b76c(void);
extern void func_0800b770(void);
extern void func_0800b774(void);
extern void start_beatscript_scene(u32 memID); // Beatscript Init.
extern void set_beatscript_subscenes(const struct SubScene **subScenes); // Set SubScenes
extern void update_paused_beatscript_scene(void); // ? (called each loop after the pause menu has been opened at least once)
extern void update_active_beatscript_scene(void); // Beatscript Update
extern s32 beatscript_scene_is_inactive(void); // Check if No Beatscript Threads Are Active
extern void beatscript_enable_loops(void); // Enable Loops
extern void func_0800bc58(void); // Delayed Loop Exit Task Function
extern void beatscript_exit_loop_after_delay(u32 duration); // Exit Loop After Delay
extern void beatscript_exit_loop_after_one_beat(void); // Exit Loop After One Beat
extern void beatscript_force_exit_loop(void); // Exit Loop (If Within a Loop)
extern void beatscript_disable_loops(void); // Force Stop Loop
extern void beatscript_force_exit_loop_next_update(void); // Exit Loop on Next Update
extern void set_pause_beatscript_scene(u32); // Pause Script
extern u32 beatscript_scene_is_paused(void); // Check if Beatscript Handler Is Paused
extern void stop_beatscript_scene(void); // Beatscript Engine Force Quit
extern void set_beatscript_tempo(u16 tempo); // Set Script Tempo
extern void update_beatscript_tempo(void); // Update Script Tempo (retain unk1_b7)
extern void set_beatscript_speed(u16 speed); // Set Script Speed (Q8.8)
extern void func_0800be9c(void);
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
extern void scene_update_music_pitch(void); // Update Music Pitch (retain unk2_b0)
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
extern u32 func_0800c1b4(void); // Get unk10
extern s32 func_0800c1c0(s24_8 arg); // Return (arg * unk10)
extern s32 func_0800c1d0(s24_8 arg); // Return (arg * (unk10 * unk10))
// extern ? func_0800c1e8(?); // Set Music Panning
// extern ? func_0800c228(?);
extern struct SoundPlayer *scene_play_sound_to_tempo_and_pitch(struct SequenceData *sfx);
extern struct SoundPlayer *scene_play_sound_to_tempo(struct SequenceData *sfx);
// extern ? func_0800c2d0(?);
// extern ? func_0800c310(?);
// extern ? func_0800c350(?);
extern void func_0800c390(void);
extern u32 func_0800c394(void);
extern u32 func_0800c398(void);
extern s32 beats_to_ticks(u32); // Convert Script Tatums to Real-Time Frames
extern u32 get_current_mem_id(void); // Get Current Active Thread (Memory ID / SubScene)
extern void set_current_mem_id(u32 id); // Set Current Active Thread (Memory ID / SubScene)
extern void func_0800c3e4(void);
extern void func_0800c3e8(u32 arg);
extern void func_0800c3ec(u32 arg);
extern void func_0800c3fc(void);
extern void func_0800c400(void);
extern void func_0800c404(void);
extern void func_0800c408(void);
extern void func_0800c40c(void);
extern void func_0800c410(void);
extern void func_0800c414(void);
extern void func_0800c418(void);
extern void func_0800c41c(void);
extern void func_0800c420(void);
extern void func_0800c424(void);
extern void func_0800c428(void);
extern s32 scene_affine_group_alloc(void);
extern void *scene_mem_heap_alloc(u32 size);
// extern ? func_0800c454(?);
extern void scene_flush_save_buffer(void);
extern u32 func_0800c490(void);
extern void func_0800c494(u32 thread);
extern void func_0800c4ac(void);
// extern ? func_0800c4b0(?);
// extern ? func_0800c508(?);
// extern ? func_0800c560(?);
// extern ? func_0800c5b8(?);
extern void func_0800c604(u32 thread);
extern void func_0800c654(void);
extern void func_0800c658(void);
extern void func_0800c65c(void);
extern struct BitmapFontOBJ *func_0800c660(u16, u8);
// extern ? func_0800c694(?);
// extern ? func_0800c6a4(?);
// extern ? func_0800c6c8(?);
extern void func_0800c6d4(void);
extern void func_0800c6d8(void);
extern void func_0800c6dc(void);
extern void func_0800c6e0(void);
// extern ? func_0800c6e4(?); // BEATSCRIPT - IF Statement Start
// extern ? func_0800c824(?); // BEATSCRIPT - ELSE Statement Start
// extern ? func_0800c95c(?); // BEATSCRIPT - SWITCH Statement Start
// extern ? func_0800c9a4(?); // BEATSCRIPT - CASE Statement End
// extern ? func_0800c9c8(?); // BEATSCRIPT - CMD_1E/CMD_1F Statement Start ("If?")
// extern ? func_0800ca1c(?); // BEATSCRIPT - CMD_20 Statement Start ("Else"?)
// extern ? func_0800ca70(?);
// extern ? func_0800cb28(?); // BEATSCRIPT - Update Stream
extern void func_0800dfbc(void);
extern void func_0800dfc0(void);
extern s32 func_0800dfc4(void); // a very broken (and unused) function
extern void func_0800dfe0(void);
extern void func_0800dfe4(void);
extern void func_0800dfe8(void);
extern void func_0800dfec(void);
extern void func_0800dff0(void);
extern void func_0800dff4(void);
extern void func_0800dff8(void);
extern void func_0800dffc(void);
extern void func_0800e000(void);
extern void func_0800e004(void);
extern void func_0800e008(void);
extern void func_0800e00c(void);
extern void func_0800e010(void);
extern void func_0800e014(void);
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
// extern ? func_0800e1cc(?);
// extern ? func_0800e208(?);
// extern ? func_0800e25c(?);
// extern ? func_0800e2a8(?);
// extern ? func_0800e30c(?);
// extern ? func_0800e364(?);
extern s32 func_0800e3e4(s16 sprite, s32 initX, s32 initY, s32 targetX, s32 targetY, u16 duration); // Sprite LERP Task
// extern ? func_0800e430(?);
// extern ? func_0800e490(?);
// extern ? func_0800e4f8(?);
// extern ? func_0800e57c(?);
extern void func_0800e62c(s16 sprite, u32 arg1, s16 x, s16 y, u16 duration);
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
extern void func_0800e940(void);
extern void func_0800e944(void);
// extern ? func_0800e948(?);
// extern ? func_0800e970(?);
// extern ? func_0800e9d8(?);
// extern ? func_0800e9f8(?);
// extern ? func_0800ea1c(?);
// extern ? func_0800ea2c(?);
// extern ? func_0800ea3c(?);
// extern ? func_0800ea70(?);
// extern ? func_0800eaa0(?);
extern void func_0800eb0c(void); // Clear unk1_b7
// extern ? func_0800eb1c(?);
extern void func_0800ebac(u32 initial, u32 target, u32 duration);
extern void func_0800ebf8(u32 target, u32 duration); // BEATSCRIPT - Change Tempo
extern void func_0800ec20(void); // Clear unk2_b0
// extern ? func_0800ec34(?);
extern void func_0800ecac(s32 initial, s32 target, u32 duration);
extern void func_0800ecec(s32 target, u32 duration); // BEATSCRIPT - Change Music Pitch
extern void func_0800ed08(u32 set); // Set unk2_b1
extern void func_0800ed24(u32 duration); // BEATSCRIPT - Fade-In Music
extern void func_0800ed3c(u32 duration); // BEATSCRIPT - Fade-Out Music
extern void func_0800ed54(void);
extern void func_0800ed58(void);
extern void func_0800ed5c(void);
extern void func_0800ed60(u32 speed);
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
