#include "lib_0804ca80.h"

asm(".include \"include/gba.inc\"");//Temporary

// Set Allocation/Deallocation
void func_0804ca80(void *memAllocFunc, void *memDeallocFunc) {
    D_0300442c = memAllocFunc;
    D_03004430 = memDeallocFunc;
}

// Set Allocation by ID
void func_0804ca94(void *memAllocIdFunc) {
    D_03004434 = memAllocIdFunc;
}

// Init. Sprite Library
struct SpriteHandler *func_0804caa0(u16 arg0, void *buffer, u16 spriteAmount, u32 id) {
    struct SpriteHandler *o;
    struct Sprite *s;
    u32 i;
    u32 spriteSize;
    u32 *buf;
    
    if (id != 0) {
        o = D_03004434(id, sizeof(struct SpriteHandler)); // Allocate by ID
    } else {
        o = D_0300442c(sizeof(struct SpriteHandler)); // Allocate
    }
    o->objAmount = arg0;
    o->oamBuffer = buffer;
    buf = buffer;
    for (i = 0; i < (arg0 / 8); i++) { 
        buf[0] = buf[1] = buf[2] = buf[3] = buf[4] = buf[5] = buf[6] = buf[7] = 0x22222222;
        buf += 8;
    }
    for (i = 0; i < (arg0 % 8); i++) { // Fill the remainder
        buf[i] = 0x22222222;
    }
    
    o->spriteAmount = spriteAmount;
    spriteSize = spriteAmount * sizeof(struct Sprite);
    if (id != 0) {
        s = D_03004434(id, spriteSize); // Allocate by ID 
    } else {
        s = D_0300442c(spriteSize); // Allocate 
    }
    o->sprites = s;
    func_0804cbcc(o); // Initialize the struct
    return o;
}

// Uninit. Sprite Handler
void func_0804cb60(struct SpriteHandler *o) {
    D_03004430(o->sprites);
    D_03004430(o);
}

// Set OAM Buffer
void func_0804cb80(struct SpriteHandler *o, u16 bufferSize, u32 *buffer) {
    o->objAmount = bufferSize;
    o->oamBuffer = buffer;
}


// Render Sprite
u32 func_0804cb88(struct struct_0804cb88 *arg0) {
    u32 (*func)(struct struct_0804cb88 *);
    u32 i;
    
    arg0->unk9 = arg0->unk0->total;
    if (!arg0->unk9) {
       return 0;
    } else {
        ((u16 *)arg0->unk0)++; 
        arg0->unk8 = 0;
        if (arg0->unkC < 0) {
            (u16 *)arg0->unk0 += (arg0->unk9 - 1) * 3;
        }
        func = func_0804e418;
        return func(arg0);
    }
}

// Init. Sprite Handler
void func_0804cbcc(struct SpriteHandler *o) {
    u32 i;
    u32 spriteLimit = o->spriteAmount;
    struct Sprite *sprite = o->sprites;
    
    struct Sprite *spr = sprite;
    for (i = 0; i < spriteLimit; i++) {
        sprite[i].displaySprite = FALSE;
        sprite[i].present = FALSE;
    }
    o->unkE = -1;
    o->unkC = -1;

    sprite->prevID = -1;
    sprite->nextID = 1;
    for (i = 1; i < spriteLimit - 1; i++) {
        sprite[i].prevID = i - 1;
        sprite[i].nextID = i + 1;
    }
    sprite[i].prevID = i - 1;
    sprite[i].nextID = -1;

    o->unk10 = 0;
    o->unk12 = i;
    o->unk1A = 0;
    o->unk14 = 0;
    o->unk16 = 0;
    o->unk18 = 0;
    o->unk1C = 0;
    o->unk1E = 255;
    o->unk22_b0 = 0;
}

// Validate Sprite
u32 func_0804cc68(struct SpriteHandler *o, s16 id) {
    if (id == -1) { // Invalid sprite ID
        return 1;
    }
    
    if (id < 0) { // Invalid sprite ID 
        if (o->unk22_b0 == 0) {
            o->unk22_b0 = 1;
            o->unk24 = o->unk1C;
            o->unk26 = D_03004428;
        }
        return 1;
    }
    
    if (id >= o->spriteAmount) { // Sprite ID exceeds the limit
        if (o->unk22_b0 == 0) {
            o->unk22_b0 = 1;
            o->unk24 = o->unk1C;
            o->unk26 = D_03004428;
        }
        return 1;
    }
    
    if (!o->sprites[id].present) { // Sprite doesn't exist
        if (o->unk22_b0 == 0) {
            o->unk22_b0 = 2;
            o->unk24 = o->unk1C;
            o->unk26 = D_03004428;
        }
        return 1;
    }

    // Valid sprite - return 0
    return 0;
}

