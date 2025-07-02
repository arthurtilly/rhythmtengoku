#include "code_08003b28.h"
#include "code_08001360.h"
#include "memory_heap.h"
#include "src/lib_0804ca80.h"


/* COMPRESSED BG MAP */


// VARIABLES
static s32 D_030005c8[96]; // ARM Function (func_08000a00)


// Init. Animator
void bg_anim_init(struct BgAnimator *animator) {
    animator->active = FALSE;
}


// Write BG to VRAM
void bg_anim_write_to_vram(struct BgAnimator *animator) {
    if (!animator->active) {
        return;
    }

    if (animator->writePending) {
        switch (animator->writeFormat) {
            // Uncompressed
            case BG_ANIM_WRITE_RAW:
                dma3_set((u16 *)animator->srcBG, animator->destBG, animator->size, 0x20, 0x100);
                break;

            // Compressed (RLE)
            case BG_ANIM_WRITE_COMP:
                func_08003eb8((struct CompressedData *)animator->srcBG, animator->destBG);
                break;

            // Uncompressed, with Specified XY Offset
            case BG_ANIM_WRITE_COMP_W_OFFSET:
                func_08003e00(animator->copiedBG, animator->srcWidth + 1, animator->srcHeight + 1, animator->destBG, animator->targetX, animator->targetY, animator->destWidth + 1);
                break;
        }

        animator->writePending = FALSE;
    }

    if (animator->scriptEnded) {
        animator->active = FALSE;
    }
}


// Play Animation
void bg_anim_play(struct BgAnimator *animator, BgMapAnim *data, s24_8 frameTime, u16 *dest, u32 size) {
    animator->active = TRUE;
    animator->writePending = FALSE;
    animator->paused = FALSE;
    animator->framesRead = -1;
    animator->scriptStart = data;
    animator->scriptCurrent = data;
    animator->clockPos = 0;
    animator->frameTime = frameTime;
    animator->destBG = dest;
    animator->size = size;
    animator->funcArg = 0;
    animator->clockSpeed = INT_TO_FIXED(1.0);
    animator->scriptEnded = FALSE;
}


// Set Function Call Argument
void bg_anim_set_func_arg(struct BgAnimator *animator, s32 arg) {
    animator->funcArg = arg;
}


// Update Script Reading
void bg_anim_update_script(struct BgAnimator *animator) {
    struct CompressedData *compBg;
    u32 offsetBgPos;
    u32 readStopped;
    u32 event;
    u32 value;

    if (!animator->active) {
        return;
    }

    if (animator->paused) {
        return;
    }

    if (animator->scriptEnded) {
        return;
    }

    offsetBgPos = FALSE;
    readStopped = FALSE;

    while ((animator->clockPos < animator->clockSpeed) && !readStopped) {
        BgMapAnim line = *animator->scriptCurrent++;
        event = line >> 28;
        value = line & 0x0FFFFFFF;

        switch (event) {
            case BG_ANIM_EV_WRITE_RAW:
                switch (value) {
                    case 0:
                        break;
                    case 1:
                        readStopped = TRUE;
                        break;
                    default:
                        animator->writePending = TRUE;
                        animator->srcBG = (void *)value;
                        animator->writeFormat = BG_ANIM_WRITE_RAW;
                        animator->framesRead++;
                        offsetBgPos = FALSE;
                        break;
                }
                animator->clockPos += animator->frameTime;
                break;

            case BG_ANIM_EV_GOTO:
                animator->scriptStart = animator->scriptCurrent = (void *)value;
                animator->framesRead = -1;
                break;

            case BG_ANIM_EV_CALL_FUNC:
                ((BgMapFunc)value)(animator->funcArg);
                break;

            case BG_ANIM_EV_SET_FUNC_ARG:
                animator->funcArg = value;
                break;

            case BG_ANIM_EV_SET_DELAY:
                animator->frameTime = value;
                break;

            case BG_ANIM_EV_STOP:
                animator->scriptEnded = TRUE;
                return;

            case BG_ANIM_EV_WRITE_COMP:
                animator->writePending = TRUE;
                animator->srcBG = (void *)value;
                animator->writeFormat = BG_ANIM_WRITE_COMP;
                animator->framesRead++;
                animator->clockPos += animator->frameTime;
                offsetBgPos = FALSE;
                break;

            case BG_ANIM_EV_SET_DEST:
                animator->destBG = (void *)value;
                break;

            case BG_ANIM_EV_SET_OFS:
                animator->targetX = value & 0x1F;
                animator->targetY = (value >> 5) & 0x1F;
                animator->srcWidth = (value >> 10) & 0x1F;
                animator->srcHeight = (value >> 15) & 0x1F;
                animator->destWidth = (value >> 20) & 0x1F;
                break;

            case BG_ANIM_EV_WRITE_OFS_COMP:
                animator->writePending = TRUE;
                animator->writeFormat = BG_ANIM_WRITE_COMP_W_OFFSET;
                animator->framesRead++;
                animator->clockPos += animator->frameTime;
                offsetBgPos = TRUE;
                compBg = (struct CompressedData *)value;
                break;
        }
    }

    if (offsetBgPos) {
        func_08003eb8(compBg, animator->copiedBG);
    }

    animator->clockPos -= animator->clockSpeed;
}


// Stop Animation
void bg_anim_stop(struct BgAnimator *animator) {
    animator->active = FALSE;
}


// Pause/Unpause Animation
void bg_anim_set_pause(struct BgAnimator *animator, u32 paused) {
    animator->paused = paused;
}


// Insert BG Map in Specific XY Position?
void func_08003e00(const u16 *srcData, u32 srcWidth, u32 srcHeight, u16 *destData, u32 targetX, u32 targetY, u32 destWidth) {
    u32 i;

    destData += ((targetX + (targetY * destWidth)) * 0x10);

    for (i = 0; i < srcHeight; i++) {
        dma3_set(srcData, destData, (srcWidth * 0x10) * 2, 0x20, 0x100);
        srcData += (srcWidth * 0x10);
        destData += (destWidth * 0x10);
    }
}


extern s32 (*D_03004af0)(const u16 *src, u16 *dest, const u8 *rleData, u32 sizeData);
extern u8 D_030053b0;

extern void *func_08000a00;
extern void *func_08000a00_end;

// Load RLE Decompression Function to RAM
void func_08003e64(void) {
    dma3_set(&func_08000a00, D_030005c8, (uintptr_t)&func_08000a00_end - (uintptr_t)&func_08000a00, 16, 0x100);
    D_03004af0 = (s32 (*)(const u16 *, u16 *, const u8 *, u32))D_030005c8;
    D_030053b0 = FALSE;
}

s32 func_08003ea4(void) {
   return ((s32 (*)(u32))D_03004af0)(0);
}

s32 func_08003eb8(struct CompressedData *src, u16 *dest) {
    struct CompressedData *temp_r1;
    const u16 *temp_r5;
    s32 retval;

    temp_r1 = func_0800869c(src);
    src = temp_r1;
    temp_r5 = temp_r1->data;

    if (temp_r1->doubleCompressed) {
        const u16 *temp = temp_r5;
        temp_r5 = (dest + temp_r1->rleOffset) - ((struct CompressedGFX *)temp_r5)->size;
        func_08008608(temp, temp_r5);
    }
    
    retval = D_03004af0(temp_r5, dest, src->rleData, (src->rleSize << 0x10) | 0x8000);
    while (D_030053b0) {
        retval += ((s32 (*)(u32))D_03004af0)(0);
    }
    return retval;
}
