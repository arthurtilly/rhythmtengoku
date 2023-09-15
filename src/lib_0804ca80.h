#pragma once

#include "global.h"
#include "graphics.h"

enum SpritePlaybackType {
    SPRITE_PLAYBACK_REGULAR,
    SPRITE_PLAYBACK_INFINITE_LOOP,
    SPRITE_PLAYBACK_REGULAR_HIDE,
    SPRITE_PLAYBACK_REGULAR_DISABLE,
    SPRITE_PLAYBACK_REGULAR_CALLBACK,
};

enum SpriteDimensionRequest {
    SPRITE_DIMENSION_LEFT,
    SPRITE_DIMENSION_RIGHT,
    SPRITE_DIMENSION_TOP,
    SPRITE_DIMENSION_BOTTOM,
    SPRITE_DIMENSION_WIDTH,
    SPRITE_DIMENSION_HEIGHT,
};

enum SpriteDataRequest {
    SPRITE_DATA_DISPLAY_FLAG,
    SPRITE_DATA_PLAYBACK_TYPE,
    SPRITE_DATA_TOTAL_CEL_AMOUNT,
    SPRITE_DATA_UPDATE_FLAG,
    SPRITE_DATA_X_POSITION,
    SPRITE_DATA_Y_POSITION,
    SPRITE_DATA_LAYER,
    SPRITE_DATA_ANIMATION,
    SPRITE_DATA_CURRENT_FRAME_DURATION,
    SPRITE_DATA_CURRENT_FRAME,
    SPRITE_DATA_UNKD,
    SPRITE_DATA_LOOP_FRAME,
    SPRITE_DATA_ATTRS10,
    SPRITE_DATA_TILE_NUMBER,
    SPRITE_DATA_CALLBACK,
    SPRITE_DATA_CALLBACK_ARG,
    SPRITE_DATA_MEMORY_ID,
    SPRITE_DATA_X_DATA_SOURCE,
    SPRITE_DATA_Y_DATA_SOURCE,
    SPRITE_DATA_ANIMATION_SPEED,
    SPRITE_DATA_DIMENSION_LEFT,
    SPRITE_DATA_DIMENSION_RIGHT,
    SPRITE_DATA_DIMENSION_TOP,
    SPRITE_DATA_DIMENSION_BOTTOM,
    SPRITE_DATA_DIMENSION_WIDTH,
    SPRITE_DATA_DIMENSION_HEIGHT,
};

enum SpriteValueSetRequest {
    SPRITE_ACT_DISABLE,
    SPRITE_ACT_SHOW,
    SPRITE_ACT_SET_UPDATE,
    SPRITE_ACT_SET_ATTR,
    SPRITE_ACT_OR_ATTR,
    SPRITE_ACT_AND_ATTR,
    SPRITE_ACT_BIC_ATTR,
    SPRITE_ACT_SET_TILE_NUMBER,
    SPRITE_ACT_SET_PAL,
    SPRITE_ACT_SET_XY_DATA_SOURCE,
    SPRITE_ACT_SET_ANIMATION_SPEED,
};

struct OamCel {
    u16 total;          // Amount of data
    struct OAM data[0]; // Data
};

struct struct_0804cb88 {
    struct OamCel *unk0;   // Current Cel
    u32 *unk4;    // OAM Buffer
    u8 unk8;      // ?
    u8 unk9;      // Cel Data Amount
    u16 unkA;     // X
    s8 unkC;      // ?
    s8 unkD;      // ?
    u16 unkE;     // Y
    u32 unk10;    // Attributes 1 & 0
    u32 unk14;    // Attribute 2
    s16 unk18[4]; // Affine Params
    u8 unk20[24]; // OAM Dimension
    u32 unk38;    // OAMOBJ Limit
};

struct SpriteHandler;
struct Sprite {
    u16 displaySprite:1; // Display Sprite Flag
    u16 playbackType:4;  // Animation Playback Type
    u16 celAmount:8;     // Total Cel Amount
    u16 update:1;        // Update Flag
    u16 present:1;       // Sprite Present Flag
    u16 pause:1;         // Pause Flag (?)
    s16 xPosition;       // X Position
    s16 yPosition;       // Y Position
    u16 layer;           // Layer
    struct Animation *animation; // Animation
    s8 currentFrame;     // Current Frame
    s8 unkD;             // ?
    s8 loopFrame;        // Loop Frame
    u32 oamAttributes;   // Attributes 1 & 0 (in a weird format..?)
    s16 tileNumber;      // Tile Number
    u8 palette;          // Palette
    s8 callbackFrame;    // Callback Frame
    s16 prevID;          // Previous ID
    s16 nextID;          // Next ID
    s8_8 currentFrameDuration;  // Current Frame Duration
    void (*callbackFunction)(struct SpriteHandler *, s16, u32, ...); // Callback
    u32 callbackArgument; // Callback Argument
    u16 totalDuration;   // Total Duration
    u16 memoryID;        // Memory ID
    s16 *xDataSource;    // X Data Source
    s16 *yDataSource;    // Y Data Source
    s16 *affineParams;   // Affine Parameters
    u16 animationSpeed;  // Animation Speed
};

