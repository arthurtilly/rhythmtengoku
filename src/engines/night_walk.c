#include "engines/night_walk.h"

#include "src/code_08001360.h"
#include "src/task_pool.h"
#include "src/code_08007468.h"
#include "src/text_printer.h"
#include "src/code_0800b778.h"
#include "src/scenes/gameplay.h"
#include "src/lib_0804c870.h"

asm(".include \"include/gba.inc\""); // Temporary

// For readability.
#define gNightWalkInfo ((struct NightWalkInfo *)D_030055d0)

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


// Init. Play-Yan
void func_08029f0c(void) {
    struct PlayYan *playYan = &gNightWalkInfo->playYan;

    playYan->sprite = func_0804d160(D_03005380, D_088c9ab8, 0, 64, 120, 0x4800, 1, 0, 0);
    playYan->state = PLAY_YAN_STATE_WALKING;
    playYan->zapTime = 0;
}


// Play-Yan Jump
void func_08029f68(s32 jumpOverGap, s32 timingOffset) {
    struct PlayYan *playYan = &gNightWalkInfo->playYan;
    struct NightWalkUnk3B8 *unk3B8 = &gNightWalkInfo->unk3B8;

    if (playYan->state == PLAY_YAN_STATE_JUMPING) {
        if (playYan->isAscending) {
            unk3B8->unk8 -= 16;
        }
    }

    playYan->isAscending = jumpOverGap;
    playYan->state = PLAY_YAN_STATE_JUMPING;
    func_0804d8f8(D_03005380, playYan->sprite, D_088c9a98, 0, 0, 0, 0);
    playYan->jumpTime = 0;
    playYan->jumpDuration = func_0800c3a4(0x14) - timingOffset;
}


// Update Play-Yan (State 1)
void func_08029fe8(struct PlayYan *playYan) {
    struct NightWalkUnk3B8 *unk3B8 = &gNightWalkInfo->unk3B8;
    s32 ascending;
    s32 totalSteps;
    s32 jumpHeight;
    s32 x, r0, r1;

    playYan->jumpTime++;
    if (playYan->jumpTime >= playYan->jumpDuration) {
        func_0804d8f8(D_03005380, playYan->sprite, D_088c9ab8, 0, 1, 0, 0);
        playYan->state = PLAY_YAN_STATE_WALKING;

        if (playYan->isAscending) {
            unk3B8->unk8 -= 16;
        }

        unk3B8->unk6 = unk3B8->unk8;
        func_0804d648(D_03005380, playYan->sprite, 120);
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
        func_0804d648(D_03005380, playYan->sprite, 120 - jumpHeight);
    }

    if (playYan->zapTime != 0) {
        playYan->zapTime--;
        if (playYan->zapTime == 0) {
            gNightWalkInfo->stoppedScrolling = TRUE;
            if (gNightWalkInfo->endScript != NULL) {
                func_0801d95c(gNightWalkInfo->endScript);
            }
            func_08017928(gNightWalkInfo->markingCriteria, 2, 0);
            func_0804d8f8(D_03005380, playYan->sprite, D_088ca158, 0, 1, 0, 0);
            func_0804d8f8(D_03005380, playYan->fishSprite, D_088ca140, 0, 1, 0, 0);
            playYan->zapTime = func_0800c3a4(0x48);
            playYan->state = PLAY_YAN_STATE_ZAPPED;
            func_08002634(&s_f_drumtech_damage_seqData);
        }
    }
}


// Play-Yan Hold On
void func_0802a154(s16 x, s16 y) {
    struct PlayYan *playYan = &gNightWalkInfo->playYan;
    struct NightWalkUnk3B8 *unk3B8 = &gNightWalkInfo->unk3B8;

    playYan->state = PLAY_YAN_STATE_HANGING_ON;
    func_0804d8f8(D_03005380, playYan->sprite, D_088c9d58, 0, 1, 1, 0);
    func_0804db44(D_03005380, playYan->sprite, NULL, &unk3B8->unk6);
    func_0804d5d4(D_03005380, playYan->sprite, x, y);
    gNightWalkInfo->stoppedScrolling = TRUE;
    func_08002634(&s_f_drumtech_miss_seqData);
    if (gNightWalkInfo->endScript != NULL) {
        func_0801d95c(gNightWalkInfo->endScript);
    }
    func_08017928(gNightWalkInfo->markingCriteria, 2, 0);
}


