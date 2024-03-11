#pragma once

#include "global.h"
#include "graphics.h"


// VALUES
// The current operation being performed by a SpriteHandler, possibly just for debugging.
enum SpriteHandlerOperations {
    /* 00 */ SPRITE_OPERATION_SET_ANIM_CEL,
    /* 01 */ SPRITE_OPERATION_SET_ANIM_PROGRESS,
    /* 02 */ SPRITE_OPERATION_CLONE,
    /* 03 */ SPRITE_OPERATION_COPY,
    /* 04 */ SPRITE_OPERATION_DELETE,
    /* 05 */ SPRITE_OPERATION_SET_XYZ,
    /* 06 */ SPRITE_OPERATION_SET_XY,
    /* 07 */ SPRITE_OPERATION_SET_X,
    /* 08 */ SPRITE_OPERATION_SET_Y,
    /* 09 */ SPRITE_OPERATION_SET_Z,
    /* 10 */ SPRITE_OPERATION_GET_ANIM_CEL,
    /* 11 */ SPRITE_OPERATION_GET_ANIM_PROGRESS,
    /* 12 */ SPRITE_OPERATION_SET_VISIBLE,
    /* 13 */ SPRITE_OPERATION_SET_ATTR,
    /* 14 */ SPRITE_OPERATION_ORR_ATTR,
    /* 15 */ SPRITE_OPERATION_AND_ATTR,
    /* 16 */ SPRITE_OPERATION_BIC_ATTR,
    /* 17 */ SPRITE_OPERATION_SET_BASE_TILE,
    /* 18 */ SPRITE_OPERATION_SET_BASE_PALETTE,
    /* 19 */ SPRITE_OPERATION_SET_ANIM,
    /* 20 */ SPRITE_OPERATION_SET_ENABLE_UPDATES,
    /* 21 */ SPRITE_OPERATION_SET_PAUSED,
    /* 22 */ SPRITE_OPERATION_SET_CALLBACK,
    /* 23 */ SPRITE_OPERATION_SET_PLAYBACK,
    /* 24 */ SPRITE_OPERATION_SET_ORIGIN,
    /* 25 */ SPRITE_OPERATION_SET_AFFINE,
    /* 26 */ SPRITE_OPERATION_GET_DATA,
};

// Animation completion protocols.
enum SpritePlaybackType {
    /* 00 */ SPRITE_PLAYBACK_NORMAL_LOOP,
    /* 01 */ SPRITE_PLAYBACK_ALTERNATING_LOOP,
    /* 02 */ SPRITE_PLAYBACK_NORMAL_HIDE,
    /* 03 */ SPRITE_PLAYBACK_NORMAL_DELETE,
    /* 04 */ SPRITE_PLAYBACK_NORMAL_CALLBACK,
};

// Which dimension to return from sprite_get_cel_dimensions().
enum SpriteDimensionRequest {
    /* 00 */ SPRITE_DIMENSION_LEFT,
    /* 01 */ SPRITE_DIMENSION_RIGHT,
    /* 02 */ SPRITE_DIMENSION_TOP,
    /* 03 */ SPRITE_DIMENSION_BOTTOM,
    /* 04 */ SPRITE_DIMENSION_WIDTH,
    /* 05 */ SPRITE_DIMENSION_HEIGHT,
};

