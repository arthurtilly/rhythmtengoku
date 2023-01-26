#pragma once

#include "global.h"
#include "sound.h"
#include "graphics.h"


/* Placeholder BeatScript Format */


enum BSType {
    BS_INT8,
    BS_INT16,
    BS_INT32,
    BS_FUNC
};

enum BSDuration {
    BS_REALTIME,
    BS_TO_TEMPO
};

enum BSColor {
    BS_BLACK = 0x0000,
    BS_WHITE = 0x7FFF
};

enum BSMusicTrack {
    BS_TRACK_0 = (1 << MIDI_TRACK_0),
    BS_TRACK_1 = (1 << MIDI_TRACK_1),
    BS_TRACK_2 = (1 << MIDI_TRACK_2),
    BS_TRACK_3 = (1 << MIDI_TRACK_3),
    BS_TRACK_4 = (1 << MIDI_TRACK_4),
    BS_TRACK_5 = (1 << MIDI_TRACK_5),
    BS_TRACK_6 = (1 << MIDI_TRACK_6),
    BS_TRACK_7 = (1 << MIDI_TRACK_7),
    BS_TRACK_8 = (1 << MIDI_TRACK_8),
    BS_TRACK_9 = (1 << MIDI_TRACK_9),
    BS_TRACK_10 = (1 << MIDI_TRACK_10),
    BS_TRACK_11 = (1 << MIDI_TRACK_11),
    BS_TRACK_12 = (1 << MIDI_TRACK_12),
    BS_TRACK_13 = (1 << MIDI_TRACK_13),
    BS_TRACK_14 = (1 << MIDI_TRACK_14),
    BS_TRACK_15 = (1 << MIDI_TRACK_15)
};



// New BeatScript Instruction
#define BS_UNDEFINED(cmd,arg1,arg2,arg3) { ((u32)(cmd)), ((u32)(arg1)), ((u32)(arg2)), ((u32)(arg3)) }

/*
 * SCRIPT OPERATION COMMANDS
 *
 * Commands related to moving around scripts.
 */

// Command 0x00: Rest
#define BS_REST(beats) BS_UNDEFINED(0x00,0,0,beats)

// Command 0x01: Stop
#define BS_STOP BS_UNDEFINED(0x01,0,0,0)

// Command 0xB1: Reset Rest Timer
#define BS_REST_RESET BS_UNDEFINED(0xB1,0,0,0)

// Command 0x0D: Branch with Link
#define BS_CALL(script) BS_UNDEFINED(0x0D,0,script,0)

// Command 0xB0: Branch with Link to Predefined Script (D_030053c0 + 0x24)
#define BS_CALL_RESULT BS_UNDEFINED(0xB0,0,0,0)

// Command 0x0E: Return from Branch
#define BS_RETURN BS_UNDEFINED(0x0E,0,0,0)

// Command 0x0F: Branch (without Link)
#define BS_GOTO(script) BS_UNDEFINED(0x0F,0,script,0)

// Command 0x10: Loop Start
#define BS_START_LOOP BS_UNDEFINED(0x10,0,0,0)

// Command 0x11: Loop End
#define BS_END_LOOP BS_UNDEFINED(0x11,0,0,0)

// Command 0x12: Conditional - If Equal
#define BS_IF_EQ(type,ptr,val) BS_UNDEFINED(0x12,type,ptr,val)

// Command 0x13: Conditional - If Not Equal
#define BS_IF_NEQ(type,ptr,val) BS_UNDEFINED(0x13,type,ptr,val)

// Command 0x14: Else
#define BS_ELSE BS_UNDEFINED(0x14,0,0,0)

// Command 0x15: Conditional Statement End
#define BS_END_IF BS_UNDEFINED(0x15,0,0,0)

// Command 0x16: Conditional - If Set
#define BS_IF_SET(ptr,bit) BS_UNDEFINED(0x16,0,ptr,bit)

// Command 0x17: Conditional - If Clear
#define BS_IF_CLEAR(ptr,bit) BS_UNDEFINED(0x17,0,ptr,bit)

// Command 0x1A: Switch Statement Start
#define BS_SWITCH(type,ptr) BS_UNDEFINED(0x1A,type,0,ptr)