// Play-Yan Fall
void func_0802a224(void) {
    struct PlayYan *playYan = &gNightWalkInfo->playYan;

    playYan->state = PLAY_YAN_STATE_FALLING;
    playYan->yOrigin = func_0804ddb0(D_03005380, playYan->sprite, 5);
    playYan->yDistance = 0;
    playYan->yVelocity = 0;
    func_08002634(&s_f_drumtech_fall_seqData);
}


// Update Play-Yan (State 3)
void func_0802a26c(struct PlayYan *playYan) {
    if (FIXED_TO_INT(playYan->yDistance) > 100) return;

    playYan->yVelocity += 28;
    playYan->yDistance += playYan->yVelocity;
    func_0804d648(D_03005380, playYan->sprite, FIXED_TO_INT(playYan->yDistance) + playYan->yOrigin);
}


// Play-Yan Grab Star Wand
void func_0802a2a4(void) {
    struct PlayYan *playYan = &gNightWalkInfo->playYan;

    playYan->state = PLAY_YAN_STATE_STAR_WAND;
    func_0804d8f8(D_03005380, playYan->sprite, D_088c9f90, 0, 1, 0, 0);
    playYan->yOrigin = func_0804ddb0(D_03005380, playYan->sprite, 5);
    playYan->yDistance = 0;
    playYan->yVelocity = 0;
}


// Update Play-Yan (State 4)
void func_0802a300(struct PlayYan *playYan) {
    playYan->yDistance -= INT_TO_FIXED(0.5);
    func_0804d648(D_03005380, playYan->sprite, FIXED_TO_INT(playYan->yDistance) + playYan->yOrigin);
}


// Update Play-Yan (State 5)
void func_0802a32c(struct PlayYan *playYan) {
    playYan->zapTime--;
    if (playYan->zapTime > 0) return;

    func_0804d8f8(D_03005380, playYan->sprite, D_088ca158, 1, 0, 0, 0);
    func_0804d8f8(D_03005380, playYan->fishSprite, D_088c9b08, 0, 1, 0, 0);
    func_0802a224();
}


// Engine Event 0x01 (Give Play-Yan Balloons)
void func_0802a38c(u32 balloonCount) {
    struct PlayYan *playYan = &gNightWalkInfo->playYan;
    u16 sprite;
    u16 x, y;
    u32 i;

    playYan->balloonCount = balloonCount;

    for (i = 0; i < balloonCount; i++) {
        x = func_08001980(i * 3) + 64 - (i * 3 / 2) - i;
        y = 120 - (i * 2);
        sprite = func_0804d160(D_03005380, D_088c9d88, func_08001980(6), x, y, (0x47ff - i), 1, 0, 0);
        playYan->balloonSprites[i] = sprite;
        func_0804d8c4(D_03005380, sprite, i % 5);
    }

    func_0804d8f8(D_03005380, playYan->sprite, D_088c9a98, 0, 0, 0, 0);
}


// Engine Event 0x02 (Pop Balloon)
void func_0802a48c(void) {
    struct PlayYan *playYan = &gNightWalkInfo->playYan;
    u32 total;

    if (playYan->balloonCount == 0) return;

    playYan->balloonCount--;
    total = playYan->balloonCount;
    func_0804d8f8(D_03005380, playYan->balloonSprites[total], D_088c9dc0, 0, 1, 0, 3);

    if (total == 0) {
        func_0804d8f8(D_03005380, playYan->sprite, D_088c9ab8, 0, 1, 0, 0);
    }
}


