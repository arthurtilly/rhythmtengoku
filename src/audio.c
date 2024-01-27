#include "audio.h"
#include "src/midi/midi.h"


/* AUDIO LIBRARY INTERFACE */


// Get SongTable Index
u16 get_sound_num(struct SongHeader *song) {
    return song->songNum;
}


// Play Sound
struct SoundPlayer *play_sound(struct SongHeader *song) {
    struct SoundPlayer *soundPlayer;
    u32 id;

    if (song == NULL) {
        return NULL;
    }

    id = get_sound_num(song);
    midi_player_play_id(id);
    soundPlayer = sound_player_table[song_header_table[id].player].soundPlayer;

    if (soundPlayer->song == song) {
        return soundPlayer;
    } else {
        return NULL;
    }
}


// Play Sound in Specified Player
struct SoundPlayer *play_sound_in_player(s32 playerID, struct SongHeader *song) {
    midi_player_play_header(sound_players[playerID], song);

    return sound_players[playerID];
}


// Play Sound at Given Volume & Pitch
struct SoundPlayer *play_sound_w_pitch_volume(struct SongHeader *song, u24_8 volume, s24_8 pitch) {
    struct SoundPlayer *soundPlayer;

    soundPlayer = play_sound(song);
    set_soundplayer_volume(soundPlayer, volume);
    set_soundplayer_pitch(soundPlayer, pitch);

    return soundPlayer;
}


// Play Sound in Specified Player, at Given Volume & Pitch
struct SoundPlayer *play_sound_in_player_w_pitch_volume(s32 playerID, struct SongHeader *song, u24_8 volume, s24_8 pitch) {
    struct SoundPlayer *soundPlayer;

    soundPlayer = sound_players[playerID];
    midi_player_play_header(soundPlayer, song);
    set_soundplayer_volume(soundPlayer, volume);
    set_soundplayer_pitch(soundPlayer, pitch);

    return soundPlayer;
}


// Play Sound (unless it is already playing)
struct SoundPlayer *continue_sound(struct SongHeader *song) {
    struct SoundPlayer *soundPlayer;
    u32 id;

    if (song == NULL) {
        return NULL;
    }

    id = get_sound_num(song);
    soundPlayer = sound_player_table[song_header_table[id].player].soundPlayer;

    if (soundPlayer->song != song) {
        midi_player_play_id(id);

        if (soundPlayer->song != song) {
            soundPlayer = NULL;
        }
    }

    return soundPlayer;
}


// Stop All Instances of This Sound
void stop_sound(struct SongHeader *song) {
    struct SoundPlayer *soundPlayer;
    u32 isPlayingThisSound;
    u32 i;

    if (song == NULL) {
        return;
    }

    for (i = 0; i < sound_player_count; i++) {
        soundPlayer = sound_player_table[i].soundPlayer;
        isPlayingThisSound = (soundPlayer->song == song);

        if (isPlayingThisSound) {
            midi_player_fade_out_to_stop(soundPlayer, 0);
        }
    }
}


// Set Pause for All Instances of This Sound
void pause_sound(struct SongHeader *song, u32 pause) {
    struct SoundPlayer *soundPlayer;
    u32 isPlayingThisSound;
    u32 i;

    if (song == NULL) {
        return;
    }

    for (i = 0; i < sound_player_count; i++) {
        soundPlayer = sound_player_table[i].soundPlayer;
        isPlayingThisSound = (soundPlayer->song == song);

        if (isPlayingThisSound) {
            pause_soundplayer(soundPlayer, pause);
        }
    }
}


// Fade Out All Instances of This Sound
void fade_out_sound(struct SongHeader *song, u16 duration) {
    struct SoundPlayer *soundPlayer;
    u32 isPlayingThisSound;
    u32 i;

    if (song == NULL) {
        return;
    }

    for (i = 0; i < sound_player_count; i++) {
        soundPlayer = sound_player_table[i].soundPlayer;
        isPlayingThisSound = (soundPlayer->song == song);

        if (isPlayingThisSound) {
            midi_player_fade_out_to_stop(soundPlayer, duration);
        }
    }
}


// Stop SoundPlayer
void stop_soundplayer(struct SoundPlayer *soundPlayer) {
    if (soundPlayer != NULL) {
        midi_player_fade_out_to_stop(soundPlayer, 0);
    }
}


// Stop All SoundPlayers
void stop_all_soundplayers(void) {
    struct SoundPlayer *soundPlayer;
    u32 i;

    for (i = 0; i < sound_player_count; i++) {
        soundPlayer = sound_player_table[i].soundPlayer;
        midi_player_fade_out_to_stop(soundPlayer, 0);
    }
}