// Which value to return from sprite_get_data().
enum SpriteDataRequest {
    /* 00 */ SPRITE_DATA_VISIBLE,
    /* 01 */ SPRITE_DATA_PLAYBACK_TYPE,
    /* 02 */ SPRITE_DATA_TOTAL_CELS,
    /* 03 */ SPRITE_DATA_UPDATE_FLAG,
    /* 04 */ SPRITE_DATA_X_POS,
    /* 05 */ SPRITE_DATA_Y_POS,
    /* 06 */ SPRITE_DATA_Z_DEPTH,
    /* 07 */ SPRITE_DATA_ANIMATION,
    /* 08 */ SPRITE_DATA_CURRENT_CEL_TIME_LEFT,
    /* 09 */ SPRITE_DATA_CURRENT_CEL,
    /* 10 */ SPRITE_DATA_CEL_INC,
    /* 11 */ SPRITE_DATA_LOOP_CEL,
    /* 12 */ SPRITE_DATA_ATTRS10,
    /* 13 */ SPRITE_DATA_BASE_TILE,
    /* 14 */ SPRITE_DATA_CALLBACK_FUNC,
    /* 15 */ SPRITE_DATA_CALLBACK_ARG,
    /* 16 */ SPRITE_DATA_MEM_ID,
    /* 17 */ SPRITE_DATA_ORIGIN_X,
    /* 18 */ SPRITE_DATA_ORIGIN_Y,
    /* 19 */ SPRITE_DATA_ANIM_SPEED,
    /* 20 */ SPRITE_DATA_DIMENSION_LEFT,
    /* 21 */ SPRITE_DATA_DIMENSION_RIGHT,
    /* 22 */ SPRITE_DATA_DIMENSION_TOP,
    /* 23 */ SPRITE_DATA_DIMENSION_BOTTOM,
    /* 24 */ SPRITE_DATA_DIMENSION_WIDTH,
    /* 25 */ SPRITE_DATA_DIMENSION_HEIGHT,
};

// Which value to set with sprite_id_set_data().
enum SpriteValueSetRequest {
    /* 00 */ SPRITE_ACT_DELETE,
    /* 01 */ SPRITE_ACT_SET_VISIBLE,
    /* 02 */ SPRITE_ACT_SET_UPDATE,
    /* 03 */ SPRITE_ACT_SET_ATTR,
    /* 04 */ SPRITE_ACT_ORR_ATTR,
    /* 05 */ SPRITE_ACT_AND_ATTR,
    /* 06 */ SPRITE_ACT_BIC_ATTR,
    /* 07 */ SPRITE_ACT_SET_BASE_TILE,
    /* 08 */ SPRITE_ACT_SET_BASE_PALETTE,
    /* 09 */ SPRITE_ACT_SET_ORIGIN_XY,
    /* 10 */ SPRITE_ACT_SET_ANIM_SPEED,
};


// TYPES
struct OamCel {
    u16 total;          // Amount of data
    struct OAM data[0]; // Data
};

struct struct_0804cb88 {
    const u16 *src; // Current Cel
    u32 *dest;      // OAM Buffer
    u8 objCount;    // Number of OAM Currently Drawn
    u8 objTotal;    // Total OAM in Cel
    u16 xPos;       // X Offset
    s8 srcInc;      // Source Increment (in bytes)
    s8 destInc;     // Buffer Increment (in bytes)
    u16 yPos;       // Y Offset
    u32 attr10;     // OAM Attributes 1 & 0
    u32 attr2;      // OAM Attribute 2
    s16 affine[4];  // Affine Params
    u8 objDim[24];  // OAM Dimension
    u32 objLimit;   // OAM Limit
};

struct SpriteHandler;
struct Sprite {
    u16 visible:1;      // Visibility Flag
    u16 playbackType:4; // Animation Playback Type
    u16 celTotal:8;     // Total Animation Frames
    u16 update:1;       // Update Flag
    u16 allocated:1;    // Allocation Flag
    u16 paused:1;       // Pause Flag
    s16 xPos;           // X Position
    s16 yPos;           // Y Position
    u16 zDepth;         // Z-Depth (the "Layer", where lower z-depths are rendered on top of higher ones)
    struct Animation *animation; // Animation
    s8 currentCel;      // Current Animation Cel
    s8 celInc;          // Animation Direction { 1, 0, -1 }
    s8 loopCel;         // Animation Loop Start Point
    u32 oamAttributes;  // Attributes 1 & 0 (in a weird format..?)
    s16 baseTile;       // Base Tile Offset
    u8 basePalette;     // Base Palette Offset
    s8 callbackCel;     // Animation Cel Which Triggers the Callback Function
    s16 zLinkPrev;      // ID of Sprite with Next-Lowest Z Value
    s16 zLinkNext;      // ID of Sprite with Next-Highest Z Value
    s8_8 currentCelTime; // Time Left for Current Animation Cel
    void (*callbackFunc)(struct SpriteHandler *, s16, u32, ...); // Callback Function
    u32 callbackArg;    // Callback Argument
    u16 totalDuration;  // Total Duration
    u16 memID;          // Memory ID
    s16 *xOrigin;       // World Origin X Offset
    s16 *yOrigin;       // World Origin Y Offset
    s16 *affineParams;  // Affine Parameters
    u8_8 animationSpeed; // Animation Speed
};