// Update Play-Yan
void func_0802a500(void) {
    struct PlayYan *playYan = &gNightWalkInfo->playYan;

    switch (playYan->state) {
        case PLAY_YAN_STATE_WALKING:
            break;
        case PLAY_YAN_STATE_JUMPING:
            func_08029fe8(playYan);
            break;
        case PLAY_YAN_STATE_HANGING_ON:
            break;
        case PLAY_YAN_STATE_FALLING:
            func_0802a26c(playYan);
            break;
        case PLAY_YAN_STATE_STAR_WAND:
            func_0802a300(playYan);
            break;
        case PLAY_YAN_STATE_ZAPPED:
            func_0802a32c(playYan);
            break;
    }
}


// Init. Stars (https://decomp.me/scratch/D0g8d)
#include "asm/engines/night_walk/asm_0802a564.s"


// Update Stars
s32 func_0802a674(void) {
    struct NightWalkUnk3B8 *unk3B8 = &gNightWalkInfo->unk3B8;
    struct NightWalkStar *star;
    s32 hOffset, vOffset;
    s32 y;
    u32 i;

    gNightWalkInfo->starsVOffset = unk3B8->unk6 / 2;

    hOffset = INT_TO_FIXED(-0.5);
    vOffset = gNightWalkInfo->starsVOffset;

    for (i = 0; i < 32; i++) {
        star = &gNightWalkInfo->stars[i];
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
        func_0804d5d4(D_03005380, star->sprite, FIXED_TO_INT(star->x), FIXED_TO_INT(star->y));
    }
}


// End of Star Size-Up
void func_0802a730(s32 arg0, s16 sprite, const struct Animation *anim) {
    s32 var;

    func_0804d8f8(D_03005380, sprite, anim, 0, 1, 0, 0);
    func_0804daa8(D_03005380, sprite, NULL, 0);
    var = func_0804ddb0(D_03005380, sprite, 2);
    func_0804cebc(D_03005380, sprite, func_08001980(var));
}


// Increase Star Progress
void func_0802a78c(void) {
    struct NightWalkStar *star;

    if (gNightWalkInfo->currentStarSize >= 4) return;

    star = &gNightWalkInfo->stars[gNightWalkInfo->nextStar];
    func_0804d8f8(D_03005380, star->sprite, D_089e2ee8[gNightWalkInfo->currentStarSize], 0, 1, 0, 4);
    func_0804daa8(D_03005380, star->sprite, func_0802a730, (s32)D_089e2ed4[gNightWalkInfo->currentStarSize + 1]);
    star->size = gNightWalkInfo->currentStarSize + 1;
    gNightWalkInfo->nextStar++;
    if (gNightWalkInfo->nextStar >= 32) {
        gNightWalkInfo->nextStar = 0;
        gNightWalkInfo->currentStarSize++;
    }
}


// Increase Stars Progress
void func_0802a840(u32 total) {
    u32 i;

    for (i = 0; i < total; i++) {
        func_0802a78c();
    }
}


// Engine Event 0x09 (Increase Stars Progress)
void func_0802a85c(u32 total) {
    func_0802a840(total);
}


// Decrease Star Progress
void func_0802a868(void) {
    struct NightWalkStar *star;

    if (gNightWalkInfo->nextStar == 0) {
        if (gNightWalkInfo->currentStarSize == 0) {
            return;
        }
        gNightWalkInfo->nextStar = 32;
        gNightWalkInfo->currentStarSize--;
    }

    gNightWalkInfo->nextStar--;
    star = &gNightWalkInfo->stars[gNightWalkInfo->nextStar];
    func_0804d8f8(D_03005380, star->sprite, D_089e2ed4[gNightWalkInfo->currentStarSize], -1, 1, 0, 0);
    star->size = gNightWalkInfo->currentStarSize;
}


// Decrease Stars Progress
void func_0802a8f0(u32 total) {
    u32 i;

    for (i = 0; i < total; i++) {
        func_0802a868();
    }
}


// Clear Stars
void func_0802a90c(void) {
    struct NightWalkStar *star;
    u32 i;

    for (i = 0; i < 32; i++) {
        star = &gNightWalkInfo->stars[i];
        func_0804d8f8(D_03005380, star->sprite, D_088c9f58, 0, 1, 0, 3);
    }
}


