#include "affine_sprite.h"
#include "code_08001360.h"
#include "code_08003b28.h"
#include "memory_heap.h"
#include "code_08007468.h"
#include "code_0800b778.h"
#include "src/lib_0804ca80.h"


// Update
void update_affine_sprite(struct AffineSprite *affineData) {
    s16 x, y, rotation;
    s16 affineID;
    s16 offsetAngle;
    u8 offsetAngleLowPrec;
    u8 flip;

    if (affineData->ignoreUpdates) {
        return;
    }

    x = affineData->x;
    y = affineData->y;
    affineID = affineData->affineID;
    offsetAngle = affineData->offsetAngle;

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
    sprite_set_x_y(gSpriteHandler, affineData->sprite, x, y);

    if (affineID >= 0) {
        rotation = affineData->rotation;
        if (affineData->rotateWithOffset) {
            rotation += offsetAngle;
        }

        flip = (affineData->flipHorizontal) ? 2 : 0;
        if (affineData->flipVertical) flip |= 4;
        func_08002260(affineID, flip);

        if (affineData->highAnglePrecision) {
            func_080022d8(affineID);
        } else {
            func_080022bc(affineID);
        }

        set_affine_stretch_rotation(affineID, affineData->scaleX, affineData->scaleY, rotation);
    }
}


// Create New Affine Sprite
struct AffineSprite *create_affine_sprite(struct Animation *anim, s8 startCel, s16 x, s16 y, u16 z, s16 scale,
                                            s16 rotation, s8 animDirection, s8 loopCel, u16 loopType, u32 doubleSize) {
    struct AffineSprite *affineData;
    s16 sprite;
    s8 affineID;

    // Create standard sprite.
    sprite = sprite_create(gSpriteHandler, anim, startCel, x, y, z, animDirection, loopCel, loopType);
    if (sprite < 0) {
        return NULL;
    }

    // Generate offset from D_03000368 in words. (?)
    affineID = scene_affine_group_alloc();
    if (affineID < 0) {
        return NULL;
    }

    // Allocate memory for the affineData sprite.
    affineData = scene_mem_heap_alloc(sizeof(struct AffineSprite));
    if (affineData == NULL) {
        return NULL;
    }

    // Initialise Affine Sprite
    affineData->sprite = sprite;
    affineData->affineID = affineID;
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

    assign_sprite_affine_param(sprite, affineID);
    func_080022d8(affineID);
    set_affine_stretch_rotation(affineID, affineData->scaleX, affineData->scaleY, affineData->rotation);
    func_0804dc8c(gSpriteHandler, sprite, (doubleSize ? 3 : 1));

    return affineData;
}


