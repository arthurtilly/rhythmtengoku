#include "global.h"
#include "src/code_08007468.h"
#include "src/code_08003980.h"
#include "src/bitmap_font.h"
#include "src/memory_heap.h"
#include "src/lib_0804ca80.h"

// Can be better split

asm(".include \"include/gba.inc\"");//Temporary



// Get Sprite XY
void get_sprite_xy(s16 sprite, s16 *xReq, s16 *yReq) {
    *xReq = func_0804ddb0(D_03005380, sprite, 4);
    *yReq = func_0804ddb0(D_03005380, sprite, 5);
}


// Set Sprite Affine Param.
void assign_sprite_affine_param(s16 sprite, s8 affineParam) {
    func_0804dc10(D_03005380, sprite, affineParam, func_08002520(affineParam));
}


// Set Affine Parameters
void set_affine_scale_rotation(s8 affineParam, s16 scale, s16 rotation) {
    func_0800232c(affineParam, scale, scale, -rotation, 1);
}


// Set Affine Parameters
void set_affine_stretch_rotation(s8 affineParam, s16 xScale, s16 yScale, s16 rotation) {
    func_0800232c(affineParam, xScale, yScale, -rotation, 1);
}


// Indefinite linear movement
// D_08936ba4 function 1
struct unk_struct_080074ec *func_080074ec(struct unk_struct_080074ec_init *inputs) {
    struct unk_struct_080074ec *task;

    if (inputs->sprite < 0) {
        return TASK_FAILED_TO_START;
    }

    task = mem_heap_alloc(sizeof(struct unk_struct_080074ec));
    task->sprite = inputs->sprite;
    task->xPos = INT_TO_FIXED(inputs->startX);
    task->yPos = INT_TO_FIXED(inputs->startY);
    task->xVel = inputs->xVel;
    task->yVel = inputs->yVel;

    func_0804d5d4(D_03005380, inputs->sprite, inputs->startX, inputs->startY);
    return task;
}

// D_08936ba4 function 2
u32 func_08007544(struct unk_struct_080074ec *task) {
    task->xPos += task->xVel;
    task->yPos += task->yVel;

    func_0804d5d4(D_03005380, task->sprite, FIXED_TO_INT(task->xPos), FIXED_TO_INT(task->yPos));
    return FALSE;
}

// Approach a point asymptotically (slow down)
// D_08936bb4 function 1
struct unk_struct_0800757c *func_0800757c(struct unk_struct_0800757c_init *arg0) {
    struct unk_struct_0800757c *temp;

    if (arg0->id < 0) {
        return TASK_FAILED_TO_START;
    }

    temp = mem_heap_alloc(sizeof(struct unk_struct_0800757c));
    temp->id = arg0->id;
    temp->destXPos = arg0->destX;
    temp->destYPos = arg0->destY;
    temp->xOffset = INT_TO_FIXED(arg0->startX - arg0->destX);
    temp->yOffset = INT_TO_FIXED(arg0->startY - arg0->destY);
    temp->multiplier = arg0->multiplier;

    func_0804d5d4(D_03005380, arg0->id, arg0->startX, arg0->startY);
    return temp;
}

// D_08936bb4 function 2
u32 func_080075e4(struct unk_struct_0800757c *arg0) {
    s32 newXOffset = arg0->xOffset;
    s32 newYOffset = arg0->yOffset;

    newXOffset = ABS(newXOffset);
    newYOffset = ABS(newYOffset);
    
    newXOffset = FIXED_POINT_MUL(newXOffset, arg0->multiplier);
    newYOffset = FIXED_POINT_MUL(newYOffset, arg0->multiplier);

    if (newXOffset < INT_TO_FIXED(1)) newXOffset = 0;
    if (newYOffset < INT_TO_FIXED(1)) newYOffset = 0;

    if (arg0->xOffset < 0) newXOffset = -newXOffset;
    if (arg0->yOffset < 0) newYOffset = -newYOffset;

    arg0->xOffset = newXOffset;
    arg0->yOffset = newYOffset;

    func_0804d5d4(D_03005380, arg0->id, FIXED_TO_INT(newXOffset) + arg0->destXPos, FIXED_TO_INT(newYOffset) + arg0->destYPos);

    if ((newXOffset | newYOffset) == 0) {
       return TRUE;
    }
    return FALSE;
}