// Command 0x1B: Switch Statement End
#define BS_END_SWITCH BS_UNDEFINED(0x1B,0,0,0)

// Command 0x1C: Switch Case Start
#define BS_CASE(var) BS_UNDEFINED(0x1C,0,0,var)

// Command 0x1D: Switch Case End
#define BS_BREAK BS_UNDEFINED(0x1D,0,0,0)

// Command 0x4F: Default Switch Case
#define BS_DEFAULT BS_UNDEFINED(0x4F,0,0,0)

// Command 0x21: Conditional (Scene) - If Equal
#define BS_SCENE_IF_EQ(type,index,val) BS_UNDEFINED(0x21,type,index,val)

// Command 0x22: Conditional (Scene) - If Not Equal
#define BS_SCENE_IF_NEQ(type,index,val) BS_UNDEFINED(0x22,type,index,val)

// Command 0x23: Conditional (Scene) - Switch Statement Start
#define BS_SCENE_SWITCH(type,index) BS_UNDEFINED(0x23,type,0,index)


/*
 * GENERAL OPERATION COMMANDS
 *
 * Commands related to operating on variables and running functions generically.
*/

// Command 0x02: Run Function with Stored Parameter (D_03005588)
#define BS_SCENE_RUN(func,arg) BS_UNDEFINED(0x02,0,func,arg)

// Command 0x03: Run Function with 1 Argument
#define BS_RUN1(func,arg) BS_UNDEFINED(0x03,0,func,arg)

// Command 0x04: Run Function with 2 Arguments
#define BS_RUN2(func,arg1,arg2) BS_UNDEFINED(0x04,arg1,func,arg2)

// Command 0x05: Set Variable at Pointer
#define BS_SET_INT(type,ptr,val) BS_UNDEFINED(0x05,type,ptr,val)

// Command 0x06: Add to Variable at Pointer
#define BS_ADD_INT(type,ptr,val) BS_UNDEFINED(0x06,type,ptr,val)

// Command 0x07: Set Bit in Variable at Pointer
#define BS_SET_BIT(type,ptr,bit) BS_UNDEFINED(0x07,type,ptr,bit)

// Command 0x08: Clear Bit in Variable at Pointer
#define BS_CLEAR_BIT(type,ptr,bit) BS_UNDEFINED(0x08,type,ptr,bit)

// Command 0x09: Set Variable in Scene
#define BS_SCENE_SET_INT(type,index,val) BS_UNDEFINED(0x09,type,index,val)

// Command 0x0A: Add to Variable in Scene
#define BS_SCENE_ADD_INT(type,index,val) BS_UNDEFINED(0x0A,type,index,val)

// Command 0x0B: Set Bit in Variable in Scene
#define BS_SCENE_SET_BIT(type,index,bit) BS_UNDEFINED(0x0B,type,index,bit)

// Command 0x0C: Clear Bit in Variable in Scene
#define BS_SCENE_CLEAR_BIT(type,index,bit) BS_UNDEFINED(0x0C,type,index,bit)


/*
 * SOUND & TIMING COMMANDS
 *
 * Commands related to playing and operating on music and sound effects.
 * Also includes commands related to script speed.
*/

// Command 0x28: Play Music
#define BS_PLAY_MUSIC(playerID,music) BS_UNDEFINED(0x28,0,playerID,music)

// Command 0x3A: Play Music (without overriding existing music)
#define BS_ADD_MUSIC(playerID,music) BS_UNDEFINED(0x3A,0,playerID,music)

// Command 0x29: Play Sound Effect
#define BS_PLAY_SOUND(sound) BS_UNDEFINED(0x29,0,0,sound)

// Command 0xAE: Play Sound Effect (at volume & pitch)
#define BS_PLAY_SOUND_SP(sound,volume,pitch) BS_UNDEFINED(0xAE,volume,pitch,sound)

// Command 0xB2: Play Sound Effect to Tempo (at volume & pitch)
#define BS_PLAY_SOUND_SYNCED(sound,baseBPM,volume,pitch) BS_UNDEFINED(0xB2,baseBPM,((pitch)<<16)&((u16)(volume)),sound)

