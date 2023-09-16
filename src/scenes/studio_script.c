#include "global.h"
#include "studio.h"
#include "graphics/studio/studio_graphics.h"


/* STUDIO SCRIPT FUNCTIONS */


static u8 sStudioDrummerMode;


// Get Studio Drummer Script (Script Function)
const struct Beatscript *get_studio_mus_script(void) {
    return gStudio->drumScript;
}


// Fade Music Out (Script Function)
void fade_out_studio_mus(void) {
    fade_out_soundplayer(gStudio->musicPlayer, 16);
}


// Set Studio Drummer Mode
void set_studio_drummer_mode(u32 mode) {
    sStudioDrummerMode = mode;
}


// Mute Selected Tracks (Script Function)
void mute_studio_mus_tracks(u32 tracks) {
    u32 targets = tracks;
    u32 volume = 0;

    if (sStudioDrummerMode == STUDIO_DRUMMER_MODE_LISTEN) {
        targets = 0;
    }

    D_030053c0.musicTrkTargets = targets;
    D_030053c0.musicTrkVolume = volume;
}


// Play Drumming Count-In SFX (Script Function)
void play_studio_mus_count_in(void) {
    if (sStudioDrummerMode == STUDIO_DRUMMER_MODE_RECORD) {
        play_sound(&s_intro_stick_seqData);
    }
}


// Get Studio Drummer Mode
u32 get_studio_drummer_mode(void) {
    return sStudioDrummerMode;
}


// Remix 7 Music - Remix 2 (Script Function)
void start_studio_mus_remix2(void) {
    struct SoundPlayer *player;

    player = play_sound_in_player(MUSIC_PLAYER_1, &L2_pat00_seqData);
    fade_in_soundplayer(player, ticks_to_frames(0x60));
}


// Remix 7 Music - Remix 1 (Script Function)
void start_studio_mus_remix7_end(void) {
    struct SoundPlayer *player;

    player = play_sound_in_player(MUSIC_PLAYER_1, &Lesson1_seqData);
    set_soundplayer_speed(player, 0x117);
}


// Remix 7 Music - Remix 1 (Script Function)
void slow_studio_mus_remix7_end(void) {
    struct SoundPlayer *player;

    player = get_soundplayer_by_sound(&Lesson1_seqData);
    set_soundplayer_speed(player, 0x100);
}


// Remix 7 Music - Remix 1 (Script Function)
void stop_studio_mus_remix7_end(void) {
    struct SoundPlayer *player;

    player = get_soundplayer_by_sound(&Lesson1_seqData);
    stop_soundplayer(player);
}