// Pause SoundPlayer
void pause_soundplayer(struct SoundPlayer *soundPlayer, u32 pause) {
    if (soundPlayer != NULL) {
        if (pause) {
            midi_player_pause(soundPlayer);
        } else {
            midi_player_unpause(soundPlayer);
        }
    }
}


// Pause All SoundPlayers
void pause_all_soundplayers(u32 pause) {
    if (pause) {
        midi_player_pause_all();
    } else {
        midi_player_unpause_all();
    }
}


// Set SoundPlayer Speed Envelope
void set_soundplayer_speed(struct SoundPlayer *soundPlayer, u8_8 speed) {
    if (soundPlayer != NULL) {
        midi_player_set_speed(soundPlayer, speed);
    }
}


// Set SoundPlayer Pitch Envelope
void set_soundplayer_pitch(struct SoundPlayer *soundPlayer, s8_8 pitch) {
    if (soundPlayer != NULL) {
        midi_player_set_pitch(soundPlayer, 0xFFFF, pitch);
    }
}


// Fade In SoundPlayer
void fade_in_soundplayer(struct SoundPlayer *soundPlayer, u16 duration) {
    if (soundPlayer != NULL) {
        midi_player_fade_in(soundPlayer, duration);
    }
}


// Fade Out SoundPlayer
void fade_out_soundplayer(struct SoundPlayer *soundPlayer, u16 duration) {
    if (soundPlayer != NULL) {
        midi_player_fade_out_to_stop(soundPlayer, duration);
    }
}


// Fade Out All SoundPlayers
void fade_out_all_soundplayers(u16 duration) {
    struct SoundPlayer *soundPlayer;
    u32 i;

    for (i = 0; i < sound_player_count; i++) {
        soundPlayer = sound_player_table[i].soundPlayer;
        midi_player_fade_out_to_stop(soundPlayer, duration);
    }
}


// Set SoundPlayer Primary Volume Envelope
void set_soundplayer_volume(struct SoundPlayer *soundPlayer, u8_8 volume) {
    if (soundPlayer != NULL) {
        midi_player_set_volume_a(soundPlayer, volume);
    }
}


// Set SoundPlayer Secondary Volume Envelope and Track Mask
void set_soundplayer_track_volume(struct SoundPlayer *soundPlayer, u16 trackMask, u8_8 volume) {
    if (soundPlayer != NULL) {
        midi_player_set_volume_b(soundPlayer, trackMask, volume);
    }
}


// Set SoundPlayer Panning
void set_soundplayer_panning(struct SoundPlayer *soundPlayer, s8 panning) {
    if (soundPlayer != NULL) {
        midi_player_set_panning(soundPlayer, 0xFFFF, panning);
    }
}


// Get Sound from SoundPlayer
struct SongHeader *get_sound_from_player(struct SoundPlayer *soundPlayer) {
    if (soundPlayer == NULL) {
        return NULL;
    }

    return soundPlayer->song;
}


// Get Sound from SoundPlayer ID
struct SongHeader *get_sound_from_player_id(s32 playerID) {
    return sound_player_table[playerID].soundPlayer->song;
}


// Get SoundPlayer from ID
struct SoundPlayer *get_soundplayer_from_id(s32 playerID) {
    if (playerID < 0) {
        return NULL;
    }

    return sound_player_table[playerID].soundPlayer;
}


// Check if SoundPlayer is Playing Sound
u32 soundplayer_is_playing(struct SoundPlayer *soundPlayer) {
    if (soundPlayer == NULL) {
        return FALSE;
    }

    return midi_player_is_playing(soundPlayer);
}


// Set SoundPlayer Key Offset
void set_soundplayer_key(struct SoundPlayer *soundPlayer, s32 key) {
    if (soundPlayer != NULL) {
        midi_bus_set_key(soundPlayer->midiBus, key);
    }
}


// Set DirectSound Mode
void set_sound_mode(u32 soundMode) {
    if (soundMode != DIRECTSOUND_MODE_STEREO) {
        REG_SOUNDCNT_H |= (SOUNDCNT_DIRECT_SOUND_A_LEFT_ENABLE | SOUNDCNT_DIRECT_SOUND_B_RIGHT_ENABLE);
    } else {
        REG_SOUNDCNT_H &= ~(SOUNDCNT_DIRECT_SOUND_A_LEFT_ENABLE | SOUNDCNT_DIRECT_SOUND_B_RIGHT_ENABLE);
    }

    midi_equalizer_set(soundMode, 166, 6);
}


// Get First Instance of This Sound
struct SoundPlayer *get_soundplayer_by_sound(struct SongHeader *song) {
    struct SoundPlayer *soundPlayer;
    u32 i;

    if (song == NULL) {
        return; // ???
    }

    for (i = 0; i < sound_player_count; i++) {
        soundPlayer = sound_player_table[i].soundPlayer;

        if (soundPlayer->song == song) {
            return soundPlayer;
        }
    }
}