// Command 0x35: Fade-In Music
#define BS_FADE_MUSIC_IN(inBeats, duration) BS_UNDEFINED(0x35,inBeats,0,duration)

// Command 0x36: Fade-Out Music
#define BS_FADE_MUSIC_OUT(inBeats, duration) BS_UNDEFINED(0x36,inBeats,0,duration)

// Command 0x38: Fade-Out Sound Effect
#define BS_FADE_SOUND_OUT(sound,duration) BS_UNDEFINED(0x38,0,sound,duration)

// Command 0x3C: Set Speed
#define BS_SET_SPEED(speed) BS_UNDEFINED(0x3C,0,0,speed)

// Command 0xA7: Set Speed to Music (this also plays the given music)
#define BS_SET_SPEED_TO_MUSIC(music) BS_UNDEFINED(0xA7,0,0,music)

// Command 0x3D: Set Music Pitch (effectively unused)
#define BS_SET_PITCH_S(pitch) BS_UNDEFINED(0x3D,0,0,pitch)

// Command 0x3E: Set Music Pitch
#define BS_SET_PITCH(pitch) BS_UNDEFINED(0x3E,0,0,pitch)

// Command 0x4C: Gradually Change Tempo
#define BS_MOD_TEMPO(targetBPM,duration) BS_UNDEFINED(0x4C,0,targetBPM,duration)

// Command 0xAF: Gradually Add to Speed Multiplier
#define BS_MULTIPLY_SPEED(multiplier,duration) BS_UNDEFINED(0xAF,0,multiplier,duration)

// Command 0x4E: Gradually Change Music Pitch
#define BS_MOD_PITCH(targetPitch,duration) BS_UNDEFINED(0x4E,0,targetPitch,duration)

// Command 0x50: Gradually Change Music Volume
#define BS_MOD_VOLUME(targetVolume,duration) BS_UNDEFINED(0x50,0,targetVolume,duration)

// Command 0xAC: Set Music Track Volume
#define BS_SET_TRACK_VOLUME(tracks,volume) BS_UNDEFINED(0xAC,tracks,volume,0)

// Command 0xAD: Gradually Change Music Track Volume
#define BS_MOD_TRACK_VOLUME(tracks,targetVolume,duration) BS_UNDEFINED(0xAD,tracks,targetVolume,duration)


/*
 * GRAPHICS COMMANDS
 *
 * Commands related to modifying and displaying graphics.
*/

// Command 0x39: Load Graphics Table (immediate, for smaller and less compressed graphics sources)
#define BS_LOAD_GRAPHICS(gfxTable) BS_UNDEFINED(0x39,0,gfxTable,0)

// Command 0x47: Load Graphics Table as Task (with bytes-per-update process limit)
#define BS_TASK_LOAD_GRAPHICS(gfxTable,processLimit) BS_UNDEFINED(0x47,0,gfxTable,processLimit)

// Command 0xA6: DMA3 Set
#define BS_DMA3_SET(tileCount,src,dest) BS_UNDEFINED(0xA6, tileCount, src, dest)

// Command 0x3F: Modify BG Layer Display
#define BS_MOD_BLEND_LEVEL(reverse,blendControls,inBeats,duration) BS_UNDEFINED(0x3F,reverse,blendControls,((inBeats<<31)&(duration)))
#define BS_MOD_BLEND_LEVEL_TO(blendControls,inBeats,duration) BS_UNDEFINED(0x3F,0,blendControls,((inBeats<<31)&(duration)))
#define BS_MOD_BLEND_LEVEL_FROM(blendControls,inBeats,duration) BS_UNDEFINED(0x3F,1,blendControls,((inBeats<<31)&(duration)))

// Command 0x4A: Fade-In Palette From Solid Colour
#define BS_FADE_SCREEN(reverse,duration,colour) BS_UNDEFINED(0x4A, reverse, duration, colour)
#define BS_FADE_SCREEN_IN(duration,colour) BS_UNDEFINED(0x4A, 0, duration, colour)
#define BS_FADE_SCREEN_OUT(duration,colour) BS_UNDEFINED(0x4A, 1, duration, colour)
