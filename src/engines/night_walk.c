#include "engines/night_walk.h"

#include "src/code_08001360.h"
#include "src/task_pool.h"
#include "src/code_08007468.h"
#include "src/text_printer.h"
#include "src/code_0800b778.h"
#include "src/scenes/gameplay.h"
#include "src/lib_0804ca80.h"

asm(".include \"include/gba.inc\""); // Temporary

// For readability.
#define gNightWalk ((struct NightWalkEngineData *)gCurrentEngineData)

enum PlayYanStatesEnum {
    PLAY_YAN_STATE_WALKING,
    PLAY_YAN_STATE_JUMPING,
    PLAY_YAN_STATE_HANGING_ON,
    PLAY_YAN_STATE_FALLING,
    PLAY_YAN_STATE_STAR_WAND,
    PLAY_YAN_STATE_ZAPPED
};

enum BridgeTypesEnum {
    PLATFORM_TYPE_BRIDGE,
    PLATFORM_TYPE_GAP,
    PLATFORM_TYPE_RANDOM,
    PLATFORM_TYPE_FISH
};


/* NIGHT WALK */


static struct DrumTechController *D_03001568;
static s32 D_0300156c; // Unused, Unknown Location


// Init. Play-Yan
void night_walk_init_play_yan(void) {
    struct PlayYan *playYan = &gNightWalk->playYan;

    playYan->sprite = sprite_create(gSpriteHandler, anim_play_yan_walk, 0, 64, 120, 0x4800, 1, 0, 0);
    playYan->state = PLAY_YAN_STATE_WALKING;
    playYan->zapTime = 0;
}


// Play-Yan Jump
void night_walk_play_yan_jump(s32 jumpOverGap, s32 timingOffset) {
    struct PlayYan *playYan = &gNightWalk->playYan;
    struct NightWalkUnk3B8 *unk3B8 = &gNightWalk->unk3B8;

    if (playYan->state == PLAY_YAN_STATE_JUMPING) {
        if (playYan->isAscending) {
            unk3B8->unk8 -= 16;
        }
    }

    playYan->isAscending = jumpOverGap;
    playYan->state = PLAY_YAN_STATE_JUMPING;
    sprite_set_anim(gSpriteHandler, playYan->sprite, anim_play_yan_jump, 0, 0, 0, 0);
    playYan->jumpTime = 0;
    playYan->jumpDuration = ticks_to_frames(0x14) - timingOffset;
}


// Update Play-Yan (State 1)
void night_walk_play_yan_update_jump(struct PlayYan *playYan) {
    struct NightWalkUnk3B8 *unk3B8 = &gNightWalk->unk3B8;
    s32 ascending;
    s32 totalSteps;
    s32 jumpHeight;
    s32 x, r0, r1;

    playYan->jumpTime++;
    if (playYan->jumpTime >= playYan->jumpDuration) {
        sprite_set_anim(gSpriteHandler, playYan->sprite, anim_play_yan_walk, 0, 1, 0, 0);
        playYan->state = PLAY_YAN_STATE_WALKING;

        if (playYan->isAscending) {
            unk3B8->unk8 -= 16;
        }

        unk3B8->unk6 = unk3B8->unk8;
        sprite_set_y(gSpriteHandler, playYan->sprite, 120);
        return;
    }

    ascending = playYan->isAscending;
    totalSteps = (ascending) ? 27 : 32;

    // parabola: y = (x^2)
    // inverted parabola where (y = x = 0): y = (a^2) - ((x-a)^2)

    // jumpHeight = 32 - ( ( ( ( ( target * ( runningTime / totalTime ) ) - 16 ) ^ 2 ) * 32 ) / ( 8 * 32 ) )
    // jumpHeight = 32 - (((x-16)^2) / 8)
    // jumpHeight = w - (((x-(w/2))^2) / (w/4))
    // jumpHeight = w - (((x-(w/2))^2) * 4 / w)
    // jumpHeight = w - (((2x - w)^2) / w)
    x = totalSteps * playYan->jumpTime / playYan->jumpDuration;
    x -= 16;
    jumpHeight = 32;
    r0 = 32 * x * x;
    r1 = 256;
    jumpHeight -= (r0 / r1);
    if (ascending) {
        unk3B8->unk6 = unk3B8->unk8 - jumpHeight;
    } else {
        sprite_set_y(gSpriteHandler, playYan->sprite, 120 - jumpHeight);
    }

    if (playYan->zapTime != 0) {
        playYan->zapTime--;
        if (playYan->zapTime == 0) {
            gNightWalk->stoppedScrolling = TRUE;
            if (gNightWalk->endScript != NULL) {
                func_0801d95c(gNightWalk->endScript);
            }
            gameplay_add_cue_result(gNightWalk->markingCriteria, 2, 0);
            sprite_set_anim(gSpriteHandler, playYan->sprite, anim_play_yan_violent_electrocution, 0, 1, 0, 0);
            sprite_set_anim(gSpriteHandler, playYan->fishSprite, anim_night_walk_fish_zap, 0, 1, 0, 0);
            playYan->zapTime = ticks_to_frames(0x48);
            playYan->state = PLAY_YAN_STATE_ZAPPED;
            play_sound(&s_f_drumtech_damage_seqData);
        }
    }
}


