#include "global.h"
#include "code_08001360.h"
#include "code_08003980.h"
#include "code_08007468.h"
#include "code_0800b778.h"
#include "src/lib_0804c870.h"

// Could use better split

asm(".include \"include/gba.inc\"");//Temporary

static s32 D_03001310[2]; // unknown type

#include "asm/code_0800b778/asm_0800b778.s"

#include "asm/code_0800b778/asm_0800b834.s"

#include "asm/code_0800b778/asm_0800b974.s"

#include "asm/code_0800b778/asm_0800b9fc.s"

#include "asm/code_0800b778/asm_0800bc14.s"

#include "asm/code_0800b778/asm_0800bc40.s"

#include "asm/code_0800b778/asm_0800bc58.s"

#include "asm/code_0800b778/asm_0800bc68.s"

#include "asm/code_0800b778/asm_0800bcb8.s"

#include "asm/code_0800b778/asm_0800bcc4.s"

#include "asm/code_0800b778/asm_0800bce4.s"

#include "asm/code_0800b778/asm_0800bcf4.s"

#include "asm/code_0800b778/asm_0800bd04.s"

#include "asm/code_0800b778/asm_0800bd1c.s"

#include "asm/code_0800b778/asm_0800bd2c.s"

#include "asm/code_0800b778/asm_0800bdf8.s"

#include "asm/code_0800b778/asm_0800be64.s"

#include "asm/code_0800b778/asm_0800be88.s"

#include "asm/code_0800b778/asm_0800be9c.s"

#include "asm/code_0800b778/asm_0800bea0.s"

#include "asm/code_0800b778/asm_0800bebc.s"

#include "asm/code_0800b778/asm_0800bed0.s"

#include "asm/code_0800b778/asm_0800bf7c.s"

#include "asm/code_0800b778/asm_0800bf8c.s"

#include "asm/code_0800b778/asm_0800bf9c.s"

#include "asm/code_0800b778/asm_0800bfac.s"

#include "asm/code_0800b778/asm_0800bfbc.s"

#include "asm/code_0800b778/asm_0800c01c.s"

#include "asm/code_0800b778/asm_0800c030.s"

#include "asm/code_0800b778/asm_0800c048.s"

#include "asm/code_0800b778/asm_0800c060.s"

#include "asm/code_0800b778/asm_0800c088.s"

#include "asm/code_0800b778/asm_0800c0c4.s"

#include "asm/code_0800b778/asm_0800c0d8.s"

// Set Volume for Selected Music Channels
void func_0800c0f8(u16 selection, u16 volume) {
    D_030053c0.unk192 = volume;
    D_030053c0.unk194 = selection;
    func_08002934(D_030053c0.unk4, selection, volume);
}

#include "asm/code_0800b778/asm_0800c128.s"

#include "asm/code_0800b778/asm_0800c138.s"

#include "asm/code_0800b778/asm_0800c154.s"

#include "asm/code_0800b778/asm_0800c168.s"

#include "asm/code_0800b778/asm_0800c184.s"

void func_0800c1a4_stub(void) {
}

// Return D_030053c0.unkC.
u32 func_0800c1a8(void) {
    return D_030053c0.unkC;
}

#include "asm/code_0800b778/asm_0800c1b4.s"

#include "asm/code_0800b778/asm_0800c1c0.s"

#include "asm/code_0800b778/asm_0800c1d0.s"

#include "asm/code_0800b778/asm_0800c1e8.s"

#include "asm/code_0800b778/asm_0800c228.s"

#include "asm/code_0800b778/asm_0800c280.s"

#include "asm/code_0800b778/asm_0800c2b0.s"

#include "asm/code_0800b778/asm_0800c2d0.s"

#include "asm/code_0800b778/asm_0800c310.s"

#include "asm/code_0800b778/asm_0800c350.s"

#include "asm/code_0800b778/asm_0800c390.s"

#include "asm/code_0800b778/asm_0800c394.s"

#include "asm/code_0800b778/asm_0800c398.s"

// Parse beat values.
u32 func_0800c3a4(u32 arg0) {
    func_08007b80(arg0 << 8, D_030053c0.unk14);
}

