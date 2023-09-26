#include "affine_sprite.h"
#include "code_08001360.h"
#include "code_08003b28.h"
#include "memory_heap.h"
#include "code_08007468.h"
#include "code_0800b778.h"
#include "src/lib_0804ca80.h"


// [func_0800f904] AFFINE SPRITE - Update
void update_affine_sprite(struct AffineSprite *affineData) {
    s16 x, y, rotation;
    s16 index;
    s16 offsetAngle;
    u8 offsetAngleLowPrec;
    u8 flip;

    // Self-explanatory
    if (affineData->ignoreUpdates) return;

    x = affineData->x;
    y = affineData->y;
    index = affineData->index;
    offsetAngle = affineData->offsetAngle;

    // Update X & Y
    if (affineData->offsetDistance != 0) {
        if (affineData->highAnglePrecision) {
            x += FIXED_TO_INT(affineData->offsetDistance * coss(offsetAngle));
            y += FIXED_TO_INT(affineData->offsetDistance * sins(offsetAngle));
        } else {
            offsetAngleLowPrec = offsetAngle;
            x += FIXED_TO_INT(affineData->offsetDistance * coss2(offsetAngleLowPrec));
            y += FIXED_TO_INT(affineData->offsetDistance * sins2(offsetAngleLowPrec));
        }
    }
    func_0804d5d4(D_03005380, affineData->sprite, x, y);

    // It seems that the "index" may refer to a Rotation/Scaling Parameter Group (buffered at D_03000340)
    if (index >= 0) {
        // Get Rotation
        rotation = affineData->rotation;
        if (affineData->rotateWithOffset) {
            rotation += offsetAngle;
        }

        // Update Horizontal & Vertical Flip
        flip = (affineData->flipHorizontal) ? 2 : 0;
        if (affineData->flipVertical) flip |= 4;
        func_08002260(index, flip);

        // Update Angle Precision
        if (affineData->highAnglePrecision) {
            func_080022d8(index);
        } else {
            func_080022bc(index);
        }

        // Update Scaling & Rotation
        set_affine_stretch_rotation(index, affineData->scaleX, affineData->scaleY, rotation);
    }
}

// Create Affine Sprite (Sprite w/ Rotation/Scaling Parameters)
    // arg0  = ... [Animation Pointer]
    // arg1  = ... []
    // arg2  = ... [x]
    // arg3  = ... [y]
    // arg4  = ... []
    // arg5  = R/S [Scaling]
    // arg6  = R/S [Rotation]
    // arg7  = ... [Animation Run Type {0 = Still; 1 = Play Once; -1 = Loop; Other = Play First Frame Only?}]
    // arg8  = ... []
    // arg9  = ... []
    // arg10 = R/S [Double-Size Flag]

// [func_0800fa6c] Create Affine Sprite (Sprite w/ Rotation/Scaling Parameters)
struct AffineSprite *create_affine_sprite(struct Animation *anim, s8 arg1, s16 x, s16 y, u16 z, s16 scale,
                                            s16 rotation, s8 arg7, s8 arg8, u16 arg9, u32 doubleSize) {
    struct AffineSprite *affineData;
    s16 sprite;
    s8 index;

    // Create standard sprite.
    sprite = func_0804d160(D_03005380, anim, arg1, x, y, z, arg7, arg8, arg9);
    if (sprite < 0) return NULL;

    // Generate offset from D_03000368 in words. (?)
    index = scene_affine_group_alloc();
    if (index < 0) return NULL;

    // Allocate memory for the affineData sprite.
    affineData = scene_mem_heap_alloc(sizeof(struct AffineSprite));
    if (affineData == NULL) return NULL;

    // Initialise Affine Sprite
    affineData->sprite = sprite;
    affineData->index = index;
    affineData->doubleSize = doubleSize;
    affineData->scaleX = scale;
    affineData->scaleY = scale;
    affineData->rotation = rotation;
    affineData->x = x;
    affineData->y = y;
    affineData->offsetDistance = 0;
    affineData->offsetAngle = 0;

    affineData->rotateWithOffset = FALSE;
    affineData->highAnglePrecision = TRUE;
    affineData->flipHorizontal = FALSE;
    affineData->flipVertical = FALSE;
    affineData->ignoreUpdates = FALSE;

    assign_sprite_affine_param(sprite, index);
    func_080022d8(index);
    set_affine_stretch_rotation(index, affineData->scaleX, affineData->scaleY, affineData->rotation);
    func_0804dc8c(D_03005380, sprite, (doubleSize ? 3 : 1));

    return affineData;
}

