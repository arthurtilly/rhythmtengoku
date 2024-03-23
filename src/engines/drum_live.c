#include "engines/drum_live.h"
#include "src/scenes/gameplay.h"
#include "src/scenes/results.h"

// For readability.
#define gDrumLive ((struct DrumLiveEngineData *)gCurrentEngineData)
#define CROWD_BG_MAP_BASE (void *)(VRAMBase + 0xE000)

static u8 sDrumLiveResult; // Results Rank


/* DRUM LIVE */


// Get Animation
struct Animation *drum_live_get_anim(u32 anim) {
    return drum_live_anim_table[anim][gDrumLive->version];
}


// Init. Lighting
void drum_live_init_lighting(void) {
    u32 i;

    gDrumLive->nextFlashType = -1;

    for (i = 0; i < DRUM_LIVE_TOTAL_LIGHTS; i++) {
        gDrumLive->flashTypeCooldown[i] = 0;
    }

    gDrumLive->currentLightStyle = 0;
    gDrumLive->timeUntilNextLightStyle = 0;
    dma3_set(drum_live_obj_palettes[gDrumLive->version][0], gDrumLive->objPalBuf1, 0x80, 0x20, 0x200);
    dma3_set(drum_live_bg_palettes[gDrumLive->version][0], gDrumLive->bgPalBuf1, 0x80, 0x20, 0x200);
    dma3_set(drum_live_obj_palettes[gDrumLive->version][0], gDrumLive->objPalBuf3, 0x80, 0x20, 0x200);
    dma3_set(drum_live_bg_palettes[gDrumLive->version][0], gDrumLive->bgPalBuf3, 0x80, 0x20, 0x200);
    dma3_set(drum_live_obj_palettes[gDrumLive->version][0], gDrumLive->objPalBuf4, 0x80, 0x20, 0x200);
    dma3_set(drum_live_bg_palettes[gDrumLive->version][0], gDrumLive->bgPalBuf4, 0x80, 0x20, 0x200);
    blend_col_to_pal(0x08, 4, 0x294A, drum_live_obj_palettes[gDrumLive->version][0], gDrumLive->objPalBuf2);
    blend_col_to_pal(0x08, 4, 0x7FFF, drum_live_bg_palettes[gDrumLive->version][0], gDrumLive->bgPalBuf2);

    gDrumLive->totalActiveLights = 0;

    for (i = 0; i < DRUM_LIVE_TOTAL_LIGHTS; i++) {
        gDrumLive->lightFlashes[i] = sprite_create(gSpriteHandler, drum_live_get_anim(LIVE_ANIM_LIGHT_FLASH), 0, 12 + (i * 72), 21, 0x700, 1, 0, 0x8002);
        sprite_attr_set(gSpriteHandler, gDrumLive->lightFlashes[i], 0x04);
    }

    gDrumLive->nextLightFlash = 2;
    D_03004b10.BLDMOD = 0x02BF;
    D_03004b10.COLEY = 0;
    D_03004b10.COLEV = 0x1008;
    gDrumLive->brightnessLevel = INT_TO_FIXED(0.0);
    gDrumLive->brightnessInc = INT_TO_FIXED(-0.5);
}


// Update Lighting
void drum_live_update_lighting(void) {
    u32 i;

    for (i = 0; i < DRUM_LIVE_TOTAL_LIGHTS; i++) {
        if (gDrumLive->flashTypeCooldown[i] != 0) {
            gDrumLive->flashTypeCooldown[i]--;
        }
    }

    if (gDrumLive->totalActiveLights == 0) {
        dma3_set(gDrumLive->bgPalBuf1, D_03004b10.bgPalette, 0x80, 0x20, 0x200);
        dma3_set(gDrumLive->objPalBuf1, D_03004b10.objPalette, 0x80, 0x20, 0x200);
    }

    if (gDrumLive->timeUntilNextLightStyle != 0) {
        if (--gDrumLive->timeUntilNextLightStyle == 0) {
            gDrumLive->currentLightStyle = gDrumLive->nextLightStyle;
        }
    }

    gDrumLive->brightnessLevel = clamp_int32(gDrumLive->brightnessLevel + gDrumLive->brightnessInc, 0, INT_TO_FIXED(16.0));
    D_03004b10.COLEY = FIXED_TO_INT(gDrumLive->brightnessLevel);
}


// Light Callback Function
void drum_live_light_flash_callback(void) {
    func_0800c604(0);
    gDrumLive->totalActiveLights--;
}


// Play Applause
void drum_live_play_applause(void) {
    struct SoundPlayer *soundPlayer;
    u32 crowd = clamp_int32(FIXED_TO_INT(gDrumLive->excitementFactor), 0, 4);

    switch (crowd) {
        case 0:
            break;
        case 1:
            soundPlayer = play_sound_in_player_w_pitch_volume(1, &s_hakushu_solo_seqData, 0x50, 0);
            set_soundplayer_speed(soundPlayer, INT_TO_FIXED(1.0));
            break;
        case 2:
            soundPlayer = play_sound_in_player_w_pitch_volume(1, &s_warai_little_seqData, 0x50, 0);
            set_soundplayer_speed(soundPlayer, INT_TO_FIXED(1.0));
            break;
        case 3:
            soundPlayer = play_sound_in_player_w_pitch_volume(1, &s_kansei_solo_seqData, 0x50, 0);
            set_soundplayer_speed(soundPlayer, INT_TO_FIXED(0.75));
            break;
        case 4:
            soundPlayer = play_sound_in_player_w_pitch_volume(1, &s_kansei_seqData, 0x60, 0);
            set_soundplayer_speed(soundPlayer, INT_TO_FIXED(0.5));
            break;
    }
}