// Update Frame
void func_0804cd1c(struct SpriteHandler *o, s16 id, s8 frame, u32 resetDuration) {
    struct Sprite *sprite;
    u32 isFrameValid, updateFrame;
    s8 frameTemp, celAmount, loopFrame;

    frameTemp = frame;
    D_03004428 = 0;
    if (func_0804cc68(o, id)) return;

    sprite = &o->sprites[id];
    if (resetDuration) {
        sprite->currentFrameDuration = 0;
    }

    celAmount = sprite->celAmount;
    loopFrame = sprite->loopFrame;
    if (loopFrame >= celAmount) { // Clamp if the loop frame exceeds the animation limit
        loopFrame = celAmount - 1;
    }
    if (loopFrame < 0) { // Clamp if the loop frame is less than zero
        loopFrame = 0;
    }

    isFrameValid = (frameTemp < 0 || frameTemp >= celAmount);
    if (isFrameValid) {
        switch (sprite->playbackType) {
            case SPRITE_PLAYBACK_REGULAR: // Regular
                frameTemp = loopFrame;
                updateFrame = TRUE;
                break;
            case SPRITE_PLAYBACK_REGULAR_HIDE: // Regular -> Hide animation
                frameTemp = loopFrame;
                updateFrame = TRUE;
                sprite->displaySprite = FALSE;
                break;
            case SPRITE_PLAYBACK_REGULAR_CALLBACK: // Regular -> Callback
                frameTemp = loopFrame;
                if (sprite->callbackFunction) {
                    updateFrame = FALSE;
                    sprite->currentFrameDuration += INT_TO_FIXED(sprite->animation[frameTemp].duration);
                    sprite->currentFrame = frameTemp;
                    sprite->callbackFunction(o, id, sprite->callbackArgument);
                } else {
                    updateFrame = TRUE;
                }
                break;
            case SPRITE_PLAYBACK_INFINITE_LOOP: // Infinite Loop
                if (frameTemp < 1) { // If the frame is negative,
                    frameTemp = -frameTemp; // invert it
                    if (frameTemp >= celAmount) { // and clamp
                        frameTemp = celAmount - 1;
                    }
                } else { // Else do ??? 
                    frameTemp = celAmount - 3 - (frameTemp - celAmount);
                    if (frameTemp < 0) { // and clamp
                        frameTemp = 0;
                    }
                }
                sprite->unkD = -sprite->unkD;
                updateFrame = TRUE;
                break;
            case SPRITE_PLAYBACK_REGULAR_DISABLE: // Regular -> Disable Animation
                updateFrame = FALSE;
                func_0804d504(o, id);
                break;
        }
    } else {
        updateFrame = TRUE;
    }

    if (updateFrame) {
        sprite->currentFrameDuration += INT_TO_FIXED(sprite->animation[frameTemp].duration);
        sprite->currentFrame = frameTemp;
        if (sprite->callbackFunction) {
            if (frameTemp == sprite->callbackFrame) {
                sprite->callbackFunction(o, id, sprite->callbackArgument);
            }
            if (sprite->callbackFrame == -2) {
                sprite->callbackFunction(o, id, sprite->callbackArgument, frameTemp);
            }
        }
    }
}

// Set Frame
void func_0804cebc(struct SpriteHandler *o, s16 id, s8 frame) {
    func_0804cd1c(o, id, frame, TRUE);
}

// Set Frame Based on Duration
void func_0804ced0(struct SpriteHandler *o, s16 id, u8 arg2) {
    s8 frame;
    u32 totalDuration;
    s24_8 dur;
    struct Sprite *sprite;
    struct Animation *anim;
    
    D_03004428 = 1;
    if (func_0804cc68(o, id)) return;
    
    sprite = &o->sprites[id];
    dur = FIXED_POINT_MUL(sprite->totalDuration, arg2);
    anim = sprite->animation;
    frame = 0;
    totalDuration = 0;
    do {
        totalDuration += anim->duration;
        // If the duration of the frames is bigger than 
        // the total duration set in the sprite creation,
        // then set the last frame as the current frame
        if (dur < totalDuration) {
            func_0804cebc(o, id, frame);
            return;
        }
        anim++;
        frame++;
    } while (anim->cel);
}