// Play-Yan Hold On
void night_walk_play_yan_hold_on(s16 x, s16 y) {
    struct PlayYan *playYan = &gNightWalk->playYan;
    struct NightWalkUnk3B8 *unk3B8 = &gNightWalk->unk3B8;

    playYan->state = PLAY_YAN_STATE_HANGING_ON;
    sprite_set_anim(gSpriteHandler, playYan->sprite, anim_play_yan_fall, 0, 1, 1, 0);
    sprite_set_origin_x_y(gSpriteHandler, playYan->sprite, NULL, &unk3B8->unk6);
    sprite_set_x_y(gSpriteHandler, playYan->sprite, x, y);
    gNightWalk->stoppedScrolling = TRUE;
    play_sound(&s_f_drumtech_miss_seqData);
    if (gNightWalk->endScript != NULL) {
        func_0801d95c(gNightWalk->endScript);
    }
    gameplay_add_cue_result(gNightWalk->markingCriteria, 2, 0);
}


// Play-Yan Fall
void night_walk_play_yan_fall(void) {
    struct PlayYan *playYan = &gNightWalk->playYan;

    playYan->state = PLAY_YAN_STATE_FALLING;
    playYan->yOrigin = sprite_get_data(gSpriteHandler, playYan->sprite, 5);
    playYan->yDistance = 0;
    playYan->yVelocity = 0;
    play_sound(&s_f_drumtech_fall_seqData);
}


// Update Play-Yan (State 3)
void night_walk_play_yan_update_fall(struct PlayYan *playYan) {
    if (FIXED_TO_INT(playYan->yDistance) > 100) return;

    playYan->yVelocity += 28;
    playYan->yDistance += playYan->yVelocity;
    sprite_set_y(gSpriteHandler, playYan->sprite, FIXED_TO_INT(playYan->yDistance) + playYan->yOrigin);
}


// Play-Yan Grab Star Wand
void night_walk_play_yan_get_wand(void) {
    struct PlayYan *playYan = &gNightWalk->playYan;

    playYan->state = PLAY_YAN_STATE_STAR_WAND;
    sprite_set_anim(gSpriteHandler, playYan->sprite, anim_play_yan_star_wand, 0, 1, 0, 0);
    playYan->yOrigin = sprite_get_data(gSpriteHandler, playYan->sprite, 5);
    playYan->yDistance = 0;
    playYan->yVelocity = 0;
}


// Update Play-Yan (State 4)
void night_walk_play_yan_update_wand(struct PlayYan *playYan) {
    playYan->yDistance -= INT_TO_FIXED(0.5);
    sprite_set_y(gSpriteHandler, playYan->sprite, FIXED_TO_INT(playYan->yDistance) + playYan->yOrigin);
}


// Update Play-Yan (State 5)
void night_walk_play_yan_update_zap_fall(struct PlayYan *playYan) {
    playYan->zapTime--;
    if (playYan->zapTime > 0) return;

    sprite_set_anim(gSpriteHandler, playYan->sprite, anim_play_yan_violent_electrocution, 1, 0, 0, 0);
    sprite_set_anim(gSpriteHandler, playYan->fishSprite, anim_night_walk_fish, 0, 1, 0, 0);
    night_walk_play_yan_fall();
}


// Engine Event 0x01 (Give Play-Yan Balloons)
void night_walk_init_balloons(u32 balloonCount) {
    struct PlayYan *playYan = &gNightWalk->playYan;
    u16 sprite;
    u16 x, y;
    u32 i;

    playYan->balloonCount = balloonCount;

    for (i = 0; i < balloonCount; i++) {
        x = agb_random(i * 3) + 64 - (i * 3 / 2) - i;
        y = 120 - (i * 2);
        sprite = sprite_create(gSpriteHandler, anim_night_walk_balloon, agb_random(6), x, y, (0x47ff - i), 1, 0, 0);
        playYan->balloonSprites[i] = sprite;
        sprite_set_base_palette(gSpriteHandler, sprite, i % 5);
    }

    sprite_set_anim(gSpriteHandler, playYan->sprite, anim_play_yan_jump, 0, 0, 0, 0);
}


// Engine Event 0x02 (Pop Balloon)
void night_walk_pop_balloon(void) {
    struct PlayYan *playYan = &gNightWalk->playYan;
    u32 total;

    if (playYan->balloonCount == 0) return;

    playYan->balloonCount--;
    total = playYan->balloonCount;
    sprite_set_anim(gSpriteHandler, playYan->balloonSprites[total], anim_night_walk_balloon_pop, 0, 1, 0, 3);

    if (total == 0) {
        sprite_set_anim(gSpriteHandler, playYan->sprite, anim_play_yan_walk, 0, 1, 0, 0);
    }
}


// Update Play-Yan
void night_walk_update_play_yan(void) {
    struct PlayYan *playYan = &gNightWalk->playYan;

    switch (playYan->state) {
        case PLAY_YAN_STATE_WALKING:
            break;
        case PLAY_YAN_STATE_JUMPING:
            night_walk_play_yan_update_jump(playYan);
            break;
        case PLAY_YAN_STATE_HANGING_ON:
            break;
        case PLAY_YAN_STATE_FALLING:
            night_walk_play_yan_update_fall(playYan);
            break;
        case PLAY_YAN_STATE_STAR_WAND:
            night_walk_play_yan_update_wand(playYan);
            break;
        case PLAY_YAN_STATE_ZAPPED:
            night_walk_play_yan_update_zap_fall(playYan);
            break;
    }
}


