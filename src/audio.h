#pragma once

#include "global.h"
#include "sound.h"

extern u16 get_sound_num(struct SequenceData *sound);
extern struct SoundPlayer *play_sound(struct SequenceData *sound);
extern struct SoundPlayer *play_sound_in_player(s32 playerID, struct SequenceData *sound);
extern struct SoundPlayer *play_sound_w_pitch_volume(struct SequenceData *sound, u24_8 volume, s24_8 pitch);
extern struct SoundPlayer *play_sound_in_player_w_pitch_volume(s32 playerID, struct SequenceData *sound, u24_8 volume, s24_8 pitch);
extern struct SoundPlayer *func_080026fc(struct SequenceData *sound);
extern void stop_sound(struct SequenceData *sound);
extern void pause_sound(struct SequenceData *sound, u32 pause);
extern void fade_out_sound(struct SequenceData *sound, u16 duration);
extern void stop_soundplayer(struct SoundPlayer *soundPlayer);
extern void stop_all_soundplayers(void);
extern void pause_soundplayer(struct SoundPlayer *soundPlayer, u32 pause);
extern void pause_all_soundplayers(u32 pause);
extern void set_soundplayer_speed(struct SoundPlayer *soundPlayer, u8_8 speed);
extern void set_soundplayer_pitch(struct SoundPlayer *soundPlayer, s8_8 pitch);
extern void fade_in_soundplayer(struct SoundPlayer *soundPlayer, u16 duration);
extern void fade_out_soundplayer(struct SoundPlayer *soundPlayer, u16 duration);
extern void fade_out_all_soundplayers(u16 duration);
extern void set_soundplayer_volume(struct SoundPlayer *soundPlayer, u8_8 volume);
extern void set_soundplayer_track_volume(struct SoundPlayer *soundPlayer, u16 trackMask, u8_8 volume);
extern void set_soundplayer_panning(struct SoundPlayer *soundPlayer, s8 panning);
extern struct SequenceData *get_sound_from_player(struct SoundPlayer *soundPlayer);
extern struct SequenceData *get_sound_from_player_id(s32 playerID);
extern struct SoundPlayer *get_soundplayer_from_id(s32 playerID);
extern u32 soundplayer_is_playing(struct SoundPlayer *soundPlayer);
extern void set_soundplayer_key(struct SoundPlayer *soundPlayer, s32 key);
extern void func_080029d8(u32 soundMode);
extern struct SoundPlayer *get_soundplayer_by_sound(struct SequenceData *sound);