// func_0804cf38
void func_0804cf38(struct SpriteHandler *o, s16 id) {
    struct Sprite *sprite = o->sprites;
    s16 temp_ip = o->unkC;
    s16 temp_r8 = o->unkE;
    u16 temp_r2 = sprite[id].layer;
    s16 temp_r4 = o->unkE;

    if (temp_r4 != -1) {
        while (temp_r2 < sprite[temp_r4].layer) {
            temp_r4 = sprite[temp_r4].prevID;
            if (temp_r4 == -1) break;
        }
    }
    if (temp_r4 >= 0) {
        s16 temp_r2 = sprite[temp_r4].nextID;
        sprite[temp_r4].nextID = id;
        sprite[id].prevID = temp_r4;
        sprite[id].nextID = temp_r2;
        if (temp_r2 > -1) sprite[temp_r2].prevID = id;
    } else {
        temp_r4 = temp_ip;
        if (temp_r4 > -1) {
            sprite[temp_r4].prevID = id;
            sprite[id].nextID = temp_r4;
        } else {
            sprite[id].nextID = -1;
        }
        sprite[id].prevID = -1;
    }
        
    if (sprite[id].prevID == -1) do {temp_ip = id;} while (0);
    if (sprite[id].nextID == -1) temp_r8 = id;
    
    o->unkC = temp_ip;
    o->unkE = temp_r8;
}

// Unlink Sprite
void func_0804d05c(struct SpriteHandler *o, s16 id) {
    struct Sprite *spr = o->sprites;
    s16 next = spr[id].nextID;
    s16 prev = spr[id].prevID;

    if (prev > -1) {
        spr[prev].nextID = next;
    } else {
        o->unkC = next;
    }
    if (next > -1) {
        spr[next].prevID = prev;
    } else {
        o->unkE = prev;
    }
}

// Get Next Free ID
s16 func_0804d0a4(struct SpriteHandler *o) {
    s16 id = o->unk10;
    if (id > -1) {
        o->unk10 = o->sprites[id].nextID;
        if (o->unk10 < 0) {
            o->unk12 = -1;
        }
    }
    return id;
}

// func_0804d0d8
void func_0804d0d8(struct SpriteHandler *o, s16 id) {
    if (id > -1) {
        if (o->unk12 >= 0) {
            o->sprites[o->unk12].nextID = id;
        } else {
            o->unk10 = id;
        }
        o->sprites[id].nextID = -1;
        o->unk12 = id;
    }
}

// Get Cel Amount
u8 func_0804d11c(struct Animation *anim) {
    u8 i = 0;
    const AnimationCel *cel = anim->cel;
    
    while (cel) {
        i++;
        cel = anim[i].cel;
    }
    return i;
}

// Get Total Duration
u16 func_0804d140(struct Animation *anim) {
    u16 totalDuration = 0;
    
    while (anim->cel) {
        totalDuration += anim->duration;
        anim++;
    }
    return totalDuration;
}

// Create New
s16 func_0804d160(struct SpriteHandler *o, struct Animation *anim, s8 frame, s16 posX, s16 posY, u16 layer, s8 playbackFlag, s8 loopFrame, u16 playbackType) {
    struct Sprite *sprite;
    s16 id = func_0804d0a4(o);

    if (id < 0) return -1;

    sprite = &o->sprites[id];

    sprite->present = TRUE;
    sprite->animation = anim;
    sprite->unkD = playbackFlag;
    sprite->loopFrame = loopFrame;
    sprite->xPosition = posX;
    sprite->yPosition = posY;
    sprite->layer = layer;
    sprite->celAmount = func_0804d11c(anim);
    sprite->playbackType = playbackType & 0xff;
    sprite->oamAttributes = 0;
    sprite->tileNumber = 0;
    sprite->palette = 0;
    sprite->callbackFrame = -1;
    sprite->update = 0;
    sprite->pause = 0;
    sprite->callbackFunction = 0;
    sprite->totalDuration = func_0804d140(anim);
    sprite->yDataSource = &D_08bd0cac;
    sprite->xDataSource = &D_08bd0cac;
    sprite->memoryID = o->unk1C;
    sprite->animationSpeed = INT_TO_FIXED(1);
    func_0804cf38(o, id);
    func_0804cebc(o, id, frame);
    sprite->displaySprite = (playbackType >> 0xf) ^ 1; // If bit 15 is set = 0; else = 1
    return id;
}

// Create New (w/ Attributes)
s16 func_0804d294(struct SpriteHandler *o, struct Animation *anim, s8 frame, s16 posX, s16 posY, u16 layer, s8 playbackFlag, s8 loopFrame, u16 playbackType, u32 attrs) {
    struct Sprite *sprite;
    s16 id = func_0804d0a4(o);

    if (id < 0) return -1;

    sprite = &o->sprites[id];

    sprite->present = TRUE;
    sprite->animation = anim;
    sprite->unkD = playbackFlag;
    sprite->loopFrame = loopFrame;
    sprite->xPosition = posX;
    sprite->yPosition = posY;
    sprite->layer = layer;
    sprite->celAmount = func_0804d11c(anim);
    sprite->playbackType = playbackType & 0xff;
    sprite->oamAttributes = attrs;
    sprite->tileNumber = 0;
    sprite->palette = 0;
    sprite->callbackFrame = -1;
    sprite->update = 0;
    sprite->pause = 0;
    sprite->callbackFunction = 0;
    sprite->totalDuration = func_0804d140(anim);
    sprite->yDataSource = &D_08bd0cac;
    sprite->xDataSource = &D_08bd0cac;
    sprite->memoryID = o->unk1C;
    sprite->animationSpeed = INT_TO_FIXED(1);
    func_0804cf38(o, id);
    func_0804cebc(o, id, frame);
    sprite->displaySprite = (playbackType >> 0xf) ^ 1; // If bit 15 is set = 0; else = 1
    return id;
}