// Init. Stars
void night_walk_init_stars(void) {
    struct NightWalkUnk3B8 *unk3B8;
    struct NightWalkStar *star;
    u32 i;
    s24_8 fixednegative8; 

    unk3B8 = &gNightWalk->unk3B8;

    for (i = 0, fixednegative8 = -INT_TO_FIXED(8); i < NIGHT_WALK_STAR_AMOUNT; i++) {
        star = &gNightWalk->stars[i];

        star->sprite = sprite_create(gSpriteHandler, anim_night_walk_star_tiny, agb_random(8), 64, 64, 0x490a, 1, 0, 0);
        star->x = INT_TO_FIXED(agb_random(0x100)) + fixednegative8;
        star->y = INT_TO_FIXED(agb_random(0xb0)) + fixednegative8;
        star->x += agb_random(0x100);
        sprite_set_x_y(gSpriteHandler, star->sprite, FIXED_TO_INT(star->x), FIXED_TO_INT(star->y));
        sprite_set_origin_x_y(gSpriteHandler, star->sprite, NULL, &gNightWalk->starsVOffset);
        star->size = 0;
    }

    gNightWalk->starsVOffset = unk3B8->unk6 / 2;
    gNightWalk->nextStar = 0;
    gNightWalk->currentStarSize = 0;
}


// Update Stars
s32 night_walk_scroll_stars(void) {
    struct NightWalkUnk3B8 *unk3B8 = &gNightWalk->unk3B8;
    struct NightWalkStar *star;
    s32 hOffset, vOffset;
    s32 y;
    u32 i;

    gNightWalk->starsVOffset = unk3B8->unk6 / 2;

    hOffset = INT_TO_FIXED(-0.5);
    vOffset = gNightWalk->starsVOffset;

    for (i = 0; i < NIGHT_WALK_STAR_AMOUNT; i++) {
        star = &gNightWalk->stars[i];
        star->x += hOffset;
        if (star->x < INT_TO_FIXED(-8.0)) {
            star->x += INT_TO_FIXED(0x100);
        }
        y = star->y - INT_TO_FIXED(vOffset);
        if (y < INT_TO_FIXED(-8.0)) {
            star->y += INT_TO_FIXED(0xb0);
        }
        if (y >= INT_TO_FIXED(0xb0)) {
            star->y -= INT_TO_FIXED(0xb0);
        }
        sprite_set_x_y(gSpriteHandler, star->sprite, FIXED_TO_INT(star->x), FIXED_TO_INT(star->y));
    }
}


// End of Star Size-Up
void night_walk_finish_star_expansion(s32 arg0, s16 sprite, struct Animation *anim) {
    s32 frame;

    sprite_set_anim(gSpriteHandler, sprite, anim, 0, 1, 0, 0);
    sprite_set_callback(gSpriteHandler, sprite, NULL, 0);
    frame = sprite_get_data(gSpriteHandler, sprite, 2);
    sprite_set_anim_cel(gSpriteHandler, sprite, agb_random(frame));
}


// Increase Star Progress
void night_walk_expand_star(void) {
    struct NightWalkStar *star;

    if (gNightWalk->currentStarSize >= 4) return;

    star = &gNightWalk->stars[gNightWalk->nextStar];
    sprite_set_anim(gSpriteHandler, star->sprite, night_walk_star_expand_anim[gNightWalk->currentStarSize], 0, 1, 0, 4);
    sprite_set_callback(gSpriteHandler, star->sprite, night_walk_finish_star_expansion, (s32)night_walk_star_anim[gNightWalk->currentStarSize + 1]);
    star->size = gNightWalk->currentStarSize + 1;
    gNightWalk->nextStar++;
    if (gNightWalk->nextStar >= NIGHT_WALK_STAR_AMOUNT) {
        gNightWalk->nextStar = 0;
        gNightWalk->currentStarSize++;
    }
}


// Increase Stars Progress
void night_walk_expand_stars(u32 total) {
    u32 i;

    for (i = 0; i < total; i++) {
        night_walk_expand_star();
    }
}


// Engine Event 0x09 (Increase Stars Progress)
void night_walk_event_expand_stars(u32 total) {
    night_walk_expand_stars(total);
}


// Decrease Star Progress
void night_walk_shrink_star(void) {
    struct NightWalkStar *star;

    if (gNightWalk->nextStar == 0) {
        if (gNightWalk->currentStarSize == 0) {
            return;
        }
        gNightWalk->nextStar = NIGHT_WALK_STAR_AMOUNT;
        gNightWalk->currentStarSize--;
    }

    gNightWalk->nextStar--;
    star = &gNightWalk->stars[gNightWalk->nextStar];
    sprite_set_anim(gSpriteHandler, star->sprite, night_walk_star_anim[gNightWalk->currentStarSize], -1, 1, 0, 0);
    star->size = gNightWalk->currentStarSize;
}


// Decrease Stars Progress
void night_walk_shrink_stars(u32 total) {
    u32 i;

    for (i = 0; i < total; i++) {
        night_walk_shrink_star();
    }
}


// Clear Stars
void night_walk_clear_all_stars(void) {
    struct NightWalkStar *star;
    u32 i;

    for (i = 0; i < NIGHT_WALK_STAR_AMOUNT; i++) {
        star = &gNightWalk->stars[i];
        sprite_set_anim(gSpriteHandler, star->sprite, anim_night_walk_star_disappear, 0, 1, 0, 3);
    }
}


// Update Stars
void night_walk_update_stars(void) {
    if (!gNightWalk->stoppedScrolling) {
        night_walk_scroll_stars();
    }
}


// Init. unk3B8
void func_0802a970(void) {
    struct NightWalkUnk3B8 *unk3B8 = &gNightWalk->unk3B8;

    unk3B8->unk4 = 120;
    unk3B8->unk0_b0 = FALSE;
    unk3B8->unk6 = 0;
    unk3B8->unk8 = 0;
}


// Init. DrumTech Sequence
void reset_drumtech_seq(void) {
    u32 i;

    for (i = 0; i < ARRAY_COUNT(D_03001568->drumSequence); i++) {
        D_03001568->drumSequence[i].deltaTime = 0;
    }
}