// On-Hit Light Flash and Crowd Cheer
void drum_live_flash_big_lights(s32 flashType) {
    s32 task;
    s16 sprite;
    u32 i;

    if ((flashType < 0) || (gDrumLive->flashTypeCooldown[flashType] != 0)) {
        return;
    }

    gDrumLive->flashTypeCooldown[flashType] = 10;

    switch (flashType) {
        case 0:
            gDrumLive->totalActiveLights++;
            palette_fade_to(get_current_mem_id(), ticks_to_frames(72), 4, gDrumLive->objPalBuf2, gDrumLive->objPalBuf1, D_03004b10.objPalette[0]);
            task = palette_fade_to(get_current_mem_id(), ticks_to_frames(72), 4, gDrumLive->bgPalBuf2, gDrumLive->bgPalBuf1, D_03004b10.bgPalette[0]);
            run_func_after_task(task, drum_live_light_flash_callback, 0);
            drum_live_play_applause();
            break;

        case 1:
            gDrumLive->totalActiveLights++;
            palette_fade_to(get_current_mem_id(), ticks_to_frames(72), 4, gDrumLive->objPalBuf2, gDrumLive->objPalBuf1, D_03004b10.objPalette[0]);
            task = palette_fade_to(get_current_mem_id(), ticks_to_frames(72), 4, gDrumLive->bgPalBuf2, gDrumLive->bgPalBuf1, D_03004b10.bgPalette[0]);
            run_func_after_task(task, drum_live_light_flash_callback, 0);
            drum_live_play_applause();
            break;

        case 2:
            drum_live_play_applause();
            break;

        case 3:
            gDrumLive->brightnessInc = -0x30;
            gDrumLive->brightnessLevel = INT_TO_FIXED(5.0);
            sprite = gDrumLive->lightFlashes[gDrumLive->nextLightFlash];
            sprite_set_visible(gSpriteHandler, sprite, TRUE);
            sprite_set_anim_cel(gSpriteHandler, sprite, 0);
            gDrumLive->nextLightFlash = (gDrumLive->nextLightFlash + 1) & 3;
            break;
    }
}


// Engine Event 0x05 (Set Next Flash Type)
void drum_live_set_next_flash_type(s32 flashType) {
    gDrumLive->nextFlashType = flashType;
}


// Bitwise AND Palette (Unused)
void drum_live_and_palette(const u16 *src, u16 *dest, u32 totalPal, u32 maskIndex) {
    u16 mask;
    u32 i;

    mask = drum_live_color_masks[maskIndex];
    totalPal *= 2;

    for (i = 0; i < totalPal; i++) {
        dest[0] = src[0] & mask;
        dest[1] = src[1] & mask;
        dest[2] = src[2] & mask;
        dest[3] = src[3] & mask;
        dest[4] = src[4] & mask;
        dest[5] = src[5] & mask;
        dest[6] = src[6] & mask;
        dest[7] = src[7] & mask;
        dest += 8;
        src += 8;
    }
}


// Multiply Palette
void drum_live_multiply_palette(const u16 *src, u16 *dest, u32 totalPal, u32 brgTargets, u32 mul) {
    u32 blueMul, redMul, greenMul;
    u32 blueVal, redVal, greenVal;
    u32 totalColors;
    u32 i;

    // 'mul' is a 5-bit fixed-point integer.
    blueMul = (brgTargets & 1) ? 0x20 : mul;
    redMul = ((brgTargets >> 1) & 1) ? 0x20 : mul;
    greenMul = ((brgTargets >> 2) & 1) ? 0x20 : mul;
    totalColors = totalPal * 16;

    for (i = 0; i < totalColors; i++) {
        u32 color = *src++;

        blueVal = (color >> 10) & 0x1F;
        redVal = (color >> 0) & 0x1F;
        greenVal = (color >> 5) & 0x1F;
        blueVal = (blueVal * blueMul) >> 5;
        redVal = (redVal * redMul) >> 5;
        greenVal = (greenVal * greenMul) >> 5;

        *dest++ = ((blueVal << 10) | redVal | (greenVal << 5));
    }
}


// Update Rainbow Lighting
void drum_live_update_rainbow_lights(void) {
    u32 brgTargets;

    gDrumLive->nextLightBRG = (gDrumLive->nextLightBRG + 1) & 3;
    brgTargets = drum_live_brg_targets[gDrumLive->nextLightBRG];
    drum_live_multiply_palette(drum_live_obj_palettes[gDrumLive->version][0], gDrumLive->objPalBuf4, 4, brgTargets, 0x12);
    drum_live_multiply_palette(drum_live_bg_palettes[gDrumLive->version][0], gDrumLive->bgPalBuf4, 4, brgTargets, 0x1A);
}