// Duplicate Sprite
s16 func_0804d3cc(struct SpriteHandler *o, s16 srcId) {
    s16 destId;
    struct Sprite *destSprite;
    struct Sprite *srcSprite;
    
    D_03004428 = 2;
    if (func_0804cc68(o, srcId)) return -1;
    
    destId = func_0804d0a4(o);
    if (destId < 0) return -1;
    destSprite = &o->sprites[destId];
    srcSprite = &o->sprites[srcId];
    
    DmaCopy32(3, srcSprite, destSprite, sizeof(struct Sprite));
    destSprite->memoryID = o->unk1C;
    destSprite->prevID = srcId;
    destSprite->nextID = srcSprite->nextID;
    srcSprite->nextID = destId;
    if (destSprite->nextID == -1) {
        o->unkE = destId;
    } else {
        o->sprites[destSprite->nextID].prevID = destId;
    }
    return destId;
}

// Copy Sprite
void func_0804d468(struct SpriteHandler *o, s16 destId, s16 srcId) {
    u16 prev;
    s16 i;
    u8 *src;
    u8 *dest;
    
    D_03004428 = 3;
    if (func_0804cc68(o, destId) || func_0804cc68(o, srcId)) return;

    prev = o->sprites[destId].memoryID;
    func_0804d05c(o, destId);
    dest = (u8 *)&o->sprites[destId];
    src = (u8 *)&o->sprites[srcId];
    for (i = 0; i < sizeof(struct Sprite); i++) {
        *dest++ = *src++;
    }
    func_0804cf38(o, destId);
    o->sprites[destId].memoryID = prev;
}

// Disable Sprite
void func_0804d504(struct SpriteHandler *o, s16 id) {
    D_03004428 = 4;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].displaySprite = FALSE;
    o->sprites[id].present = FALSE;
    func_0804d05c(o, id);
    func_0804d0d8(o, id);
}

// Set X/Y Position and Layer
void func_0804d55c(struct SpriteHandler *o, s16 id, s16 x, s16 y, u16 layer) {
    D_03004428 = 5;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].xPosition = x;
    o->sprites[id].yPosition = y;
    if (o->sprites[id].layer != layer) {
        func_0804d05c(o, id);
        o->sprites[id].layer = layer;
        func_0804cf38(o, id);
    }
}

// Set X/Y Position
void func_0804d5d4(struct SpriteHandler *o, s16 id, s16 x, s16 y) {
    D_03004428 = 6;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].xPosition = x;
    o->sprites[id].yPosition = y;
}

// Set X Position
void func_0804d614(struct SpriteHandler *o, s16 id, s16 x) {
    D_03004428 = 7;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].xPosition = x;
}

// Set Y Position
void func_0804d648(struct SpriteHandler *o, s16 id, s16 y) {
    D_03004428 = 8;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].yPosition = y;
}

// Set Layer
void func_0804d67c(struct SpriteHandler *o, s16 id, u16 layer) {
    D_03004428 = 9;
    if (func_0804cc68(o, id)) return;
    if (o->sprites[id].layer == layer) return;

    func_0804d05c(o, id);
    o->sprites[id].layer = layer;
    func_0804cf38(o, id);
}

// Get Current Frame
s8 func_0804d6cc(struct SpriteHandler *o, s16 id) {
    D_03004428 = 10;
    if (func_0804cc68(o, id)) return -1;

    return o->sprites[id].currentFrame;
}

// Get Animation Progression (?)
u8 func_0804d708(struct SpriteHandler *o, s16 id) {
    struct Sprite *sprite;
    struct Animation *anim;
    u32 calcDuration;
    u32 i;
    
    D_03004428 = 11;
    if (func_0804cc68(o, id)) return 0;
    
    sprite = &o->sprites[id];
    anim = sprite->animation;
    calcDuration = 0;
    for (i = 0; i < sprite->currentFrame; i++) {
        calcDuration += anim->duration;
        anim++;
    }
    calcDuration += (anim->duration - (s8)FIXED_TO_INT(sprite->currentFrameDuration));
    return (u32)INT_TO_FIXED(calcDuration) / sprite->totalDuration;
}

