#pragma once

#include "global.h"
#include "engines.h"

#include "games/bon_odori/graphics/bon_odori_graphics.h"

// Engine Types:
struct BonOdoriText {
    s16 textSprite;
    s16 highlightSprite;
    struct Animation *anim;
    s16 leftEdge;
    u16 width;
};

struct BonOdoriInfo {
    u8 version;
    struct BitmapFontOBJ *unk4;
    struct BonOdoriText lyrics[4];
    u8 currentLyric;
    s16 lyricsX;
    s16 lyricsY;
    s16 yaguraSprite;
    u16 yaguraFrownTimer;
    u8 yaguraNoticedMistake;
    s16 donpanSprites[4];
    u16 donpanAnimTimers[4];
    u8 donpanEmoteTimer;
    u8 donpanEmoteAnim;
    const u16 *srcBgPal;
    const u16 *srcObjPal;
    u16 darkBgPalBuf[32][16];
    u16 darkObjPalBuf[32][16];
    u16 mistimedClaps;
    u8 currentClapAnim;
    u16 playerClapTimer;
};

struct BonOdoriCue {
    u8 type;
};


// Engine Macros/Enums:
enum BonOdoriAnimationsEnum {
    BON_ODORI_ANIM_DONPAN1_BEAT,
    BON_ODORI_ANIM_DONPAN2_BEAT,
    BON_ODORI_ANIM_DONPAN3_BEAT,
    BON_ODORI_ANIM_PLAYER_BEAT,
    BON_ODORI_ANIM_DONPAN1_CLAP_SIDE,
    BON_ODORI_ANIM_DONPAN2_CLAP_SIDE,
    BON_ODORI_ANIM_DONPAN3_CLAP_SIDE,
    BON_ODORI_ANIM_PLAYER_CLAP_SIDE,
    BON_ODORI_ANIM_DONPAN1_CLAP_FRONT,
    BON_ODORI_ANIM_DONPAN2_CLAP_FRONT,
    BON_ODORI_ANIM_DONPAN3_CLAP_FRONT,
    BON_ODORI_ANIM_PLAYER_CLAP_FRONT,
    BON_ODORI_ANIM_DONPAN1_BOW,
    BON_ODORI_ANIM_DONPAN2_BOW,
    BON_ODORI_ANIM_DONPAN3_BOW,
    BON_ODORI_ANIM_PLAYER_BOW,
    BON_ODORI_ANIM_DONPAN1_GLARE,
    BON_ODORI_ANIM_DONPAN2_GLARE,
    BON_ODORI_ANIM_DONPAN3_GLARE,
    BON_ODORI_ANIM_DONPAN1_HAPPY,
    BON_ODORI_ANIM_DONPAN2_HAPPY,
    BON_ODORI_ANIM_DONPAN3_HAPPY,
    BON_ODORI_ANIM_PLAYER_HAPPY,
    BON_ODORI_ANIM_DONPAN1_VERY_HAPPY,
    BON_ODORI_ANIM_DONPAN2_VERY_HAPPY,
    BON_ODORI_ANIM_DONPAN3_VERY_HAPPY,
    BON_ODORI_ANIM_PLAYER_VERY_HAPPY,
    BON_ODORI_ANIM_DONPAN1_SPIN,
    BON_ODORI_ANIM_DONPAN2_SPIN,
    BON_ODORI_ANIM_DONPAN3_SPIN,
    BON_ODORI_ANIM_PLAYER_SPIN,
    BON_ODORI_ANIM_YAGURA_BEAT,
    BON_ODORI_ANIM_YAGURA_SPEAK,
    BON_ODORI_ANIM_YAGURA_FROWN,
};

enum BonOdoriDonpanAnimationsEnum {
    DONPAN_ANIM_BEAT,
    DONPAN_ANIM_CLAP_FRONT,
    DONPAN_ANIM_CLAP_SIDE,
    DONPAN_ANIM_BOW,
    DONPAN_ANIM_GLARE,
    DONPAN_ANIM_HAPPY,
    DONPAN_ANIM_VERY_HAPPY,
    DONPAN_ANIM_SPIN
};


// Engine Definition Data:
extern struct Animation **bon_odori_anim_table[34]; // Pointers to animation arrays, with each one consisting of two animations.
extern u8 *bon_odori_donpan_anim_id_table[]; // Contains Donpan animation indexes. (Sub-arrays are the same animation but for different donpans)
extern u16 bon_odori_anim_durations[8]; // Seemingly numbers of ticks for animations.
extern struct CompressedGraphics *bon_odori_buffered_textures[]; // Buffered Textures List
extern struct GraphicsTable *bon_odori_gfx_tables[]; // Graphics Table Index
extern const u16 *bon_odori_bg_palettes[]; // Pointers to BG Palettes
extern const u16 *bon_odori_obj_palettes[]; // Pointers to OBJ Palettes
extern u16 bon_odori_text_x_offsets[]; // Lyrics Horizontal Positions (by Text Alignment)