u32 func_0800c3b8() {
    return D_03001310[0];
}

#include "asm/code_0800b778/asm_0800c3c4.s"

#include "asm/code_0800b778/asm_0800c3e4.s"

#include "asm/code_0800b778/asm_0800c3e8.s"

#include "asm/code_0800b778/asm_0800c3ec.s"

#include "asm/code_0800b778/asm_0800c3fc.s"

#include "asm/code_0800b778/asm_0800c400.s"

#include "asm/code_0800b778/asm_0800c404.s"

#include "asm/code_0800b778/asm_0800c408.s"

#include "asm/code_0800b778/asm_0800c40c.s"

#include "asm/code_0800b778/asm_0800c410.s"

#include "asm/code_0800b778/asm_0800c414.s"

#include "asm/code_0800b778/asm_0800c418.s"

#include "asm/code_0800b778/asm_0800c41c.s"

#include "asm/code_0800b778/asm_0800c420.s"

#include "asm/code_0800b778/asm_0800c424.s"

#include "asm/code_0800b778/asm_0800c428.s"

#include "asm/code_0800b778/asm_0800c42c.s"

// Allocate memory for a struct of size [arg0] (bytes). (?)
u32 *func_0800c43c(u32 arg0) {
    return mem_heap_alloc_id(func_0800c3b8(), arg0);
}

#include "asm/code_0800b778/asm_0800c454.s"

#include "asm/code_0800b778/asm_0800c484.s"

#include "asm/code_0800b778/asm_0800c490.s"

#include "asm/code_0800b778/asm_0800c494.s"

#include "asm/code_0800b778/asm_0800c4ac.s"

#include "asm/code_0800b778/asm_0800c4b0.s"

#include "asm/code_0800b778/asm_0800c508.s"

#include "asm/code_0800b778/asm_0800c560.s"

#include "asm/code_0800b778/asm_0800c5b8.s"

#include "asm/code_0800b778/asm_0800c604.s"

#include "asm/code_0800b778/asm_0800c654.s"

#include "asm/code_0800b778/asm_0800c658.s"

#include "asm/code_0800b778/asm_0800c65c.s"

#include "asm/code_0800b778/asm_0800c660.s"

#include "asm/code_0800b778/asm_0800c694.s"

#include "asm/code_0800b778/asm_0800c6a4.s"

#include "asm/code_0800b778/asm_0800c6c8.s"

#include "asm/code_0800b778/asm_0800c6d4.s"

#include "asm/code_0800b778/asm_0800c6d8.s"

#include "asm/code_0800b778/asm_0800c6dc.s"

#include "asm/code_0800b778/asm_0800c6e0.s"

#include "asm/code_0800b778/asm_0800c6e4.s"

#include "asm/code_0800b778/asm_0800c824.s"

#include "asm/code_0800b778/asm_0800c95c.s"

#include "asm/code_0800b778/asm_0800c9a4.s"

#include "asm/code_0800b778/asm_0800c9c8.s"

#include "asm/code_0800b778/asm_0800ca1c.s"

#include "asm/code_0800b778/asm_0800ca70.s"

#include "asm/code_0800b778/asm_0800cb28.s"

#include "asm/code_0800b778/asm_0800dfbc.s"

#include "asm/code_0800b778/asm_0800dfc0.s"

#include "asm/code_0800b778/asm_0800dfc4.s"

#include "asm/code_0800b778/asm_0800dfe0.s"

#include "asm/code_0800b778/asm_0800dfe4.s"

#include "asm/code_0800b778/asm_0800dfe8.s"

#include "asm/code_0800b778/asm_0800dfec.s"

#include "asm/code_0800b778/asm_0800dff0.s"

#include "asm/code_0800b778/asm_0800dff4.s"

#include "asm/code_0800b778/asm_0800dff8.s"

#include "asm/code_0800b778/asm_0800dffc.s"

#include "asm/code_0800b778/asm_0800e000.s"

#include "asm/code_0800b778/asm_0800e004.s"

#include "asm/code_0800b778/asm_0800e008.s"

#include "asm/code_0800b778/asm_0800e00c.s"