// Display Sprite
void func_0804d770(struct SpriteHandler *o, s16 id, u16 flag) {
    D_03004428 = 12;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].displaySprite = flag;
}

// Set Attributes
void func_0804d7b4(struct SpriteHandler *o, s16 id, u32 arg2) {
    D_03004428 = 13;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].oamAttributes = arg2;
}

// OR Attributes
void func_0804d7e8(struct SpriteHandler *o, s16 id, u32 arg2) {
    D_03004428 = 14;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].oamAttributes |= arg2;
}

// AND Attributes
void func_0804d820(struct SpriteHandler *o, s16 id, u32 arg2) {
    D_03004428 = 15;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].oamAttributes &= arg2;
}

// CLEAR Attributes
void func_0804d858(struct SpriteHandler *o, s16 id, u32 arg2) {
    D_03004428 = 16;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].oamAttributes &= ~arg2;
}

// Set Tile Number
void func_0804d890(struct SpriteHandler *o, s16 id, s16 arg2) {
    D_03004428 = 17;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].tileNumber = arg2;
}

// Set Palette
void func_0804d8c4(struct SpriteHandler *o, s16 id, s8 arg2) {
    D_03004428 = 18;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].palette = arg2;
}

// Set Animation
void func_0804d8f8(struct SpriteHandler *o, s16 id, struct Animation * anim,
                    s8 animFrame, s8 arg4, s8 loopFrame, u16 playType) {
    struct Sprite *sprite;
    D_03004428 = 19;
    if (func_0804cc68(o, id)) return;
    
    sprite = &o->sprites[id];
    sprite->celAmount = func_0804d11c(anim);
    sprite->animation = anim;
    sprite->totalDuration = func_0804d140(anim);
    if (animFrame > -1) {
        sprite->unkD = arg4;
        sprite->loopFrame = loopFrame;
        sprite->playbackType = playType;
        func_0804cebc(o, id, animFrame);
    }
}

// Set Animation From Struct
void func_0804d9b0(struct SpriteHandler *o, s16 id, struct SpritePlaybackData *data) {
    struct Sprite *sprite;
    D_03004428 = 19;
    if (func_0804cc68(o, id)) return;

    sprite = &o->sprites[id];
    sprite->celAmount = func_0804d11c(data->anim);
    sprite->animation = data->anim;
    sprite->totalDuration = func_0804d140(data->anim);
    if (data->animFrame > -1) {
        sprite->unkD = data->unk5;
        sprite->loopFrame = data->loopFrame;
        func_0804cebc(o, id, data->animFrame);
    }
}

// Set Update Flag
void func_0804da20(struct SpriteHandler *o, s16 id, u16 arg2) {
    D_03004428 = 20;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].update = arg2;
}

// Set Pause (?) Flag
void func_0804da68(struct SpriteHandler *o, s16 id, u16 arg2) {
    D_03004428 = 21;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].pause = arg2;
}

// Set Callback
void func_0804daa8(struct SpriteHandler *o, s16 id, void *func, u32 arg) {
    D_03004428 = 22;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].callbackFunction = func;
    o->sprites[id].callbackArgument = arg;
}

// Set Playback Data
void func_0804dae0(struct SpriteHandler *o, s16 id, s8 arg2, s8 loopFrame, u16 playType) {
    struct Sprite *sprite;
    D_03004428 = 23;
    if (func_0804cc68(o, id)) return;

    sprite = &o->sprites[id];
    sprite->unkD = arg2;
    sprite->loopFrame = loopFrame;
    sprite->playbackType = playType & 0xff;
}

// Set X & Y Data Source
void func_0804db44(struct SpriteHandler *o, s16 id, s16 *dX, s16 *dY) {
    struct Sprite *sprite;
    D_03004428 = 24;
    if (func_0804cc68(o, id)) return;

    sprite = &o->sprites[id];
    sprite->xDataSource = dX;
    if (!dX) sprite->xDataSource = &D_08bd0cac;
    sprite->yDataSource = dY;
    if (!dY) sprite->yDataSource = &D_08bd0cac;
}

// Set X Data Source
void func_0804db90(struct SpriteHandler *o, s16 id, s16 *d) {
    struct Sprite *sprite;
    D_03004428 = 24;
    if (func_0804cc68(o, id)) return;

    sprite = &o->sprites[id];
    sprite->xDataSource = d;
    if (!d) sprite->xDataSource = &D_08bd0cac;
}

// Set Y Data Source
void func_0804dbd0(struct SpriteHandler *o, s16 id, s16 *d) {
    struct Sprite *sprite;
    D_03004428 = 24;
    if (func_0804cc68(o, id)) return;

    sprite = &o->sprites[id];
    sprite->yDataSource = d;
    if (!d) sprite->yDataSource = &D_08bd0cac;
}