// Accelerate towards a point
// D_08936bc4 function 1
struct unk_struct_0800765c *func_0800765c(struct unk_struct_0800765c_init *arg0) {
    struct unk_struct_0800765c *temp;

    if (arg0->id < 0) {
        return TASK_FAILED_TO_START;
    }

    temp = mem_heap_alloc(sizeof(struct unk_struct_0800765c));
    temp->id = arg0->id;
    temp->startXPos = arg0->startX;
    temp->startYPos = arg0->startY;
    temp->dx = arg0->destX - arg0->startX;
    temp->dy = arg0->destY - arg0->startY;
    temp->distanceTravelled = 0;
    temp->totalDistance = D_03004ae4(temp->dx * temp->dx + temp->dy * temp->dy) << 8;
    temp->vel = arg0->vel;
    temp->accel = arg0->accel;

    func_0804d5d4(D_03005380, arg0->id, arg0->startX, arg0->startY);
    return temp;
}

// D_08936bc4 function 2
u32 func_080076ec(struct unk_struct_0800765c *arg0) {
    u32 reachedEnd;
    u16 xPos, yPos;
    s32 distTravelled, totalDist;

    arg0->distanceTravelled += arg0->vel;
    arg0->vel += arg0->accel;

    if (arg0->vel < 0 && arg0->accel < 0) {
        return TRUE;
    }

    distTravelled = arg0->distanceTravelled;
    totalDist = arg0->totalDistance;
    reachedEnd = FALSE;

    if (distTravelled >= totalDist) {
        distTravelled = totalDist;
        reachedEnd = TRUE;
    }

    if (reachedEnd) {
        xPos = arg0->startXPos + arg0->dx;
        yPos = arg0->startYPos + arg0->dy;
    } else {
        xPos = arg0->startXPos + lerp(0, arg0->dx, distTravelled, totalDist);
        yPos = arg0->startYPos + lerp(0, arg0->dy, distTravelled, totalDist);
    }

    func_0804d5d4(D_03005380, arg0->id, xPos, yPos);
    return reachedEnd;
}

// Travel linearly to a point over a specified number of frames
// D_08936bd4 function 1
struct unk_struct_08007788 *func_08007788(struct unk_struct_08007788_init *arg0) {
    struct unk_struct_08007788 *temp;

    if (arg0->id < 0) {
        return TASK_FAILED_TO_START;
    }

    temp = mem_heap_alloc(sizeof(struct unk_struct_08007788));
    temp->id = arg0->id;
    temp->startXPos = arg0->startX;
    temp->startYPos = arg0->startY;
    temp->dx = arg0->destX - arg0->startX;
    temp->dy = arg0->destY - arg0->startY;
    temp->totalFrames = arg0->totalFrames;
    temp->framesPassed = 0;

    func_0804d5d4(D_03005380, arg0->id, arg0->startX, arg0->startY);
    return temp;
}

// D_08936bd4 function 2
u32 func_080077e8(struct unk_struct_08007788 *arg0) {
    s32 totalFrames = arg0->totalFrames;
    
    u32 reachedEnd = (++arg0->framesPassed >= totalFrames);
    
    s32 framesPassed = arg0->framesPassed;
    
    u16 xPos = arg0->startXPos + lerp(0, arg0->dx, framesPassed, totalFrames);
    u16 yPos = arg0->startYPos + lerp(0, arg0->dy, framesPassed, totalFrames);

    func_0804d5d4(D_03005380, arg0->id, xPos, yPos);
    return reachedEnd;
}