// [func_0800fba0] AFFINE SPRITE - Create Affine Sprite with Default Rotation/Scaling Parameters
struct AffineSprite *create_default_affine_sprite(struct Animation *anim, s8 arg1, s16 x, s16 y, u16 layer, s8 arg5, s8 arg6, u16 arg7) {
    struct AffineSprite *affineData;
    s16 sprite;

    sprite = func_0804d160(D_03005380, anim, arg1, x, y, layer, arg5, arg6, arg7);
    if (sprite < 0) return NULL;

    affineData = scene_mem_heap_alloc(sizeof(struct AffineSprite));
    if (affineData == NULL) return NULL;

    affineData->sprite = sprite;
    affineData->index = -1;
    affineData->doubleSize = 0;
    affineData->scaleX = INT_TO_FIXED(1);
    affineData->scaleY = INT_TO_FIXED(1);
    affineData->rotation = 0;
    affineData->x = x;
    affineData->y = y;
    affineData->offsetDistance = 0;
    affineData->offsetAngle = 0;

    affineData->rotateWithOffset = FALSE;
    affineData->highAnglePrecision = TRUE;
    affineData->flipHorizontal = FALSE;
    affineData->flipVertical = FALSE;
    affineData->ignoreUpdates = FALSE;

    return affineData;
}

// [func_0800fc70] AFFINE SPRITE - Delete
void delete_affine_sprite(struct AffineSprite *affineData) {
    if (affineData == NULL) return;

    func_0804d504(D_03005380, affineData->sprite);
    if (affineData->index >= 0) func_080021b8(affineData->index);
    mem_heap_dealloc(affineData);
}

// [func_0800fca0] AFFINE SPRITE - Set/Remove Index
void affine_sprite_set_param_id(struct AffineSprite *affineData, u32 setIndex) {
    if (affineData == NULL) return;

    if (setIndex && (affineData->index < 0)) {
        affineData->index = scene_affine_group_alloc();
        if (affineData->index >= 0) {
            func_0804dc8c(D_03005380, affineData->sprite, (affineData->doubleSize ? 3 : 1));
            assign_sprite_affine_param(affineData->sprite, affineData->index);
            update_affine_sprite(affineData);
        }
    } else if (!setIndex) {
        if (affineData->index >= 0) {
            func_080021b8();
            affineData->index = -1;
            assign_sprite_affine_param(affineData->sprite, -1);
        }
    }
}

// [func_0800fd14] AFFINE SPRITE - Set "High Angle Precision" Flag
void affine_sprite_use_precise_angles(struct AffineSprite *affineData, u32 highPrecision) {
    if (affineData == NULL) return;

    if (affineData->highAnglePrecision != highPrecision) {
        if (highPrecision) {
            affineData->rotation <<= 3;
            affineData->offsetAngle <<= 3;
        } else {
            affineData->rotation >>= 3;
            affineData->offsetAngle >>= 3;
        }
        affineData->highAnglePrecision = highPrecision;
    }
}

// [func_0800fd60] AFFINE SPRITE - Set "Double-Size" Flag
void affine_sprite_set_double_size(struct AffineSprite *affineData, u32 doubleSize) {
    if (affineData->index >= 0) {
        func_0804dc8c(D_03005380, affineData->sprite, (doubleSize ? 3 : 1));
    }
    affineData->doubleSize = doubleSize;
}