// Set Affine
void func_0804dc10(struct SpriteHandler *o, s16 id, s32 afIndex, s16 *af) {
    struct Sprite *sprite;
    D_03004428 = 25;
    if (func_0804cc68(o, id)) return;

    sprite = &o->sprites[id];

    if (afIndex > -1) {
        sprite->affineParams = af;
        sprite->oamAttributes &= ~0x02000000; // clear affine flag 
        sprite->oamAttributes &= ~0x00003e00; // clear affine param index
        sprite->oamAttributes &= ~(2 | 1);
        sprite->oamAttributes |= 0x2000000; // affine flag
        sprite->oamAttributes |= afIndex << 9; // affine param index
        sprite->oamAttributes |= (2 | 1); // affine + double size flag
    } else {
        sprite->oamAttributes &= ~0x02000000;
        sprite->oamAttributes &= ~0x00003e00;
        sprite->oamAttributes &= ~(2 | 1);
    }
}

// Set Affine & Double Size Flags
void func_0804dc8c(struct SpriteHandler *o, s16 id, u32 arg2) {
    struct Sprite *sprite;
    if (id > -1) {
        sprite = &o->sprites[id];
        sprite->oamAttributes &= ~(2 | 1);
        sprite->oamAttributes |= arg2;
    }
}

// Set Animation Speed
void func_0804dcb8(struct SpriteHandler *o, s16 id, u16 speed) {
    struct Sprite *sprite;
    if (id > -1) {
        sprite = &o->sprites[id];
        sprite->animationSpeed = speed;
    }
}

#define AS_OAM(data) ((struct OAM *)data)

// Get Sprite Dimensions
u32 func_0804dcd8(u16 *cel, u32 requestedData) {
    s32 zero;
    s32 bottomEdge, topEdge, rightEdge, leftEdge;
    s32 total, i;
    u8 *objSizes;
    struct OamDimensions *dimensions;
    s32 x, y;

    zero = 0;
    bottomEdge = 0;
    topEdge = 0;
    rightEdge = 0;
    leftEdge = 0;
    total = *cel++;

    if (zero < total) {
        objSizes = (u8 *)&D_08bd0cae;
        i = total;
        do {
            // Get the X and Y, clamp them
            x = AS_OAM(cel)->xPos;
            if (x > 255) {
                x -= 512;
            }
            y = AS_OAM(cel)->yPos;
            if (y > 127) {
                y -= 256;
            }
            // Get the dimensions
            // D_08bd0cae[AS_OAM(cel)->shape][AS_OAM(cel)->size];
            dimensions = (struct OamDimensions *)&objSizes[(AS_OAM(cel)->objShape * 8) + (AS_OAM(cel)->objSize * 2)];
            
            // Calculate edges
            if (x < leftEdge) {
                leftEdge = x;
            }
            if (x + dimensions->width > rightEdge) { 
                rightEdge = x + dimensions->width;
            }
            if (y < topEdge) {
                topEdge = y;
            }
            (s32)dimensions = y + dimensions->height; // ???????????
            if ((s32)dimensions > bottomEdge) {
                bottomEdge = (s32)dimensions;
            }
        
            cel += 3;
            i--;
        } while (i != 0);
    }
    switch (requestedData) {
        case SPRITE_DIMENSION_LEFT:
            return leftEdge;
        case SPRITE_DIMENSION_RIGHT:
            return rightEdge;
        case SPRITE_DIMENSION_TOP:
            return topEdge;
        case SPRITE_DIMENSION_BOTTOM:
            return bottomEdge;
        case SPRITE_DIMENSION_WIDTH:
            return rightEdge - leftEdge;
        case SPRITE_DIMENSION_HEIGHT:
            return bottomEdge - topEdge;
        default:
            return 0;
    }
}
#undef AS_OAM