// Sinusoidal movement
// D_08936be4 function 2
u32 func_08007854(struct unk_struct_080078ec *task) {
    u8 wavePos = lerp(task->waveStart, task->waveEnd, task->framesPassed, task->totalFrames);

    s32 offset = task->baseOffset + FIXED_TO_INT(task->amplitude * sins2(wavePos));
    
    u16 xPos = FIXED_TO_INT(offset * coss2(task->angle)) + task->baseXPos;
    u16 yPos = FIXED_TO_INT(offset * sins2(task->angle)) + task->baseYPos;

    func_0804d5d4(D_03005380, task->sprite, xPos, yPos);

    return (++task->framesPassed > task->totalFrames);
}

// D_08936be4 function 1
struct unk_struct_080078ec *func_080078ec(struct unk_struct_080078ec_init *inputs) {
    struct unk_struct_080078ec *task;

    if (inputs->sprite < 0) {
        return TASK_FAILED_TO_START;
    }

    task = mem_heap_alloc(sizeof(struct unk_struct_080078ec));
    task->sprite = inputs->sprite;
    task->baseXPos = inputs->baseX;
    task->baseYPos = inputs->baseY;
    task->baseOffset = inputs->baseOffset;
    task->amplitude = inputs->amplitude;
    task->waveStart = inputs->waveStart;
    task->waveEnd = inputs->waveEnd;
    task->framesPassed = 0;
    task->totalFrames = inputs->totalFrames;
    task->angle = inputs->angle;

    func_08007854(task);
    return task;
}

// D_08936bf4 function 2
u32 func_0800793c(struct unk_struct_080079bc *task) {
    s32 temp_r5 = lerp(task->unkA, task->unkC, task->framesPassed, task->totalFrames);

    u16 xPos = task->startXPos + FIXED_TO_INT(task->dx * func_080019a4(temp_r5));
    u16 yPos = task->startYPos + FIXED_TO_INT(task->dy * func_080019a4(temp_r5));

    func_0804d5d4(D_03005380, task->sprite, xPos, yPos);

    return (++task->framesPassed > task->totalFrames);
}

// D_08936bf4 function 1
struct unk_struct_080079bc *func_080079bc(struct unk_struct_080079bc_init *inputs) {
    struct unk_struct_080079bc *task;

    if (inputs->sprite < 0) {
        return TASK_FAILED_TO_START;
    }

    task = mem_heap_alloc(sizeof(struct unk_struct_080079bc));
    task->sprite = inputs->sprite;
    task->startXPos = inputs->startX;
    task->startYPos = inputs->startY;
    task->dx = inputs->destX - inputs->startX;
    task->dy = inputs->destY - inputs->startY;
    task->unkA = inputs->unkA * 16;
    task->unkC = inputs->unkC * 16;
    task->framesPassed = 0;
    task->totalFrames = inputs->totalFrames;

    func_0800793c(task);
    return task;
}

// Linear movement with a vertical negative sine wave offset
// D_08936c04 function 2
u32 func_08007a14(struct unk_struct_08007aa0 *arg0) {
    s32 totalFrames = arg0->totalFrames;
    
    u32 reachedEnd = (++arg0->framesPassed >= totalFrames);
    
    s32 framesPassed = arg0->framesPassed;
    // Lerp from 0 to pi in terms of sine angle
    s32 temp_r8 = lerp(0, 0x800, framesPassed, totalFrames);
    
    u16 xPos = arg0->startXPos + lerp(0, arg0->dx, framesPassed, totalFrames);
    u16 yPos = arg0->startYPos + lerp(0, arg0->dy, framesPassed, totalFrames) - FIXED_TO_INT(func_080019a4(temp_r8) * arg0->amplitude);

    func_0804d5d4(D_03005380, arg0->id, xPos, yPos);
    return reachedEnd;
}

