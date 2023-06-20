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
    o->unk4 = buffer;
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
        s = D_03004434(id, spriteSize); // Alocate by ID 
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
    o->unk4 = buffer;
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
        sprite[i].unk0_b0 = 0;
        sprite[i].unk0_b14 = FALSE;
    }
    o->unkE = -1;
    o->unkC = -1;

    sprite->unk18 = -1;
    sprite->unk1A = 1;
    for (i = 1; i < spriteLimit - 1; i++) {
        sprite[i].unk18 = i - 1;
        sprite[i].unk1A = i + 1;
    }
    sprite[i].unk18 = i - 1;
    sprite[i].unk1A = -1;

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

// Validate ID
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
    
    if (!o->sprites[id].unk0_b14) { // Sprite doesn't exist
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
        sprite->unk1C = 0;
    }

    celAmount = sprite->unk0_b5;
    loopFrame = sprite->unkE;
    if (loopFrame >= celAmount) { // Clamp if the loop frame exceeds the animation limit
        loopFrame = celAmount - 1;
    }
    if (loopFrame < 0) { // Clamp if the loop frame is less than zero
        loopFrame = 0;
    }

    isFrameValid = (frameTemp < 0 || frameTemp >= celAmount);
    if (isFrameValid) {
        switch (sprite->unk0_b1) {
            case 0: // Regular
                frameTemp = loopFrame;
                updateFrame = TRUE;
                break;
            case 2: // Regular -> End animation
                frameTemp = loopFrame;
                updateFrame = TRUE;
                sprite->unk0_b0 = 0;
                break;
            case 4: // Regular -> Callback
                frameTemp = loopFrame;
                if (sprite->unk20) {
                    updateFrame = FALSE;
                    sprite->unk1C += INT_TO_FIXED(sprite->unk8[frameTemp].duration);
                    sprite->unkC = frameTemp;
                    sprite->unk20(o, id, sprite->unk24);
                } else {
                    updateFrame = TRUE;
                }
                break;
            case 1: // Infinite Loop
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
            case 3: // Regular -> Deactivate animation
                updateFrame = FALSE;
                func_0804d504(o, id);
                break;
        }
    } else {
        updateFrame = TRUE;
    }

    if (updateFrame) {
        sprite->unk1C += INT_TO_FIXED(sprite->unk8[frameTemp].duration);
        sprite->unkC = frameTemp;
        if (sprite->unk20) {
            if (frameTemp == sprite->unk17) {
                sprite->unk20(o, id, sprite->unk24);
            }
            if (sprite->unk17 == -2) {
                sprite->unk20(o, id, sprite->unk24, frameTemp);
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
    s32 dur;
    struct Sprite *sprite;
    struct Animation *anim;
    
    D_03004428 = 1;
    if (func_0804cc68(o, id)) return;
    
    sprite = &o->sprites[id];
    dur = FIXED_POINT_MUL(sprite->unk28, arg2);
    anim = sprite->unk8;
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
    u16 temp_r2 = sprite[id].unk6;
    s16 temp_r4 = o->unkE;

    if (temp_r4 != -1) {
        while (temp_r2 < sprite[temp_r4].unk6) {
            temp_r4 = sprite[temp_r4].unk18;
            if (temp_r4 == -1) break;
        }
    }
    if (temp_r4 >= 0) {
        s16 temp_r2 = sprite[temp_r4].unk1A;
        sprite[temp_r4].unk1A = id;
        sprite[id].unk18 = temp_r4;
        sprite[id].unk1A = temp_r2;
        if (temp_r2 > -1) sprite[temp_r2].unk18 = id;
    } else {
        temp_r4 = temp_ip;
        if (temp_r4 > -1) {
            sprite[temp_r4].unk18 = id;
            sprite[id].unk1A = temp_r4;
        } else {
            sprite[id].unk1A = -1;
        }
        sprite[id].unk18 = -1;
    }
        
    if (sprite[id].unk18 == -1) do {temp_ip = id;} while (0);
    if (sprite[id].unk1A == -1) temp_r8 = id;
    
    o->unkC = temp_ip;
    o->unkE = temp_r8;
}

// Unlink Sprite
void func_0804d05c(struct SpriteHandler *o, s16 id) {
    struct Sprite *spr = o->sprites;
    s16 next = spr[id].unk1A;
    s16 prev = spr[id].unk18;

    if (prev > -1) {
        spr[prev].unk1A = next;
    } else {
        o->unkC = next;
    }
    if (next > -1) {
        spr[next].unk18 = prev;
    } else {
        o->unkE = prev;
    }
}

// Get Next ID
s16 func_0804d0a4(struct SpriteHandler *o) {
    s16 id = o->unk10;
    if (id > -1) {
        o->unk10 = o->sprites[id].unk1A;
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
            o->sprites[o->unk12].unk1A = id;
        } else {
            o->unk10 = id;
        }
        o->sprites[id].unk1A = -1;
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

    sprite->unk0_b14 = TRUE;
    sprite->unk8 = anim;
    sprite->unkD = playbackFlag;
    sprite->unkE = loopFrame;
    sprite->unk2 = posX;
    sprite->unk4 = posY;
    sprite->unk6 = layer;
    sprite->unk0_b5 = func_0804d11c(anim);
    sprite->unk0_b1 = playbackType & 0xff;
    sprite->unk10 = 0;
    sprite->unk14 = 0;
    sprite->unk16 = 0;
    sprite->unk17 = -1;
    sprite->unk0_b13 = 0;
    sprite->unk0_b15 = 0;
    sprite->unk20 = 0;
    sprite->unk28 = func_0804d140(anim);
    sprite->unk30 = (s16 *)D_08bd0cac[0];
    sprite->unk2C = (s16 *)D_08bd0cac[0];
    sprite->unk2A = o->unk1C;
    sprite->unk38 = INT_TO_FIXED(1);
    func_0804cf38(o, id);
    func_0804cebc(o, id, frame);
    sprite->unk0_b0 = (playbackType >> 0xf) ^ 1; // If bit 15 is set = 0; else = 1
    return id;
}

// Create New (w/ Attributes)
s16 func_0804d294(struct SpriteHandler *o, struct Animation *anim, s8 frame, s16 posX, s16 posY, u16 layer, s8 playbackFlag, s8 loopFrame, u16 playbackType, u32 attrs) {
    struct Sprite *sprite;
    s16 id = func_0804d0a4(o);

    if (id < 0) return -1;

    sprite = &o->sprites[id];

    sprite->unk0_b14 = TRUE;
    sprite->unk8 = anim;
    sprite->unkD = playbackFlag;
    sprite->unkE = loopFrame;
    sprite->unk2 = posX;
    sprite->unk4 = posY;
    sprite->unk6 = layer;
    sprite->unk0_b5 = func_0804d11c(anim);
    sprite->unk0_b1 = playbackType & 0xff;
    sprite->unk10 = attrs;
    sprite->unk14 = 0;
    sprite->unk16 = 0;
    sprite->unk17 = -1;
    sprite->unk0_b13 = 0;
    sprite->unk0_b15 = 0;
    sprite->unk20 = 0;
    sprite->unk28 = func_0804d140(anim);
    sprite->unk30 = (s16 *)D_08bd0cac[0];
    sprite->unk2C = (s16 *)D_08bd0cac[0];
    sprite->unk2A = o->unk1C;
    sprite->unk38 = INT_TO_FIXED(1);
    func_0804cf38(o, id);
    func_0804cebc(o, id, frame);
    sprite->unk0_b0 = (playbackType >> 0xf) ^ 1; // If bit 15 is set = 0; else = 1
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
    destSprite->unk2A = o->unk1C;
    destSprite->unk18 = srcId;
    destSprite->unk1A = srcSprite->unk1A;
    srcSprite->unk1A = destId;
    if (destSprite->unk1A == -1) {
        o->unkE = destId;
    } else {
        o->sprites[destSprite->unk1A].unk18 = destId;
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

    prev = o->sprites[destId].unk2A;
    func_0804d05c(o, destId);
    dest = (u8 *)&o->sprites[destId];
    src = (u8 *)&o->sprites[srcId];
    for (i = 0; i < sizeof(struct Sprite); i++) {
        *dest++ = *src++;
    }
    func_0804cf38(o, destId);
    o->sprites[destId].unk2A = prev;
}

// Disable Sprite
void func_0804d504(struct SpriteHandler *o, s16 id) {
    D_03004428 = 4;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].unk0_b0 = 0;
    o->sprites[id].unk0_b14 = FALSE;
    func_0804d05c(o, id);
    func_0804d0d8(o, id);
}

// Set X/Y Position and Layer
void func_0804d55c(struct SpriteHandler *o, s16 id, s16 x, s16 y, u16 layer) {
    D_03004428 = 5;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].unk2 = x;
    o->sprites[id].unk4 = y;
    if (o->sprites[id].unk6 != layer) {
        func_0804d05c(o, id);
        o->sprites[id].unk6 = layer;
        func_0804cf38(o, id);
    }
}

// Set X/Y Position
void func_0804d5d4(struct SpriteHandler *o, s16 id, s16 x, s16 y) {
    D_03004428 = 6;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].unk2 = x;
    o->sprites[id].unk4 = y;
}

