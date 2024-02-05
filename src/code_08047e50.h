#pragma once

#include "global.h"
#include "engines.h"
#include "engines/drum_studio.h"


// ?
extern void func_08047e50(struct SongHeader *sound);
extern void func_08047e64(struct Scene *target);

// Remix 2
extern void remix2_sync_bon_vocal(struct SongHeader *bonVocal);

// Remix 7
extern void remix7_fade_in_remix2_intro(void);
extern void remix7_start_last_remix1_bgm(void);
extern void remix7_slow_last_remix1_bgm(void);
extern void remix7_stop_last_remix1_bgm(void);

// Remix 6
extern void remix6_sync_rap_vocal(struct SongHeader *rapVocal);

// Drum Girls LIVE (Space Dance)
extern void drum_girls_space_dance_start_crowd_sfx(void);
extern void drum_girls_space_dance_stop_crowd_sfx(void);
extern void drum_girls_space_dance_play_count_in(u24_8 volume);

// Drum Girls LIVE (Honey Sweet Angel)
extern void drum_girls_honey_sweet_angel_start_crowd_sfx(void);
extern void drum_girls_honey_sweet_angel_stop_crowd_sfx(void);
extern void drum_girls_honey_sweet_angel_play_count_in(u24_8 volume);

// Drum Girls LIVE (Night Walk)
extern void drum_girls_night_walk_start_crowd_sfx(void);
extern void drum_girls_night_walk_stop_crowd_sfx(void);
extern void drum_girls_night_walk_play_count_in(u24_8 volume);

// Drum Boys LIVE (The Clappy Trio)
extern void drum_boys_clappy_trio_start_crowd_sfx(void);
extern void drum_boys_clappy_trio_stop_crowd_sfx(void);
extern void drum_boys_clappy_trio_play_count_in(u24_8 volume);

// Drum Boys LIVE (Tap Trial)
extern void drum_boys_tap_trial_start_crowd_sfx(void);
extern void drum_boys_tap_trial_stop_crowd_sfx(void);
extern void drum_boys_tap_trial_play_count_in(u24_8 volume);

// Drum Boys LIVE (WISH)
extern void drum_boys_wish_start_crowd_sfx(void);
extern void drum_boys_wish_stop_crowd_sfx(void);
extern void drum_boys_wish_play_count_in(u24_8 volume);

// Drum Samurai Band LIVE (Cosmic Dance)
extern void drum_band_cosmic_dance_start_crowd_sfx(void);
extern void drum_band_cosmic_dance_stop_crowd_sfx(void);
extern void drum_band_cosmic_dance_play_count_in(u24_8 volume);

// Drum Samurai Band LIVE (The Snappy Trio)
extern void drum_band_snappy_trio_start_crowd_sfx(void);
extern void drum_band_snappy_trio_stop_crowd_sfx(void);
extern void drum_band_snappy_trio_play_count_in(u24_8 volume);

// Drum Samurai Band LIVE (Tap Trial 2)
extern void drum_band_tap_trial_2_start_crowd_sfx(void);
extern void drum_band_tap_trial_2_stop_crowd_sfx(void);
extern void drum_band_tap_trial_2_play_count_in(u24_8 volume);

// Drum Lessons
extern void drum_lesson_script_import_pattern(struct DrumLessonPattern *pattern);
extern void drum_lesson_script_end_pattern(void);