// D_08936c04 function 1
struct unk_struct_08007aa0 *func_08007aa0(struct unk_struct_08007aa0_init *arg0) {
    struct unk_struct_08007aa0 *temp;

    if (arg0->id < 0) {
        return TASK_FAILED_TO_START;
    }

    temp = mem_heap_alloc(sizeof(struct unk_struct_08007aa0));
    temp->id = arg0->id;
    temp->startXPos = arg0->startX;
    temp->startYPos = arg0->startY;
    temp->dx = arg0->destX - arg0->startX;
    temp->dy = arg0->destY - arg0->startY;
    temp->amplitude = arg0->amplitude;
    temp->framesPassed = 0;
    temp->totalFrames = arg0->totalFrames;

    func_0804d5d4(D_03005380, temp->id, temp->startXPos, temp->startYPos);
    return temp;
}


// Delete Text Generated by BitmapFontOBJ
void delete_bmp_font_obj_text_anim(struct BitmapFontOBJ *bmpFontOBJ, s16 sprite) {
    if (sprite < 0) {
        return;
    }

    bmp_font_obj_delete_printed_anim(bmpFontOBJ, (struct Animation *)func_0804ddb0(D_03005380, sprite, 7));
}


// Delete Text and Sprite Generated by BitmapFontOBJ
void delete_bmp_font_obj_text_sprite(struct BitmapFontOBJ *bmpFontOBJ, s16 sprite) {
    delete_bmp_font_obj_text_anim(bmpFontOBJ, sprite);
    func_0804d504(D_03005380, sprite);
}


#define FAST_UDIVSI3_SIZE ((u32)&fast_udivsi3_rom_end - (u32)fast_udivsi3_rom)

extern u32 fast_udivsi3_rom();
extern void *fast_udivsi3_rom_end;
extern u32 (*fast_udivsi3)(u32 dividend, u32 divisor);

static s32 fast_udivsi3_code[136];


// Init.
void init_fast_udivsi3(void) {
    DmaCopy32(3, fast_udivsi3_rom, fast_udivsi3_code, FAST_UDIVSI3_SIZE);
    fast_udivsi3 = (void *)fast_udivsi3_code;
}


// Divides two signed integers using a fast algorithm contained in IWRAM.
// Much quicker than the versions contained in libc and libagbsyscall.
s32 fast_divsi3(s32 dividend, s32 divisor) {
    u32 quotient;
    u32 isNegative = FALSE;

    if (dividend & 0x80000000) {
        dividend = -dividend;
        isNegative = TRUE;
    }

    if (divisor & 0x80000000) {
        divisor = -divisor;
        isNegative ^= TRUE;
    }

    quotient = fast_udivsi3(dividend, divisor);
    return isNegative ? -quotient : quotient;
}


// D_08936c14 function 1
#include "asm/code_08007468/asm_08007bb8.s"

// D_08936c14 function 2
#include "asm/code_08007468/asm_08007c30.s"

// D_08936c24 function 1
#include "asm/code_08007468/asm_08007ca8.s"

// D_08936c24 function 2
#include "asm/code_08007468/asm_08007d20.s"

// D_08936c34 function 1
#include "asm/code_08007468/asm_08007d88.s"

// D_08936c34 function 2
#include "asm/code_08007468/asm_08007e00.s"

#include "asm/code_08007468/asm_08007e68.s"

// D_08936c44 function 1
#include "asm/code_08007468/asm_08007e7c.s"

// D_08936c44 function 2
#include "asm/code_08007468/asm_08007ef8.s"


// Initialise LCD Special Effects Interpolator
struct BlendControlsInterpolator *init_lcd_blend_mode_interpolator(struct BlendControlsInterpolator *inputs) {
    struct BlendControlsInterpolator *task;
    u32 tgtLevel, srcLevel;