// Set X Position
void func_0804d614(struct SpriteHandler *o, s16 id, s16 x) {
    D_03004428 = 7;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].unk2 = x;
}

// Set Y Position
void func_0804d648(struct SpriteHandler *o, s16 id, s16 y) {
    D_03004428 = 8;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].unk4 = y;
}

// Set Layer
void func_0804d67c(struct SpriteHandler *o, s16 id, u16 layer) {
    D_03004428 = 9;
    if (func_0804cc68(o, id)) return;
    if (o->sprites[id].unk6 == layer) return;

    func_0804d05c(o, id);
    o->sprites[id].unk6 = layer;
    func_0804cf38(o, id);
}

// Get Current Frame
s8 func_0804d6cc(struct SpriteHandler *o, s16 id) {
    D_03004428 = 10;
    if (func_0804cc68(o, id)) return -1;

    return o->sprites[id].unkC;
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
    anim = sprite->unk8;
    calcDuration = 0;
    for (i = 0; i < sprite->unkC; i++) {
        calcDuration += anim->duration;
        anim++;
    }
    calcDuration += (anim->duration - (s8)FIXED_TO_INT(sprite->unk1C));
    return (u32)INT_TO_FIXED(calcDuration) / sprite->unk28;
}

// Show/Display Sprite
void func_0804d770(struct SpriteHandler *o, s16 id, u16 flag) {
    D_03004428 = 12;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].unk0_b0 = flag;
}