// Lighting Beat Animation
void drum_live_flash_beat_lights(void) {
    dma3_set(gDrumLive->objPalBuf4, gDrumLive->objPalBuf3, 0x80, 0x20, 0x200);
    dma3_set(gDrumLive->bgPalBuf4, gDrumLive->bgPalBuf3, 0x80, 0x20, 0x200);

    switch (gDrumLive->currentLightStyle) {
        case 0:
            dma3_set(drum_live_obj_palettes[gDrumLive->version], gDrumLive->objPalBuf4, 0x80, 0x20, 0x200);
            dma3_set(drum_live_bg_palettes[gDrumLive->version], gDrumLive->bgPalBuf4, 0x80, 0x20, 0x200);
            break;

        case 1:
            drum_live_update_rainbow_lights();
            break;
    }

    blend_pal_to_pal(0x10, 4, gDrumLive->objPalBuf3, gDrumLive->objPalBuf4, gDrumLive->objPalBuf3);
    blend_pal_to_pal(0x10, 4, gDrumLive->bgPalBuf3, gDrumLive->bgPalBuf4, gDrumLive->bgPalBuf3);
    palette_fade_to(get_current_mem_id(), ticks_to_frames(4), 4, gDrumLive->objPalBuf3, gDrumLive->objPalBuf4, gDrumLive->objPalBuf1);
    palette_fade_to(get_current_mem_id(), ticks_to_frames(4), 4, gDrumLive->bgPalBuf3, gDrumLive->bgPalBuf4, gDrumLive->bgPalBuf1);
}


// Engine Event 0x06 (Set Next Light Style)
void drum_live_set_next_beat_light_style(u32 style) {
    gDrumLive->nextLightStyle = style;
    gDrumLive->timeUntilNextLightStyle = ticks_to_frames(20);
}


// Engine Event 0x07 (Play Applause)
void drum_live_script_play_applause(void) {
    drum_live_play_applause();
}


// Clear Cool/Lame Inputs
void drum_live_clear_input_def(void) {
    u32 i;

    for (i = 0; i < DRUM_LIVE_TOTAL_INPUT_DEF; i++) {
        gDrumLive->coolInputs[i] = 0;
        gDrumLive->lameInputs[i] = 0;
    }
}


// Engine Event 0x02 (Clear "Cool"/"Lame" Inputs)
void drum_live_script_clear_input_def(void) {
    drum_live_clear_input_def();
}


// Define "Cool" Inputs
void drum_live_define_cool_inputs(u32 index, u32 keys) {
    gDrumLive->coolInputs[index] = keys;
}


// Define "Lame" Inputs
void drum_live_define_lame_inputs(u32 index, u32 keys) {
    gDrumLive->lameInputs[index] = keys;
}


// Engine Event 0x03 (Define "Cool" Inputs)
void drum_live_script_define_cool_inputs(u32 args) {
    drum_live_define_cool_inputs(args & 0xFF, args >> 8);
}


// Engine Event 0x04 (Define "Lame" Inputs)
void drum_live_script_define_lame_inputs(u32 args) {
    drum_live_define_lame_inputs(args & 0xFF, args >> 8);
}


// Update Excitement for Inputs (Unused)
void drum_live_modify_excitement_old(u32 index, u32 keys) {
    if (gDrumLive->excitementDisabled) {
        return;
    }

    if (gDrumLive->coolInputs[index] & keys) {
        gDrumLive->excitementFactor += gDrumLive->excitementBaseInc;
    }

    if (gDrumLive->lameInputs[index] & keys) {
        gDrumLive->excitementFactor -= gDrumLive->excitementBaseDec;
    }

    gDrumLive->excitementFactor = clamp_int32(gDrumLive->excitementFactor, -0x100, 0x500);
}


// Reset Excitement Factor
void drum_live_reset_excitement(void) {
    gDrumLive->excitementFactor = 0x1E0;
    gDrumLive->excitementBaseInc = 0x10;
    gDrumLive->excitementBaseDec = 0x10;
    gDrumLive->excitementDisabled = FALSE;
    drum_live_clear_input_def();
}


// Engine Event 0x09 (Set Disable Excitement)
void drum_live_set_disable_excitement(u32 disable) {
    gDrumLive->excitementDisabled = disable;
}


// Reset Crowd BG Map and Rank
void drum_live_reset_crowd_and_rank(void) {
    drum_live_set_crowd_and_rank(0);
}


// Set Crowd BG Map and Rank
void drum_live_set_crowd_and_rank(u32 excitement) {
    s32 crowd = clamp_int32(excitement, 0, 4);
    u32 rank;

    bg_anim_play(&gDrumLive->dynamicBgMap, drum_live_crowd_bg_maps[crowd], 1, CROWD_BG_MAP_BASE, 0x800);

    switch (crowd) {
        case 0:
        case 1:
            rank = RESULTS_RANK_TRY_AGAIN;
            break;
        case 2:
        case 3:
            rank = RESULTS_RANK_OK;
            break;
        default:
            rank = RESULTS_RANK_SUPERB;
            break; // fun trivia: removing this break statement causes a massive mismatch
    }

    drum_live_set_result_rank(rank);
}


// Drum Kit Event - D-Pad Up (Snare Roll)
void drum_live_kit_play_roll(void) {
}


// Drum Kit Event - D-Pad Down
void drum_live_kit_play_bass_l(void) {
    struct LiveDrummer *drummer = &gDrumLive->drummer;

    sprite_set_anim_cel(gSpriteHandler, drummer->leftBassDrum, 0);
    sprite_set_anim_cel(gSpriteHandler, drummer->body, 0);
    sprite_set_anim_cel(gSpriteHandler, drummer->head, 0);
}


// Drum Kit Event - B Button
void drum_live_kit_play_bass_r(void) {
    struct LiveDrummer *drummer = &gDrumLive->drummer;

    sprite_set_anim_cel(gSpriteHandler, drummer->rightBassDrum, 0);
    sprite_set_anim_cel(gSpriteHandler, drummer->body, 0);
    sprite_set_anim_cel(gSpriteHandler, drummer->head, 0);
}