    task = mem_heap_alloc(sizeof(struct BlendControlsInterpolator));
    task->blendControls = inputs->blendControls;
    task->duration = inputs->duration;
    task->runningTime = 0;
    task->flip = inputs->flip;

    tgtLevel = 0x10 * (inputs->flip != 0);
    srcLevel = 0x10 - tgtLevel;
    switch (task->blendControls & BLDMOD_BLEND_MODE_MASK) {
        case (BLEND_MODE_OFF * 0x40):
        case (BLEND_MODE_ALPHA * 0x40):
            D_03004b10.COLEV = (srcLevel | (tgtLevel << 8));
            break;

        case (BLEND_MODE_LIGHTEN * 0x40):
        case (BLEND_MODE_DARKEN * 0x40):
            D_03004b10.COLEY = tgtLevel;
            break;
    }

    D_03004b10.BLDMOD = task->blendControls;
    return task;
}


// Update LCD Special Effects Interpolator
u32 update_lcd_blend_mode_interpolator(struct BlendControlsInterpolator *task) {
    u32 tgtLevel, srcLevel;

    task->runningTime++;
    tgtLevel = Div(task->runningTime * 0x10, task->duration);

    if (task->flip) {
        srcLevel = tgtLevel;
        tgtLevel = 0x10 - tgtLevel;
    } else {
        srcLevel = 0x10 - tgtLevel;
    }

    switch (task->blendControls & BLDMOD_BLEND_MODE_MASK) {
        case (BLEND_MODE_OFF * 0x40):
        case (BLEND_MODE_ALPHA * 0x40):
            D_03004b10.COLEV = (srcLevel | (tgtLevel << 8));
            break;

        case (BLEND_MODE_LIGHTEN * 0x40):
        case (BLEND_MODE_DARKEN * 0x40):
            D_03004b10.COLEY = tgtLevel;
            break;
    }

    if (task->runningTime < task->duration) {
        return FALSE;
    } else {
        return TRUE;
    }
}


// Interpolate LCD Special Effects
s32 interpolate_lcd_blend_mode(u16 memID, u32 blendControls, u32 duration, u32 flip) {
    struct BlendControlsInterpolator inputs;

    inputs.blendControls = blendControls;
    inputs.duration = duration;
    inputs.flip = flip;

    return start_new_task(memID, &D_08936c54, &inputs, NULL, 0);
}


#include "asm/code_08007468/asm_08008090.s"



extern char D_08936c64[]; // "‚O‚P‚Q‚R‚S‚T‚U‚V‚W‚X"


// Copy Substring
char *strncpy(char *s1, const char *s2, u32 len) {
    char *s = s1;
    u32 i;

    for (i = 0; (*s2 != '\0') && (i < len); i++) {
        *s1++ = *s2++;
    }

    return s;
}


// Concatenate String
char *strcat(char *s1, const char *s2) {
    char *s = s1;

    while (*s1 != '\0') {
        s1++;
    }

    while (*s2 != '\0') {
        *s1++ = *s2++;
    }

    *s1 = '\0';
    return s;
}


// Concatenate Substring
char *strncat(char *s1, const char *s2, u32 len) {
    char *s = s1;
    u32 i;

    while (*s1 != '\0') {
        s1++;
    }

    for (i = 0; (*s2 != '\0') && (i < len); i++) {
        *s1++ = *s2++;
    }

    *s1 = '\0';

    return s;
}


// Compare Strings
s32 strncmp(const char *s1, const char *s2, u32 len) {
    u32 i;

    for (i = 0; ((*s1 != '\0') || (*s2 != '\0')) && (i < len); i++) {
        if (*s1 != *s2) {
            return (*s1 > *s2) ? 1 : -1;
        }

        s1++;
        s2++;
    }

    return 0;
}