// [func_0800fd90] AFFINE SPRITE - Get Sprite
s16 affine_sprite_get_base_sprite(struct AffineSprite *affineData) {
    if (affineData == NULL) return -1;

    return affineData->sprite;
}

// [func_0800fda4] AFFINE SPRITE - Set X/Y and Layer
void affine_sprite_set_x_y_z(struct AffineSprite *affineData, s16 x, s16 y, u16 layer) {
    if (affineData == NULL) return;

    affineData->x = x;
    affineData->y = y;
    func_0804d67c(D_03005380, affineData->sprite, layer);
    update_affine_sprite(affineData);
}

// [func_0800fddc] AFFINE SPRITE - Set X/Y
void affine_sprite_set_x_y(struct AffineSprite *affineData, s16 x, s16 y) {
    if (affineData == NULL) return;

    affineData->x = x;
    affineData->y = y;
    update_affine_sprite(affineData);
}

// [func_0800fdf8] AFFINE SPRITE - Set X
void affine_sprite_set_x(struct AffineSprite *affineData, s16 x) {
    if (affineData == NULL) return;

    affineData->x = x;
    update_affine_sprite(affineData);
}

// [func_0800fe0c] AFFINE SPRITE - Set Y
void affine_sprite_set_y(struct AffineSprite *affineData, s16 y) {
    if (affineData == NULL) return;

    affineData->y = y;
    update_affine_sprite(affineData);
}

// [func_0800fe20] AFFINE SPRITE - Set Layer
void affine_sprite_set_z(struct AffineSprite *affineData, u16 layer) {
    if (affineData == NULL) return;

    func_0804d67c(D_03005380, affineData->sprite, layer);
}

// [func_0800fe44] AFFINE SPRITE - Set Scaling & Rotation
void affine_sprite_set_scale_and_rotation(struct AffineSprite *affineData, s16 scale, s16 rotation) {
    if (affineData == NULL) return;

    affineData->scaleX = scale;
    affineData->scaleY = scale;
    affineData->rotation = rotation;
    update_affine_sprite(affineData);
}

// [func_0800fe60] AFFINE SPRITE - Set Scaling
void affine_sprite_set_scale(struct AffineSprite *affineData, s16 scale) {
    if (affineData == NULL) return;

    affineData->scaleX = scale;
    affineData->scaleY = scale;
    update_affine_sprite(affineData);
}

// [func_0800fe78] AFFINE SPRITE - Set Scaling
void affine_sprite_set_scale_x_y(struct AffineSprite *affineData, s16 scaleX, s16 scaleY) {
    if (affineData == NULL) return;

    affineData->scaleX = scaleX;
    affineData->scaleY = scaleY;
    update_affine_sprite(affineData);
}

// [func_0800fe94] AFFINE SPRITE - Set Rotation
void affine_sprite_set_rotation(struct AffineSprite *affineData, s16 rotation) {
    if (affineData == NULL) return;

    affineData->rotation = rotation;
    update_affine_sprite(affineData);
}

// [func_0800fea8] AFFINE SPRITE - Set Offset Distance from Centre
void affine_sprite_set_orbit_distance(struct AffineSprite *affineData, s16 distance) {
    if (affineData == NULL) return;

    affineData->offsetDistance = distance;
    update_affine_sprite(affineData);
}

// [func_0800febc] AFFINE SPRITE - Set Offset Angle from Centre
void affine_sprite_set_orbit_angle(struct AffineSprite *affineData, s16 angle) {
    if (affineData == NULL) return;

    affineData->offsetAngle = angle;
    update_affine_sprite(affineData);
}