// ?
void drum_live_kit_play_stub(void) {
}


// Drum Kit Event - D-Pad Left
void drum_live_kit_play_snare_l(void) {
    struct LiveDrummer *drummer = &gDrumLive->drummer;

    sprite_set_anim(gSpriteHandler, drummer->leftArm, drum_live_get_anim(LIVE_ANIM_DRUMMER_USE_SNARE_L), 0, 1, 0x7F, 0);
    sprite_set_x_y(gSpriteHandler, drummer->leftArm, 120, 70);
    drum_live_offset_sprite_pos(drummer->leftArm, LIVE_PERFORMER_DRUMMER);
    sprite_set_anim_cel(gSpriteHandler, drummer->snareDrum, 0);
}


// Drum Kit Event - A Button
void drum_live_kit_play_snare_r(void) {
    struct LiveDrummer *drummer = &gDrumLive->drummer;

    sprite_set_anim(gSpriteHandler, drummer->rightArm, drum_live_get_anim(LIVE_ANIM_DRUMMER_USE_SNARE_R), 0, 1, 0x7F, 0);
    sprite_set_x_y(gSpriteHandler, drummer->rightArm, 120, 70);
    drum_live_offset_sprite_pos(drummer->rightArm, LIVE_PERFORMER_DRUMMER);
    sprite_set_anim_cel(gSpriteHandler, drummer->snareDrum, 0);
}


// Drum Kit Event - Unused Tom
void drum_live_kit_play_tom_unused(void) {
}


// Drum Kit Event - D-Pad Right
void drum_live_kit_play_tom(void) {
    struct LiveDrummer *drummer = &gDrumLive->drummer;

    sprite_set_anim(gSpriteHandler, drummer->leftArm, drum_live_get_anim(LIVE_ANIM_DRUMMER_USE_TOM), 0, 1, 0x7F, 0);
    sprite_set_x_y(gSpriteHandler, drummer->leftArm, 120, 70);
    drum_live_offset_sprite_pos(drummer->leftArm, LIVE_PERFORMER_DRUMMER);
    sprite_set_anim_cel(gSpriteHandler, drummer->tomDrum, 0);
}


// Drum Kit Event - D-Pad Up (Hi-Hat)
void drum_live_kit_play_hihat(void) {
    struct LiveDrummer *drummer = &gDrumLive->drummer;

    sprite_set_anim(gSpriteHandler, drummer->leftArm, drum_live_get_anim(LIVE_ANIM_DRUMMER_USE_HIHAT), 0, 1, 0x7F, 0);
    sprite_set_x_y(gSpriteHandler, drummer->leftArm, 120, 70);
    drum_live_offset_sprite_pos(drummer->leftArm, LIVE_PERFORMER_DRUMMER);
    sprite_set_playback(gSpriteHandler, drummer->hiHat, 1, 0x7F, 0);
    sprite_set_anim_cel(gSpriteHandler, drummer->hiHat, 0);
}


// Drum Kit Event - L Button
void drum_live_kit_play_splash(void) {
    struct LiveDrummer *drummer = &gDrumLive->drummer;

    sprite_set_anim(gSpriteHandler, drummer->leftArm, drum_live_get_anim(LIVE_ANIM_DRUMMER_USE_SPLASH), 0, 1, 0x7F, 0);
    sprite_set_x_y(gSpriteHandler, drummer->leftArm, 120, 70);
    drum_live_offset_sprite_pos(drummer->leftArm, LIVE_PERFORMER_DRUMMER);
    sprite_set_anim_cel(gSpriteHandler, drummer->splashCymbal, 0);
}


// Drum Kit Event - R Button
void drum_live_kit_play_crash(void) {
    struct LiveDrummer *drummer = &gDrumLive->drummer;

    sprite_set_anim(gSpriteHandler, drummer->rightArm, drum_live_get_anim(LIVE_ANIM_DRUMMER_USE_CRASH), 0, 1, 0x7F, 0);
    sprite_set_x_y(gSpriteHandler, drummer->rightArm, 120, 70);
    drum_live_offset_sprite_pos(drummer->rightArm, LIVE_PERFORMER_DRUMMER);
    sprite_set_anim_cel(gSpriteHandler, drummer->crashCymbal, 0);
}


// Graphics Init. 3
void drum_live_init_gfx3(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
    drum_live_reset_crowd_and_rank();
}


// Graphics Init. 2
void drum_live_init_gfx2(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), drum_live_gfx_tables[gDrumLive->version], 0x2000);
    run_func_after_task(task, drum_live_init_gfx3, 0);
}


// Graphics Init. 1
void drum_live_init_gfx1(void) {
    s32 task;

    func_0800c604(0);
    task = start_new_texture_loader(get_current_mem_id(), drum_live_buffered_textures);
    run_func_after_task(task, drum_live_init_gfx2, 0);
}


// Offset Performer Sprite X/Y Position by Vector Table
void drum_live_offset_sprite_pos(s16 sprite, u32 performer) {
    struct Vector2 *offset = &drum_live_performer_sprite_offsets[gDrumLive->version][performer];
    s32 x = sprite_get_data(gSpriteHandler, sprite, 4);
    s32 y = sprite_get_data(gSpriteHandler, sprite, 5);

    sprite_set_x_y(gSpriteHandler, sprite, x + offset->x, y + offset->y);
}