// Integer to String (Halfwidth)
void strint(char *s, u32 n) {
    u32 len = 1;
    u32 d, i;

    for (d = 10; d <= n; d *= 10) {
        len++;
    }

    s += len;
    *s = '\0';

    for (i = 0; i < len; i++) {
        *(--s) = '0' + (n % 10);
        n /= 10;
    }
}


// Integer to String (Halfwidth)
void strnint(char *s, u32 n, u32 len) {
    u32 i;

    s += len;
    *s = '\0';

    for (i = 0; i < len; i++) {
        *(--s) = '0' + (n % 10);
        n /= 10;
    }
}


// Integer to String (Fullwidth)
void strintf(char *s, u32 n) {
    u32 len = 1;
    u32 d, i;

    for (d = n; d > 9; d /= 10) {
        len++;
    }

    s += (len * 2);
    *s = '\0';

    for (i = 0; i < len; i++) {
        char *c = &D_08936c64[(n % 10) * 2];

        s -= 2;
        s[0] = c[0];
        s[1] = c[1];
        n /= 10;
    }
}


// Integer to String (Fullwidth)
void strnintf(char *s, u32 n, u32 len) {
    u32 i;

    s += (len * 2);
    *s = '\0';

    for (i = 0; i < len; i++) {
        char *c = &D_08936c64[(n % 10) * 2];

        s -= 2;
        s[0] = c[0];
        s[1] = c[1];
        n /= 10;
    }
}



#include "asm/code_08007468/asm_08008370.s"

// D_08936c7c function 1
#include "asm/code_08007468/asm_08008420.s"

// D_08936c7c function 2
#include "asm/code_08007468/asm_08008464.s"

// D_08936c8c function 1
#include "asm/code_08007468/asm_0800852c.s"

// D_08936c8c function 2
#include "asm/code_08007468/asm_08008548.s"

#include "asm/code_08007468/asm_0800856c.s"



static s32 D_030010d0[9]; // unknown type

#include "asm/code_08007468/asm_08008594.s"

#include "asm/code_08007468/asm_080085e4.s"

#include "asm/code_08007468/asm_08008608.s"

#include "asm/code_08007468/asm_0800861c.s"

#include "asm/code_08007468/asm_08008628.s"

#include "asm/code_08007468/asm_08008658.s"

#include "asm/code_08007468/asm_0800869c.s"

#include "asm/code_08007468/asm_080086c4.s"

#include "asm/code_08007468/asm_08008720.s"

// D_08936c9c function 1
#include "asm/code_08007468/asm_0800873c.s"

// D_08936c9c function 2
#include "asm/code_08007468/asm_08008758.s"

#include "asm/code_08007468/asm_080087b4.s"


// Clamp Signed Integer
s32 clamp_int32(s32 var, s32 min, s32 max) {
    if (var < min) {
        return min;
    }
    if (var > max) {
        return max;
    }
    return var;
}


#include "asm/code_08007468/asm_080087e8.s"

#include "asm/code_08007468/asm_08008910.s"

#include "asm/code_08007468/asm_08008938.s"

#include "asm/code_08007468/asm_08008968.s"

#include "asm/code_08007468/asm_08008990.s"

#include "asm/code_08007468/asm_080089c0.s"

#include "asm/code_08007468/asm_08008a70.s"

#include "asm/code_08007468/asm_08008ab8.s"

