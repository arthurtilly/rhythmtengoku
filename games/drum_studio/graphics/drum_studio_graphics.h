#pragma once

#include "global.h"
#include "graphics.h"

/* DRUM LESSONS (PLAYER) - ANIMATIONS */

extern struct Animation anim_drum_student_kit_snare[];
extern struct Animation anim_drum_student_kit_bass[];
extern struct Animation anim_drum_student_kit_hihat[];
extern struct Animation anim_drum_student_kit_crash[];
extern struct Animation anim_drum_student_kit_tom[];
extern struct Animation anim_drum_student_kit_splash[];
extern struct Animation anim_drum_student_kit_pedal_r[];
extern struct Animation anim_drum_student_kit_seat[];
extern struct Animation anim_drum_student_kit_layout_test[];
extern struct Animation anim_drum_student_use_crash[];
extern struct Animation anim_drum_student_use_snare_r[];
extern struct Animation anim_drum_student_use_snare_l[];
extern struct Animation anim_drum_student_use_hihat[];
extern struct Animation anim_drum_student_use_tom[];
extern struct Animation anim_drum_student_use_splash[];
extern struct Animation anim_drum_student_head[];
extern struct Animation anim_drum_student_body[];
extern struct Animation anim_drum_student_use_pedal_r[];
extern struct Animation anim_drum_student_use_layout_test[];
extern struct Animation anim_drum_studio_memory_warning[];
extern struct Animation anim_drum_studio_song_title_bubble[];
extern struct Animation anim_drum_studio_save_option_y[];
extern struct Animation anim_drum_studio_save_option_n[];
extern struct Animation anim_drum_student_stick_twirl[];
extern struct Animation anim_drum_student_use_pedal_l[];
extern struct Animation anim_drum_student_kit_pedal_l[];
extern struct Animation anim_drum_student_snare_roll[];
extern struct Animation anim_drum_student_coffee_steam[];
extern struct Animation anim_drum_student_drink_coffee[];
extern struct Animation anim_drum_student_layout_test_partial[];
extern struct Animation anim_drum_student_kit_pedal_hihat[];
extern struct Animation anim_drum_student_use_pedal_hihat[];
extern struct Animation anim_drum_student_happy[];
extern struct Animation anim_drum_lessons_rank_s[];
extern struct Animation anim_drum_lessons_rank_a[];
extern struct Animation anim_drum_lessons_rank_b[];
extern struct Animation anim_drum_lessons_rank_c[];

/* DRUM LESSONS (TEACHER) - ANIMATIONS */

extern struct Animation anim_drum_teacher_kit_layout_test[];
extern struct Animation anim_drum_teacher_kit_bass[];
extern struct Animation anim_drum_teacher_kit_pedal_r[];
extern struct Animation anim_drum_teacher_kit_pedal_l[];
extern struct Animation anim_drum_teacher_kit_snare[];
extern struct Animation anim_drum_teacher_kit_tom[];
extern struct Animation anim_drum_teacher_kit_hihat[];
extern struct Animation anim_drum_teacher_kit_splash[];
extern struct Animation anim_drum_teacher_kit_crash[];
extern struct Animation anim_drum_teacher_use_snare_r[];
extern struct Animation anim_drum_teacher_use_crash[];
extern struct Animation anim_drum_teacher_use_snare_l[];
extern struct Animation anim_drum_teacher_use_tom[];
extern struct Animation anim_drum_teacher_use_hihat[];
extern struct Animation anim_drum_teacher_use_splash[];
extern struct Animation anim_drum_teacher_head[];
extern struct Animation anim_drum_teacher_body[];
extern struct Animation anim_drum_teacher_use_pedal_r[];
extern struct Animation anim_drum_teacher_use_pedal_l[];
extern struct Animation anim_drum_teacher_kit_seat[];
extern struct Animation anim_drum_teacher_snare_roll[];
extern struct Animation anim_drum_teacher_watching[];
extern struct Animation anim_drum_teacher_finish_pattern_face[];
extern struct Animation anim_drum_teacher_finish_pattern_arm[];
extern struct Animation anim_drum_teacher_fail_pattern_face[];
extern struct Animation anim_drum_teacher_fail_pattern_arm_r[];
extern struct Animation anim_drum_teacher_fail_pattern_arm_l[];
extern struct Animation anim_drum_teacher_finish_lesson_face[];
extern struct Animation anim_drum_teacher_finish_lesson_arm[];
extern struct Animation anim_drum_lessons_text_adv_icon[];
extern struct Animation anim_drum_lessons_slow_icon[];
extern struct Animation anim_drum_lessons_accuracy_light_all[];
extern struct Animation anim_drum_lessons_accuracy_light1[];
extern struct Animation anim_drum_lessons_accuracy_light2[];
extern struct Animation anim_drum_lessons_accuracy_light3[];
extern struct Animation anim_drum_lessons_accuracy_light4[];
extern struct Animation anim_drum_lessons_accuracy_light5[];
extern struct Animation anim_drum_lessons_accuracy_light6[];
extern struct Animation anim_drum_lessons_accuracy_light7[];

