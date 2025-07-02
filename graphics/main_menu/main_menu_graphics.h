#pragma once

#include "global.h"
#include "graphics.h"

/* MAIN MENU - ANIMATIONS */

extern struct Animation anim_main_menu_blank1[];
extern struct Animation anim_main_menu_button_on_game_select[];
extern struct Animation anim_main_menu_button_on_rhythm_test[];
extern struct Animation anim_main_menu_button_on_data_room[];
extern struct Animation anim_main_menu_button_on_studio[];
extern struct Animation anim_main_menu_button_on_options[];
extern struct Animation anim_main_menu_button_off_game_select[];
extern struct Animation anim_main_menu_button_off_rhythm_test[];
extern struct Animation anim_main_menu_button_off_data_room[];
extern struct Animation anim_main_menu_button_off_studio[];
extern struct Animation anim_main_menu_button_off_options[];
extern struct Animation anim_main_menu_blank2[];
extern struct Animation anim_main_menu_blank3[];

/* MAIN MENU - COMPRESSED GRAPHICS */

extern struct CompressedData main_menu_bg_tiles;
extern struct CompressedData main_menu_bg_map;
extern struct CompressedData main_menu_obj;

/* MAIN MENU - PALETTES */

extern Palette main_menu_pal[];
