#pragma once

#include "global.h"
#include "graphics.h"

/* DRUM CUTSCENE - ANIMATIONS */

extern struct Animation anim_drum_samurai_use_snare_l[];
extern struct Animation anim_drum_samurai_use_snare_r[];
extern struct Animation anim_drum_samurai_use_crash[];
extern struct Animation anim_drum_samurai_use_splash[];
extern struct Animation anim_drum_samurai_use_tom[];
extern struct Animation anim_drum_samurai_use_hihat[];
extern struct Animation anim_drum_samurai_head[];
extern struct Animation anim_drum_samurai_body[];
extern struct Animation anim_drum_samurai_waist[];
extern struct Animation anim_drum_samurai_use_pedal_l[];
extern struct Animation anim_drum_samurai_use_pedal_r[];
extern struct Animation anim_drum_samurai_kit_crash[];
extern struct Animation anim_drum_samurai_kit_splash[];
extern struct Animation anim_drum_samurai_kit_bass_r[];
extern struct Animation anim_drum_samurai_kit_bass_l[];
extern struct Animation anim_drum_samurai_kit_hihat[];
extern struct Animation anim_drum_samurai_kit_snare[];
extern struct Animation anim_drum_samurai_kit_tom[];
extern struct Animation anim_drum_samurai_kit_seat[];
extern struct Animation anim_drum_samurai_snare_roll[];
extern struct Animation anim_drum_samurai_face_blink[];
extern struct Animation anim_drum_samurai_face_talk[];
extern struct Animation anim_drum_samurai_unk22[];
extern struct Animation anim_drum_samurai_unk23[];
extern struct Animation anim_drum_samurai_text_skip_tutorial[];
extern struct Animation anim_drum_samurai_text_adv_icon[];

/* DRUM CUTSCENE - PALETTES */

extern Palette drum_intro_talk_pal[];

/* DRUM TUTORIAL - ANIMATIONS */

extern struct Animation anim_drum_player_use_snare_l[];
extern struct Animation anim_drum_player_use_snare_r[];
extern struct Animation anim_drum_player_use_crash[];
extern struct Animation anim_drum_player_use_splash[];
extern struct Animation anim_drum_player_use_tom[];
extern struct Animation anim_drum_player_use_hihat[];
extern struct Animation anim_drum_player_head[];
extern struct Animation anim_drum_player_body[];
extern struct Animation anim_drum_player_waist[];
extern struct Animation anim_drum_player_use_pedal_l[];
extern struct Animation anim_drum_player_use_pedal_r[];
extern struct Animation anim_drum_player_kit_crash[];
extern struct Animation anim_drum_player_kit_splash[];
extern struct Animation anim_drum_player_kit_bass_r[];
extern struct Animation anim_drum_player_kit_bass_l[];
extern struct Animation anim_drum_player_kit_hihat[];
extern struct Animation anim_drum_player_kit_snare[];
extern struct Animation anim_drum_player_kit_tom[];
extern struct Animation anim_drum_player_kit_seat[];
extern struct Animation anim_drum_player_snare_roll[];
extern struct Animation anim_drum_player_face_blink[];
extern struct Animation anim_drum_player_face_talk[];
extern struct Animation anim_drum_player_blank1[];
extern struct Animation anim_drum_player_blank2[];
extern struct Animation anim_drum_player_unk24[];
extern struct Animation anim_drum_player_unk25[];
extern struct Animation anim_drum_player_text_skip_tutorial[];
extern struct Animation anim_drum_player_text_adv_icon[];

/* DRUM TUTORIAL - PALETTES */

extern Palette drum_intro_play_pal[];

/* TANUKI AND MONKEY - ANIMATIONS */

extern struct Animation anim_drum_tanuki_use_tom_r[];
extern struct Animation anim_drum_tanuki_use_tom_l[];
extern struct Animation anim_drum_monkey_use_snare_r[];
extern struct Animation anim_drum_monkey_use_snare_l[];
extern struct Animation anim_drum_tanuki_beat[];
extern struct Animation anim_drum_monkey_beat[];
extern struct Animation anim_drum_monkey_anger_puff[];
extern struct Animation anim_drum_monkey_kit_snare1[];
extern struct Animation anim_drum_tanuki_kit_tom1[];
extern struct Animation anim_drum_monkey_kit_snare2[];
extern struct Animation anim_drum_tanuki_kit_tom2[];
extern struct Animation anim_drum_tanuki_sigh[];

/* TANUKI AND MONKEY - PALETTES */

extern Palette tanuki_and_monkey_obj_pal[];
extern Palette tanuki_and_monkey_bg_pal[];

/* DRUM INTRO - COMPRESSED GRAPHICS */

extern struct CompressedData drum_intro_talk_obj;
extern struct CompressedData drum_intro_talk_bg_tiles;
extern struct CompressedData drum_intro_talk_bg_map;
extern struct CompressedData drum_intro_play_bg_tiles;
extern struct CompressedData drum_intro_play_bg_map;
extern struct CompressedData drum_intro_play_obj;
extern struct CompressedData tanuki_and_monkey_bg_tiles;
extern struct CompressedData tanuki_and_monkey_bg_map;
extern struct CompressedData tanuki_and_monkey_bg_map_blank;
extern struct CompressedData tanuki_and_monkey_obj;