// Update Something
void func_0802a954(void) {
    if (!gNightWalkInfo->stoppedScrolling) {
        func_0802a674();
    }
}


// Init. unk3B8
void func_0802a970(void) {
    struct NightWalkUnk3B8 *unk3B8 = &gNightWalkInfo->unk3B8;

    unk3B8->unk4 = 120;
    unk3B8->unk0_b0 = FALSE;
    unk3B8->unk6 = 0;
    unk3B8->unk8 = 0;
}


// Init. D_03001568 Note Buffer
void func_0802a994(void) {
    u32 i;

    for (i = 0; i < 100; i++) {
        D_03001568->noteBuffer[i].delay = 0;
    }
}


// Init. D_03001568
void func_0802a9b4(struct DrumTechController *data) {
    u32 i;

    D_03001568 = data;
    D_03001568->drumKit = D_089e2f00;

    for (i = 0; i < 10; i++) {
        D_03001568->soundTimers[i] = 0;
    }

    func_0802a994();
    D_03001568->unk330 = INT_TO_FIXED(1.0);
    D_03001568->unk334 = NULL;
    D_03001568->unk338 = -1;
    D_03001568->unk33A = 9999;
    D_03001568->unk33C = INT_TO_FIXED(func_0800c3a4(0x18));
    D_03001568->unk342 = 37;
    D_03001568->unk344 = -1;
    D_03001568->unk348 = 0;
    D_03001568->unk34C = 0;
}


// Update D_03001568 Sound Timers
void func_0802aa4c(void) {
    u32 i;

    for (i = 0; i < 10; i++) {
        if (D_03001568->soundTimers[i] > 0) {
            if (--D_03001568->soundTimers[i] == 0) {
                func_08002828(D_08aa4460[i].soundPlayer);
            }
        }
    }
}


// Update D_03001568 Notes
void func_0802aa84(void) {
    struct DrumTechNote *note;
    u32 i;

    for (i = 0; i < 100; i++) {
        note = &D_03001568->noteBuffer[i];

        if (note->delay > 0) {
            if (--note->delay == 0) {
                func_0802ab7c(note->drum, note->volume, note->pitch);
            }
        }
    }
}


// ?
void func_0802aac0(const struct DrumTechNote *noteSeq, s32 timingOffset, s32 unused) {
    struct DrumTechNote *noteBuffer = D_03001568->noteBuffer;
    u32 i = 0;
    u32 ticks = 0;
    s32 delay;

    func_0802a994();

    while ((noteSeq->drum != 0xff) && (i < 100)) {
        delay = func_0800c3a4(ticks) + timingOffset;
        if (delay <= 0 || ticks == 0) {
            func_0802ab7c(noteSeq->drum, noteSeq->volume, noteSeq->pitch);
        } else {
            noteBuffer->drum = noteSeq->drum;
            noteBuffer->volume = noteSeq->volume;
            noteBuffer->pitch = noteSeq->pitch;
            noteBuffer->delay = delay + 1;
            i++;
            noteBuffer++;
        }
        ticks += noteSeq->delay;
        noteSeq++;
    }
}


// Update Something
void func_0802ab34(void) {
    func_0802aa4c();
    func_0802aa84();
}


// Parse Arguments for Engine Event 0x00 (Cowbell)
void func_0802ab44(s32 args, u32 *drum, u32 *volume, s32 *pitch) {
    *drum = (args) & 0xff;
    *volume = (args >> 8) & 0x1ff;
    *pitch = (args >> 17);
}


// Engine Event 0x00 (Cowbell)
void func_0802ab5c(s32 args) {
    u32 drum;
    u32 volume;
    s32 pitch;

    func_0802ab44(args, &drum, &volume, &pitch);
    func_0802ab7c(drum, volume, pitch);
}


#include "asm/engines/night_walk/asm_0802ab7c.s"

#include "asm/engines/night_walk/asm_0802ac44.s"