// Set Attributes
void func_0804d7b4(struct SpriteHandler *o, s16 id, u32 arg2) {
    D_03004428 = 13;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].unk10 = arg2;
}

// OR Attributes
void func_0804d7e8(struct SpriteHandler *o, s16 id, u32 arg2) {
    D_03004428 = 14;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].unk10 |= arg2;
}

// AND Attributes
void func_0804d820(struct SpriteHandler *o, s16 id, u32 arg2) {
    D_03004428 = 15;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].unk10 &= arg2;
}

// CLEAR Attributes
void func_0804d858(struct SpriteHandler *o, s16 id, u32 arg2) {
    D_03004428 = 16;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].unk10 &= ~arg2;
}

// Set Tile Number
void func_0804d890(struct SpriteHandler *o, s16 id, s16 arg2) {
    D_03004428 = 17;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].unk14 = arg2;
}

// Set Palette
void func_0804d8c4(struct SpriteHandler *o, s16 id, s8 arg2) {
    D_03004428 = 18;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].unk16 = arg2;
}

// Set Animation
void func_0804d8f8(struct SpriteHandler *o, s16 id, struct Animation * anim,
                    s8 animFrame, s8 arg4, s8 loopFrame, u16 playType) {
    struct Sprite *sprite;
    D_03004428 = 19;
    if (func_0804cc68(o, id)) return;
    
    sprite = &o->sprites[id];
    sprite->unk0_b5 = func_0804d11c(anim);
    sprite->unk8 = anim;
    sprite->unk28 = func_0804d140(anim);
    if (animFrame > -1) {
        sprite->unkD = arg4;
        sprite->unkE = loopFrame;
        sprite->unk0_b1 = playType; // enum
        func_0804cebc(o, id, animFrame);
    }
}