struct SpriteHandler { // Size = 0x28
    u16 objAmount;      // OAMOBJ Limit (128)
    u16 spriteAmount;   // Sprite Limit (100)
    u32 *oamBuffer;         // OAM buffer
    struct Sprite *sprites; // Sprites
    s16 zLinkStart;     // ID of Sprite with Lowest Z Value
    s16 zLinkEnd;       // ID of Sprite with Highest Z Value
    s16 nextAllocID;    // Next Free Sprite ID
    s16 lastAllocID;    // End of the Sprite Linked List
    u16 xPos;           // Global Sprite X Offset
    u16 yPos;           // Global Sprite Y Offset
    u16 totalCycles;    // OAM Buffer Direction
    u16 paused;         // Global Sprite Pause Flag
    u16 memID;          // Current Memory ID
    u16 unk1E;          // Unknown Unused Counter
    u16 unk20;
    u32 unk22_b0:4;     // Error Type
    u16 unk24;          // Error Memory ID
    u16 unk26;          // Failed Action
};

struct SpritePlaybackData {
    struct Animation *anim; // Animation
    s8 startCel;            // Starting Cel
    u8 direction;           // Playback Direction { 1, 0, -1 }
    u8 loopCel;             // Loop Start Cel
};

struct OamDimensions {
    u8 width;
    u8 height;
};


// DATA
extern s16 D_08bd0cac; // Default X/Y Data Source
extern u8 D_08bd0cae[3][4][2]; // OAM Dimensions


// MEMORY
extern u8 D_03004428;
extern void *(*sSpriteMemAlloc)(u32);        // Allocation function
extern void  (*sSpriteMemDealloc)(void *);   // Deallocation function
extern void *(*sSpriteMemAllocId)(u32, u32); // Allocation by ID function


// FUNCTIONS
extern void sprite_lib_set_mem_alloc(void *memAllocFunc, void *memDeallocFunc);
extern void sprite_lib_set_mem_alloc_id(void *memAllocIdFunc);
extern struct SpriteHandler *sprite_handler_create(u16 objAmount, void *objBuffer, u16 spriteAmount, u32 memID);
extern void sprite_handler_delete(struct SpriteHandler *);
extern void sprite_handler_set_obj_buffer(struct SpriteHandler *, u16 objAmount, u32 *objBuffer);
extern u32  func_0804cb88(struct struct_0804cb88 *drawData); // Render Sprite
extern void sprite_handler_reset(struct SpriteHandler *);
extern u32  sprite_is_invalid(struct SpriteHandler *, s16 id);
extern void sprite_update_anim_cel(struct SpriteHandler *, s16 id, s8 cel, u32 resetClock);
extern void sprite_set_anim_cel(struct SpriteHandler *, s16 id, s8 cel);
extern void sprite_set_anim_progress(struct SpriteHandler *, s16 id, u8 progress);
extern void sprite_update_z_link(struct SpriteHandler *, s16 id);
extern void sprite_remove_z_link(struct SpriteHandler *, s16 id);
extern s16  sprite_handler_alloc_id(struct SpriteHandler *);
extern void sprite_handler_dealloc_id(struct SpriteHandler *, s16 id);
extern u8   sprite_anim_get_cel_total(struct Animation *anim);
extern u16  sprite_get_anim_duration(struct Animation *anim);
extern s16  sprite_create(struct SpriteHandler *, struct Animation *anim, s8 startCel,
                                            s16 x, s16 y, u16 z, s8 animDirection, s8 loopCel, u16 loopType);
extern s16  sprite_create_w_attr(struct SpriteHandler *, struct Animation *anim, s8 startCel,
                                            s16 x, s16 y, u16 z, s8 animDirection, s8 loopCel, u16 loopType, u32 attrs);