#include "asm/code_0800b778/asm_0800e010.s"

#include "asm/code_0800b778/asm_0800e014.s"

#include "asm/code_0800b778/asm_0800e018.s"

#include "asm/code_0800b778/asm_0800e030.s"

#include "asm/code_0800b778/asm_0800e044.s"

#include "asm/code_0800b778/asm_0800e058.s"

#include "asm/code_0800b778/asm_0800e068.s"

#include "asm/code_0800b778/asm_0800e084.s"

#include "asm/code_0800b778/asm_0800e0a0.s"

#include "asm/code_0800b778/asm_0800e0ec.s"

#include "asm/code_0800b778/asm_0800e100.s"

#include "asm/code_0800b778/asm_0800e114.s"

#include "asm/code_0800b778/asm_0800e128.s"

#include "asm/code_0800b778/asm_0800e13c.s"

#include "asm/code_0800b778/asm_0800e184.s"

#include "asm/code_0800b778/asm_0800e1cc.s"

#include "asm/code_0800b778/asm_0800e208.s"

#include "asm/code_0800b778/asm_0800e25c.s"

#include "asm/code_0800b778/asm_0800e2a8.s"

#include "asm/code_0800b778/asm_0800e30c.s"

#include "asm/code_0800b778/asm_0800e364.s"

#include "asm/code_0800b778/asm_0800e3e4.s"

#include "asm/code_0800b778/asm_0800e430.s"

#include "asm/code_0800b778/asm_0800e490.s"

#include "asm/code_0800b778/asm_0800e4f8.s"

#include "asm/code_0800b778/asm_0800e57c.s"

#include "asm/code_0800b778/asm_0800e62c.s"

#include "asm/code_0800b778/asm_0800e694.s"

#include "asm/code_0800b778/asm_0800e6ec.s"

#include "asm/code_0800b778/asm_0800e75c.s"

#include "asm/code_0800b778/asm_0800e768.s"

#include "asm/code_0800b778/asm_0800e7e8.s"

#include "asm/code_0800b778/asm_0800e830.s"

#include "asm/code_0800b778/asm_0800e850.s"

#include "asm/code_0800b778/asm_0800e86c.s"

#include "asm/code_0800b778/asm_0800e888.s"

#include "asm/code_0800b778/asm_0800e8b0.s"

#include "asm/code_0800b778/asm_0800e8d8.s"

#include "asm/code_0800b778/asm_0800e8f4.s"

#include "asm/code_0800b778/asm_0800e940.s"

#include "asm/code_0800b778/asm_0800e944.s"

#include "asm/code_0800b778/asm_0800e948.s"

#include "asm/code_0800b778/asm_0800e970.s"

#include "asm/code_0800b778/asm_0800e9d8.s"

#include "asm/code_0800b778/asm_0800e9f8.s"

#include "asm/code_0800b778/asm_0800ea1c.s"

#include "asm/code_0800b778/asm_0800ea2c.s"

#include "asm/code_0800b778/asm_0800ea3c.s"

#include "asm/code_0800b778/asm_0800ea70.s"

#include "asm/code_0800b778/asm_0800eaa0.s"

#include "asm/code_0800b778/asm_0800eb0c.s"

#include "asm/code_0800b778/asm_0800eb1c.s"

#include "asm/code_0800b778/asm_0800ebac.s"

#include "asm/code_0800b778/asm_0800ebf8.s"

#include "asm/code_0800b778/asm_0800ec20.s"

#include "asm/code_0800b778/asm_0800ec34.s"

#include "asm/code_0800b778/asm_0800ecac.s"

#include "asm/code_0800b778/asm_0800ecec.s"

#include "asm/code_0800b778/asm_0800ed08.s"

#include "asm/code_0800b778/asm_0800ed24.s"

#include "asm/code_0800b778/asm_0800ed3c.s"

#include "asm/code_0800b778/asm_0800ed54.s"

#include "asm/code_0800b778/asm_0800ed58.s"

#include "asm/code_0800b778/asm_0800ed5c.s"

#include "asm/code_0800b778/asm_0800ed60.s"