// Set Animation From Struct
void func_0804d9b0(struct SpriteHandler *o, s16 id, struct SpritePlaybackData *data) {
    struct Sprite *sprite;
    D_03004428 = 19;
    if (func_0804cc68(o, id)) return;

    sprite = &o->sprites[id];
    sprite->unk0_b5 = func_0804d11c(data->anim);
    sprite->unk8 = data->anim;
    sprite->unk28 = func_0804d140(data->anim);
    if (data->animFrame > -1) {
        sprite->unkD = data->unk5;
        sprite->unkE = data->loopFrame;
        func_0804cebc(o, id, data->animFrame);
    }
}

// Set Update Flag
void func_0804da20(struct SpriteHandler *o, s16 id, u16 arg2) {
    D_03004428 = 20;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].unk0_b13 = arg2;
}

// Set Pause (?) Flag
void func_0804da68(struct SpriteHandler *o, s16 id, u16 arg2) {
    D_03004428 = 21;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].unk0_b15 = arg2;
}

// Set Callback
void func_0804daa8(struct SpriteHandler *o, s16 id, void *func, u32 arg) {
    D_03004428 = 22;
    if (func_0804cc68(o, id)) return;

    o->sprites[id].unk20 = func;
    o->sprites[id].unk24 = arg;
}

// Set Playback Data
void func_0804dae0(struct SpriteHandler *o, s16 id, s8 arg2, s8 loopFrame, u16 playType) {
    struct Sprite *sprite;
    D_03004428 = 23;
    if (func_0804cc68(o, id)) return;

    sprite = &o->sprites[id];
    sprite->unkD = arg2;
    sprite->unkE = loopFrame;
    sprite->unk0_b1 = playType & 0xff;
}

// Set X & Y Data Source
void func_0804db44(struct SpriteHandler *o, s16 id, s16 *dX, s16 *dY) {
    struct Sprite *sprite;
    D_03004428 = 24;
    if (func_0804cc68(o, id)) return;

    sprite = &o->sprites[id];
    sprite->unk2C = dX;
    if (!dX) sprite->unk2C = (s16 *)D_08bd0cac[0];
    sprite->unk30 = dY;
    if (!dY) sprite->unk30 = (s16 *)D_08bd0cac[0];
}

// Set X Data Source
void func_0804db90(struct SpriteHandler *o, s16 id, s16 *d) {
    struct Sprite *sprite;
    D_03004428 = 24;
    if (func_0804cc68(o, id)) return;

    sprite = &o->sprites[id];
    sprite->unk2C = d;
    if (!d) sprite->unk2C = (s16 *)D_08bd0cac[0];
}

// Set Y Data Source
void func_0804dbd0(struct SpriteHandler *o, s16 id, s16 *d) {
    struct Sprite *sprite;
    D_03004428 = 24;
    if (func_0804cc68(o, id)) return;

    sprite = &o->sprites[id];
    sprite->unk30 = d;
    if (!d) sprite->unk30 = (s16 *)D_08bd0cac[0];
}

// Set Affine
void func_0804dc10(struct SpriteHandler *o, s16 id, s32 arg2, s16 *af) {
    struct Sprite *sprite;
    D_03004428 = 25;
    if (func_0804cc68(o, id)) return;

    sprite = &o->sprites[id];

    if (arg2 > -1) {
        sprite->unk34 = af;
        sprite->unk10 &= ~0x02000000; // clear affine flag 
        sprite->unk10 &= ~0x00003e00; // clear affine param index
        sprite->unk10 &= ~(2 | 1);
        sprite->unk10 |= 0x2000000; // affine flag
        sprite->unk10 |= arg2 << 9; // affine param index
        sprite->unk10 |= (2 | 1); // affine + double size flag
    } else {
        sprite->unk10 &= ~0x02000000;
        sprite->unk10 &= ~0x00003e00;
        sprite->unk10 &= ~(2 | 1);
    }
}