// Functions:
extern struct Animation *bon_odori_get_anim(u32);             // [func_080206a0] Get OBJ Animation
extern void bon_odori_init_donpans(void);                           // [func_080206c0] Init. Donpans
extern struct Animation *bon_odori_get_donpan_anim(u32, u32); // [func_0802075c] Get Donpan Animation
extern void bon_odori_set_donpan_anim(u32, u32);                    // [func_08020778] Set Donpan Animation
extern void bon_odori_set_cpu_donpan_anim(u32);                     // [func_080207d0] ENGINE Func_0B - Set Animation (CPU Donpans)
extern void bon_odori_set_player_anim(u32);                         // [func_080207ec] ENGINE Func_0C - Set Animation (Player)
extern void bon_odori_set_all_donpan_anim(u32);                     // [func_080207f8] ENGINE Func_0D - Set Animation (All Donpans)
extern void bon_odori_set_cpu_donpan_anim_timer(u32);               // [func_0802080c] ENGINE Func_0E - Set CPU Donpan Animation Timer
extern void bon_odori_update_donpans(void);                         // [func_08020834] Update Donpans
extern void bon_odori_init_gfx3(void);                              // [func_0802085c] GFX_INIT Func_02
extern void bon_odori_init_gfx2(void);                              // [func_08020880] GFX_INIT Func_01
extern void bon_odori_init_gfx1(void);                              // [func_080208c0] GFX_INIT Func_00
extern void bon_odori_engine_start(u32);                            // [func_080208ec] MAIN - Init
extern void bon_odori_engine_event_stub(void);                      // [func_08020a48] ENGINE Func_11 - STUB
extern void bon_odori_lyrics_display_line(const char *, u32, u32);  // [func_08020a4c] Display Text
extern void bon_odori_lyrics_set_current_line(u32);                 // [func_08020be4] ENGINE Func_00 - Set Target Lyrics (by Vertical Position)
extern void bon_odori_lyrics_display_centre(const char *);          // [func_08020bf4] ENGINE Func_01 - Display Text (Centre)
extern void bon_odori_lyrics_display_left(const char *);            // [func_08020c0c] ENGINE Func_02 - Display Text (Left)
extern void bon_odori_lyrics_display_right(const char *);           // [func_08020c24] ENGINE Func_03 - Display Text (Right)
extern void bon_odori_lyrics_offset_y(s32);                         // [func_08020c3c] ENGINE Func_04 - Set Lyrics Y Offset
extern void bon_odori_lyrics_finish_highlight(u32);                 // [func_08020c4c] Hide Lyric Highlights
extern void bon_odori_lyrics_start_highlight(u32);                  // [func_08020c8c] ENGINE Func_05 - Highlight Text
extern void bon_odori_screen_lighten(u32);                          // [func_08020d20] ENGINE Func_06 - Lighten Screen (Gradual)
extern void bon_odori_screen_darken(u32);                           // [func_08020da0] ENGINE Func_07 - Darken Screen (Gradual)
extern void bon_odori_screen_set_black(void);                       // [func_08020e1c] ENGINE Func_08 - Set Palette to Black
extern void bon_odori_screen_set_light(void);                       // [func_08020e50] ENGINE Func_09 - Lighten Screen (Instant)
extern void bon_odori_screen_set_dark(void);                        // [func_08020e90] ENGINE Func_0A - Darken Screen (Instant)
extern void bon_odori_start_testing_inputs(void);                   // [func_08020ed4] ENGINE Func_0F - Test Player Inputs
extern void bon_odori_finish_testing_inputs(void);                  // [func_08020ee8] ENGINE Func_10 - React to Player Inputs
extern void bon_odori_engine_update(void);                          // [func_08020f48] MAIN - Update
extern void bon_odori_engine_stop(void);                            // [func_08020f8c] MAIN - Close
extern void bon_odori_cue_spawn(struct Cue *, struct BonOdoriCue *, u32);       // [func_08020f98] CUE - Spawn
extern u32  bon_odori_cue_update(struct Cue *, struct BonOdoriCue *, u32, u32); // [func_08020fb0] CUE - Update
extern void bon_odori_cue_despawn(struct Cue *, struct BonOdoriCue *);          // [func_08020fcc] CUE - Despawn
extern void bon_odori_cue_hit(struct Cue *, struct BonOdoriCue *, u32, u32);    // [func_08020fd0] CUE - Hit
extern void bon_odori_cue_barely(struct Cue *, struct BonOdoriCue *, u32, u32); // [func_08020fe8] CUE - Barely
extern void bon_odori_cue_miss(struct Cue *, struct BonOdoriCue *);             // [func_0802100c] CUE - Miss
extern void bon_odori_input_event(u32, u32);                        // [func_08021034] MAIN - Input Event
extern void bon_odori_common_beat_animation(u32);                   // [func_08021084] COMMON Func_00 - Beat Animation
extern void bon_odori_common_display_text(u32);                     // [func_08021188] COMMON Func_01 - STUB
extern void bon_odori_common_init_tutorial(struct Scene *);   // [func_0802118c] COMMON Func_02 - STUB
