#include "global.h"
#include "code_08047e50.h"


/* MISCELLANEOUS SCRIPT FUNCTIONS */
/* (could be split more) */


// - - - - - - - - - - ??? - - - - - - - - - - //


// Play Sound and Mute MIDI_TRACK_3
void func_08047e50(struct SongHeader *sound) {
    struct SoundPlayer *soundPlayer;

    soundPlayer = play_sound(sound);
    set_soundplayer_track_volume(soundPlayer, MIDI_TRACK_3, 0);
}


// Set Results (Score Ver.) Scene Target
void func_08047e64(struct Scene *target) {
    set_scene_trans_target(&scene_results_ver_score, target);
}


// - - - - - - - - - - Remix 2 - - - - - - - - - - //


// Play and Synchronize Bon Odori Vocals
void remix2_sync_bon_vocal(struct SongHeader *bonVocal) {
    struct SoundPlayer *soundPlayer;
    s24_8 pitch = INT_TO_FIXED(1.171875);
    u24_8 volume = INT_TO_FIXED(1.25);

    soundPlayer = play_sound_w_pitch_volume(bonVocal, volume, pitch);
    set_soundplayer_speed(soundPlayer, Div(INT_TO_FIXED(133), 121));
}


// - - - - - - - - - - Remix 7 - - - - - - - - - - //


// Fade-In Remix 2 Music
void remix7_fade_in_remix2_intro(void) {
    struct SoundPlayer *soundPlayer;

    soundPlayer = play_sound_in_player(MUSIC_PLAYER_1, &L2_pat00_seqData);
    fade_in_soundplayer(soundPlayer, ticks_to_frames(96));
}


// Start Last Section Remix 1 Music
void remix7_start_last_remix1_bgm(void) {
    struct SoundPlayer *soundPlayer;

    soundPlayer = play_sound_in_player(MUSIC_PLAYER_1, &Lesson1_seqData);
    set_soundplayer_speed(soundPlayer, INT_TO_FIXED(1.08984375));
    gameplay_set_inter_engine_variable(0, (s32)soundPlayer);
}


// Slow Down Last Section Remix 1 Music
void remix7_slow_last_remix1_bgm(void) {
    struct SoundPlayer *soundPlayer;

    soundPlayer = (struct SoundPlayer *)gameplay_get_inter_engine_variable(0);
    set_soundplayer_speed(soundPlayer, INT_TO_FIXED(1.0));
}


// Stop Last Section Remix 1 Music
void remix7_stop_last_remix1_bgm(void) {
    struct SoundPlayer *soundPlayer;

    soundPlayer = (struct SoundPlayer *)gameplay_get_inter_engine_variable(0);
    stop_soundplayer(soundPlayer);
}


// - - - - - - - - - - Remix 6 - - - - - - - - - - //


// Play and Synchronize Rap Men Vocals
void remix6_sync_rap_vocal(struct SongHeader *rapVocal) {
    struct SoundPlayer *soundPlayer;

    soundPlayer = play_sound(rapVocal);
    set_soundplayer_speed(soundPlayer, INT_TO_FIXED(0.77734375));
}


// - - - - - - - - - - Drum Girls LIVE (Space Dance) - - - - - - - - - - //


// Start Crowd Chatter
void drum_girls_space_dance_start_crowd_sfx(void) {
    play_sound_in_player(MUSIC_PLAYER_2, &s_studio_bgm_seqData);
}


// End Crowd Chatter
void drum_girls_space_dance_stop_crowd_sfx(void) {
    fade_out_sound(&s_studio_bgm_seqData, ticks_to_frames(48));
}


// Play Count-In Stick
void drum_girls_space_dance_play_count_in(u24_8 volume) {
    if (volume != 0) {
        play_sound_in_player_w_pitch_volume(SFX_PLAYER_5, &s_intro_stick_seqData, volume, 0);
    } else {
        play_sound_in_player(SFX_PLAYER_5, &s_intro_stick_seqData);
    }
}


// - - - - - - - - - - Drum Girls LIVE (Honey Sweet Angel) - - - - - - - - - - //