// Set Affine & Double Size Flags
void func_0804dc8c(struct SpriteHandler *o, s16 id, u32 arg2) {
    struct Sprite *sprite;
    if (id > -1) {
        sprite = &o->sprites[id];
        sprite->unk10 &= ~(2 | 1);
        sprite->unk10 |= arg2;
    }
}

// Set Animation Speed
void func_0804dcb8(struct SpriteHandler *o, s16 id, u16 speed) {
    struct Sprite *sprite;
    if (id > -1) {
        sprite = &o->sprites[id];
        sprite->unk38 = speed;
    }
}

#define AS_OAM_DATA(data) ((struct OamData *)data)

// Get Sprite Dimension
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
        objSizes = ((u8 *)&D_08bd0cac+2); // Skip the zero bytes
        i = total;
        do {
            // Get the X and Y, clamp them
            x = AS_OAM_DATA(cel)->x;
            if (x > 255) {
                x -= 512;
            }
            y = AS_OAM_DATA(cel)->y;
            if (y > 127) {
                y -= 256;
            }
            // Get the dimensions
            // D_08bd0cae[size][shape];
            dimensions = (struct OamDimensions *)&objSizes[(AS_OAM_DATA(cel)->shape * 8) + (AS_OAM_DATA(cel)->size * 2)];
            
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
        case 0:
            return leftEdge;
        case 1:
            return rightEdge;
        case 2:
            return topEdge;
        case 3:
            return bottomEdge;
        case 4:
            return rightEdge - leftEdge;
        case 5:
            return bottomEdge - topEdge;
        default:
            return 0;
    }
}
#undef AS_OAM_DATA

// Get Sprite Data
s32 func_0804ddb0(struct SpriteHandler *o, s16 id, u32 attr) {
    s32 returnValue;
    struct Sprite *sprite;
    D_03004428 = 26;
    if (func_0804cc68(o, id)) return 0;
    
    sprite = &o->sprites[id];
    switch (attr) {
        case 0:
            returnValue = sprite->unk0_b0;
            break;
        case 1:
            returnValue = sprite->unk0_b1;
            break;
        case 2:
            returnValue = sprite->unk0_b5;
            break;
        case 3:
            returnValue = sprite->unk0_b13;
            break;
        case 4:
            returnValue = sprite->unk2;
            break;
        case 5:
            returnValue = sprite->unk4;
            break;
        case 6:
            returnValue = sprite->unk6;
            break;
        case 7:
            returnValue = (u32)sprite->unk8;
            break;
        case 8:
            returnValue = (s8)FIXED_TO_INT(sprite->unk1C);
            break;
        case 9:
            returnValue = sprite->unkC;
            break;
        case 10:
            returnValue = sprite->unkD;
            break;
        case 11:
            returnValue = sprite->unkE;
            break;
        case 12:
            returnValue = sprite->unk10;
            break;
        case 13:
            returnValue = sprite->unk14;
            break;
        case 14:
            returnValue = (u32)sprite->unk20;
            break;
        case 15:
            returnValue = sprite->unk24;
            break;
        case 16:
            returnValue = sprite->unk2A;
            break;
        case 17:
            returnValue = (u32)sprite->unk2C;
            break;
        case 18:
            returnValue = (u32)sprite->unk30;
            break;
        case 19:
            returnValue = sprite->unk38;
            break;
        case 20:
            returnValue = func_0804dcd8((u16 *)sprite->unk8[sprite->unkC].cel, 0);
            break;
        case 21:
            returnValue = func_0804dcd8((u16 *)sprite->unk8[sprite->unkC].cel, 1);
            break;
        case 22:
            returnValue = func_0804dcd8((u16 *)sprite->unk8[sprite->unkC].cel, 2);
            break;
        case 23:
            returnValue = func_0804dcd8((u16 *)sprite->unk8[sprite->unkC].cel, 3);
            break;
        case 24:
            returnValue = func_0804dcd8((u16 *)sprite->unk8[sprite->unkC].cel, 4);
            break;
        case 25:
            returnValue = func_0804dcd8((u16 *)sprite->unk8[sprite->unkC].cel, 5);
            break;
        default:
            returnValue = 0;
            break;
    }
    return returnValue;
}