void func_08008b00(u32 unused_arg0, u32 unused_arg1, s16 arg2, s24_8 arg3, s24_8 arg4,
    s16 arg5, s24_8 arg6, s24_8 arg7, u16 arg8,
    struct unk_struct_08008b00 *arg9, u32 arg10, u32 arg11) {

    s24_8 temp_sp0, temp_sp4, temp_r9, temp_r8;
    s32 ret_r5, ret_sp8;
    s24_8 temp_r7, ret_spc, ret_sp10;
    s32 ret_sp14;
    s24_8 temp_sp18, temp_sp1c, temp_sp20;
    s32 i;
    s24_8 temp_8000 = INT_TO_FIXED(128);

    temp_sp0 = arg11 ? sins(arg5) : sins2(arg5);
    temp_sp4 = arg11 ? coss(arg5) : coss2(arg5);

    temp_r9 = arg11 ? sins(-arg2) : sins2(-arg2);
    temp_r8 = arg11 ? coss(-arg2) : coss2(-arg2);

    ret_r5 = fast_divsi3(160 * 256, arg8);
    ret_sp14 = fast_divsi3(160 * 256, arg8);
    ret_sp8 = fast_divsi3(ret_r5 * 240, 160);

    temp_r7 = INT_TO_FIXED(-ret_r5) >> 1;

    ret_spc = fast_divsi3(INT_TO_FIXED(ret_r5), 160);
    temp_r7 += fast_divsi3(ret_r5 * arg7, 160);
    arg3 += fast_divsi3(ret_r5 * arg6, 160);
    ret_sp10 = fast_divsi3(INT_TO_FIXED(ret_r5), 160);

    temp_sp18 = ret_sp14 * temp_sp0;

    temp_sp1c = arg3 - temp_8000;
    temp_sp20 = arg4 - temp_8000;

    for (i = 0; i < 160; i++) {
        s24_8 temp_r1;
        s32 temp_r5_2 = FALSE;
        if (temp_sp0 != 0) {
            temp_r1 = FIXED_POINT_MUL(temp_r7, temp_sp4) - temp_sp18;
            if (temp_r1 == 0) {
                temp_r5_2 = TRUE;
            }
        }
        if ((temp_sp0 == 0) || temp_r5_2) {
            arg9->unk8 = -1;
            arg9->unkC = -1;
            arg9->unk6 = 0;
            arg9->unk4 = 0;
            arg9->unk2 = 0;
            arg9->unk0 = 0;
        } else {
            s24_8 m_r4, m_r3, m_r2;
            temp_r1 = fast_divsi3(INT_TO_FIXED(ret_sp14) << 8, temp_r1); // fixed point division
            m_r4 = FIXED_POINT_MUL(-temp_r1, temp_sp0);

            m_r3 = temp_sp1c - (ret_sp8 >> 1) * m_r4;
            m_r2 = temp_sp20 + FIXED_POINT_MUL(temp_r1, temp_r7);

            arg9->unk8 = ((temp_r8 * m_r3 - temp_r9 * m_r2) >> 8) + temp_8000; // doesn't work with the macros
            arg9->unkC = ((temp_r9 * m_r3 + temp_r8 * m_r2) >> 8) + temp_8000;
            
            m_r4 *= ret_sp10;
            arg9->unk0 = FIXED_POINT_MUL(temp_r8, m_r4) >> 0x8;
            arg9->unk2 = 0;
            arg9->unk4 = FIXED_POINT_MUL(temp_r9, m_r4) >> 0x8;
            arg9->unk6 = 0;
        }
        temp_r7 += ret_spc;
        arg9 += arg10;
    }
}

void func_08008d44(u32 unused_arg0, u32 unused_arg1, s16 arg2, s24_8 arg3, s24_8 arg4, s16 arg5, s24_8 arg6, s24_8 arg7, u16 arg8, struct unk_struct_08008b00 *arg9, u32 arg10) {
    func_08008b00(unused_arg0, unused_arg1, arg2, arg3, arg4, arg5 - 0x200, arg6, arg7, arg8, arg9, arg10, 0);
}

void func_08008d88(u32 unused_arg0, u32 unused_arg1, s16 arg2, s24_8 arg3, s24_8 arg4, s16 arg5, s24_8 arg6, s24_8 arg7, u16 arg8, struct unk_struct_08008b00 *arg9, u32 arg10) {
    func_08008b00(unused_arg0, unused_arg1, arg2, arg3, arg4, arg5 - 0x200, arg6, arg7, arg8, arg9, arg10, 1);
}
