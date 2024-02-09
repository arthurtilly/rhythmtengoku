#pragma once

#include "global.h"
#include "graphics.h"

struct AffineSprite {
    s16 sprite;         // Sprite ID
    s8  affineID;       // Affine Param. Group ID
    u8  doubleSize;     // "Double-Size" Flag
    s16 scaleX;         // Horizontal Scale
    s16 scaleY;         // Vertical Scale
    s16 rotation;       // Rotation
    s16 x;              // X Coordinate
    s16 y;              // Y Coordinate
    s16 offsetDistance; // Distance from Centre
    s16 offsetAngle;    // Angle from Centre
    u8  rotateWithOffset:1;     // "Rotate With Offset Angle" Flag
    u8  highAnglePrecision:1;   // "High Angle Precision" Flag (if FALSE: 0x100 = 360 degrees; if TRUE: 0x800 = 360 degrees)
    u8  flipHorizontal:1;       // "Flip Horizontal" Flag
    u8  flipVertical:1;         // "Flip Vertical" Flag
    u8  ignoreUpdates:1;        // "Ignore Updates" Flag (if TRUE: any changes to the above are stored but not rendered)
};


extern void update_affine_sprite(struct AffineSprite *);
extern struct AffineSprite *create_affine_sprite(struct Animation *anim, s8 startCel, s16 x, s16 y, u16 z, s16 scale,
                                                    s16 rotation, s8 animDirection, s8 loopCel, u16 loopType, u32 doubleSize);
extern struct AffineSprite *create_default_affine_sprite(struct Animation *anim, s8 startCel, s16 x, s16 y, u16 z,
                                                            s8 animDirection, s8 loopCel, u16 loopType);
extern void delete_affine_sprite(struct AffineSprite *);
extern void affine_sprite_set_param_id(struct AffineSprite *, u32 setIndex);
extern void affine_sprite_set_angle_size(struct AffineSprite *, u32 highPrecision);
extern void affine_sprite_set_double_size(struct AffineSprite *, u32 doubleSize);
extern s16  affine_sprite_get_base_sprite(struct AffineSprite *);
extern void affine_sprite_set_x_y_z(struct AffineSprite *, s16 x, s16 y, u16 z);
extern void affine_sprite_set_x_y(struct AffineSprite *, s16 x, s16 y);
extern void affine_sprite_set_x(struct AffineSprite *, s16 x);
extern void affine_sprite_set_y(struct AffineSprite *, s16 y);
extern void affine_sprite_set_z(struct AffineSprite *, u16 z);
extern void affine_sprite_set_scale_and_rotation(struct AffineSprite *, s16 scale, s16 rotation);
extern void affine_sprite_set_scale(struct AffineSprite *, s16 scale);
extern void affine_sprite_set_scale_x_y(struct AffineSprite *, s16 scaleX, s16 scaleY);
extern void affine_sprite_set_rotation(struct AffineSprite *, s16 rotation);
extern void affine_sprite_set_orbit_distance(struct AffineSprite *, s16 distance);
extern void affine_sprite_set_orbit_angle(struct AffineSprite *, s16 angle);
extern void affine_sprite_set_orbit(struct AffineSprite *, s16 angle, s16 distance);
extern void affine_sprite_rotate_with_orbit(struct AffineSprite *, u32 rotate);
extern void affine_sprite_set_flip_h_v(struct AffineSprite *, u32 flipHorizontal, u32 flipVertical);
extern void affine_sprite_set_flip_h(struct AffineSprite *, u32 flip);
extern void affine_sprite_set_flip_v(struct AffineSprite *, u32 flip);
extern void affine_sprite_enable_render_updates(struct AffineSprite *, u32 checkUpdates);
extern void affine_sprite_set_anim_cel(struct AffineSprite *, u32 cel);
extern void affine_sprite_set_anim_progress(struct AffineSprite *, u8 progress);
extern void affine_sprite_set_playback(struct AffineSprite *, u32 direction, u32 loopCel, u32 playbackType);
extern void affine_sprite_set_visible(struct AffineSprite *, u32 isVisible);
extern void affine_sprite_set_anim(struct AffineSprite *, struct Animation *anim, u32 startCel, u32 direction, u32 loopCel, u32 playbackType);
extern void affine_sprite_set_base_palette(struct AffineSprite *, u32 basePalette);
extern void affine_sprite_set_base_tile(struct AffineSprite *, u32 baseTile);
extern u32  affine_sprite_get_base_sprite_x(struct AffineSprite *);
extern u32  affine_sprite_get_base_sprite_y(struct AffineSprite *);
extern u32  affine_sprite_get_base_sprite_z(struct AffineSprite *);
extern void affine_sprite_set_base_sprite_enable_updates(struct AffineSprite *, u16 canUpdate);
extern void affine_sprite_set_anim_speed(struct AffineSprite *, u8_8 speed);
extern s8   affine_sprite_get_anim_cel(struct AffineSprite *);
extern u8   affine_sprite_get_anim_progress(struct AffineSprite *);
extern void affine_sprite_set_attr(struct AffineSprite *, u32 attr);
extern void affine_sprite_orr_attr(struct AffineSprite *, u32 attr);
extern void affine_sprite_and_attr(struct AffineSprite *, u32 attr);
extern void affine_sprite_set_callback(struct AffineSprite *, void *func, u32 arg);
extern void affine_sprite_set_callback_cel(struct AffineSprite *, s8 cel);
extern u32  affine_sprite_get_total_cels(struct AffineSprite *);
extern void affine_sprite_set_origin_x_y(struct AffineSprite *, s16 *xOrigin, s16 *yOrigin);
