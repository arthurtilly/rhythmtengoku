#include "audio.h"
#include "src/lib_08049144.h"


/* AUDIO LIBRARY INTERFACE */


// Get SoundTable Index
u16 get_sound_num(struct SequenceData *sound) {
    return sound->songNum;
}


// Play Sound
struct SoundPlayer *play_sound(struct SequenceData *sound) {
    struct SoundPlayer *soundPlayer;
    u32 id;

    if (sound == NULL) {
        return NULL;
    }

    id = get_sound_num(sound);
    func_0804b534(id);
    soundPlayer = D_08aa4460[D_08aa06f8[id].player].soundPlayer;

    if (soundPlayer->sequence == sound) {
        return soundPlayer;
    } else {
        return NULL;
    }
}


// Play Sound in Specified Player
struct SoundPlayer *play_sound_in_player(s32 playerID, struct SequenceData *sound) {
    func_0804b368(D_08aa4324[playerID], sound);

    return D_08aa4324[playerID];
}


// Play Sound at Given Volume & Pitch
struct SoundPlayer *play_sound_w_pitch_volume(struct SequenceData *sound, u24_8 volume, s24_8 pitch) {
    struct SoundPlayer *soundPlayer;

    soundPlayer = play_sound(sound);
    set_soundplayer_volume(soundPlayer, volume);
    set_soundplayer_pitch(soundPlayer, pitch);

    return soundPlayer;
}


// Play Sound in Specified Player, at Given Volume & Pitch
struct SoundPlayer *play_sound_in_player_w_pitch_volume(s32 playerID, struct SequenceData *sound, u24_8 volume, s24_8 pitch) {
    struct SoundPlayer *soundPlayer;

    soundPlayer = D_08aa4324[playerID];
    func_0804b368(soundPlayer, sound);
    set_soundplayer_volume(soundPlayer, volume);
    set_soundplayer_pitch(soundPlayer, pitch);

    return soundPlayer;
}


// Play Sound (unless it is already playing)
struct SoundPlayer *func_080026fc(struct SequenceData *sound) {
    struct SoundPlayer *soundPlayer;
    u32 id;

    if (sound == NULL) {
        return NULL;
    }

    id = get_sound_num(sound);
    soundPlayer = D_08aa4460[D_08aa06f8[id].player].soundPlayer;

    if (soundPlayer->sequence != sound) {
        func_0804b534(id);

        if (soundPlayer->sequence != sound) {
            soundPlayer = NULL;
        }
    }

    return soundPlayer;
}


// Stop All Instances of This Sound
void stop_sound(struct SequenceData *sound) {
    struct SoundPlayer *soundPlayer;
    u32 isPlayingThisSound;
    u32 i;

    if (sound == NULL) {
        return;
    }

    for (i = 0; i < D_08aa445c; i++) {
        soundPlayer = D_08aa4460[i].soundPlayer;
        isPlayingThisSound = (soundPlayer->sequence == sound);

        if (isPlayingThisSound) {
            func_0804b7dc(soundPlayer, 0);
        }
    }
}


// Set Pause for All Instances of This Sound
void pause_sound(struct SequenceData *sound, u32 pause) {
    struct SoundPlayer *soundPlayer;
    u32 isPlayingThisSound;
    u32 i;

    if (sound == NULL) {
        return;
    }

    for (i = 0; i < D_08aa445c; i++) {
        soundPlayer = D_08aa4460[i].soundPlayer;
        isPlayingThisSound = (soundPlayer->sequence == sound);

        if (isPlayingThisSound) {
            pause_soundplayer(soundPlayer, pause);
        }
    }
}


// Fade Out All Instances of This Sound
void fade_out_sound(struct SequenceData *sound, u16 duration) {
    struct SoundPlayer *soundPlayer;
    u32 isPlayingThisSound;
    u32 i;

    if (sound == NULL) {
        return;
    }

    for (i = 0; i < D_08aa445c; i++) {
        soundPlayer = D_08aa4460[i].soundPlayer;
        isPlayingThisSound = (soundPlayer->sequence == sound);

        if (isPlayingThisSound) {
            func_0804b7dc(soundPlayer, duration);
        }
    }
}


// Stop SoundPlayer
void stop_soundplayer(struct SoundPlayer *soundPlayer) {
    if (soundPlayer != NULL) {
        func_0804b7dc(soundPlayer, 0);
    }
}


// Stop All SoundPlayers
void stop_all_soundplayers(void) {
    struct SoundPlayer *soundPlayer;
    u32 i;

    for (i = 0; i < D_08aa445c; i++) {
        soundPlayer = D_08aa4460[i].soundPlayer;
        func_0804b7dc(soundPlayer, 0);
    }
}