/* DRUM LESSONS (UNKNOWN) - ANIMATIONS */

extern struct Animation anim_drum_lessons_unk00[];
extern struct Animation anim_drum_lessons_unk01[];

/* DRUM LESSONS - COMPRESSED GRAPHICS */

extern struct CompressedData drum_studio_bg_tiles;
extern struct CompressedData drum_studio_bg_map;
extern struct CompressedData drum_studio_obj;
extern struct CompressedData drum_studio_bg_map_lessons;
extern struct CompressedData drum_lessons_bg_tiles;
extern struct CompressedData drum_lessons_bg_map;
extern struct CompressedData drum_lessons_bg_map_level_up;
extern struct CompressedData drum_lessons_obj;

// BG Monitor
extern struct CompressedData drum_studio_lines_bg_tiles;
extern struct CompressedData drum_studio_lines_bg_map_1;
extern struct CompressedData drum_studio_lines_bg_map_2;
extern struct CompressedData drum_studio_stars_bg_tiles;
extern struct CompressedData drum_studio_stars_bg_map_1;
extern struct CompressedData drum_studio_stars_bg_map_2;
extern struct CompressedData drum_studio_clouds_bg_tiles;
extern struct CompressedData drum_studio_clouds_bg_map_1;
extern struct CompressedData drum_studio_clouds_bg_map_2;
extern struct CompressedData drum_studio_flowers_bg_tiles;
extern struct CompressedData drum_studio_flowers_bg_map_1;
extern struct CompressedData drum_studio_flowers_bg_map_2;
extern struct CompressedData drum_studio_stationery_bg_tiles;
extern struct CompressedData drum_studio_stationery_bg_map_1;
extern struct CompressedData drum_studio_stationery_bg_map_2;
extern struct CompressedData drum_studio_sparkles_bg_tiles;
extern struct CompressedData drum_studio_sparkles_bg_map_1;
extern struct CompressedData drum_studio_sparkles_bg_map_2;
extern struct CompressedData drum_studio_fruit_bg_tiles;
extern struct CompressedData drum_studio_fruit_bg_map_1;
extern struct CompressedData drum_studio_fruit_bg_map_2;
extern struct CompressedData drum_studio_fish_bg_tiles;
extern struct CompressedData drum_studio_fish_bg_map_1;
extern struct CompressedData drum_studio_fish_bg_map_2;
extern struct CompressedData drum_studio_japan_bg_tiles;
extern struct CompressedData drum_studio_japan_bg_map_1;
extern struct CompressedData drum_studio_japan_bg_map_2;
extern struct CompressedData drum_studio_beach_bg_tiles;
extern struct CompressedData drum_studio_beach_bg_map_1;
extern struct CompressedData drum_studio_beach_bg_map_2;
extern struct CompressedData drum_studio_hearts_bg_tiles;
extern struct CompressedData drum_studio_hearts_bg_map_1;
extern struct CompressedData drum_studio_hearts_bg_map_2;
extern struct CompressedData drum_studio_circles_bg_tiles;
extern struct CompressedData drum_studio_circles_bg_map_1;
extern struct CompressedData drum_studio_circles_bg_map_2;
extern struct CompressedData drum_studio_city_bg_tiles;
extern struct CompressedData drum_studio_city_bg_map_1;
extern struct CompressedData drum_studio_city_bg_map_2;
extern struct CompressedData drum_studio_checkerboard_bg_tiles;
extern struct CompressedData drum_studio_checkerboard_bg_map_1;
extern struct CompressedData drum_studio_checkerboard_bg_map_2;
extern struct CompressedData drum_studio_squares_bg_tiles;
extern struct CompressedData drum_studio_squares_bg_map_1;
extern struct CompressedData drum_studio_squares_bg_map_2;


/* DRUM LESSONS - PALETTES */

extern Palette drum_lessons_obj_pal[];
extern Palette drum_lessons_bg_pal[];
extern Palette drum_lessons_bg_screen_pal[];