// [func_0800fed0] AFFINE SPRITE - Set Offset from Centre
void affine_sprite_set_orbit(struct AffineSprite *affineData, s16 angle, s16 distance) {
    if (affineData == NULL) return;

    affineData->offsetAngle = angle;
    affineData->offsetDistance = distance;
    update_affine_sprite(affineData);
}

// [func_0800feec] AFFINE SPRITE - Set "Rotate With Offset Angle" Flag
void affine_sprite_rotate_with_orbit(struct AffineSprite *affineData, u32 rotate) {
    if (affineData == NULL) return;

    affineData->rotateWithOffset = rotate;
    update_affine_sprite(affineData);
}

// [func_0800ff10] AFFINE SPRITE - Set Horizontal & Vertical Flip
void affine_sprite_set_flip_h_v(struct AffineSprite *affineData, u32 flipHorizontal, u32 flipVertical) {
    if (affineData == NULL) return;

    affineData->flipHorizontal = flipHorizontal;
    affineData->flipVertical = flipVertical;
    update_affine_sprite(affineData);
}

// [func_0800ff44] AFFINE SPRITE - Set Horizontal Flip
void affine_sprite_set_flip_h(struct AffineSprite *affineData, u32 flip) {
    if (affineData == NULL) return;

    affineData->flipHorizontal = flip;
    update_affine_sprite(affineData);
}

// [func_0800ff68] AFFINE SPRITE - Set Vertical Flip
void affine_sprite_set_flip_v(struct AffineSprite *affineData, u32 flip) {
    if (affineData == NULL) return;

    affineData->flipVertical = flip;
    update_affine_sprite(affineData);
}

// [func_0800ff8c] AFFINE SPRITE - Set "Ignore Updates" Flag (Inverted)
void affine_sprite_enable_render_updates(struct AffineSprite *affineData, u32 checkUpdates) {
    if (affineData == NULL) return;

    if (checkUpdates && affineData->ignoreUpdates) {
        affineData->ignoreUpdates = FALSE;
        update_affine_sprite(affineData);
    }
    else if (!checkUpdates) {
        affineData->ignoreUpdates = TRUE;
    }
}

// [func_0800ffc0] AFFINE SPRITE - Set Current Animation Frame
void affine_sprite_set_anim_frame(struct AffineSprite *affineData, u32 frame) {
    if (affineData == NULL) return;

    func_0804cebc(D_03005380, affineData->sprite, frame);
}

// [func_0800ffe4] AFFINE SPRITE - func_0804ced0()
void func_0800ffe4(struct AffineSprite *affineData, u8 arg) {
    if (affineData == NULL) return;

    func_0804ced0(D_03005380, affineData->sprite, arg);
}

// [func_08010008] AFFINE SPRITE - Animate?
void affine_sprite_set_playback(struct AffineSprite *affineData, u32 arg1, u32 arg2, u32 arg3) {
    if (affineData == NULL) return;

    func_0804dae0(D_03005380, affineData->sprite, arg1, arg2, arg3);
}

// [func_08010040] AFFINE SPRITE - Start Animation
void affine_sprite_play_anim(struct AffineSprite *affineData, u32 start) {
    if (affineData == NULL) return;

    func_0804d770(D_03005380, affineData->sprite, start);
}

// [func_08010064] AFFINE SPRITE - Set Animation
void affine_sprite_change_anim(struct AffineSprite *affineData, struct Animation *anim, u32 arg2, u32 arg3, u32 arg4, u32 arg5) {
    if (affineData == NULL) return;

    func_0804d8f8(D_03005380, affineData->sprite, anim, arg2, arg3, arg4, arg5);
}

// [func_080100a8] AFFINE SPRITE - Set Palette
void affine_sprite_set_palette(struct AffineSprite *affineData, u32 paletteID) {
    if (affineData == NULL) return;

    func_0804d8c4(D_03005380, affineData->sprite, paletteID);
}