#include "asm/engines/night_walk/asm_0802ac50.s"

#include "asm/engines/night_walk/asm_0802ac8c.s"

#include "asm/engines/night_walk/asm_0802ad20.s"

#include "asm/engines/night_walk/asm_0802ad2c.s"

#include "asm/engines/night_walk/asm_0802ad38.s"

#include "asm/engines/night_walk/asm_0802ade0.s"

#include "asm/engines/night_walk/asm_0802af68.s"

#include "asm/engines/night_walk/asm_0802af7c.s"

#include "asm/engines/night_walk/asm_0802afb0.s"


// Set D_03001568->unk330
void func_0802b03c(u32 arg) {
    D_03001568->unk330 = arg;
}


#include "asm/engines/night_walk/asm_0802b050.s"

#include "asm/engines/night_walk/asm_0802b064.s"


// Graphics Init. 2
void func_0802b098(void) {
    func_0800c604(0);
    func_08017578();
}


// Graphics Init. 1
void func_0802b0a8(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(func_0800c3b8(), D_089e3384, 0x2000);
    task_run_after(task, func_0802b098, 0);
}


// Graphics Init. 0
void func_0802b0d8(void) {
    s32 task;

    func_0800c604(0);
    task = func_080087b4(func_0800c3b8(), D_089e3380);
    task_run_after(task, func_0802b0a8, 0);
}


// Game Engine Init.
void func_0802b104(u32 ver) {
    struct TextPrinter *textPrinter;

    gNightWalkInfo->version = ver;
    func_0802b0d8();
    func_0800e0ec();
    func_0800e0a0(BG_LAYER_1, FALSE, 0, 0, 0, 29, 0);
    func_080173c4(FALSE);
    func_08017338(A_BUTTON, 0);
    func_0802a9b4(&gNightWalkInfo->unk8);
    gNightWalkInfo->unk558 = 0x100;
    func_08029f0c();
    func_0802a970();
    func_0802a564();

    textPrinter = text_printer_create_new(func_0800c3b8(), 1, 240, 30);
    text_printer_set_x_y(textPrinter, 0, 40);
    text_printer_set_layer(textPrinter, 0x800);
    text_printer_center_by_content(textPrinter, TRUE);
    text_printer_set_palette(textPrinter, 6);
    text_printer_set_colors(textPrinter, 0);
    func_08018630(textPrinter);

    gNightWalkInfo->stoppedScrolling = FALSE;
    gNightWalkInfo->nextBridgeType = PLATFORM_TYPE_BRIDGE;
    gNightWalkInfo->endScript = NULL;
    gNightWalkInfo->markingCriteria = 0;
    gNightWalkInfo->unk555 = FALSE;
    gNightWalkInfo->nextCueDelayTime = 0;
}


// Engine Event 0x0A (STUB)
void func_0802b1fc(void) {
}


// Engine Event 0x03 (Set Fall Script)
void func_0802b200(const struct BeatScript *endScript) {
    gNightWalkInfo->endScript = endScript;
}


// Engine Event 0x04 (Set Next Bridge Type)
void func_0802b214(u32 type) {
    gNightWalkInfo->nextBridgeType = type;
}


// Engine Event 0x05 (Set Current Marking Criteria)
void func_0802b230(u32 criteria) {
    gNightWalkInfo->markingCriteria = criteria;
}


// Engine Event 0x07 (Set unk555)
void func_0802b244(u32 arg) {
    gNightWalkInfo->unk555 = arg;
}


// Engine Event 0x08 (Set unk558)
void func_0802b258(u32 arg) {
    gNightWalkInfo->unk558 = arg;
    func_0802b03c(arg);
}


// Game Engine Update
void func_0802b274(void) {
    func_0802ab34();
    func_0802a500();
    func_0802a954();
}


// Game Engine Close
void func_0802b288(void) {
}


// Calculate Cue X Position
s32 func_0802b28c(struct NightWalkCue *info) {
    s32 start = 320;

    return start - (INT_TO_FIXED(info->runningTime + info->delayTime) / info->duration);
}