// Game Engine Start
void drum_live_engine_start(u32 version) {
    struct LiveDrummer *drummer = &gDrumLive->drummer;
    struct LiveGuitarist *guitarist;

    // Init. Stage
    gDrumLive->version = version;
    drum_live_init_gfx1();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_0, TRUE, 0, 0, 2, 28, 0);
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);
    bg_anim_init(&gDrumLive->dynamicBgMap);

    // Init. Drummer
    drummer->head = sprite_create(gSpriteHandler, drum_live_get_anim(LIVE_ANIM_DRUMMER_HEAD), 0, 120, 70, 0x482D, 1, 0x7F, 0);
    drummer->body = sprite_create(gSpriteHandler, drum_live_get_anim(LIVE_ANIM_DRUMMER_BODY), 0, 120, 70, 0x4832, 1, 0x7F, 0);
    drummer->leftArm = sprite_create(gSpriteHandler, drum_live_get_anim(LIVE_ANIM_DRUMMER_USE_SNARE_L), 0, 120, 70, 0x4828, 1, 0x7F, 0);
    drummer->rightArm = sprite_create(gSpriteHandler, drum_live_get_anim(LIVE_ANIM_DRUMMER_USE_SNARE_R), 0, 120, 70, 0x4828, 1, 0x7F, 0);
    sprite_set_origin_x_y(gSpriteHandler, drummer->leftArm, NULL, &drummer->armPosY);
    sprite_set_origin_x_y(gSpriteHandler, drummer->rightArm, NULL, &drummer->armPosY);
    drummer->armPosY = 0;
    drummer->leftBassDrum = sprite_create(gSpriteHandler, drum_live_get_anim(LIVE_ANIM_DRUM_KIT_BASS_L), 0, 120, 110, 0x47CE, 1, 0x7F, 0);
    drummer->rightBassDrum = sprite_create(gSpriteHandler, drum_live_get_anim(LIVE_ANIM_DRUM_KIT_BASS_R), 0, 120, 110, 0x47CE, 1, 0x7F, 0);
    drummer->snareDrum = sprite_create(gSpriteHandler, drum_live_get_anim(LIVE_ANIM_DRUM_KIT_SNARE), 0, 120, 110, 0x47D8, 1, 0x7F, 0);
    drummer->tomDrum = sprite_create(gSpriteHandler, drum_live_get_anim(LIVE_ANIM_DRUM_KIT_TOM), 0, 120, 110, 0x47C9, 1, 0x7F, 0);
    drummer->hiHat = sprite_create(gSpriteHandler, drum_live_get_anim(LIVE_ANIM_DRUM_KIT_HIHAT), 0, 120, 110, 0x47D6, 1, 0x7F, 0);
    drummer->splashCymbal = sprite_create(gSpriteHandler, drum_live_get_anim(LIVE_ANIM_DRUM_KIT_SPLASH), 0, 120, 110, 0x47C4, 1, 0x7F, 0);
    drummer->crashCymbal = sprite_create(gSpriteHandler, drum_live_get_anim(LIVE_ANIM_DRUM_KIT_CRASH), 0, 120, 110, 0x47C4, 1, 0x7F, 0);
    drum_live_offset_sprite_pos(drummer->head, LIVE_PERFORMER_DRUMMER);
    drum_live_offset_sprite_pos(drummer->body, LIVE_PERFORMER_DRUMMER);
    drum_live_offset_sprite_pos(drummer->leftArm, LIVE_PERFORMER_DRUMMER);
    drum_live_offset_sprite_pos(drummer->rightArm, LIVE_PERFORMER_DRUMMER);
    drum_live_offset_sprite_pos(drummer->leftBassDrum, LIVE_PERFORMER_DRUMMER);
    drum_live_offset_sprite_pos(drummer->rightBassDrum, LIVE_PERFORMER_DRUMMER);
    drum_live_offset_sprite_pos(drummer->snareDrum, LIVE_PERFORMER_DRUMMER);
    drum_live_offset_sprite_pos(drummer->tomDrum, LIVE_PERFORMER_DRUMMER);
    drum_live_offset_sprite_pos(drummer->hiHat, LIVE_PERFORMER_DRUMMER);
    drum_live_offset_sprite_pos(drummer->splashCymbal, LIVE_PERFORMER_DRUMMER);
    drum_live_offset_sprite_pos(drummer->crashCymbal, LIVE_PERFORMER_DRUMMER);

    // Init. Bass Guitarist
    guitarist = &gDrumLive->guitarists[1];
    guitarist->head = sprite_create(gSpriteHandler, drum_live_get_anim(LIVE_ANIM_BASSIST_HEAD), 0, 50, 110, 0x4792, 1, 0x7F, 0);
    guitarist->body = sprite_create(gSpriteHandler, drum_live_get_anim(LIVE_ANIM_BASSIST_BODY), 0, 50, 110, 0x479C, 1, 0x7F, 0);
    guitarist->legs = sprite_create(gSpriteHandler, drum_live_get_anim(LIVE_ANIM_BASSIST_LEGS), 0, 50, 109, 0x47A6, 1, 0x7F, 0);
    guitarist->leftArm = sprite_create(gSpriteHandler, drum_live_get_anim(LIVE_ANIM_BASSIST_ARM_L), 0, 50, 110, 0x4788, 1, 0x7F, 0);
    guitarist->rightArm = sprite_create(gSpriteHandler, drum_live_get_anim(LIVE_ANIM_BASSIST_ARM_R), 0, 50, 110, 0x4788, 1, 0x7F, 0);
    drum_live_offset_sprite_pos(guitarist->head, LIVE_PERFORMER_BASSIST);
    drum_live_offset_sprite_pos(guitarist->body, LIVE_PERFORMER_BASSIST);
    drum_live_offset_sprite_pos(guitarist->legs, LIVE_PERFORMER_BASSIST);
    drum_live_offset_sprite_pos(guitarist->leftArm, LIVE_PERFORMER_BASSIST);
    drum_live_offset_sprite_pos(guitarist->rightArm, LIVE_PERFORMER_BASSIST);
    sprite_create(gSpriteHandler, drum_live_get_anim(LIVE_ANIM_MICROPHONE), 0, 38, 142, 0x4738, 0, 0, 0);
    guitarist->currentState = LIVE_GUITARIST_STATE_DEFAULT;
    guitarist->timeUntilNextState = 0;

    // Init. Guitarist
    guitarist = &gDrumLive->guitarists[0];
    guitarist->head = sprite_create(gSpriteHandler, drum_live_get_anim(LIVE_ANIM_GUITARIST_HEAD), 0, 190, 115, 0x4792, 1, 0x7F, 0);
    guitarist->body = sprite_create(gSpriteHandler, drum_live_get_anim(LIVE_ANIM_GUITARIST_BODY), 0, 190, 115, 0x479C, 1, 0x7F, 0);
    guitarist->legs = sprite_create(gSpriteHandler, drum_live_get_anim(LIVE_ANIM_GUITARIST_LEGS), 0, 190, 115, 0x47A6, 1, 0x7F, 0);
    guitarist->leftArm = sprite_create(gSpriteHandler, drum_live_get_anim(LIVE_ANIM_GUITARIST_ARM_L), 0, 190, 115, 0x4788, 1, 0x7F, 0);
    guitarist->rightArm = sprite_create(gSpriteHandler, drum_live_get_anim(LIVE_ANIM_GUITARIST_ARM_R), 0, 190, 115, 0x4788, 1, 0x7F, 0);
    drum_live_offset_sprite_pos(guitarist->head, LIVE_PERFORMER_GUITARIST);
    drum_live_offset_sprite_pos(guitarist->body, LIVE_PERFORMER_GUITARIST);
    drum_live_offset_sprite_pos(guitarist->legs, LIVE_PERFORMER_GUITARIST);
    drum_live_offset_sprite_pos(guitarist->leftArm, LIVE_PERFORMER_GUITARIST);
    drum_live_offset_sprite_pos(guitarist->rightArm, LIVE_PERFORMER_GUITARIST);
    sprite_create(gSpriteHandler, drum_live_get_anim(LIVE_ANIM_MICROPHONE), 0, 202, 139, 0x4738, 0, 0, 0);
    guitarist->currentState = LIVE_GUITARIST_STATE_DEFAULT;
    guitarist->timeUntilNextState = 0;

    // Init. Modes and Icons
    sprite_id_set_origin_x_y(gSpriteHandler, get_current_mem_id(), NULL, &D_03004b10.BG_OFS[BG_LAYER_1].y);
    gDrumLive->adjustModeTempo = 0;
    gDrumLive->adjustModeEnabled = TRUE;
    gDrumLive->adjustModeIcon = sprite_create(gSpriteHandler, drum_live_get_anim(LIVE_ANIM_ADJUST_MODE_ICON), gDrumLive->adjustModeEnabled, 120, 154, 0, 0, 0, 0x8000);
    gDrumLive->busyIcon = sprite_create(gSpriteHandler, drum_live_get_anim(LIVE_ANIM_BUSY_ICON), 0, 120, 144, 0, 0, 0, 0x8000);

    // Init. Other
    init_drumtech(&gDrumLive->drumTech);
    gameplay_set_input_buttons(DPAD_ALL | A_BUTTON | B_BUTTON, 0);
    gameplay_prevent_dpad_overlap(FALSE);
    drum_live_reset_excitement();
    gDrumLive->unk13D0 = INT_TO_FIXED(1.0);
    drum_live_init_lighting();
    drum_live_set_result_rank(RESULTS_RANK_TRY_AGAIN);
}