// Start Crowd Chatter
void drum_girls_honey_sweet_angel_start_crowd_sfx(void) {
    play_sound_in_player(MUSIC_PLAYER_2, &s_studio_bgm_seqData);
}


// End Crowd Chatter
void drum_girls_honey_sweet_angel_stop_crowd_sfx(void) {
    fade_out_sound(&s_studio_bgm_seqData, ticks_to_frames(48));
}


// Play Count-In Stick
void drum_girls_honey_sweet_angel_play_count_in(u24_8 volume) {
    if (volume != 0) {
        play_sound_in_player_w_pitch_volume(SFX_PLAYER_5, &s_intro_stick_seqData, volume, 0);
    } else {
        play_sound_in_player(SFX_PLAYER_5, &s_intro_stick_seqData);
    }
}


// - - - - - - - - - - Drum Girls LIVE (Night Walk) - - - - - - - - - - //


// Start Crowd Chatter
void drum_girls_night_walk_start_crowd_sfx(void) {
    play_sound_in_player(MUSIC_PLAYER_2, &s_studio_bgm_seqData);
}


// End Crowd Chatter
void drum_girls_night_walk_stop_crowd_sfx(void) {
    fade_out_sound(&s_studio_bgm_seqData, ticks_to_frames(48));
}


// Play Count-In Stick
void drum_girls_night_walk_play_count_in(u24_8 volume) {
    if (volume != 0) {
        play_sound_in_player_w_pitch_volume(SFX_PLAYER_5, &s_intro_stick_seqData, volume, 0);
    } else {
        play_sound_in_player(SFX_PLAYER_5, &s_intro_stick_seqData);
    }
}


// - - - - - - - - - - Drum Boys LIVE (The Clappy Trio) - - - - - - - - - - //


// Start Crowd Chatter
void drum_boys_clappy_trio_start_crowd_sfx(void) {
    play_sound_in_player(MUSIC_PLAYER_2, &s_studio_bgm_seqData);
}


// End Crowd Chatter
void drum_boys_clappy_trio_stop_crowd_sfx(void) {
    fade_out_sound(&s_studio_bgm_seqData, ticks_to_frames(48));
}


// Play Count-In Stick
void drum_boys_clappy_trio_play_count_in(u24_8 volume) {
    if (volume != 0) {
        play_sound_in_player_w_pitch_volume(SFX_PLAYER_5, &s_intro_stick_seqData, volume, 0);
    } else {
        play_sound_in_player(SFX_PLAYER_5, &s_intro_stick_seqData);
    }
}


// - - - - - - - - - - Drum Boys LIVE (Tap Trial) - - - - - - - - - - //


// Start Crowd Chatter
void drum_boys_tap_trial_start_crowd_sfx(void) {
    play_sound_in_player(MUSIC_PLAYER_2, &s_studio_bgm_seqData);
}


// End Crowd Chatter
void drum_boys_tap_trial_stop_crowd_sfx(void) {
    fade_out_sound(&s_studio_bgm_seqData, ticks_to_frames(48));
}


// Play Count-In Stick
void drum_boys_tap_trial_play_count_in(u24_8 volume) {
    if (volume != 0) {
        play_sound_in_player_w_pitch_volume(SFX_PLAYER_5, &s_intro_stick_seqData, volume, 0);
    } else {
        play_sound_in_player(SFX_PLAYER_5, &s_intro_stick_seqData);
    }
}


// - - - - - - - - - - Drum Boys LIVE (WISH) - - - - - - - - - - //


// Start Crowd Chatter
void drum_boys_wish_start_crowd_sfx(void) {
    play_sound_in_player(MUSIC_PLAYER_2, &s_studio_bgm_seqData);
}


// End Crowd Chatter
void drum_boys_wish_stop_crowd_sfx(void) {
    fade_out_sound(&s_studio_bgm_seqData, ticks_to_frames(48));
}


// Play Count-In Stick
void drum_boys_wish_play_count_in(u24_8 volume) {
    if (volume != 0) {
        play_sound_in_player_w_pitch_volume(SFX_PLAYER_5, &s_intro_stick_seqData, volume, 0);
    } else {
        play_sound_in_player(SFX_PLAYER_5, &s_intro_stick_seqData);
    }
}


