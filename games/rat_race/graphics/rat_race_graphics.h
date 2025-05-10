#pragma once

#include "global.h"
#include "graphics.h"

/* RAT RACE - ANIMATIONS */

extern struct Animation anim_rat_run[];
extern struct Animation anim_rat_stop[];
extern struct Animation anim_rat_duck[];
extern struct Animation anim_rat_collide_run[];
extern struct Animation anim_rat_collide_stop[];
extern struct Animation anim_rat_prepare_dash[];
extern struct Animation anim_rat_cheer[];
extern struct Animation anim_rat_angry_run_l[];
extern struct Animation anim_rat_angry_run_r[];
extern struct Animation anim_rat_angry_stop_r[];
extern struct Animation anim_rat_cheer_full[];
extern struct Animation anim_rat_fear_particles_all[];
extern struct Animation anim_rat_fear_particles_barely[];
extern struct Animation anim_rat_fear_particles_miss[];
extern struct Animation anim_cat_pupils[];
extern struct Animation anim_cat_eyelids[];
extern struct Animation anim_cat_paw[];
extern struct Animation anim_rat_race_crockery[];
extern struct Animation anim_rat_race_plates[];
extern struct Animation anim_rat_text_bubble_r[];
extern struct Animation anim_rat_text_bubble_l[];
extern struct Animation anim_rat_emote_bubble_r[];
extern struct Animation anim_rat_emote_bubble_l[];
extern struct Animation anim_rat_race_blank[];
extern struct Animation anim_rat_dash_particle[];
extern struct Animation anim_rat_traffic_light[];
extern struct Animation anim_rat_race_player_label[];
extern struct Animation anim_rat_stop_barely[];
extern struct Animation anim_rat_stop_miss[];
extern struct Animation anim_rat_stumble[];

/* RAT RACE - COMPRESSED GRAPHICS */

extern struct CompressedData rat_race_bg_tiles;
extern struct CompressedData rat_race_bg_map_near;
extern struct CompressedData rat_race_bg_map_middle;
extern struct CompressedData rat_race_bg_map_far;
extern struct CompressedData rat_race_bg_map_cheese;
extern struct CompressedData rat_race_bg_map_cat;
extern struct CompressedData rat_race_obj;

/* RAT RACE - PALETTES */

extern Palette rat_race_pal[];