// Engine Event 0x0A (STUB)
void drum_live_engine_event_stub(void) {
}


// Set Guitarist State
void drum_live_set_guitarist_state(u32 id, u32 state) {
    struct LiveGuitarist *guitarist = &gDrumLive->guitarists[id];
    s32 x, y;
    s32 frame;

    sprite_set_visible(gSpriteHandler, guitarist->head, FALSE);
    sprite_set_visible(gSpriteHandler, guitarist->legs, FALSE);
    sprite_set_visible(gSpriteHandler, guitarist->leftArm, FALSE);
    sprite_set_visible(gSpriteHandler, guitarist->rightArm, FALSE);

    switch (state) {
        case LIVE_GUITARIST_STATE_DEFAULT:
            sprite_set_anim(gSpriteHandler, guitarist->head, drum_live_get_anim(drum_live_guitarist_anim_map_head[id]), 0, 1, 0x7F, 0);
            sprite_set_anim(gSpriteHandler, guitarist->body, drum_live_get_anim(drum_live_guitarist_anim_map_body[id]), 0, 1, 0x7F, 0);
            sprite_set_anim(gSpriteHandler, guitarist->legs, drum_live_get_anim(drum_live_guitarist_anim_map_legs[id]), 0, 1, 0x7F, 0);
            sprite_set_anim(gSpriteHandler, guitarist->leftArm, drum_live_get_anim(drum_live_guitarist_anim_map_arm_l[id]), 0, 1, 0x7F, 0);
            sprite_set_anim(gSpriteHandler, guitarist->rightArm, drum_live_get_anim(drum_live_guitarist_anim_map_arm_r[id]), 0, 1, 0x7F, 0);
            sprite_set_visible(gSpriteHandler, guitarist->head, TRUE);
            sprite_set_visible(gSpriteHandler, guitarist->legs, TRUE);
            sprite_set_visible(gSpriteHandler, guitarist->leftArm, TRUE);
            sprite_set_visible(gSpriteHandler, guitarist->rightArm, TRUE);
            break;

        case LIVE_GUITARIST_STATE_CROUCH:
            sprite_set_anim(gSpriteHandler, guitarist->body, drum_live_get_anim(drum_live_guitarist_anim_map_crouch[id]), 0, 1, 0x7F, 0);
            break;

        case LIVE_GUITARIST_STATE_STRUM_JUMP:
            sprite_set_anim(gSpriteHandler, guitarist->body, drum_live_get_anim(drum_live_guitarist_anim_map_jump_strum[id]), 0, 1, 0x7F, 0);
            break;

        case LIVE_GUITARIST_STATE_JUMP:
            sprite_set_anim(gSpriteHandler, guitarist->body, drum_live_get_anim(drum_live_guitarist_anim_map_jump[id]), 0, 1, 0x7F, 0);
            x = sprite_get_data(gSpriteHandler, guitarist->body, 4);
            y = sprite_get_data(gSpriteHandler, guitarist->body, 5);
            scene_move_sprite_sine_wave(guitarist->body, x, y, 16, ticks_to_frames(24));
            break;

        case LIVE_GUITARIST_STATE_HALF_CROUCH:
            sprite_set_anim(gSpriteHandler, guitarist->body, drum_live_get_anim(drum_live_guitarist_anim_map_crouch[id]), 0, -1, 0, 0);
            frame = sprite_get_data(gSpriteHandler, guitarist->body, 2);
            sprite_set_anim_cel(gSpriteHandler, guitarist->body, frame - 1);
            break;
    }

    guitarist->currentState = state;
}