#include "asm/code_0800b778/asm_0800ed64.s"

#include "asm/code_0800b778/asm_0800edb8.s"

#include "asm/code_0800b778/asm_0800edc8.s"

#include "asm/code_0800b778/asm_0800edfc.s"

#include "asm/code_0800b778/asm_0800ee1c.s"

#include "asm/code_0800b778/asm_0800ee3c.s"

#include "asm/code_0800b778/asm_0800ee5c.s"

#include "asm/code_0800b778/asm_0800ee7c.s"

#include "asm/code_0800b778/asm_0800ee9c.s"

#include "asm/code_0800b778/asm_0800eebc.s"

#include "asm/code_0800b778/asm_0800f070.s"

#include "asm/code_0800b778/asm_0800f084.s"

#include "asm/code_0800b778/asm_0800f09c.s"

#include "asm/code_0800b778/asm_0800f0b4.s"

#include "asm/code_0800b778/asm_0800f180.s"

#include "asm/code_0800b778/asm_0800f1ec.s"

#include "asm/code_0800b778/asm_0800f218.s"

#include "asm/code_0800b778/asm_0800f22c.s"

#include "asm/code_0800b778/asm_0800f4a0.s"

#include "asm/code_0800b778/asm_0800f524.s"

#include "asm/code_0800b778/asm_0800f570.s"

#include "asm/code_0800b778/asm_0800f578.s"

#include "asm/code_0800b778/asm_0800f580.s"

#include "asm/code_0800b778/asm_0800f588.s"

#include "asm/code_0800b778/asm_0800f614.s"

#include "asm/code_0800b778/asm_0800f7c0.s"

#include "asm/code_0800b778/asm_0800f89c.s"

#include "asm/code_0800b778/asm_0800f8d8.s"

#include "asm/code_0800b778/asm_0800f8ec.s"

#include "asm/code_0800b778/asm_0800f8f8.s"

// [func_0800f904] SCALABLE SPRITE - Update
void func_0800f904(struct ScalableSprite *scalable) {
    s16 x, y;
    s16 index;
    s16 offsetAngle;
    u8 offsetAngleLowPrec;
    s16 rotation;
    u8 flip;

    // Self-explanatory
    if (scalable->ignoreUpdates) return;

    x = scalable->x;
    y = scalable->y;
    index = scalable->index;
    offsetAngle = scalable->offsetAngle;

    // Update X & Y
    if (scalable->offsetDistance != 0) {
        if (scalable->highAnglePrecision) {
            x += (scalable->offsetDistance * coss(offsetAngle)) >> 8;
            y += (scalable->offsetDistance * sins(offsetAngle)) >> 8;
        } else {
            offsetAngleLowPrec = offsetAngle;
            x += (scalable->offsetDistance * coss2(offsetAngleLowPrec)) >> 8;
            y += (scalable->offsetDistance * sins2(offsetAngleLowPrec)) >> 8;
        }
    }
    func_0804d5d4(D_03005380, scalable->sprite, x, y);

    // It seems that the "index" may refer to a Rotation/Scaling Parameter Group (buffered at D_03000340)
    if (index >= 0) {
        // Get Rotation
        rotation = scalable->rotation;
        if (scalable->rotateWithOffset) {
            rotation += offsetAngle;
        }

        // Update Horizontal & Vertical Flip
        flip = (scalable->flipHorizontal) ? 2 : 0;
        if (scalable->flipVertical) flip |= 4;
        func_08002260(index, flip);

        // Update Angle Precision
        if (scalable->highAnglePrecision) {
            func_080022d8(index);
        } else {
            func_080022bc(index);
        }

        // Update Scaling & Rotation
        func_080074c4(index, scalable->scaleX, scalable->scaleY, rotation);
    }
}

// Create Scalable Sprite (Sprite w/ Rotation/Scaling Parameters)
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