// [func_080100cc] AFFINE SPRITE - func_0804d890()
void func_080100cc(struct AffineSprite *affineData, u32 arg) {
    if (affineData == NULL) return;

    func_0804d890(D_03005380, affineData->sprite, arg);
}

// [func_080100f0] AFFINE SPRITE - func_0804ddb0(..., 4)
u32 affine_sprite_get_base_sprite_x(struct AffineSprite *affineData) {
    if (affineData == NULL) return;

    return func_0804ddb0(D_03005380, affineData->sprite, 4);
}

// [func_08010110] AFFINE SPRITE - func_0804ddb0(..., 5)
u32 affine_sprite_get_base_sprite_y(struct AffineSprite *affineData) {
    if (affineData == NULL) return;

    return func_0804ddb0(D_03005380, affineData->sprite, 5);
}

// [func_08010130] AFFINE SPRITE - func_0804ddb0(..., 6)
u32 affine_sprite_get_base_sprite_z(struct AffineSprite *affineData) {
    if (affineData == NULL) return;

    return func_0804ddb0(D_03005380, affineData->sprite, 6);
}

// [func_08010150] AFFINE SPRITE - func_0804da20()
void func_08010150(struct AffineSprite *affineData, u16 arg) {
    if (affineData == NULL) return;

    func_0804da20(D_03005380, affineData->sprite, arg);
}

// [func_08010174] AFFINE SPRITE - func_0804dcb8()
void func_08010174(struct AffineSprite *affineData, u16 speed) {
    if (affineData == NULL) return;

    func_0804dcb8(D_03005380, affineData->sprite, speed);
}

// [func_08010198] AFFINE SPRITE - Get Current Frame
s8 affine_sprite_get_current_frame(struct AffineSprite *affineData) {
    if (affineData == NULL) return;

    return func_0804d6cc(D_03005380, affineData->sprite);
}

// [func_080101b8] AFFINE SPRITE - func_0804d708()
u8 func_080101b8(struct AffineSprite *affineData) {
    if (affineData == NULL) return;

    return func_0804d708(D_03005380, affineData->sprite);
}

// [func_080101d8] AFFINE SPRITE - func_0804d7b4()
void func_080101d8(struct AffineSprite *affineData, u32 arg) {
    if (affineData == NULL) return;

    func_0804d7b4(D_03005380, affineData->sprite, arg);
}

// [func_080101f8] AFFINE SPRITE - func_0804d7e8()
void func_080101f8(struct AffineSprite *affineData, u32 arg) {
    if (affineData == NULL) return;

    func_0804d7e8(D_03005380, affineData->sprite, arg);
}

// [func_08010218] AFFINE SPRITE - func_0804d820()
void func_08010218(struct AffineSprite *affineData, u32 arg) {
    if (affineData == NULL) return;

    func_0804d820(D_03005380, affineData->sprite, arg);
}

// [func_08010238] AFFINE SPRITE - func_0804daa8()
void func_08010238(struct AffineSprite *affineData, void *arg1, u32 arg2) {
    if (affineData == NULL) return;

    func_0804daa8(D_03005380, affineData->sprite, arg1, arg2);
}

// [func_08010260] AFFINE SPRITE - func_0804df4c()
void func_08010260(struct AffineSprite *affineData, s8 arg) {
    if (affineData == NULL) return;

    func_0804df4c(D_03005380, affineData->sprite, arg);
}

// [func_08010288] AFFINE SPRITE - func_0804ddb0(..., 2)
u32 affine_sprite_get_total_frames(struct AffineSprite *affineData) {
    if (affineData == NULL) return;

    return func_0804ddb0(D_03005380, affineData->sprite, 2);
}

// [func_080102a8] AFFINE SPRITE - Set X & Y Data Source
void affine_sprite_set_x_y_controllers(struct AffineSprite *affineData, s16 *xSrc, s16 *ySrc) {
    if (affineData == NULL) return;

    func_0804db44(D_03005380, affineData->sprite, xSrc, ySrc);
}