extern s16  sprite_clone(struct SpriteHandler *, s16 id);
extern void sprite_copy(struct SpriteHandler *, s16 id, s16 src);
extern void sprite_delete(struct SpriteHandler *, s16 id);
extern void sprite_set_x_y_z(struct SpriteHandler *, s16 id, s16 x, s16 y, u16 z);
extern void sprite_set_x_y(struct SpriteHandler *, s16 id, s16 x, s16 y);
extern void sprite_set_x(struct SpriteHandler *, s16 id, s16 x);
extern void sprite_set_y(struct SpriteHandler *, s16 id, s16 y);
extern void sprite_set_z(struct SpriteHandler *, s16 id, u16 z);
extern s8   sprite_get_anim_cel(struct SpriteHandler *, s16 id);
extern u8   sprite_get_anim_progress(struct SpriteHandler *, s16 id);
extern void sprite_set_visible(struct SpriteHandler *, s16 id, u16 isVisible);
extern void sprite_attr_set(struct SpriteHandler *, s16 id, u32 attr);
extern void sprite_attr_orr(struct SpriteHandler *, s16 id, u32 attr);
extern void sprite_attr_and(struct SpriteHandler *, s16 id, u32 attr);
extern void sprite_attr_bic(struct SpriteHandler *, s16 id, u32 attr);
extern void sprite_set_base_tile(struct SpriteHandler *, s16 id, s16 baseTile);
extern void sprite_set_base_palette(struct SpriteHandler *, s16 id, s8 basePalette);
extern void sprite_set_anim(struct SpriteHandler *, s16 id, struct Animation *anim, s8 startCel, s8 direction, s8 loopCel, u16 playbackType);
extern void sprite_set_anim_data(struct SpriteHandler *, s16 id, struct SpritePlaybackData *data);
extern void sprite_set_enable_updates(struct SpriteHandler *, s16 id, u16 canUpdate);
extern void sprite_set_paused(struct SpriteHandler *, s16 id, u16 isPaused);
extern void sprite_set_callback(struct SpriteHandler *, s16 id, void *func, u32 arg);
extern void sprite_set_playback(struct SpriteHandler *, s16 id, s8 direction, s8 loopCel, u16 playbackType);
extern void sprite_set_origin_x_y(struct SpriteHandler *, s16 id, s16 *xOrigin, s16 *yOrigin);
extern void sprite_set_origin_x(struct SpriteHandler *, s16 id, s16 *xOrigin);
extern void sprite_set_origin_y(struct SpriteHandler *, s16 id, s16 *yOrigin);
extern void sprite_set_affine_params(struct SpriteHandler *, s16 id, s32 affineIndex, s16 *affineParams);
extern void func_0804dc8c(struct SpriteHandler *, s16 id, u32 args); // Set Affine & Double Size Flags
extern void sprite_set_anim_speed(struct SpriteHandler *, s16 id, u8_8 speed);
extern u32  sprite_get_cel_dimensions(u16 *cel, u32 requestedDataType);
extern s32  sprite_get_data(struct SpriteHandler *, s16 id, u32 requestedDataType);
extern void sprite_set_callback_cel(struct SpriteHandler *, s16 id, s8 cel);
extern void sprite_run_callback_every_cel(struct SpriteHandler *, s16 id);
extern void sprite_id_set_data(struct SpriteHandler *, u16 memID, u32 targetDataType, u32 arg);
extern u16  func_0804e0a0(struct SpriteHandler *); // Increment Unknown Counter
extern void sprite_handler_set_mem_id(struct SpriteHandler *, u16 memID);
extern u16  sprite_handler_get_mem_id(struct SpriteHandler *);
extern void sprite_id_delete(struct SpriteHandler *, u16 memID);
extern void sprite_id_set_visible(struct SpriteHandler *, u16 memID, u16 isVisible);
extern void sprite_id_set_enable_updates(struct SpriteHandler *, u16 memID, u16 canUpdate);
extern void sprite_id_set_attr(struct SpriteHandler *, u16 memID, u32 attr);
extern void sprite_id_orr_attr(struct SpriteHandler *, u16 memID, u32 attr);
extern void sprite_id_and_attr(struct SpriteHandler *, u16 memID, u32 attr);
extern void sprite_id_bic_attr(struct SpriteHandler *, u16 memID, u32 attr);
extern void sprite_id_set_base_tile(struct SpriteHandler *, u16 memID, s16 baseTile);
extern void sprite_id_set_base_palette(struct SpriteHandler *, u16 memID, s8 basePalette);
extern void sprite_id_set_origin_x_y(struct SpriteHandler *, u16 memID, s16 *xOrigin, s16 *yOrigin);
extern void sprite_id_set_anim_speed(struct SpriteHandler *, u16 memID, u8_8 speed);
extern void sprite_handler_set_global_pause(struct SpriteHandler *, u16 isPaused);
extern void sprite_handler_set_global_x_y(struct SpriteHandler *, u16 x, u16 y);
// extern void func_0804e1c8(struct SpriteHandler *); // Update Sprite Library
extern s32 sprite_handler_get_total_active(struct SpriteHandler *);
extern s32 sprite_handler_get_total_active_id(struct SpriteHandler *, u16 memID);

