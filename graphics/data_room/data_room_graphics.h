#pragma once

#include "global.h"
#include "graphics.h"

/* DATA ROOM (MENU) - ANIMATIONS */

extern struct Animation anim_data_room_green_led[];
extern struct Animation anim_data_room_cursor[];
extern struct Animation anim_data_room_user_scroll[];
extern struct Animation anim_data_room_user_stare[];
extern struct Animation anim_data_room_user_almost_sleep[];
extern struct Animation anim_data_room_user_fall_asleep[];

/* DATA ROOM (MENU) - COMPRESSED GRAPHICS */

extern struct CompressedData data_room_bg_tiles;
extern struct CompressedData data_room_bg_map;
extern struct CompressedData data_room_obj;

/* DATA ROOM (MENU) - PALETTES */

extern Palette data_room_pal[];

/* DATA ROOM (READING) - ANIMATIONS */

extern struct Animation anim_reading_title_bar[];
extern struct Animation anim_reading_icon_prev[];
extern struct Animation anim_reading_icon_next[];

/* DATA ROOM (READING) - COMPRESSED GRAPHICS */

extern struct CompressedData reading_style_cherry_bg_tiles;
extern struct CompressedData reading_style_cherry_bg_map;
extern struct CompressedData reading_style_train_bg_tiles;
extern struct CompressedData reading_style_train_bg_map;
extern struct CompressedData reading_style_sea_bg_tiles;
extern struct CompressedData reading_style_sea_bg_map;
extern struct CompressedData reading_style_haiku_bg_tiles;
extern struct CompressedData reading_style_haiku_bg_map;
extern struct CompressedData reading_style_classroom_bg_tiles;
extern struct CompressedData reading_style_classroom_bg_map;
extern struct CompressedData reading_style_bulletin_bg_tiles;
extern struct CompressedData reading_style_bulletin_bg_map;
extern struct CompressedData reading_style_cooking_bg_tiles;
extern struct CompressedData reading_style_cooking_bg_map;
extern struct CompressedData reading_style_mail_bg_tiles;
extern struct CompressedData reading_style_mail_bg_map;
extern struct CompressedData reading_style_manzai_bg_tiles;
extern struct CompressedData reading_style_manzai_bg_map;
extern struct CompressedData reading_obj;

/* DATA ROOM (READING) - PALETTES */

extern Palette reading_obj_pal[];
extern Palette reading_style_bulletin_pal[];
extern Palette reading_style_manzai_pal[];
extern Palette reading_style_cooking_pal[];
extern Palette reading_style_mail_pal[];
extern Palette reading_style_haiku_pal[];
extern Palette reading_style_classroom_pal[];
extern Palette reading_style_train_pal[];

/* READ ERROR - ANIMATIONS */

extern struct Animation anim_read_error_unk0[];
extern struct Animation anim_read_error_unk1[];

/* READ ERROR - COMPRESSED GRAPHICS */

extern struct CompressedData reading_style_cherry_bg_tiles;
extern struct CompressedData reading_style_cherry_bg_map;

/* READ ERROR - PALETTES */

extern Palette reading_style_cherry_pal[];
extern Palette reading_style_sea_pal[];