// Init. DrumTech
void init_drumtech(struct DrumTechController *data) {
    u32 i;

    D_03001568 = data;
    D_03001568->drumBank = drumtech_drum_bank;

    for (i = 0; i < ARRAY_COUNT(D_03001568->soundTimers); i++) {
        D_03001568->soundTimers[i] = 0;
    }

    reset_drumtech_seq();
    D_03001568->volume = INT_TO_FIXED(1.0);
    D_03001568->runNoteFunc = NULL;
    D_03001568->hiHatSprite = -1;
    D_03001568->unk33A = 9999;
    D_03001568->unk33C = INT_TO_FIXED(ticks_to_frames(0x18));
    D_03001568->pedalHiHatDrumID = 37;
    D_03001568->rightLegSprite = -1;
    D_03001568->useKickPedalAnim = NULL;
    D_03001568->useHiHatPedalAnim = NULL;
}


// Update DrumTech Sound Timers
void update_drumtech_timers(void) {
    u32 i;

    for (i = 0; i < ARRAY_COUNT(D_03001568->soundTimers); i++) {
        if (D_03001568->soundTimers[i] > 0) {
            if (--D_03001568->soundTimers[i] == 0) {
                stop_soundplayer(sound_player_table[i].soundPlayer);
            }
        }
    }
}


// Update DrumTech Sequence
void update_drumtech_seq(void) {
    struct DrumTechNote *note;
    u32 i;

    for (i = 0; i < ARRAY_COUNT(D_03001568->drumSequence); i++) {
        note = &D_03001568->drumSequence[i];

        if (note->deltaTime > 0) {
            if (--note->deltaTime == 0) {
                play_drumtech_note(note->drumID, note->volume, note->pitch);
            }
        }
    }
}


// Import DrumTech Sequence
void play_drumtech_seq(const struct DrumTechNote *sequence, s32 timingOffset, s32 unused) {
    struct DrumTechNote *seqBuffer = D_03001568->drumSequence;
    u32 i = 0;
    u32 ticks = 0;
    s32 delay;

    reset_drumtech_seq();

    while ((sequence->drumID != DRUMTECH_NOTE_END_SEQ) && (i < ARRAY_COUNT(D_03001568->drumSequence))) {
        delay = ticks_to_frames(ticks) + timingOffset;
        if (delay <= 0 || ticks == 0) {
            play_drumtech_note(sequence->drumID, sequence->volume, sequence->pitch);
        } else {
            seqBuffer->drumID = sequence->drumID;
            seqBuffer->volume = sequence->volume;
            seqBuffer->pitch = sequence->pitch;
            seqBuffer->deltaTime = delay + 1;
            i++;
            seqBuffer++;
        }
        ticks += sequence->deltaTime;
        sequence++;
    }
}


// Update DrumTech
void update_drumtech(void) {
    update_drumtech_timers();
    update_drumtech_seq();
}


// Parse Arguments for Engine Event 0x00 (Cowbell)
void parse_drumtech_seq_beatscript_args(s32 args, u32 *drumID, u32 *volume, s32 *pitch) {
    *drumID = (args) & 0xff;
    *volume = (args >> 8) & 0x1ff;
    *pitch = (args >> 17);
}


// Engine Event 0x00 (Cowbell)
void play_drumtech_seq_from_beatscript(s32 args) {
    u32 drumID;
    u32 volume;
    s32 pitch;

    parse_drumtech_seq_beatscript_args(args, &drumID, &volume, &pitch);
    play_drumtech_note(drumID, volume, pitch);
}


#include "asm/engines/night_walk/asm_0802ab7c.s"


// Set DrumTech Bank
void set_drumtech_bank(const struct DrumTechInstrument *drumBank) {
    D_03001568->drumBank = drumBank;
}


// Play Drum
void play_drumtech_phrase(const struct DrumTechPhrase *phrase, u32 runOnPlayFunc) {
    if (phrase == NULL) {
        return;
    }
    if (phrase->sequence != NULL) {
        play_drumtech_seq(phrase->sequence, 0, 0);
    } else {
        play_drumtech_note(phrase->drumID, phrase->volume, phrase->pitch);
    }
    if (runOnPlayFunc) {
        if (phrase->onPlay != NULL) {
            phrase->onPlay(phrase->onPlayArg);
        }
    }
}


// Play Drum Kit
void play_drumtech_kit(const struct DrumTechKit *drumKit, u32 inputs, u32 runOnPlayFunc) {
    if (inputs & A_BUTTON) {
        play_drumtech_phrase(drumKit->aButton, runOnPlayFunc);
    }
    if (inputs & B_BUTTON) {
        play_drumtech_phrase(drumKit->bButton, runOnPlayFunc);
    }
    if (inputs & DPAD_UP) {
        play_drumtech_phrase(drumKit->dpadUp, runOnPlayFunc);
    }
    if (inputs & DPAD_DOWN) {
        play_drumtech_phrase(drumKit->dpadDown, runOnPlayFunc);
    }
    if (inputs & DPAD_LEFT) {
        play_drumtech_phrase(drumKit->dpadLeft, runOnPlayFunc);
    }
    if (inputs & DPAD_RIGHT) {
        play_drumtech_phrase(drumKit->dpadRight, runOnPlayFunc);
    }
    if (inputs & RIGHT_SHOULDER_BUTTON) {
        play_drumtech_phrase(drumKit->rButton, runOnPlayFunc);
    }
    if (inputs & LEFT_SHOULDER_BUTTON) {
        play_drumtech_phrase(drumKit->lButton, runOnPlayFunc);
    }
}