// Get Sprite Data
s32 func_0804ddb0(struct SpriteHandler *o, s16 id, u32 requestedDatat) {
    s32 returnValue;
    struct Sprite *sprite;
    D_03004428 = 26;
    if (func_0804cc68(o, id)) return 0;
    
    sprite = &o->sprites[id];
    switch (requestedDatat) {
        case SPRITE_DATA_DISPLAY_FLAG:
            returnValue = sprite->displaySprite;
            break;
        case SPRITE_DATA_PLAYBACK_TYPE:
            returnValue = sprite->playbackType;
            break;
        case SPRITE_DATA_TOTAL_CEL_AMOUNT:
            returnValue = sprite->celAmount;
            break;
        case SPRITE_DATA_UPDATE_FLAG:
            returnValue = sprite->update;
            break;
        case SPRITE_DATA_X_POSITION:
            returnValue = sprite->xPosition;
            break;
        case SPRITE_DATA_Y_POSITION:
            returnValue = sprite->yPosition;
            break;
        case SPRITE_DATA_LAYER:
            returnValue = sprite->layer;
            break;
        case SPRITE_DATA_ANIMATION:
            returnValue = (u32)sprite->animation;
            break;
        case SPRITE_DATA_CURRENT_FRAME_DURATION:
            returnValue = (s8)FIXED_TO_INT(sprite->currentFrameDuration);
            break;
        case SPRITE_DATA_CURRENT_FRAME:
            returnValue = sprite->currentFrame;
            break;
        case SPRITE_DATA_UNKD:
            returnValue = sprite->unkD;
            break;
        case SPRITE_DATA_LOOP_FRAME:
            returnValue = sprite->loopFrame;
            break;
        case SPRITE_DATA_ATTRS10:
            returnValue = sprite->oamAttributes;
            break;
        case SPRITE_DATA_TILE_NUMBER:
            returnValue = sprite->tileNumber;
            break;
        case SPRITE_DATA_CALLBACK:
            returnValue = (u32)sprite->callbackFunction;
            break;
        case SPRITE_DATA_CALLBACK_ARG:
            returnValue = sprite->callbackArgument;
            break;
        case SPRITE_DATA_MEMORY_ID:
            returnValue = sprite->memoryID;
            break;
        case SPRITE_DATA_X_DATA_SOURCE:
            returnValue = (u32)sprite->xDataSource;
            break;
        case SPRITE_DATA_Y_DATA_SOURCE:
            returnValue = (u32)sprite->yDataSource;
            break;
        case SPRITE_DATA_ANIMATION_SPEED:
            returnValue = sprite->animationSpeed;
            break;
        case SPRITE_DATA_DIMENSION_LEFT:
            returnValue = func_0804dcd8((u16 *)sprite->animation[sprite->currentFrame].cel, SPRITE_DIMENSION_LEFT);
            break;
        case SPRITE_DATA_DIMENSION_RIGHT:
            returnValue = func_0804dcd8((u16 *)sprite->animation[sprite->currentFrame].cel, SPRITE_DIMENSION_RIGHT);
            break;
        case SPRITE_DATA_DIMENSION_TOP:
            returnValue = func_0804dcd8((u16 *)sprite->animation[sprite->currentFrame].cel, SPRITE_DIMENSION_TOP);
            break;
        case SPRITE_DATA_DIMENSION_BOTTOM:
            returnValue = func_0804dcd8((u16 *)sprite->animation[sprite->currentFrame].cel, SPRITE_DIMENSION_BOTTOM);
            break;
        case SPRITE_DATA_DIMENSION_WIDTH:
            returnValue = func_0804dcd8((u16 *)sprite->animation[sprite->currentFrame].cel, SPRITE_DIMENSION_WIDTH);
            break;
        case SPRITE_DATA_DIMENSION_HEIGHT:
            returnValue = func_0804dcd8((u16 *)sprite->animation[sprite->currentFrame].cel, SPRITE_DIMENSION_HEIGHT);
            break;
        default:
            returnValue = 0;
            break;
    }
    return returnValue;
}

// Set Callback Frame
void func_0804df4c(struct SpriteHandler *o, s16 id, s8 frame) {
    struct Sprite *sprite;
    if (id > -1) {
        sprite = &o->sprites[id];
        sprite->callbackFrame = frame;
    }
}

// Set Special Callback Frame
void func_0804df6c(struct SpriteHandler *o, s16 id) {
    func_0804df4c(o, id, -2);
}

// Set Values by Mem. ID
void func_0804df80(struct SpriteHandler *o, u16 id, u32 value, u32 arg) {
    s16 r3 = o->unkC;

    while (r3 >= 0) {
        s16 r7 = o->sprites[r3].nextID;
        if (o->sprites[r3].memoryID == id) {
            switch (value) {
                case SPRITE_ACT_DISABLE:
                    func_0804d504(o, r3);
                    break;
                case SPRITE_ACT_SHOW:
                    func_0804d770(o, r3, arg);
                    break;
                case SPRITE_ACT_SET_UPDATE:
                    func_0804da20(o, r3, arg);
                    break;
                case SPRITE_ACT_SET_ATTR:
                    func_0804d7b4(o, r3, arg);
                    break;
                case SPRITE_ACT_OR_ATTR:
                    func_0804d7e8(o, r3, arg);
                    break;
                case SPRITE_ACT_AND_ATTR:
                    func_0804d820(o, r3, arg);
                    break;
                case SPRITE_ACT_BIC_ATTR:
                    func_0804d858(o, r3, arg);
                    break;
                case SPRITE_ACT_SET_TILE_NUMBER:
                    func_0804d890(o, r3, arg);
                    break;
                case SPRITE_ACT_SET_PAL:
                    func_0804d8c4(o, r3, arg);
                    break;
                case SPRITE_ACT_SET_XY_DATA_SOURCE:
                    func_0804db44(o, r3, *(s16 **)arg, *(s16 **)((u32 *)arg + 1));
                    break;
                case SPRITE_ACT_SET_ANIMATION_SPEED:
                    func_0804dcb8(o, r3, arg);
                    break;
            }
        }
        r3 = r7;
    }
}