// Pause SoundPlayer
void pause_soundplayer(struct SoundPlayer *soundPlayer, u32 pause) {
    if (soundPlayer != NULL) {
        if (pause) {
            func_0804b5d8(soundPlayer);
        } else {
            func_0804b5e4(soundPlayer);
        }
    }
}


// Pause All SoundPlayers
void pause_all_soundplayers(u32 pause) {
    if (pause) {
        func_0804b5f0();
    } else {
        func_0804b620();
    }
}


// Set SoundPlayer Speed Envelope
void set_soundplayer_speed(struct SoundPlayer *soundPlayer, u8_8 speed) {
    if (soundPlayer != NULL) {
        func_0804b710(soundPlayer, speed);
    }
}


// Set SoundPlayer Pitch Envelope
void set_soundplayer_pitch(struct SoundPlayer *soundPlayer, s8_8 pitch) {
    if (soundPlayer != NULL) {
        func_0804b65c(soundPlayer, 0xFFFF, pitch);
    }
}


// Fade In SoundPlayer
void fade_in_soundplayer(struct SoundPlayer *soundPlayer, u16 duration) {
    if (soundPlayer != NULL) {
        func_0804b7fc(soundPlayer, duration);
    }
}


// Fade Out SoundPlayer
void fade_out_soundplayer(struct SoundPlayer *soundPlayer, u16 duration) {
    if (soundPlayer != NULL) {
        func_0804b7dc(soundPlayer, duration);
    }
}


// Fade Out All SoundPlayers
void fade_out_all_soundplayers(u16 duration) {
    struct SoundPlayer *soundPlayer;
    u32 i;

    for (i = 0; i < D_08aa445c; i++) {
        soundPlayer = D_08aa4460[i].soundPlayer;
        func_0804b7dc(soundPlayer, duration);
    }
}


// Set SoundPlayer Volume
void set_soundplayer_volume(struct SoundPlayer *soundPlayer, u8_8 volume) {
    if (soundPlayer != NULL) {
        func_0804b650(soundPlayer, volume);
    }
}


// Set SoundPlayer Track Volume & Mask
void set_soundplayer_track_volume(struct SoundPlayer *soundPlayer, u16 trackMask, u8_8 volume) {
    if (soundPlayer != NULL) {
        func_0804b654(soundPlayer, trackMask, volume);
    }
}


// Set SoundPlayer Panning
void set_soundplayer_panning(struct SoundPlayer *soundPlayer, s8 panning) {
    if (soundPlayer != NULL) {
        func_0804b66c(soundPlayer, 0xFFFF, panning);
    }
}


// Get Sound from SoundPlayer
struct SequenceData *get_sound_from_player(struct SoundPlayer *soundPlayer) {
    if (soundPlayer == NULL) {
        return NULL;
    }

    return soundPlayer->sequence;
}


// Get Sound from SoundPlayer ID
struct SequenceData *get_sound_from_player_id(s32 playerID) {
    return D_08aa4460[playerID].soundPlayer->sequence;
}


// Get SoundPlayer from ID
struct SoundPlayer *get_soundplayer_from_id(s32 playerID) {
    if (playerID < 0) {
        return NULL;
    }

    return D_08aa4460[playerID].soundPlayer;
}


// Check if SoundPlayer is Playing Sound
u32 soundplayer_is_playing(struct SoundPlayer *soundPlayer) {
    if (soundPlayer == NULL) {
        return FALSE;
    }

    return func_0804b5a0(soundPlayer);
}


// Set SoundPlayer Key Offset
void set_soundplayer_key(struct SoundPlayer *soundPlayer, s32 key) {
    if (soundPlayer != NULL) {
        func_0804adb0(soundPlayer->midiBus, key);
    }
}


// Set DirectSound Mode
void func_080029d8(u32 soundMode) {
    if (soundMode != DIRECTSOUND_MODE_STEREO) {
        REG_SOUNDCNT_H |= (SOUNDCNT_DIRECT_SOUND_A_LEFT_ENABLE | SOUNDCNT_DIRECT_SOUND_B_RIGHT_ENABLE);
    } else {
        REG_SOUNDCNT_H &= ~(SOUNDCNT_DIRECT_SOUND_A_LEFT_ENABLE | SOUNDCNT_DIRECT_SOUND_B_RIGHT_ENABLE);
    }

    func_08049bfc(soundMode, 166, 6);
}


// Get First Instance of This Sound
struct SoundPlayer *get_soundplayer_by_sound(struct SequenceData *sound) {
    struct SoundPlayer *soundPlayer;
    u32 i;

    if (sound == NULL) {
        return; // ???
    }

    for (i = 0; i < D_08aa445c; i++) {
        soundPlayer = D_08aa4460[i].soundPlayer;

        if (soundPlayer->sequence == sound) {
            return soundPlayer;
        }
    }
}