struct ScalableSprite *func_0800fa6c(u32 *anim, s8 arg1, s16 x, s16 y, u16 arg4, s16 scale,
                                            s16 rotation, s8 arg7, s8 arg8, u16 arg9, u32 doubleSize) {
    struct ScalableSprite *scalable;
    s16 sprite;
    s8 index;

    // Create standard sprite.
    sprite = func_0804d160(D_03005380, anim, arg1, x, y, arg4, arg7, arg8, arg9);
    if (sprite < 0) return NULL;

    // Generate offset from D_03000368 in words. (?)
    index = func_0800c42c();
    if (index < 0) return NULL;

    // Allocate memory for the scalable sprite.
    scalable = (struct ScalableSprite *) func_0800c43c(0x14);
    if (scalable == NULL) return NULL;

    // Initialise scalable sprite.
    scalable->sprite = sprite;
    scalable->index = index;
    scalable->doubleSize = doubleSize;
    scalable->scaleX = scale;
    scalable->scaleY = scale;
    scalable->rotation = rotation;
    scalable->x = x;
    scalable->y = y;
    scalable->offsetDistance = 0;
    scalable->offsetAngle = 0;

    scalable->rotateWithOffset = FALSE;
    scalable->highAnglePrecision = TRUE;
    scalable->flipHorizontal = FALSE;
    scalable->flipVertical = FALSE;
    scalable->ignoreUpdates = FALSE;

    func_08007468(sprite, index);
    func_080022d8(index);
    func_080074c4(index, scalable->scaleX, scalable->scaleY, scalable->rotation);
    func_0804dc8c(D_03005380, sprite, (doubleSize ? 3 : 1));

    return scalable;
}

// [func_0800fba0] SCALABLE SPRITE - Create Scalable Sprite with Default Rotation/Scaling Parameters
struct ScalableSprite *func_0800fba0(u32 *anim, s8 arg1, s16 x, s16 y, u16 arg4, s8 arg5, s8 arg6, u16 arg7) {
    struct ScalableSprite *scalable;
    s16 sprite;

    sprite = func_0804d160(D_03005380, anim, arg1, x, y, arg4, arg5, arg6, arg7);
    if (sprite < 0) return NULL;

    scalable = (struct ScalableSprite *) func_0800c43c(0x14);
    if (scalable == NULL) return NULL;

    scalable->sprite = sprite;
    scalable->index = -1;
    scalable->doubleSize = 0;
    scalable->scaleX = 0x100;
    scalable->scaleY = 0x100;
    scalable->rotation = 0;
    scalable->x = x;
    scalable->y = y;
    scalable->offsetDistance = 0;
    scalable->offsetAngle = 0;

    scalable->rotateWithOffset = FALSE;
    scalable->highAnglePrecision = TRUE;
    scalable->flipHorizontal = FALSE;
    scalable->flipVertical = FALSE;
    scalable->ignoreUpdates = FALSE;

    return scalable;
}

// [func_0800fc70] SCALABLE SPRITE - Delete
void func_0800fc70(struct ScalableSprite *scalable) {
    if (scalable == NULL) return;

    func_0804d504(D_03005380, scalable->sprite);
    if (scalable->index >= 0) func_080021b8(scalable->index);
    mem_heap_dealloc(scalable);
}

// [func_0800fca0] SCALABLE SPRITE - Set/Remove Index
void func_0800fca0(struct ScalableSprite *scalable, u32 setIndex) {
    if (scalable == NULL) return;

    if (setIndex && (scalable->index < 0)) {
        scalable->index = func_0800c42c();
        if (scalable->index >= 0) {
            func_0804dc8c(D_03005380, scalable->sprite, (scalable->doubleSize ? 3 : 1));
            func_08007468(scalable->sprite, scalable->index);
            func_0800f904(scalable);
        }
    } else if (!setIndex) {
        if (scalable->index >= 0) {
            func_080021b8();
            scalable->index = -1;
            func_08007468(scalable->sprite, -1);
        }
    }
}

// [func_0800fd14] SCALABLE SPRITE - Set "High Angle Precision" Flag
void func_0800fd14(struct ScalableSprite *sprite, u32 highPrecision) {
    if (sprite == NULL) return;

    if (sprite->highAnglePrecision != highPrecision) {
        if (highPrecision) {
            sprite->rotation <<= 3;
            sprite->offsetAngle <<= 3;
        } else {
            sprite->rotation >>= 3;
            sprite->offsetAngle >>= 3;
        }
        sprite->highAnglePrecision = highPrecision;
    }
}