// Play Drum Kit (Run OnPlay Functions)
void play_drumtech_kit_w_anim(const struct DrumTechKit *drumKit, u32 inputs) {
    play_drumtech_kit(drumKit, inputs, TRUE);
}


// Play Drum Kit (Don't Run OnPlay Functions)
void play_drumtech_kit_no_anim(const struct DrumTechKit *drumKit, u32 inputs) {
    play_drumtech_kit(drumKit, inputs, FALSE);
}


// Update DrumTech Open/Close Hi-Hat
void update_drumtech_open_hihat(const struct DrumTechKit *drumKit, u16 inputs, u16 released) {
    struct SongHeader *const *sounds = D_089e2ef8;
    s16 hiHatSprite = D_03001568->hiHatSprite;

    if (inputs & DPAD_UP) {
        if (hiHatSprite >= 0) {
            sprite_set_playback(gSpriteHandler, hiHatSprite, -1, 0, 0);
        }
    } else {
        if (hiHatSprite >= 0) {
            sprite_set_playback(gSpriteHandler, hiHatSprite, 1, 0x7f, 0);
        }
    }

    if (released & DPAD_UP) {
        while (*sounds != NULL) {
            fade_out_sound(*sounds++, 4);
        }
        if (hiHatSprite >= 0) {
            sprite_set_anim_cel(gSpriteHandler, hiHatSprite, 3);
        }
    }
}


// Update DrumTech Pedal Hi-Hat
void update_drumtech_pedal_hihat(const struct DrumTechKit *drumKit, u16 inputs, u16 pressed, u16 released) {
    s32 openTicks;
    u32 volume;

    if (!(inputs & B_BUTTON) && !(released & B_BUTTON)) {
        return;
    }

    D_03001568->unk33A++;
    if (D_03001568->unk33A > 9999) {
        D_03001568->unk33A = 9999;
    }
    if (pressed & B_BUTTON) {
        D_03001568->unk33A = 0;
    }
    openTicks = D_03001568->unk33A - ticks_to_frames(0x0C);
    if (openTicks == -9) {
        if (D_03001568->rightLegSprite >= 0) {
            sprite_set_anim(gSpriteHandler, D_03001568->rightLegSprite, D_03001568->useHiHatPedalAnim, 0, 1, 0x7f, 0);
        }
        if (D_03001568->pedalHiHatSprite != 0) {
            sprite_set_playback(gSpriteHandler, D_03001568->pedalHiHatSprite, -1, 0, 0);
        }
    }
    if (released & B_BUTTON) {
        if (openTicks < 0) {
            if (openTicks < -5) {
                volume = INT_TO_FIXED(0.0);
            } else {
                volume = (openTicks * INT_TO_FIXED(0.0625)) + INT_TO_FIXED(0.375);
            }
        } else {
            volume = INT_TO_FIXED(0.375);
        }
        if (D_03001568->pedalHiHatDrumID >= 0) {
            play_drumtech_note(D_03001568->pedalHiHatDrumID, volume, 0);
        }
        if (D_03001568->rightLegSprite >= 0) {
                sprite_set_anim(gSpriteHandler, D_03001568->rightLegSprite, D_03001568->useKickPedalAnim, 0x7f, 1, 0x7f, 0);
        }
        if (D_03001568->pedalHiHatSprite != 0) {
            sprite_set_playback(gSpriteHandler, D_03001568->pedalHiHatSprite, 1, 0x7f, 0);
            sprite_set_anim_cel(gSpriteHandler, D_03001568->pedalHiHatSprite, 0x7f);
        }
    }
}


// Set DrumTech Hi-Hat Graphics
void set_drumtech_hihat_gfx(s16 hiHatSprite) {
    D_03001568->hiHatSprite = hiHatSprite;
}


// Set DrumTech Pedal Hi-Hat Graphics
void set_drumtech_pedal_hihat_gfx(s16 pedalHiHatSprite, s16 rightLegSprite, struct Animation *useKick, struct Animation *useHiHat) {
    D_03001568->pedalHiHatSprite = pedalHiHatSprite;
    D_03001568->rightLegSprite = rightLegSprite;
    D_03001568->useKickPedalAnim = useKick;
    D_03001568->useHiHatPedalAnim = useHiHat;
}


// Play DrumTech Hi-Hats
void update_drumtech_hihat(const struct DrumTechKit *drumKit, u16 inputs, u16 pressed, u16 released) {
    u32 hasOpenHiHat = drumKit->hiHatFlags & 1;
    u32 hasPedalHiHat = drumKit->hiHatFlags & 2;
    s16 hiHatSprite = D_03001568->hiHatSprite;

    if (hasOpenHiHat) {
        update_drumtech_open_hihat(drumKit, inputs, released);
    }

    if (hasPedalHiHat) {
        update_drumtech_pedal_hihat(drumKit, inputs, pressed, released);
    }

    if (!hasOpenHiHat && (hiHatSprite >= 0)) {
        sprite_set_playback(gSpriteHandler, hiHatSprite, 1, 0x7f, 0);
    }

    if (drumKit->hiHatEvent != NULL) {
        drumKit->hiHatEvent();
    }
}


// Set DrumTech Volume
void set_drumtech_volume(u32 volume) {
    D_03001568->volume = volume;
}


// Set DrumTech Special Note Function
void set_drumtech_note_func(void *func) {
    D_03001568->runNoteFunc = func;
}


// Stop DrumTech
void stop_drumtech(void) {
    u32 i;

    reset_drumtech_seq();

    for (i = 0; i < ARRAY_COUNT(D_03001568->soundTimers); i++) {
        if (D_03001568->soundTimers[i] != 0) {
            stop_soundplayer(sound_player_table[i].soundPlayer);
        }
    }
}