// Engine Event 0x06 (Set Next Cue Delay Time)
void func_0802b2b4(u32 ticks) {
    gNightWalkInfo->nextCueDelayTime = ticks;
}


// Cue - Spawn
void func_0802b2c8(struct Cue *cue, struct NightWalkCue *info, u32 type) {
    struct NightWalkUnk3B8 *unk3B8 = &gNightWalkInfo->unk3B8;
    u32 endOfBridge = FALSE;
    s32 x, y;

    info->type = type;
    info->wasReached = FALSE;
    info->delayBeats = gNightWalkInfo->nextCueDelayTime;
    info->delayTime = func_0800c3a4(gNightWalkInfo->nextCueDelayTime);
    info->hasFish = -1;
    func_080180b4(cue, func_0800c3a4(0xC0 - gNightWalkInfo->nextCueDelayTime)); // set cue duration
    info->hasFish = FALSE;

    switch (gNightWalkInfo->nextBridgeType) {
        case PLATFORM_TYPE_BRIDGE:
            endOfBridge = FALSE;
            break;
        case PLATFORM_TYPE_GAP:
            endOfBridge = TRUE;
            break;
        case PLATFORM_TYPE_RANDOM:
            endOfBridge = (func_08001980(4) == 0);
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
    info->duration = func_0800c3a4(0xC0);
    x = func_0802b28c(info);
    y = unk3B8->unk4;
    info->endOfBridge = endOfBridge;

    if (endOfBridge) {
        info->boxSprite = func_0804d160(D_03005380, D_089e3634[info->type], 0, x, y, 0x480a, 0, 0, 0);
    } else {
        info->boxSprite = func_0804d160(D_03005380, D_089e3620[info->type], 0, x, y, 0x480a, 0, 0, 0);
    }
    func_0804db44(D_03005380, info->boxSprite, NULL, &unk3B8->unk6);

    if (info->hasFish) {
        info->fishSprite = func_0804d160(D_03005380, D_088c9b08, 0, x, y, 0x480b, 1, 0, 0);
        func_0804db44(D_03005380, info->fishSprite, NULL, &unk3B8->unk6);
    }

    if (endOfBridge) {
        unk3B8->unk4 -= 16;
    }

    info->playYanFellHere = FALSE;
    info->starWandIsAvailable = FALSE;
}


// Cue - Update
u32 func_0802b49c(struct Cue *cue, struct NightWalkCue *info, u32 runningTime, u32 duration) {
    u32 despawnThisCue;
    u32 tickOffset;
    s32 x, y;

    tickOffset = (gNightWalkInfo->unk555) ? 0x10 : 0x0C;

    if (!gNightWalkInfo->stoppedScrolling && !info->endOfBridge && !info->wasReached) {
        if (runningTime > (func_0800c3a4(0xC0 + tickOffset) - info->delayTime)) {
            info->wasReached = TRUE;
            func_0804d8f8(D_03005380, info->boxSprite, D_088c9d10, 1, 1, 4, 0);

            if (gNightWalkInfo->unk555) {
                func_0802aac0(D_089e3610[info->type], 0, 0);
            } else {
                func_0802aac0(D_089e35a8[info->type], 0, 0);
            }
        }
    }

    if (runningTime > func_0800c3a4(0x120 - info->delayBeats)) {
        if (info->playYanFellHere) {
            func_0802a224();
        }
        return TRUE;
    }

    despawnThisCue = FALSE;

    x = func_0802b28c(info);
    func_0804d614(D_03005380, info->boxSprite, x);
    if (info->hasFish) {
        func_0804d614(D_03005380, info->fishSprite, x);
    }

    if (!gNightWalkInfo->stoppedScrolling) {
        info->runningTime++;
    }

    if ((info->type == NIGHT_WALK_CUE_STAR_WAND) && !info->wasReached) {
        if (info->starWandIsAvailable) {
            if (gNightWalkInfo->currentStarSize < 4) {
                func_0804d8f8(D_03005380, info->boxSprite, D_088ca120, 0, 0, 0, 0);
                info->starWandIsAvailable = FALSE;
            }
        } else {
            if (gNightWalkInfo->currentStarSize > 3) {
                func_0804d8f8(D_03005380, info->boxSprite, D_088ca0d8, 0, 1, 0, 0);
                info->starWandIsAvailable = TRUE;
            }
        }
    }

    return despawnThisCue;
}


// Cue - Despawn
void func_0802b648(struct Cue *cue, struct NightWalkCue *info) {
    if (gNightWalkInfo->stoppedScrolling) {
        if (info->endOfBridge) {
            func_0804d8f8(D_03005380, info->boxSprite, D_088c9de0, 0, 1, 0, 3);
        } else {
            func_0804d8f8(D_03005380, info->boxSprite, D_088c9dd0, 0, 1, 0, 3);
        }
        if (func_0804ddb0(D_03005380, info->boxSprite, 4) < 244) {
            func_0800267c(SFX_PLAYER_4, &s_4beat_jiban_seqData);
        }
    } else {
        func_0804d504(D_03005380, info->boxSprite);
        if (info->hasFish) {
            func_0804d504(D_03005380, info->fishSprite);
        }
    }
}


// Check Input for Electric Fish
void func_0802b6fc(struct NightWalkCue *info) {
    if (!info->hasFish) return;

    gNightWalkInfo->playYan.zapTime = func_0800c3a4(0x08);
    gNightWalkInfo->playYan.fishSprite = info->fishSprite;
}


// Cue - Hit
void func_0802b730(struct Cue *cue, struct NightWalkCue *info, u32 pressed, u32 released) {
    s32 starWandObtained = FALSE;
    s32 timingOffset;

    if (gNightWalkInfo->stoppedScrolling) {
        func_08018068();
        return;
    }

    timingOffset = ~(func_08018054());

    if (D_03004afc & A_BUTTON) {
        if (gNightWalkInfo->unk555) {
            if (info->type == NIGHT_WALK_CUE_HEART) {
                func_0802aac0(D_089e3410[func_08001980(1)], timingOffset, 0);
            }
            if (info->type == NIGHT_WALK_CUE_LOLLIPOP) {
                func_0802aac0(D_089e3478[func_08001980(1)], timingOffset, 0);
            }
            if (info->type == NIGHT_WALK_CUE_UMBRELLA) {
                func_0802aac0(D_089e349c[func_08001980(1)], timingOffset, 0);
            }
            if (info->type == NIGHT_WALK_CUE_HEART_2) {
                func_0802aac0(D_089e3528[func_08001980(4)], timingOffset, 0);
            }
            if (info->type == NIGHT_WALK_CUE_STAR_WAND) {
                if (info->starWandIsAvailable) {
                    func_0802aac0(D_089e349c[func_08001980(1)], timingOffset, 0);
                } else {
                    func_0802aac0(D_089e3538, timingOffset, 0);
                }
            }
        } else {
            if (info->type == NIGHT_WALK_CUE_HEART) {
                func_0802aac0(D_089e33ec[func_08001980(1)], timingOffset, 0);
            }
            if (info->type == NIGHT_WALK_CUE_LOLLIPOP) {
                func_0802aac0(D_089e3444[func_08001980(1)], timingOffset, 0);
            }
            if (info->type == NIGHT_WALK_CUE_UMBRELLA) {
                func_0802aac0(D_089e349c[func_08001980(1)], timingOffset, 0);
            }
            if (info->type == NIGHT_WALK_CUE_HEART_2) {
                func_0802aac0(D_089e3528[func_08001980(4)], timingOffset, 0);
            }
            if (info->type == NIGHT_WALK_CUE_STAR_WAND) {
                if (info->starWandIsAvailable) {
                    func_0802aac0(D_089e349c[func_08001980(1)], timingOffset, 0);
                } else {
                    func_0802aac0(D_089e3538, timingOffset, 0);
                }
            }
        }
        if ((info->type == NIGHT_WALK_CUE_STAR_WAND) && info->starWandIsAvailable) {
            starWandObtained = TRUE;
        }
    } else {
        func_0802aac0(D_089e3538, timingOffset, 0);
    }

    info->wasReached = TRUE;

    if (starWandObtained) {
        gNightWalkInfo->stoppedScrolling = TRUE;
        func_0802a2a4();
        func_0802a90c();
        if (gNightWalkInfo->endScript != NULL) {
            func_0801d95c(gNightWalkInfo->endScript);
        }
        func_08017928(gNightWalkInfo->markingCriteria, 0, 0); // register cue result
        func_0804d8f8(D_03005380, info->boxSprite, D_088ca120, 1, 1, 0x7f, 0);
    } else {
        func_08029f68(info->endOfBridge, func_08018054());
        func_0804dae0(D_03005380, info->boxSprite, 1, 0x7f, 0);
        func_0804cebc(D_03005380, info->boxSprite, 1);
        func_0802a840(1);
    }

    func_0802b6fc(info);
}


// Cue - Barely
void func_0802b9dc(struct Cue *cue, struct NightWalkCue *info, u32 pressed, u32 released) {
    s32 timingOffset;

    if (gNightWalkInfo->stoppedScrolling) {
        func_08018068();
        return;
    }

    timingOffset = -(func_08018054());

    if (info->type == NIGHT_WALK_CUE_HEART) {
        func_0802aac0(D_089e33dc, timingOffset, 0);
    }
    if (info->type == NIGHT_WALK_CUE_LOLLIPOP) {
        func_0802aac0(D_089e342c, timingOffset, 0);
    }
    if (info->type == NIGHT_WALK_CUE_UMBRELLA) {
        func_0802aac0(D_089e342c, timingOffset, 0);
    }
    if (info->type == NIGHT_WALK_CUE_HEART_2) {
        func_0802aac0(D_089e342c, timingOffset, 0);
    }
    if (info->type == NIGHT_WALK_CUE_STAR_WAND) {
        func_0802aac0(D_089e342c, timingOffset, 0);
    }

    func_08029f68(info->endOfBridge, func_08018054());
    info->wasReached = TRUE;
    func_0804d8f8(D_03005380, info->boxSprite, D_089e3648[info->type][info->endOfBridge], 0, 1, 0x7f, 0);
    if (gNightWalkInfo->version == NIGHT_WALK_VER_1) {
        if (gNightWalkInfo->nextStar != 0) {
            func_0802a8f0(gNightWalkInfo->nextStar);
        } else if (gNightWalkInfo->currentStarSize > 3) {
            func_0802a8f0(32);
        }
    }
    func_0802b6fc(info);
}


// Cue - Miss
void func_0802bafc(struct Cue *cue, struct NightWalkCue *info) {
    s32 x, y;

    if (gNightWalkInfo->stoppedScrolling || !info->endOfBridge || info->wasReached) {
        func_08018068();
        if (!gNightWalkInfo->stoppedScrolling && !info->endOfBridge && !info->wasReached) {
            func_0804d8f8(D_03005380, info->boxSprite, D_088c9d10, 0, 0, 0, 0);
        }
    } else {
        info->playYanFellHere = TRUE;
        x = func_0804ddb0(D_03005380, info->boxSprite, 4);
        y = func_0804ddb0(D_03005380, info->boxSprite, 5);
        func_0802a154(x, y);
        func_08017b88(FALSE);
    }
}


// Input Event
void func_0802bb98(u32 pressed, u32 released) {
    struct PlayYan *playYan = &gNightWalkInfo->playYan;

    if (!gNightWalkInfo->stoppedScrolling && (playYan->state == PLAY_YAN_STATE_WALKING)) {
        func_0804d8f8(D_03005380, playYan->sprite, D_088c9b98, 0, 1, 5, 0);
        func_0802aac0(D_089e37e4, 0, 0);
    }
}


// Common Event 0 (Beat Animation)
void func_0802bbf4(u32 arg) {
}


// Common Event 1 (Display Text)
void func_0802bbf8(const char *text) {
}
