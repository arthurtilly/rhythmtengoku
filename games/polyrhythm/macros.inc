
/* ------------------------ Beatscript Labels: Polyrhythm ------------------------ */


@ Load Data
.macro load_polyrhythm_labels
    @ Game Events
    .set SPAWN_BLOCK,       0x00
    .set DESPAWN_BLOCKS,    0x01
    .set RETRACT_PISTONS,   0x02
    .set SPAWN_ROD,         0x03
    .set PLAY_APPLAUSE_SFX, 0x04

    @ Cues
    .set CUE_H_UPSIDE,      0x00
    .set CUE_H_DOWNSIDE,    0x01
    .set CUE_4_UPSIDE,      0x04
    .set CUE_4_DOWNSIDE,    0x05
    .set CUE_8_UPSIDE,      0x08
    .set CUE_8_DOWNSIDE,    0x09

    @ Lanes
    .set UPSIDE,    0
    .set DOWNSIDE,  1

    @ Block Types
    .set PLATFORM,          0
    .set PISTON_UPSIDE,     1
    .set PISTON_DOWNSIDE,   2
.endm


@ Load Game: Polyrhythm
.macro load_polyrhythm
    load_polyrhythm_labels
    load_game polyrhythm_engine, 0
.endm

@ Load Game: Polyrhythm (Remix 4, Remix 6)
.macro load_polyrhythm_remix
    load_polyrhythm_labels
    load_game polyrhythm_engine, 1
.endm

@ Load Game: Polyrhythm 2
.macro load_polyrhythm_2
    load_polyrhythm_labels
    load_game polyrhythm_engine, 2
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro polyrhythm_event event, args
    game_event polyrhythm_engine, \event, \args
.endm


@ [Event 0x00] Spawn Block
.macro polyrhythm_spawn_block blockID, lane, blockType
    polyrhythm_event SPAWN_BLOCK, (((\blockID & 0xF)) | ((\lane & 1) << 4) | ((\blockType) << 5))
.endm


@ [Event 0x01] Despawn All Blocks on Lane
.macro polyrhythm_despawn_blocks lane
    polyrhythm_event DESPAWN_BLOCKS, \lane
.endm


@ [Event 0x02] Retract All Pistons on Lane
.macro polyrhythm_retract_pistons lane
    polyrhythm_event RETRACT_PISTONS, \lane
.endm


@ [Event 0x03] Spawn Rod on Lane
.macro polyrhythm_spawn_rod lane
    polyrhythm_event SPAWN_ROD, \lane
.endm


@ [Event 0x04] Play Applause SFX on Successful Pattern
.macro polyrhythm_play_applause_sfx
    polyrhythm_event PLAY_APPLAUSE_SFX, 0
.endm