// Graphics Init. 3
void night_walk_init_gfx3(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// Graphics Init. 2
void night_walk_init_gfx2(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), night_walk_gfx_table, 0x2000);
    run_func_after_task(task, night_walk_init_gfx3, 0);
}


// Graphics Init. 1
void night_walk_init_gfx1(void) {
    s32 task;

    func_0800c604(0);
    task = start_new_texture_loader(get_current_mem_id(), night_walk_buffered_textures);
    run_func_after_task(task, night_walk_init_gfx2, 0);
}


// Game Engine Init.
void night_walk_engine_start(u32 ver) {
    struct TextPrinter *textPrinter;

    gNightWalk->version = ver;
    night_walk_init_gfx1();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, FALSE, 0, 0, 0, 29, 0);
    gameplay_inputs_enabled(FALSE);
    gameplay_set_input_buttons(A_BUTTON, 0);
    init_drumtech(&gNightWalk->drumTech);
    gNightWalk->drumVolume = INT_TO_FIXED(1.0);
    night_walk_init_play_yan();
    func_0802a970();
    night_walk_init_stars();

    textPrinter = text_printer_create_new(get_current_mem_id(), 1, 240, 30);
    text_printer_set_x_y(textPrinter, 0, 40);
    text_printer_set_layer(textPrinter, 0x800);
    text_printer_center_by_content(textPrinter, TRUE);
    text_printer_set_palette(textPrinter, 6);
    text_printer_set_colors(textPrinter, 0);
    gameplay_set_text_printer(textPrinter);

    gNightWalk->stoppedScrolling = FALSE;
    gNightWalk->nextBridgeType = PLATFORM_TYPE_BRIDGE;
    gNightWalk->endScript = NULL;
    gNightWalk->markingCriteria = 0;
    gNightWalk->inSwing = FALSE;
    gNightWalk->cueEarlinessOffset = 0;
}


// Engine Event 0x0A (STUB)
void night_walk_engine_event_stub(void) {
}


// Engine Event 0x03 (Set Ending Script)
void night_walk_set_ending_script(const struct Beatscript *endScript) {
    gNightWalk->endScript = endScript;
}


// Engine Event 0x04 (Set Next Bridge Type)
void night_walk_set_bridge_type(u32 type) {
    gNightWalk->nextBridgeType = type;
}


// Engine Event 0x05 (Set Current Marking Criteria)
void night_walk_set_marking_criteria(u32 criteria) {
    gNightWalk->markingCriteria = criteria;
}


// Engine Event 0x07 (Set Swing)
void night_walk_set_swing(u32 inSwing) {
    gNightWalk->inSwing = inSwing;
}


// Engine Event 0x08 (Set Drum Volume)
void night_walk_set_drum_volume(u32 volume) {
    gNightWalk->drumVolume = volume;
    set_drumtech_volume(volume);
}


// Game Engine Update
void night_walk_engine_update(void) {
    update_drumtech();
    night_walk_update_play_yan();
    night_walk_update_stars();
}


// Game Engine Close
void night_walk_engine_stop(void) {
}


// Calculate Cue X Position
s32 night_walk_cue_get_x(struct NightWalkCue *info) {
    s32 start = 320;

    return start - (INT_TO_FIXED(info->runningTime + info->earlinessTime) / info->duration);
}


// Engine Event 0x06 (Set Next Cue Earliness Time Offset)
void night_walk_set_cue_earliness(u32 duration) {
    gNightWalk->cueEarlinessOffset = duration;
}


// Cue - Spawn
void night_walk_cue_spawn(struct Cue *cue, struct NightWalkCue *info, u32 type) {
    struct NightWalkUnk3B8 *unk3B8 = &gNightWalk->unk3B8;
    u32 endOfBridge = FALSE;
    s32 x, y;

    info->type = type;
    info->hasOpened = FALSE;
    info->earlinessBeats = gNightWalk->cueEarlinessOffset;
    info->earlinessTime = ticks_to_frames(gNightWalk->cueEarlinessOffset);
    info->hasFish = -1;
    gameplay_set_cue_duration(cue, ticks_to_frames(0xC0 - gNightWalk->cueEarlinessOffset)); // set cue duration
    info->hasFish = FALSE;

    switch (gNightWalk->nextBridgeType) {
        case PLATFORM_TYPE_BRIDGE:
            endOfBridge = FALSE;
            break;
        case PLATFORM_TYPE_GAP:
            endOfBridge = TRUE;
            break;
        case PLATFORM_TYPE_RANDOM:
            endOfBridge = (agb_random(4) == 0);
            break;
        case PLATFORM_TYPE_FISH:
            endOfBridge = FALSE;
            info->hasFish = TRUE;
            break;
        default:
            endOfBridge = FALSE;
            break;
    }

    info->runningTime = 0;
    info->duration = ticks_to_frames(0xC0);
    x = night_walk_cue_get_x(info);
    y = unk3B8->unk4;
    info->endOfBridge = endOfBridge;

    if (endOfBridge) {
        info->boxSprite = sprite_create(gSpriteHandler, night_walk_box_anim[info->type], 0, x, y, 0x480a, 0, 0, 0);
    } else {
        info->boxSprite = sprite_create(gSpriteHandler, night_walk_bridge_anim[info->type], 0, x, y, 0x480a, 0, 0, 0);
    }
    sprite_set_origin_x_y(gSpriteHandler, info->boxSprite, NULL, &unk3B8->unk6);

    if (info->hasFish) {
        info->fishSprite = sprite_create(gSpriteHandler, anim_night_walk_fish, 0, x, y, 0x480b, 1, 0, 0);
        sprite_set_origin_x_y(gSpriteHandler, info->fishSprite, NULL, &unk3B8->unk6);
    }

    if (endOfBridge) {
        unk3B8->unk4 -= 16;
    }

    info->playYanFellHere = FALSE;
    info->starWandIsAvailable = FALSE;
}


