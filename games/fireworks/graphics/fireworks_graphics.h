#pragma once

#include "global.h"
#include "graphics.h"

/* FIREWORKS - ANIMATIONS */

extern struct Animation anim_fireworks_rocket4[];
extern struct Animation anim_fireworks_rocket_explode[];
extern struct Animation anim_fireworks_particle_red[];
extern struct Animation anim_fireworks_particle_green[];
extern struct Animation anim_fireworks_particle_circle[];
extern struct Animation anim_fireworks_particle_blue[];
extern struct Animation anim_fireworks_bomb[];
extern struct Animation anim_fireworks_bomb_explode[];
extern struct Animation anim_fireworks_particle_tri_rbg[];
extern struct Animation anim_fireworks_particle_tri_grb[];
extern struct Animation anim_fireworks_particle_tri_rgb[];
extern struct Animation anim_fireworks_skip_tutorial_icon[];
extern struct Animation anim_fireworks_rocket3[];
extern struct Animation anim_fireworks_rocket2[];
extern struct Animation anim_fireworks_rocket1[];
extern struct Animation anim_fireworks_count[];

/* FIREWORKS - COMPRESSED GRAPHICS */

extern struct CompressedData fireworks_obj; // OBJ Tiles (+ BG Tiles for Fireworks 1)
extern struct CompressedData fireworks_bg_map;
extern struct CompressedData fireworks_remix_5_bg_tiles_1;
extern struct CompressedData fireworks_remix_5_bg_map_1;
extern struct CompressedData fireworks_remix_5_bg_tiles_2;
extern struct CompressedData fireworks_remix_5_bg_map_2;
extern struct CompressedData fireworks_remix_5_bg_tiles_3;
extern struct CompressedData fireworks_remix_5_bg_map_3;
extern struct CompressedData fireworks_remix_5_bg_tiles_4;
extern struct CompressedData fireworks_remix_5_bg_map_4;

/* FIREWORKS - PALETTES */

extern Palette fireworks_obj_pal[];
extern Palette fireworks_bg_pal[];