// Create New Affine Sprite (Default Rotation/Scaling Parameters)
struct AffineSprite *create_default_affine_sprite(struct Animation *anim, s8 startCel, s16 x, s16 y, u16 z,
                                                                s8 animDirection, s8 loopCel, u16 loopType) {
    struct AffineSprite *affineData;
    s16 sprite;

    sprite = sprite_create(gSpriteHandler, anim, startCel, x, y, z, animDirection, loopCel, loopType);
    if (sprite < 0) {
        return NULL;
    }

    affineData = scene_mem_heap_alloc(sizeof(struct AffineSprite));
    if (affineData == NULL) {
        return NULL;
    }

    affineData->sprite = sprite;
    affineData->affineID = -1;
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


// Delete
void delete_affine_sprite(struct AffineSprite *affineData) {
    if (affineData == NULL) {
        return;
    }

    sprite_delete(gSpriteHandler, affineData->sprite);
    if (affineData->affineID >= 0) func_080021b8(affineData->affineID);
    mem_heap_dealloc(affineData);
}


// Set/Remove Index
void affine_sprite_set_param_id(struct AffineSprite *affineData, u32 setIndex) {
    if (affineData == NULL) {
        return;
    }

    if (setIndex && (affineData->affineID < 0)) {
        affineData->affineID = scene_affine_group_alloc();
        if (affineData->affineID >= 0) {
            func_0804dc8c(gSpriteHandler, affineData->sprite, (affineData->doubleSize ? 3 : 1));
            assign_sprite_affine_param(affineData->sprite, affineData->affineID);
            update_affine_sprite(affineData);
        }
    } else if (!setIndex) {
        if (affineData->affineID >= 0) {
            func_080021b8();
            affineData->affineID = -1;
            assign_sprite_affine_param(affineData->sprite, -1);
        }
    }
}


// Set "High Angle Precision" Flag
void affine_sprite_set_angle_size(struct AffineSprite *affineData, u32 highPrecision) {
    if (affineData == NULL) {
        return;
    }

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


// Set "Double-Size" Flag
void affine_sprite_set_double_size(struct AffineSprite *affineData, u32 doubleSize) {
    if (affineData->affineID >= 0) {
        func_0804dc8c(gSpriteHandler, affineData->sprite, (doubleSize ? 3 : 1));
    }

    affineData->doubleSize = doubleSize;
}


// Get Sprite
s16 affine_sprite_get_base_sprite(struct AffineSprite *affineData) {
    if (affineData == NULL) {
        return -1;
    }

    return affineData->sprite;
}


// Set X,Y Position and Z-Depth (Layer)
void affine_sprite_set_x_y_z(struct AffineSprite *affineData, s16 x, s16 y, u16 z) {
    if (affineData == NULL) {
        return;
    }

    affineData->x = x;
    affineData->y = y;
    sprite_set_z(gSpriteHandler, affineData->sprite, z);
    update_affine_sprite(affineData);
}


// Set X,Y Position
void affine_sprite_set_x_y(struct AffineSprite *affineData, s16 x, s16 y) {
    if (affineData == NULL) {
        return;
    }

    affineData->x = x;
    affineData->y = y;
    update_affine_sprite(affineData);
}


// Set X Position
void affine_sprite_set_x(struct AffineSprite *affineData, s16 x) {
    if (affineData == NULL) {
        return;
    }

    affineData->x = x;
    update_affine_sprite(affineData);
}


// Set Y Position
void affine_sprite_set_y(struct AffineSprite *affineData, s16 y) {
    if (affineData == NULL) {
        return;
    }

    affineData->y = y;
    update_affine_sprite(affineData);
}


// Set Z-Depth (Layer)
void affine_sprite_set_z(struct AffineSprite *affineData, u16 z) {
    if (affineData == NULL) {
        return;
    }

    sprite_set_z(gSpriteHandler, affineData->sprite, z);
}


// Set Scaling & Rotation
void affine_sprite_set_scale_and_rotation(struct AffineSprite *affineData, s16 scale, s16 rotation) {
    if (affineData == NULL) {
        return;
    }

    affineData->scaleX = scale;
    affineData->scaleY = scale;
    affineData->rotation = rotation;
    update_affine_sprite(affineData);
}


// Set Scaling
void affine_sprite_set_scale(struct AffineSprite *affineData, s16 scale) {
    if (affineData == NULL) {
        return;
    }

    affineData->scaleX = scale;
    affineData->scaleY = scale;
    update_affine_sprite(affineData);
}


// Set X,Y Stretch
void affine_sprite_set_scale_x_y(struct AffineSprite *affineData, s16 scaleX, s16 scaleY) {
    if (affineData == NULL) {
        return;
    }

    affineData->scaleX = scaleX;
    affineData->scaleY = scaleY;
    update_affine_sprite(affineData);
}


// Set Rotation
void affine_sprite_set_rotation(struct AffineSprite *affineData, s16 rotation) {
    if (affineData == NULL) {
        return;
    }

    affineData->rotation = rotation;
    update_affine_sprite(affineData);
}


// Set Offset Distance from Centre
void affine_sprite_set_orbit_distance(struct AffineSprite *affineData, s16 distance) {
    if (affineData == NULL) {
        return;
    }

    affineData->offsetDistance = distance;
    update_affine_sprite(affineData);
}


// Set Offset Angle from Centre
void affine_sprite_set_orbit_angle(struct AffineSprite *affineData, s16 angle) {
    if (affineData == NULL) {
        return;
    }

    affineData->offsetAngle = angle;
    update_affine_sprite(affineData);
}


// Set Offset from Centre
void affine_sprite_set_orbit(struct AffineSprite *affineData, s16 angle, s16 distance) {
    if (affineData == NULL) {
        return;
    }

    affineData->offsetAngle = angle;
    affineData->offsetDistance = distance;
    update_affine_sprite(affineData);
}


// Set "Rotate With Offset Angle" Flag
void affine_sprite_rotate_with_orbit(struct AffineSprite *affineData, u32 rotate) {
    if (affineData == NULL) {
        return;
    }

    affineData->rotateWithOffset = rotate;
    update_affine_sprite(affineData);
}


// Set Horizontal & Vertical Flip
void affine_sprite_set_flip_h_v(struct AffineSprite *affineData, u32 flipHorizontal, u32 flipVertical) {
    if (affineData == NULL) {
        return;
    }

    affineData->flipHorizontal = flipHorizontal;
    affineData->flipVertical = flipVertical;
    update_affine_sprite(affineData);
}


// Set Horizontal Flip
void affine_sprite_set_flip_h(struct AffineSprite *affineData, u32 flip) {
    if (affineData == NULL) {
        return;
    }

    affineData->flipHorizontal = flip;
    update_affine_sprite(affineData);
}


// Set Vertical Flip
void affine_sprite_set_flip_v(struct AffineSprite *affineData, u32 flip) {
    if (affineData == NULL) {
        return;
    }

    affineData->flipVertical = flip;
    update_affine_sprite(affineData);
}


// Set "Ignore Updates" Flag (Inverted)
void affine_sprite_enable_render_updates(struct AffineSprite *affineData, u32 checkUpdates) {
    if (affineData == NULL) {
        return;
    }

    if (checkUpdates && affineData->ignoreUpdates) {
        affineData->ignoreUpdates = FALSE;
        update_affine_sprite(affineData);
    } else if (!checkUpdates) {
        affineData->ignoreUpdates = TRUE;
    }
}


// Set Current Animation Cel
void affine_sprite_set_anim_cel(struct AffineSprite *affineData, u32 cel) {
    if (affineData == NULL) {
        return;
    }

    sprite_set_anim_cel(gSpriteHandler, affineData->sprite, cel);
}


// Set Current Animation Progress
void affine_sprite_set_anim_progress(struct AffineSprite *affineData, u8 progress) {
    if (affineData == NULL) {
        return;
    }

    sprite_set_anim_progress(gSpriteHandler, affineData->sprite, progress);
}


// Set Playback
void affine_sprite_set_playback(struct AffineSprite *affineData, u32 direction, u32 loopCel, u32 playbackType) {
    if (affineData == NULL) {
        return;
    }

    sprite_set_playback(gSpriteHandler, affineData->sprite, direction, loopCel, playbackType);
}


// Set Visibility
void affine_sprite_set_visible(struct AffineSprite *affineData, u32 isVisible) {
    if (affineData == NULL) {
        return;
    }

    sprite_set_visible(gSpriteHandler, affineData->sprite, isVisible);
}


// Set Animation
void affine_sprite_set_anim(struct AffineSprite *affineData, struct Animation *anim, u32 startCel, u32 direction, u32 loopCel, u32 playbackType) {
    if (affineData == NULL) {
        return;
    }

    sprite_set_anim(gSpriteHandler, affineData->sprite, anim, startCel, direction, loopCel, playbackType);
}


// Set Base Palette Offset
void affine_sprite_set_base_palette(struct AffineSprite *affineData, u32 basePalette) {
    if (affineData == NULL) {
        return;
    }

    sprite_set_base_palette(gSpriteHandler, affineData->sprite, basePalette);
}


// Set Base Tile Offset
void affine_sprite_set_base_tile(struct AffineSprite *affineData, u32 baseTile) {
    if (affineData == NULL) {
        return;
    }

    sprite_set_base_tile(gSpriteHandler, affineData->sprite, baseTile);
}


// Get Base Sprite X
u32 affine_sprite_get_base_sprite_x(struct AffineSprite *affineData) {
    if (affineData == NULL) {
        return;
    }

    return sprite_get_data(gSpriteHandler, affineData->sprite, 4);
}


// Get Base Sprite Y
u32 affine_sprite_get_base_sprite_y(struct AffineSprite *affineData) {
    if (affineData == NULL) {
        return;
    }

    return sprite_get_data(gSpriteHandler, affineData->sprite, 5);
}


// Get Base Sprite Z-Depth (Layer)
u32 affine_sprite_get_base_sprite_z(struct AffineSprite *affineData) {
    if (affineData == NULL) {
        return;
    }

    return sprite_get_data(gSpriteHandler, affineData->sprite, 6);
}


// Set Base Sprite Update Flag
void affine_sprite_set_base_sprite_enable_updates(struct AffineSprite *affineData, u16 canUpdate) {
    if (affineData == NULL) {
        return;
    }

    sprite_set_enable_updates(gSpriteHandler, affineData->sprite, canUpdate);
}


// Set Animation Speed
void affine_sprite_set_anim_speed(struct AffineSprite *affineData, u8_8 speed) {
    if (affineData == NULL) {
        return;
    }

    sprite_set_anim_speed(gSpriteHandler, affineData->sprite, speed);
}


// Get Current Animation Cel
s8 affine_sprite_get_anim_cel(struct AffineSprite *affineData) {
    if (affineData == NULL) {
        return;
    }

    return sprite_get_anim_cel(gSpriteHandler, affineData->sprite);
}


// Get Current Animation Progress
u8 affine_sprite_get_anim_progress(struct AffineSprite *affineData) {
    if (affineData == NULL) {
        return;
    }

    return sprite_get_anim_progress(gSpriteHandler, affineData->sprite);
}


// Set Base Sprite Attributes
void affine_sprite_set_attr(struct AffineSprite *affineData, u32 arg) {
    if (affineData == NULL) {
        return;
    }

    sprite_attr_set(gSpriteHandler, affineData->sprite, arg);
}


// OR Base Sprite Attributes
void affine_sprite_orr_attr(struct AffineSprite *affineData, u32 arg) {
    if (affineData == NULL) {
        return;
    }

    sprite_attr_orr(gSpriteHandler, affineData->sprite, arg);
}


// AND Base Sprite Attributes
void affine_sprite_and_attr(struct AffineSprite *affineData, u32 arg) {
    if (affineData == NULL) {
        return;
    }

    sprite_attr_and(gSpriteHandler, affineData->sprite, arg);
}


// Set Sprite Animation Callback
void affine_sprite_set_callback(struct AffineSprite *affineData, void *func, u32 arg) {
    if (affineData == NULL) {
        return;
    }

    sprite_set_callback(gSpriteHandler, affineData->sprite, func, arg);
}


// Set Sprite Animation Callback Trigger Cel
void affine_sprite_set_callback_cel(struct AffineSprite *affineData, s8 arg) {
    if (affineData == NULL) {
        return;
    }

    sprite_set_callback_cel(gSpriteHandler, affineData->sprite, arg);
}


// Get Total Animation Cels
u32 affine_sprite_get_total_cels(struct AffineSprite *affineData) {
    if (affineData == NULL) {
        return;
    }

    return sprite_get_data(gSpriteHandler, affineData->sprite, 2);
}


// Set Base Sprite World Origin X,Y Position
void affine_sprite_set_origin_x_y(struct AffineSprite *affineData, s16 *xOrigin, s16 *yOrigin) {
    if (affineData == NULL) {
        return;
    }

    sprite_set_origin_x_y(gSpriteHandler, affineData->sprite, xOrigin, yOrigin);
}