// Cue - Update
u32 night_walk_cue_update(struct Cue *cue, struct NightWalkCue *info, u32 runningTime, u32 duration) {
    u32 despawnThisCue;
    u32 noteBoxDelay;
    s32 x, y;

    noteBoxDelay = (gNightWalk->inSwing) ? 0x10 : 0x0C;

    if (!gNightWalk->stoppedScrolling && !info->endOfBridge && !info->hasOpened) {
        if (runningTime > (ticks_to_frames(0xC0 + noteBoxDelay) - info->earlinessTime)) {
            info->hasOpened = TRUE;
            sprite_set_anim(gSpriteHandler, info->boxSprite, anim_night_walk_note_bridge, 1, 1, 4, 0);

            if (gNightWalk->inSwing) {
                play_drumtech_seq(night_walk_drum_seq_offbeat_swing[info->type], 0, 0);
            } else {
                play_drumtech_seq(night_walk_drum_seq_offbeat[info->type], 0, 0);
            }
        }
    }

    if (runningTime > ticks_to_frames(0x120 - info->earlinessBeats)) {
        if (info->playYanFellHere) {
            night_walk_play_yan_fall();
        }
        return TRUE;
    }

    despawnThisCue = FALSE;

    x = night_walk_cue_get_x(info);
    sprite_set_x(gSpriteHandler, info->boxSprite, x);
    if (info->hasFish) {
        sprite_set_x(gSpriteHandler, info->fishSprite, x);
    }

    if (!gNightWalk->stoppedScrolling) {
        info->runningTime++;
    }

    if ((info->type == NIGHT_WALK_CUE_STAR_WAND) && !info->hasOpened) {
        if (info->starWandIsAvailable) {
            if (gNightWalk->currentStarSize < 4) {
                sprite_set_anim(gSpriteHandler, info->boxSprite, anim_night_walk_ng_wand_box, 0, 0, 0, 0);
                info->starWandIsAvailable = FALSE;
            }
        } else {
            if (gNightWalk->currentStarSize > 3) {
                sprite_set_anim(gSpriteHandler, info->boxSprite, anim_night_walk_wand_box, 0, 1, 0, 0);
                info->starWandIsAvailable = TRUE;
            }
        }
    }

    return despawnThisCue;
}


// Cue - Despawn
void night_walk_cue_despawn(struct Cue *cue, struct NightWalkCue *info) {
    if (gNightWalk->stoppedScrolling) {
        if (info->endOfBridge) {
            sprite_set_anim(gSpriteHandler, info->boxSprite, anim_night_walk_box_disappear, 0, 1, 0, 3);
        } else {
            sprite_set_anim(gSpriteHandler, info->boxSprite, anim_night_walk_bridge_disappear, 0, 1, 0, 3);
        }
        if (sprite_get_data(gSpriteHandler, info->boxSprite, 4) < 244) {
            play_sound_in_player(SFX_PLAYER_4, &s_4beat_jiban_seqData);
        }
    } else {
        sprite_delete(gSpriteHandler, info->boxSprite);
        if (info->hasFish) {
            sprite_delete(gSpriteHandler, info->fishSprite);
        }
    }
}


// Check Input for Electric Fish
void night_walk_cue_check_for_fish(struct NightWalkCue *info) {
    if (!info->hasFish) return;

    gNightWalk->playYan.zapTime = ticks_to_frames(0x08);
    gNightWalk->playYan.fishSprite = info->fishSprite;
}