struct SpriteHandler { // Size = 0x28
    u16 objAmount;      // OAMOBJ Limit (128)
    u16 spriteAmount;   // Sprite Limit (100)
    u32 *oamBuffer;          // OAM buffer
    struct Sprite *sprites; // Sprites
    s16 unkC;  // Global Next ID?
    s16 unkE;  // Global Previous ID?
    s16 unk10; // Next Free Sprite ID
    s16 unk12;
    u16 unk14; // Global X Adjustment
    u16 unk16; // Global Y Adjustment
    u16 unk18; // OAM Buffer Direction?
    u16 unk1A; // Sprite Pause Flag
    u16 unk1C; // Current Memory ID
    u16 unk1E; // Unknown Unused Counter
    u16 unk20;
    u32 unk22_b0:4; // Error Type
    u16 unk24; // Error Memory ID
    u16 unk26; // Failed Action
};

struct OamDimensions {
    u8 width;
    u8 height;
};

extern s16 D_08bd0cac; // Default X/Y Data Source
extern u8 D_08bd0cae[3][4][2]; // OAM Dimensions

extern u8 D_03004428;
extern void *(*D_0300442c)(u32);      // Allocation function
extern void  (*D_03004430)(void *);   // Deallocation function
extern void *(*D_03004434)(u32, u32); // Allocation by ID function