// func_0804e0a0
u16 func_0804e0a0(struct SpriteHandler *o) {
    if (++o->unk1E == 0) {
        o->unk1E = 256;
    }
    return o->unk1E;
}

// Set Current Memory ID
void func_0804e0bc(struct SpriteHandler *o, u16 memID) {
    o->unk1C = memID;
}

// Get Current Memory ID
u16 func_0804e0c0(struct SpriteHandler *o) {
    return o->unk1C;
}

// Disable Sprite by Mem. ID
void func_0804e0c4(struct SpriteHandler *o, u16 id) {
    func_0804df80(o, id, SPRITE_ACT_DISABLE, 0);
}

// Show/Display Sprite by Mem. ID
void func_0804e0d8(struct SpriteHandler *o, u16 id, u16 arg) {
    func_0804df80(o, id, SPRITE_ACT_SHOW, arg);
}

// Set Update Flag by Mem. ID
void func_0804e0f0(struct SpriteHandler *o, u16 id, u16 arg) {
    func_0804df80(o, id, SPRITE_ACT_SET_UPDATE, arg);
}

// Set Attributes by Mem. ID
void func_0804e108(struct SpriteHandler *o, u16 id, u32 arg) {
    func_0804df80(o, id, SPRITE_ACT_SET_ATTR, arg);
}

// OR Attributes by Mem. ID
void func_0804e11c(struct SpriteHandler *o, u16 id, u32 arg) {
    func_0804df80(o, id, SPRITE_ACT_OR_ATTR, arg);
}

// AND Attributes by Mem. ID
void func_0804e130(struct SpriteHandler *o, u16 id, u32 arg) {
    func_0804df80(o, id, SPRITE_ACT_AND_ATTR, arg);
}

// CLEAR Attributes by Mem. ID
void func_0804e144(struct SpriteHandler *o, u16 id, u32 arg) {
    func_0804df80(o, id, SPRITE_ACT_BIC_ATTR, arg);
}

// Set Tile Number by Mem. ID
void func_0804e158(struct SpriteHandler *o, u16 id, s16 arg) {
    func_0804df80(o, id, SPRITE_ACT_SET_TILE_NUMBER, arg);
}

// Set Palette by Mem. ID
void func_0804e170(struct SpriteHandler *o, u16 id, s8 arg) {
    func_0804df80(o, id, SPRITE_ACT_SET_PAL, arg);
}

// Set X & Y Data Source by Mem. ID
void func_0804e188(struct SpriteHandler *o, u16 id, s16 *xController, s16 *yController) {
    s16 *arg[2] = {xController, yController};
    func_0804df80(o, id, SPRITE_ACT_SET_XY_DATA_SOURCE, (uintptr_t)&arg);
}

// Set Animation Speed by Mem. ID
void func_0804e1a4(struct SpriteHandler *o, u16 id, u16 arg) {
    func_0804df80(o, id, SPRITE_ACT_SET_ANIMATION_SPEED, arg);
}

// Set Pause Sprite Flag
void func_0804e1bc(struct SpriteHandler *o, u16 pause) {
    o->unk1A = pause;
}

// Set Global X/Y Adjustment
void func_0804e1c0(struct SpriteHandler *o, u16 x, u16 y) {
    o->unk14 = x;
    o->unk16 = y;
}

// https://decomp.me/scratch/THxdI
// Update Sprite Library
#include "asm/lib_0804ca80/asm_0804e1c8.s"

// Get Amount of ?? Sprites
s32 func_0804e3b0(struct SpriteHandler *o) {
    s32 count = 0;
    struct Sprite *sprites = o->sprites;
    s32 id = o->unkC;

    while (id != -1) {
        count++;
        id = sprites[id].nextID;
    }
    return count;
}

// Get Amount of ?? Sprites with Mem. ID
s32 func_0804e3e0(struct SpriteHandler *o, u16 memID) {
    s32 count = 0;
    struct Sprite *sprite = o->sprites;
    s32 r2 = o->unkC;
    while (r2 != -1) {
        if (sprite[r2].memoryID == memID) {
            count++;
        }
        r2 = sprite[r2].nextID;
    }
    return count;
}