// [func_0800fd60] SCALABLE SPRITE - Set "Double-Size" Flag
void func_0800fd60(struct ScalableSprite *scalable, u32 doubleSize) {
    if (scalable->index >= 0) {
        func_0804dc8c(D_03005380, scalable->sprite, (doubleSize ? 3 : 1));
    }
    scalable->doubleSize = doubleSize;
}

// [func_0800fd90] SCALABLE SPRITE - Get Sprite
s16 func_0800fd90(struct ScalableSprite *scalable) {
    if (scalable == NULL) return -1;

    return scalable->sprite;
}

// [func_0800fda4] SCALABLE SPRITE - Set X & Y; func_0804d67c()
void func_0800fda4(struct ScalableSprite *scalable, s16 x, s16 y, u16 arg3) {
    if (scalable == NULL) return;

    scalable->x = x;
    scalable->y = y;
    func_0804d67c(D_03005380, scalable->sprite, arg3);
    func_0800f904(scalable);
}

// [func_0800fddc] SCALABLE SPRITE - Set X & Y
void func_0800fddc(struct ScalableSprite *sprite, s16 x, s16 y) {
    if (sprite == NULL) return;

    sprite->x = x;
    sprite->y = y;
    func_0800f904(sprite);
}

// [func_0800fdf8] SCALABLE SPRITE - Set X
void func_0800fdf8(struct ScalableSprite *sprite, s16 x) {
    if (sprite == NULL) return;

    sprite->x = x;
    func_0800f904(sprite);
}

// [func_0800fe0c] SCALABLE SPRITE - Set Y
void func_0800fe0c(struct ScalableSprite *sprite, s16 y) {
    if (sprite == NULL) return;

    sprite->y = y;
    func_0800f904(sprite);
}

// [func_0800fe20] SCALABLE SPRITE - func_0804d67c()
void func_0800fe20(struct ScalableSprite *scalable, u16 arg) {
    if (scalable == NULL) return;

    func_0804d67c(D_03005380, scalable->sprite, arg);
}

// [func_0800fe44] SCALABLE SPRITE - Set Scaling & Rotation
void func_0800fe44(struct ScalableSprite *sprite, s16 scale, s16 rotation) {
    if (sprite == NULL) return;

    sprite->scaleX = scale;
    sprite->scaleY = scale;
    sprite->rotation = rotation;
    func_0800f904(sprite);
}

// [func_0800fe60] SCALABLE SPRITE - Set Scaling
void func_0800fe60(struct ScalableSprite *sprite, s16 scale) {
    if (sprite == NULL) return;

    sprite->scaleX = scale;
    sprite->scaleY = scale;
    func_0800f904(sprite);
}

// [func_0800fe78] SCALABLE SPRITE - Set Scaling
void func_0800fe78(struct ScalableSprite *sprite, s16 scaleX, s16 scaleY) {
    if (sprite == NULL) return;

    sprite->scaleX = scaleX;
    sprite->scaleY = scaleY;
    func_0800f904(sprite);
}

// [func_0800fe94] SCALABLE SPRITE - Set Rotation
void func_0800fe94(struct ScalableSprite *sprite, s16 rotation) {
    if (sprite == NULL) return;

    sprite->rotation = rotation;
    func_0800f904(sprite);
}

// [func_0800fea8] SCALABLE SPRITE - Set Offset Distance from Centre
void func_0800fea8(struct ScalableSprite *sprite, s16 distance) {
    if (sprite == NULL) return;

    sprite->offsetDistance = distance;
    func_0800f904(sprite);
}

// [func_0800febc] SCALABLE SPRITE - Set Offset Angle from Centre
void func_0800febc(struct ScalableSprite *sprite, s16 angle) {
    if (sprite == NULL) return;

    sprite->offsetAngle = angle;
    func_0800f904(sprite);
}

// [func_0800fed0] SCALABLE SPRITE - Set Offset from Centre
void func_0800fed0(struct ScalableSprite *sprite, s16 angle, s16 distance) {
    if (sprite == NULL) return;

    sprite->offsetAngle = angle;
    sprite->offsetDistance = distance;
    func_0800f904(sprite);
}

