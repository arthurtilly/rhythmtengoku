#pragma once

#include "global.h"
#include "graphics.h"
#include "sound.h"
#include "data/beatscript_scene_data.h"

/*
    General "Scene"/"SubScene" header file.
    Should probably contain all of the functions and/or headers that are referenced in the scene C files,
    along with any other sort of common data.
*/

// Scene Static Info
extern void *gCurrentSceneData;

// Menus
extern struct Scene scene_riq_title;
extern struct Scene scene_results_ver_rank;
extern struct Scene scene_results_ver_debug;
extern struct Scene scene_results_ver_score;
extern struct Scene scene_epilogue;
extern struct Scene scene_game_select;
extern struct Scene scene_main_menu;
extern struct Scene scene_warning;
extern struct Scene scene_data_room;
extern struct Scene scene_data_clear;
extern struct Scene scene_studio;
extern struct Scene scene_options_menu;
extern struct Scene scene_perfect;
extern struct Scene scene_cafe;
extern struct Scene scene_toys_menu;
extern struct Scene scene_endless_menu;
extern struct Scene scene_lessons_menu;
extern struct Scene scene_debug_menu;

// Main Games
extern struct Scene scene_karate_man;
extern struct Scene scene_karate_man_2;
extern struct Scene scene_clappy_trio;
extern struct Scene scene_snappy_trio;
extern struct Scene scene_polyrhythm;
extern struct Scene scene_polyrhythm_2;
extern struct Scene scene_night_walk;
extern struct Scene scene_night_walk_2;
extern struct Scene scene_rhythm_tweezers;
extern struct Scene scene_rhythm_tweezers_2;
extern struct Scene scene_sick_beats;
extern struct Scene scene_bouncy_road;
extern struct Scene scene_bouncy_road_2;
extern struct Scene scene_ninja_bodyguard;
extern struct Scene scene_ninja_reincarnate;
extern struct Scene scene_sneaky_spirits;
extern struct Scene scene_sneaky_spirits_2;
extern struct Scene scene_samurai_slice;
extern struct Scene scene_spaceball;
extern struct Scene scene_spaceball_2;
extern struct Scene scene_tap_trial;
extern struct Scene scene_tap_trial_2;
extern struct Scene scene_marching_orders;
extern struct Scene scene_marching_orders_2;
extern struct Scene scene_wizards_waltz;
extern struct Scene scene_bunny_hop;
extern struct Scene scene_fireworks;
extern struct Scene scene_power_calligraphy;
extern struct Scene scene_power_calligraphy;
extern struct Scene scene_toss_boys;
extern struct Scene scene_toss_boys_2;
extern struct Scene scene_rat_race;
extern struct Scene scene_tram_pauline;
extern struct Scene scene_showtime;
extern struct Scene scene_space_dance;
extern struct Scene scene_cosmic_dance;
extern struct Scene scene_rap_men;
extern struct Scene scene_rap_women;
extern struct Scene scene_quiz_show;
extern struct Scene scene_bon_odori;
extern struct Scene scene_bon_dance;
extern struct Scene scene_remix_1;
extern struct Scene scene_remix_2;
extern struct Scene scene_remix_3;
extern struct Scene scene_remix_4;
extern struct Scene scene_remix_5;
extern struct Scene scene_remix_6;
extern struct Scene scene_remix_7;
extern struct Scene scene_remix_8;

// Medal Corner Games
extern struct Scene scene_mr_upbeat;
extern struct Scene scene_sick_beats_endless;
extern struct Scene scene_quiz_show_endless;
extern struct Scene scene_mannequin_factory;
extern struct Scene scene_cat_machine;
extern struct Scene scene_mechanical_horse;
extern struct Scene scene_love_machine;
extern struct Scene scene_rap_machine;
extern struct Scene scene_staff_credit;
extern struct Scene scene_drum_live;

// Drum Lessons
extern struct Scene scene_drum_lesson_basic_1;
extern struct Scene scene_drum_lesson_basic_2;
extern struct Scene scene_drum_lesson_short_1;
extern struct Scene scene_drum_lesson_short_2;
extern struct Scene scene_drum_lesson_short_3;
extern struct Scene scene_drum_lesson_short_4;
extern struct Scene scene_drum_lesson_short_5;
extern struct Scene scene_drum_lesson_short_6;
extern struct Scene scene_drum_lesson_short_7;
extern struct Scene scene_drum_lesson_short_8;
extern struct Scene scene_drum_lesson_short_9;
extern struct Scene scene_drum_lesson_long_1;
extern struct Scene scene_drum_lesson_long_2;
extern struct Scene scene_drum_lesson_long_3;
extern struct Scene scene_drum_lesson_long_4;
extern struct Scene scene_drum_lesson_long_5;
extern struct Scene scene_drum_lesson_long_6;
extern struct Scene scene_drum_lesson_hi_tech_1;
extern struct Scene scene_drum_lesson_hi_tech_2;

// Unlabelled
extern struct Scene D_089d48ec;
extern struct Scene D_089d4464;
extern struct Scene D_089d454c;
extern struct Scene D_089d4634;
extern struct Scene D_089d4804;
extern struct Scene D_089d80d0;
extern struct Scene D_089d6534;
extern struct Scene D_089cdad8;
extern struct Scene D_089d3a6c;
extern struct Scene D_089d3984;
extern struct Scene D_089d2f98;
extern struct Scene D_089de05c;
extern struct Scene D_089d2940;
extern struct Scene D_089d2670;
extern struct Scene D_089cd2cc;
extern struct Scene D_089d6d74;