// ARM
extern u32 func_0804e418(struct struct_0804cb88 *);

// Macro
#define sprite_get_visible(handler, id)             sprite_get_data(handler, id, SPRITE_DATA_VISIBLE)
#define sprite_get_playback_type(handler, id)       sprite_get_data(handler, id, SPRITE_DATA_PLAYBACK_TYPE)
#define sprite_get_total_cels(handler, id)          sprite_get_data(handler, id, SPRITE_DATA_TOTAL_CELS)
#define sprite_get_update_flag(handler, id)         sprite_get_data(handler, id, SPRITE_DATA_UPDATE_FLAG)
#define sprite_get_x(handler, id)                   sprite_get_data(handler, id, SPRITE_DATA_X_POS)
#define sprite_get_y(handler, id)                   sprite_get_data(handler, id, SPRITE_DATA_Y_POS)
#define sprite_get_z(handler, id)                   sprite_get_data(handler, id, SPRITE_DATA_Z_DEPTH)
#define sprite_get_anim(handler, id)                ((struct Animation *)sprite_get_data(handler, id, SPRITE_DATA_ANIMATION))
#define sprite_get_current_cel_time(handler, id)    sprite_get_data(handler, id, SPRITE_DATA_CURRENT_CEL_TIME_LEFT)
#define sprite_get_current_cel(handler, id)         sprite_get_data(handler, id, SPRITE_DATA_CURRENT_CEL)
#define sprite_get_anim_direction(handler, id)      sprite_get_data(handler, id, SPRITE_DATA_CEL_INC)
#define sprite_get_loop_cel(handler, id)            sprite_get_data(handler, id, SPRITE_DATA_LOOP_CEL)
#define sprite_get_attr(handler, id)                sprite_get_data(handler, id, SPRITE_DATA_ATTRS10)
#define sprite_get_base_tile(handler, id)           sprite_get_data(handler, id, SPRITE_DATA_BASE_TILE)
#define sprite_get_callback_func(handler, id)       ((void *)sprite_get_data(handler, id, SPRITE_DATA_CALLBACK_FUNC))
#define sprite_get_callback_arg(handler, id)        sprite_get_data(handler, id, SPRITE_DATA_CALLBACK_ARG)
#define sprite_get_mem_id(handler, id)              sprite_get_data(handler, id, SPRITE_DATA_MEM_ID)
#define sprite_get_origin_x(handler, id)            ((s16 *)sprite_get_data(handler, id, SPRITE_DATA_ORIGIN_X))
#define sprite_get_origin_y(handler, id)            ((s16 *)sprite_get_data(handler, id, SPRITE_DATA_ORIGIN_Y))
#define sprite_get_anim_speed(handler, id)          sprite_get_data(handler, id, SPRITE_DATA_ANIM_SPEED)
#define sprite_get_left_edge(handler, id)           sprite_get_data(handler, id, SPRITE_DATA_DIMENSION_LEFT)
#define sprite_get_right_edge(handler, id)          sprite_get_data(handler, id, SPRITE_DATA_DIMENSION_RIGHT)
#define sprite_get_top_edge(handler, id)            sprite_get_data(handler, id, SPRITE_DATA_DIMENSION_TOP)
#define sprite_get_bottom_edge(handler, id)         sprite_get_data(handler, id, SPRITE_DATA_DIMENSION_BOTTOM)
#define sprite_get_width(handler, id)               sprite_get_data(handler, id, SPRITE_DATA_DIMENSION_WIDTH)
#define sprite_get_height(handler, id)              sprite_get_data(handler, id, SPRITE_DATA_DIMENSION_HEIGHT)