// Cue - Hit
void night_walk_cue_hit(struct Cue *cue, struct NightWalkCue *info, u32 pressed, u32 released) {
    s32 starWandObtained = FALSE;
    s32 timingOffset;

    if (gNightWalk->stoppedScrolling) {
        gameplay_ignore_this_cue_result();
        return;
    }

    timingOffset = ~(gameplay_get_last_hit_offset());

    if (D_03004afc & A_BUTTON) {
        if (gNightWalk->inSwing) {
            if (info->type == NIGHT_WALK_CUE_HEART) {
                play_drumtech_seq(night_walk_drum_seq_kick_swing[agb_random(1)], timingOffset, 0);
            }
            if (info->type == NIGHT_WALK_CUE_LOLLIPOP) {
                play_drumtech_seq(night_walk_drum_seq_snare_swing[agb_random(1)], timingOffset, 0);
            }
            if (info->type == NIGHT_WALK_CUE_UMBRELLA) {
                play_drumtech_seq(night_walk_drum_seq_cymbal[agb_random(1)], timingOffset, 0);
            }
            if (info->type == NIGHT_WALK_CUE_HEART_2) {
                play_drumtech_seq(night_walk_drum_seq_roll[agb_random(4)], timingOffset, 0);
            }
            if (info->type == NIGHT_WALK_CUE_STAR_WAND) {
                if (info->starWandIsAvailable) {
                    play_drumtech_seq(night_walk_drum_seq_cymbal[agb_random(1)], timingOffset, 0);
                } else {
                    play_drumtech_seq(drum_seq_night_walk_default, timingOffset, 0);
                }
            }
        } else {
            if (info->type == NIGHT_WALK_CUE_HEART) {
                play_drumtech_seq(night_walk_drum_seq_kick[agb_random(1)], timingOffset, 0);
            }
            if (info->type == NIGHT_WALK_CUE_LOLLIPOP) {
                play_drumtech_seq(night_walk_drum_seq_snare[agb_random(1)], timingOffset, 0);
            }
            if (info->type == NIGHT_WALK_CUE_UMBRELLA) {
                play_drumtech_seq(night_walk_drum_seq_cymbal[agb_random(1)], timingOffset, 0);
            }
            if (info->type == NIGHT_WALK_CUE_HEART_2) {
                play_drumtech_seq(night_walk_drum_seq_roll[agb_random(4)], timingOffset, 0);
            }
            if (info->type == NIGHT_WALK_CUE_STAR_WAND) {
                if (info->starWandIsAvailable) {
                    play_drumtech_seq(night_walk_drum_seq_cymbal[agb_random(1)], timingOffset, 0);
                } else {
                    play_drumtech_seq(drum_seq_night_walk_default, timingOffset, 0);
                }
            }
        }
        if ((info->type == NIGHT_WALK_CUE_STAR_WAND) && info->starWandIsAvailable) {
            starWandObtained = TRUE;
        }
    } else {
        play_drumtech_seq(drum_seq_night_walk_default, timingOffset, 0);
    }

    info->hasOpened = TRUE;

    if (starWandObtained) {
        gNightWalk->stoppedScrolling = TRUE;
        night_walk_play_yan_get_wand();
        night_walk_clear_all_stars();
        if (gNightWalk->endScript != NULL) {
            func_0801d95c(gNightWalk->endScript);
        }
        gameplay_add_cue_result(gNightWalk->markingCriteria, 0, 0); // register cue result
        sprite_set_anim(gSpriteHandler, info->boxSprite, anim_night_walk_ng_wand_box, 1, 1, 0x7f, 0);
    } else {
        night_walk_play_yan_jump(info->endOfBridge, gameplay_get_last_hit_offset());
        sprite_set_playback(gSpriteHandler, info->boxSprite, 1, 0x7f, 0);
        sprite_set_anim_cel(gSpriteHandler, info->boxSprite, 1);
        night_walk_expand_stars(1);
    }

    night_walk_cue_check_for_fish(info);
}


// Cue - Barely
void night_walk_cue_barely(struct Cue *cue, struct NightWalkCue *info, u32 pressed, u32 released) {
    s32 timingOffset;

    if (gNightWalk->stoppedScrolling) {
        gameplay_ignore_this_cue_result();
        return;
    }

    timingOffset = -(gameplay_get_last_hit_offset());

    if (info->type == NIGHT_WALK_CUE_HEART) {
        play_drumtech_seq(drum_seq_night_walk_kick_barely, timingOffset, 0);
    }
    if (info->type == NIGHT_WALK_CUE_LOLLIPOP) {
        play_drumtech_seq(drum_seq_night_walk_snare_barely, timingOffset, 0);
    }
    if (info->type == NIGHT_WALK_CUE_UMBRELLA) {
        play_drumtech_seq(drum_seq_night_walk_snare_barely, timingOffset, 0);
    }
    if (info->type == NIGHT_WALK_CUE_HEART_2) {
        play_drumtech_seq(drum_seq_night_walk_snare_barely, timingOffset, 0);
    }
    if (info->type == NIGHT_WALK_CUE_STAR_WAND) {
        play_drumtech_seq(drum_seq_night_walk_snare_barely, timingOffset, 0);
    }

    night_walk_play_yan_jump(info->endOfBridge, gameplay_get_last_hit_offset());
    info->hasOpened = TRUE;
    sprite_set_anim(gSpriteHandler, info->boxSprite, night_walk_barely_anim[info->type][info->endOfBridge], 0, 1, 0x7f, 0);
    if (gNightWalk->version == NIGHT_WALK_VER_1) {
        if (gNightWalk->nextStar != 0) {
            night_walk_shrink_stars(gNightWalk->nextStar);
        } else if (gNightWalk->currentStarSize > 3) {
            night_walk_shrink_stars(NIGHT_WALK_STAR_AMOUNT);
        }
    }
    night_walk_cue_check_for_fish(info);
}


// Cue - Miss
void night_walk_cue_miss(struct Cue *cue, struct NightWalkCue *info) {
    s32 x, y;

    if (gNightWalk->stoppedScrolling || !info->endOfBridge || info->hasOpened) {
        gameplay_ignore_this_cue_result();
        if (!gNightWalk->stoppedScrolling && !info->endOfBridge && !info->hasOpened) {
            sprite_set_anim(gSpriteHandler, info->boxSprite, anim_night_walk_note_bridge, 0, 0, 0, 0);
        }
    } else {
        info->playYanFellHere = TRUE;
        x = sprite_get_data(gSpriteHandler, info->boxSprite, 4);
        y = sprite_get_data(gSpriteHandler, info->boxSprite, 5);
        night_walk_play_yan_hold_on(x, y);
        gameplay_enable_cue_spawning(FALSE);
    }
}


// Input Event
void night_walk_input_event(u32 pressed, u32 released) {
    struct PlayYan *playYan = &gNightWalk->playYan;

    if (!gNightWalk->stoppedScrolling && (playYan->state == PLAY_YAN_STATE_WALKING)) {
        sprite_set_anim(gSpriteHandler, playYan->sprite, anim_play_yan_short_hop, 0, 1, 5, 0);
        play_drumtech_seq(drum_seq_night_walk_short_hop, 0, 0);
    }
}


// Common Event 0 (Beat Animation)
void night_walk_common_beat_animation(u32 arg) {
}


// Common Event 1 (Display Text)
void night_walk_common_display_text(const char *text) {
}