// Engine Event 0x00 (Set Guitarist Next State)
void drum_live_set_guitarist_next_state(u32 args) {
    struct LiveGuitarist *guitarist;
    u32 state, mask;
    u32 i;

    state = args >> 2;
    mask = args & 3;

    for (i = 0; i < ARRAY_COUNT(gDrumLive->guitarists); i++) {
        if ((mask >> i) & 1) {
            guitarist = &gDrumLive->guitarists[i];

            if (guitarist->timeUntilNextState != 0) {
                if (guitarist->timeUntilNextState < 3) {
                    drum_live_set_guitarist_state(i, guitarist->nextState);
                }
            }

            guitarist->timeUntilNextState = ticks_to_frames(24);
            guitarist->nextState = state;
        }
    }
}


// Update Guitarists
void drum_live_update_guitarists(void) {
    struct LiveGuitarist *guitarist;
    u32 i;

    for (i = 0; i < ARRAY_COUNT(gDrumLive->guitarists); i++) {
        guitarist = &gDrumLive->guitarists[i];

        if (guitarist->timeUntilNextState != 0) {
            if (--guitarist->timeUntilNextState == 0) {
                drum_live_set_guitarist_state(i, guitarist->nextState);
            }
        }
    }
}


// Engine Event 0x01 (Adjust Mode)
void drum_live_set_adjust_mode_tempo(u32 tempo) {
    if (!gDrumLive->adjustModeEnabled) {
        return;
    }

    if (tempo != 0) {
        gDrumLive->adjustModeTempo = get_beatscript_tempo();
        sprite_set_visible(gSpriteHandler, gDrumLive->busyIcon, TRUE);
    } else if (gDrumLive->adjustModeTempo != 0) {
        set_beatscript_tempo(gDrumLive->adjustModeTempo);
        gDrumLive->adjustModeTempo = tempo;
        sprite_set_visible(gSpriteHandler, gDrumLive->busyIcon, FALSE);
    }
}


// Engine Event 0x08 (Set Enable Boredom Timer)
void drum_live_set_enable_boredom(u32 enable) {
    gDrumLive->boredomEnabled = enable;
    gDrumLive->timeSinceLastInput = 0;
}


// Update Audience Boredom
void drum_live_update_boredom(void) {
    if (gDrumLive->boredomEnabled) {
        if (gDrumLive->timeSinceLastInput < 240) {
            if (++gDrumLive->timeSinceLastInput >= 240) {
                gDrumLive->excitementFactor = INT_TO_FIXED(0.0);
            }
        }
    }
}


// Update Band Monkey Body Animation Speed
void drum_live_update_band_monkeys(void) {
    if (gDrumLive->version == ENGINE_VER_DRUM_SAMURAI_BAND_LIVE) {
        u24_8 speed = INT_TO_FIXED(get_beatscript_tempo()) / 120u;

        sprite_set_anim_speed(gSpriteHandler, gDrumLive->guitarists[0].body, speed);
        sprite_set_anim_speed(gSpriteHandler, gDrumLive->guitarists[1].body, speed);
    }
}


// Game Engine Update
void drum_live_engine_update(void) {
    bg_anim_write_to_vram(&gDrumLive->dynamicBgMap);
    play_drumtech_kit_w_anim(drum_live_kits[drum_live_kit_map[gDrumLive->version]], D_03004afc);
    update_drumtech();
    bg_anim_update_script(&gDrumLive->dynamicBgMap);
    drum_live_update_boredom();
    drum_live_update_guitarists();
    drum_live_update_band_monkeys();
    drum_live_update_lighting();
}