// - - - - - - - - - - Drum Samurai Band LIVE (Cosmic Dance) - - - - - - - - - - //


// Start Crowd Chatter
void drum_band_cosmic_dance_start_crowd_sfx(void) {
    play_sound_in_player(MUSIC_PLAYER_2, &s_studio_bgm_seqData);
}


// End Crowd Chatter
void drum_band_cosmic_dance_stop_crowd_sfx(void) {
    fade_out_sound(&s_studio_bgm_seqData, ticks_to_frames(48));
}


// Play Count-In Stick
void drum_band_cosmic_dance_play_count_in(u24_8 volume) {
    if (volume != 0) {
        play_sound_in_player_w_pitch_volume(SFX_PLAYER_5, &s_intro_stick_seqData, volume, 0);
    } else {
        play_sound_in_player(SFX_PLAYER_5, &s_intro_stick_seqData);
    }
}


// - - - - - - - - - - Drum Samurai Band LIVE (The Snappy Trio) - - - - - - - - - - //


// Start Crowd Chatter
void drum_band_snappy_trio_start_crowd_sfx(void) {
    play_sound_in_player(MUSIC_PLAYER_2, &s_studio_bgm_seqData);
}


// End Crowd Chatter
void drum_band_snappy_trio_stop_crowd_sfx(void) {
    fade_out_sound(&s_studio_bgm_seqData, ticks_to_frames(48));
}


// Play Count-In Stick
void drum_band_snappy_trio_play_count_in(u24_8 volume) {
    if (volume != 0) {
        play_sound_in_player_w_pitch_volume(SFX_PLAYER_5, &s_intro_stick_seqData, volume, 0);
    } else {
        play_sound_in_player(SFX_PLAYER_5, &s_intro_stick_seqData);
    }
}


// - - - - - - - - - - Drum Samurai Band LIVE (Tap Trial 2) - - - - - - - - - - //


// Start Crowd Chatter
void drum_band_tap_trial_2_start_crowd_sfx(void) {
    play_sound_in_player(MUSIC_PLAYER_2, &s_studio_bgm_seqData);
}


// End Crowd Chatter
void drum_band_tap_trial_2_stop_crowd_sfx(void) {
    fade_out_sound(&s_studio_bgm_seqData, ticks_to_frames(48));
}


// Play Count-In Stick
void drum_band_tap_trial_2_play_count_in(u24_8 volume) {
    if (volume != 0) {
        play_sound_in_player_w_pitch_volume(SFX_PLAYER_5, &s_intro_stick_seqData, volume, 0);
    } else {
        play_sound_in_player(SFX_PLAYER_5, &s_intro_stick_seqData);
    }
}


// - - - - - - - - - - Drum Lessons - - - - - - - - - - //


// Load Pattern
void drum_lesson_script_import_pattern(struct DrumLessonPattern *pattern) {
    gameplay_run_engine_event_w_param(&drum_studio_engine, 0x0E, 0);
    gameplay_run_engine_event_w_param(&drum_studio_engine, 0x0E, (s32)pattern->beat1);
    gameplay_run_engine_event_w_param(&drum_studio_engine, 0x0E, (s32)pattern->beat2);
    gameplay_run_engine_event_w_param(&drum_studio_engine, 0x0E, (s32)pattern->cheerSfx);
    gameplay_run_engine_event_w_param(&drum_studio_engine, 0x0D, (s32)pattern->dialogue);
    gameplay_run_engine_event_w_param(&drum_studio_engine, 0x10, 1);
}


// End of Pattern?
void drum_lesson_script_end_pattern(void) {
    struct SoundPlayer *soundPlayer;
    struct SongHeader *sound;

    sound = (struct SongHeader *)gameplay_run_engine_event_w_param(&drum_studio_engine, 0x0F, 2);
    soundPlayer = play_sound_in_player_w_pitch_volume(MUSIC_PLAYER_1, sound, 0xA0, 0);
    gameplay_run_engine_event_w_param(&drum_studio_engine, 0x19, (s32)soundPlayer);
}