// Set Callback Frame
void func_0804df4c(struct SpriteHandler *o, s16 id, s8 arg2) {
    struct Sprite *sprite;
    if (id > -1) {
        sprite = &o->sprites[id];
        sprite->unk17 = arg2;
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
        s16 r7 = o->sprites[r3].unk1A;
        if (o->sprites[r3].unk2A == id) {
            switch (value) {
                case 0:
                    func_0804d504(o, r3);
                    break;
                case 1:
                    func_0804d770(o, r3, arg);
                    break;
                case 2:
                    func_0804da20(o, r3, arg);
                    break;
                case 3:
                    func_0804d7b4(o, r3, arg);
                    break;
                case 4:
                    func_0804d7e8(o, r3, arg);
                    break;
                case 5:
                    func_0804d820(o, r3, arg);
                    break;
                case 6:
                    func_0804d858(o, r3, arg);
                    break;
                case 7:
                    func_0804d890(o, r3, arg);
                    break;
                case 8:
                    func_0804d8c4(o, r3, arg);
                    break;
                case 9:
                    func_0804db44(o, r3, *(s16 **)arg, *(s16 **)((u32 *)arg + 1));
                    break;
                case 10:
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
void func_0804e0bc(struct SpriteHandler *o, u16 arg1) {
    o->unk1C = arg1;
}

// Get Current Memory ID
u16 func_0804e0c0(struct SpriteHandler *o) {
    return o->unk1C;
}

// Disable Sprite by Mem. ID
void func_0804e0c4(struct SpriteHandler *o, u16 id) {
    func_0804df80(o, id, 0, 0);
}

// Show/Display Sprite by Mem. ID
void func_0804e0d8(struct SpriteHandler *o, u16 id, u16 arg2) {
    func_0804df80(o, id, 1, arg2);
}

// Set Update Flag by Mem. ID
void func_0804e0f0(struct SpriteHandler *o, u16 id, u16 arg2) {
    func_0804df80(o, id, 2, arg2);
}

// Set Attributes by Mem. ID
void func_0804e108(struct SpriteHandler *o, u16 id, u32 arg2) {
    func_0804df80(o, id, 3, arg2);
}

// OR Attributes by Mem. ID
void func_0804e11c(struct SpriteHandler *o, u16 id, u32 arg2) {
    func_0804df80(o, id, 4, arg2);
}

// AND Attributes by Mem. ID
void func_0804e130(struct SpriteHandler *o, u16 id, u32 arg2) {
    func_0804df80(o, id, 5, arg2);
}

// CLEAR Attributes by Mem. ID
void func_0804e144(struct SpriteHandler *o, u16 id, u32 arg2) {
    func_0804df80(o, id, 6, arg2);
}

// Set Tile Number by Mem. ID
void func_0804e158(struct SpriteHandler *o, u16 id, s16 arg2) {
    func_0804df80(o, id, 7, arg2);
}

// Set Palette by Mem. ID
void func_0804e170(struct SpriteHandler *o, u16 id, s8 arg2) {
    func_0804df80(o, id, 8, arg2);
}

// Set X & Y Data Source by Mem. ID
void func_0804e188(struct SpriteHandler *o, u16 id, s16 *xController, s16 *yController) {
    s16 *arg[2] = {xController, yController};
    func_0804df80(o, id, 9, (uintptr_t)&arg);
}

// Set Animation Speed by Mem. ID
void func_0804e1a4(struct SpriteHandler *o, u16 id, u16 arg2) {
    func_0804df80(o, id, 10, arg2);
}

// Set Pause Sprite Flag
void func_0804e1bc(struct SpriteHandler *o, u16 arg1) {
    o->unk1A = arg1;
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
        id = sprites[id].unk1A;
    }
    return count;
}

// Get Amount of Sprites with Mem. ID
s32 func_0804e3e0(struct SpriteHandler *o, u16 arg1) {
    s32 count = 0;
    struct Sprite *sprite = o->sprites;
    s32 r2 = o->unkC;
    while (r2 != -1) {
        if (sprite[r2].unk2A == arg1) {
            count++;
        }
        r2 = sprite[r2].unk1A;
    }
    return count;
}