// Functions:
extern void func_0804ca80(void *memAllocFunc, void *memDeallocFunc); // Set Allocation/Deallocation
extern void func_0804ca94(void *memAllocIdFunc); // Set Allocation by ID
extern struct SpriteHandler *func_0804caa0(u16, void *, u16, u32); // Init. Sprite Library
extern void func_0804cb60(struct SpriteHandler *); // Uninit. Sprite Handler
extern void func_0804cb80(struct SpriteHandler *, u16, u32 *); // Set OAM Buffer
extern u32  func_0804cb88(struct struct_0804cb88 *); // Render Sprite
extern void func_0804cbcc(struct SpriteHandler *); // Init. Sprite Handler
extern u32  func_0804cc68(struct SpriteHandler *, s16); // Validate Sprite
extern void func_0804cd1c(struct SpriteHandler *, s16, s8, u32); // Update Frame
extern void func_0804cebc(struct SpriteHandler *, s16, s8); // Set Frame
extern void func_0804ced0(struct SpriteHandler *, s16, u8); // Set Frame Based on Duration
extern void func_0804cf38(struct SpriteHandler *, s16);
extern void func_0804d05c(struct SpriteHandler *, s16); // Unlink Sprite
extern s16  func_0804d0a4(struct SpriteHandler *); // Get Next Free ID
extern void func_0804d0d8(struct SpriteHandler *, s16);
extern u8   func_0804d11c(struct Animation *); // Get Cel Amount
extern u16  func_0804d140(struct Animation *); // Get Total Duration
extern s16  func_0804d160(struct SpriteHandler *, struct Animation *, s8, s16, s16, u16, s8, s8, u16); // Create New
extern s16  func_0804d294(struct SpriteHandler *, struct Animation *, s8, s16, s16, u16, s8, s8, u16, u32); // Create New (w/ Attributes)
extern s16  func_0804d3cc(struct SpriteHandler *, s16); // Duplicate Sprite
extern void func_0804d468(struct SpriteHandler *, s16, s16); // Copy Sprite
extern void func_0804d504(struct SpriteHandler *, s16); // Disable Sprite
extern void func_0804d55c(struct SpriteHandler *, s16, s16, s16, u16); // Set X/Y Position and Layer
extern void func_0804d5d4(struct SpriteHandler *, s16, s16, s16); // Set X/Y Position
extern void func_0804d614(struct SpriteHandler *, s16, s16); // Set X Position
extern void func_0804d648(struct SpriteHandler *, s16, s16); // Set Y Position
extern void func_0804d67c(struct SpriteHandler *, s16, u16); // Set Layer
extern s8   func_0804d6cc(struct SpriteHandler *, s16); // Get Current Frame
extern u8   func_0804d708(struct SpriteHandler *, s16); // Get Animation Progression (?)
extern void func_0804d770(struct SpriteHandler *, s16, u16); // Display Sprite
extern void func_0804d7b4(struct SpriteHandler *, s16, u32); // Set Attributes
extern void func_0804d7e8(struct SpriteHandler *, s16, u32); // OR Attributes
extern void func_0804d820(struct SpriteHandler *, s16, u32); // AND Attributes
extern void func_0804d858(struct SpriteHandler *, s16 ,u32); // CLEAR Attributes
extern void func_0804d890(struct SpriteHandler *, s16, s16); // Set Tile Number
extern void func_0804d8c4(struct SpriteHandler *, s16, s8); // Set Palette
extern void func_0804d8f8(struct SpriteHandler *, s16, struct Animation *, s8, s8, s8, u16); // Set Animation
extern void func_0804d9b0(struct SpriteHandler *, s16, struct SpritePlaybackData *); // Set Animation From Struct
extern void func_0804da20(struct SpriteHandler *, s16, u16); // Set Update Flag
extern void func_0804da68(struct SpriteHandler *, s16, u16); // Set Pause (?) Flag
extern void func_0804daa8(struct SpriteHandler *, s16, void *, u32); // Set Callback
extern void func_0804dae0(struct SpriteHandler *, s16, s8, s8, u16); // Set Playback Data
extern void func_0804db44(struct SpriteHandler *, s16, s16 *, s16 *); // Set X & Y Data Source
extern void func_0804db90(struct SpriteHandler *, s16, s16 *); // Set X Data Source
extern void func_0804dbd0(struct SpriteHandler *, s16, s16 *); // Set Y Data Source
extern void func_0804dc10(struct SpriteHandler *, s16, s32, s16 *); // Set Affine Params
extern void func_0804dc8c(struct SpriteHandler *, s16, u32); // Set Affine & Double Size Flags
extern void func_0804dcb8(struct SpriteHandler *, s16, u16); // Set Animation Speed
extern u32  func_0804dcd8(u16 *, u32); // Get Sprite Dimensions { Left, Right, Top, Bottom, Width, Height }
extern s32  func_0804ddb0(struct SpriteHandler *, s16, u32); // Get Sprite Data { 20+ = func_0804dcd8() }
extern void func_0804df4c(struct SpriteHandler *, s16, s8); // Set Callback Frame
extern void func_0804df6c(struct SpriteHandler *, s16); // Set Special Callback Frame
extern void func_0804df80(struct SpriteHandler *, u16, u32, u32); // Set Values by Mem. ID
extern u16  func_0804e0a0(struct SpriteHandler *);
extern void func_0804e0bc(struct SpriteHandler *, u16); // Set Current Memory ID
extern u16  func_0804e0c0(struct SpriteHandler *); // Get Current Memory ID
extern void func_0804e0c4(struct SpriteHandler *, u16); // Disable Sprite by Mem. ID
extern void func_0804e0d8(struct SpriteHandler *, u16, u16); // Show/Display Sprite by Mem. ID
extern void func_0804e0f0(struct SpriteHandler *, u16, u16); // Set Update Flag by Mem. ID
extern void func_0804e108(struct SpriteHandler *, u16, u32); // Set Attributes by Mem. ID
extern void func_0804e11c(struct SpriteHandler *, u16, u32); // OR Attributes by Mem. ID
extern void func_0804e130(struct SpriteHandler *, u16, u32); // AND Attributes by Mem. ID
extern void func_0804e144(struct SpriteHandler *, u16, u32); // CLEAR Attributes by Mem. ID
extern void func_0804e158(struct SpriteHandler *, u16, s16); // Set Tile Number by Mem. ID
extern void func_0804e170(struct SpriteHandler *, u16, s8); // Set Palette by Mem. ID
extern void func_0804e188(struct SpriteHandler *, u16 memID, s16 *xController, s16 *yController); // Set X & Y Data Source by Mem. ID
extern void func_0804e1a4(struct SpriteHandler *, u16, u16); // Set Animation Speed by Mem. ID
extern void func_0804e1bc(struct SpriteHandler *, u16); // Set Pause Sprite Flag
extern void func_0804e1c0(struct SpriteHandler *, u16, u16); // Set Global X/Y Adjustment
// extern ? func_0804e1c8(?); // Update Sprite Library
extern s32 func_0804e3b0(struct SpriteHandler *); // Get Amount of ?? Sprites
extern s32 func_0804e3e0(struct SpriteHandler *, u16); // Get Amount of ?? Sprites with Mem. ID

// ARM
extern u32 func_0804e418(struct struct_0804cb88 *);