// Set Results Rank
void drum_live_set_result_rank(u32 rank) {
    sDrumLiveResult = rank;
}


// Get Results Rank
u32 drum_live_get_result_rank(void) {
    return sDrumLiveResult;
}


// Game Engine Stop
void drum_live_engine_stop(void) {
    key_rec_set_mode(INPUT_REC_MODE_NONE, 0x3FF, NULL, 0);
}


// Update Excitement Factor
void drum_live_modify_excitement(struct DrumLiveCue *info, u8_8 coolMultiplier, u8_8 lameMultiplier) {
    if (gDrumLive->excitementDisabled) {
        return;
    }

    if (info->coolInputs & D_03004afc) {
        gDrumLive->excitementFactor += FIXED_POINT_MUL(info->baseInc, coolMultiplier);
    }

    if (info->lameInputs & D_03004afc) {
        gDrumLive->excitementFactor -= FIXED_POINT_MUL(info->baseDec, lameMultiplier);
    }

    gDrumLive->excitementFactor = clamp_int32(gDrumLive->excitementFactor, INT_TO_FIXED(-1.0), INT_TO_FIXED(5.0));
}


// Cue - Spawn
void drum_live_cue_spawn(struct Cue *cue, struct DrumLiveCue *info, u32 index) {
    info->index = index;
    info->coolInputs = gDrumLive->coolInputs[info->index];
    info->lameInputs = gDrumLive->lameInputs[info->index];
    info->baseInc = gDrumLive->excitementBaseInc;
    info->baseDec = gDrumLive->excitementBaseDec;
    info->flashType = gDrumLive->nextFlashType;
    gDrumLive->nextFlashType = -1;
}


// Cue - Update
u32 drum_live_cue_update(struct Cue *cue, struct DrumLiveCue *info, u32 runningTime, u32 duration) {
    if (runningTime > ticks_to_frames(36)) {
        return TRUE;
    } else {
        return FALSE;
    }
}


// Cue - Despawn
void drum_live_cue_despawn(struct Cue *cue, struct DrumLiveCue *info) {
}


// Update Tempo for Adjust Mode
void drum_live_update_adjust_mode(void) {
    u32 adjustModeTempo = gDrumLive->adjustModeTempo;
    s32 hitOffset, oneBeat, newTempo;

    if (adjustModeTempo == 0) {
        return;
    }

    hitOffset = gameplay_get_last_hit_offset();
    oneBeat = ticks_to_frames(24);
    newTempo = (s32)get_beatscript_tempo() * (oneBeat - hitOffset) / oneBeat;
    set_beatscript_tempo(clamp_int32(newTempo, adjustModeTempo - 5, adjustModeTempo + 5));
}


// Cue - Hit
void drum_live_cue_hit(struct Cue *cue, struct DrumLiveCue *info, u32 pressed, u32 released) {
    if (info->index == 0) {
        drum_live_update_adjust_mode();
    }

    drum_live_modify_excitement(info, INT_TO_FIXED(1.0), INT_TO_FIXED(1.0));

    if (info->flashType >= 0) {
        drum_live_flash_big_lights(info->flashType);
    }

    gDrumLive->timeSinceLastInput = 0;
}


// Cue - Barely
void drum_live_cue_barely(struct Cue *cue, struct DrumLiveCue *info, u32 pressed, u32 released) {
    if (gDrumLive->adjustModeTempo != 0) {
        set_beatscript_tempo(gDrumLive->adjustModeTempo);
    }

    drum_live_modify_excitement(info, INT_TO_FIXED(0.5), INT_TO_FIXED(1.0));
    gDrumLive->timeSinceLastInput = 0;
}


// Cue - Miss
void drum_live_cue_miss(struct Cue *cue, struct DrumLiveCue *info) {
    if (gDrumLive->adjustModeTempo != 0) {
        set_beatscript_tempo(gDrumLive->adjustModeTempo);
    }
}


// Input Event
void drum_live_input_event(u32 pressed, u32 released) {
    if (!gDrumLive->excitementDisabled) {
        gDrumLive->excitementFactor -= INT_TO_FIXED(1.0);
    }

    gDrumLive->timeSinceLastInput = 0;
}


// Common Event 0 (Beat Animation)
void drum_live_common_beat_animation(void) {
    struct LiveGuitarist *guitarist;
    u32 i;

    for (i = 0; i < ARRAY_COUNT(gDrumLive->guitarists); i++) {
        guitarist = &gDrumLive->guitarists[i];

        if (guitarist->currentState == LIVE_GUITARIST_STATE_DEFAULT) {
            sprite_set_anim_cel(gSpriteHandler, guitarist->head, 0);
            sprite_set_anim_cel(gSpriteHandler, guitarist->body, 0);
            sprite_set_anim_cel(gSpriteHandler, guitarist->legs, 0);
            sprite_set_anim_cel(gSpriteHandler, guitarist->leftArm, 0);
        }
    }

    drum_live_set_crowd_and_rank(FIXED_TO_INT(gDrumLive->excitementFactor));
    drum_live_flash_beat_lights();
}


// Common Event 1 (Display Text, Unimplemented)
void drum_live_common_display_text(void) {
}


// Common Event 2 (Init. Tutorial)
void drum_live_common_init_tutorial(struct Scene *skipDest) {
    if (skipDest != NULL) {
        gameplay_enable_tutorial(TRUE);
        gameplay_set_skip_destination(skipDest);
    } else {
        gameplay_enable_tutorial(FALSE);
    }
}