// [func_0800feec] SCALABLE SPRITE - Set "Rotate With Offset Angle" Flag
void func_0800feec(struct ScalableSprite *sprite, u32 rotate) {
    if (sprite == NULL) return;

    sprite->rotateWithOffset = rotate;
    func_0800f904(sprite);
}

// [func_0800ff10] SCALABLE SPRITE - Set Horizontal & Vertical Flip
void func_0800ff10(struct ScalableSprite *sprite, u32 flipHorizontal, u32 flipVertical) {
    if (sprite == NULL) return;

    sprite->flipHorizontal = flipHorizontal;
    sprite->flipVertical = flipVertical;
    func_0800f904(sprite);
}

// [func_0800ff44] SCALABLE SPRITE - Set Horizontal Flip
void func_0800ff44(struct ScalableSprite *sprite, u32 flip) {
    if (sprite == NULL) return;

    sprite->flipHorizontal = flip;
    func_0800f904(sprite);
}

// [func_0800ff68] SCALABLE SPRITE - Set Vertical Flip
void func_0800ff68(struct ScalableSprite *sprite, u32 flip) {
    if (sprite == NULL) return;

    sprite->flipVertical = flip;
    func_0800f904(sprite);
}

// [func_0800ff8c] SCALABLE SPRITE - Set "Ignore Updates" Flag (Inverted)
void func_0800ff8c(struct ScalableSprite *sprite, u32 checkUpdates) {
    if (sprite == NULL) return;

    if (checkUpdates && sprite->ignoreUpdates) {
        sprite->ignoreUpdates = FALSE;
        func_0800f904(sprite);
    }
    else if (!checkUpdates) {
        sprite->ignoreUpdates = TRUE;
    }
}

// [func_0800ffc0] SCALABLE SPRITE - Set Current Animation Frame
void func_0800ffc0(struct ScalableSprite *scalable, u32 frame) {
    if (scalable == NULL) return;

    func_0804cebc(D_03005380, scalable->sprite, frame);
}

// [func_0800ffe4] SCALABLE SPRITE - func_0804ced0()
void func_0800ffe4(struct ScalableSprite *scalable, u8 arg) {
    if (scalable == NULL) return;

    func_0804ced0(D_03005380, scalable->sprite, arg);
}

// [func_08010008] SCALABLE SPRITE - Animate?
void func_08010008(struct ScalableSprite *scalable, u32 arg1, u32 arg2, u32 arg3) {
    if (scalable == NULL) return;

    func_0804dae0(D_03005380, scalable->sprite, arg1, arg2, arg3);
}

// [func_08010040] SCALABLE SPRITE - Start Animation
void func_08010040(struct ScalableSprite *scalable, u32 start) {
    if (scalable == NULL) return;

    func_0804d770(D_03005380, scalable->sprite, start);
}

#include "asm/code_0800b778/asm_08010064.s"

#include "asm/code_0800b778/asm_080100a8.s"

#include "asm/code_0800b778/asm_080100cc.s"

#include "asm/code_0800b778/asm_080100f0.s"

#include "asm/code_0800b778/asm_08010110.s"

#include "asm/code_0800b778/asm_08010130.s"

#include "asm/code_0800b778/asm_08010150.s"

#include "asm/code_0800b778/asm_08010174.s"

#include "asm/code_0800b778/asm_08010198.s"

#include "asm/code_0800b778/asm_080101b8.s"

#include "asm/code_0800b778/asm_080101d8.s"

#include "asm/code_0800b778/asm_080101f8.s"

#include "asm/code_0800b778/asm_08010218.s"

#include "asm/code_0800b778/asm_08010238.s"

#include "asm/code_0800b778/asm_08010260.s"

#include "asm/code_0800b778/asm_08010288.s"

#include "asm/code_0800b778/asm_080102a8.s"

#include "asm/code_0800b778/asm_080102d0.s"

#include "asm/code_0800b778/asm_080102f4.s"

#include "asm/code_0800b778/asm_08010478.s"
