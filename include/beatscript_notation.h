/*
 * BeatScript command macros for directly writing scripts into C.
 * Could be used for converting alternative script files into C in the future.
 *
 * Each macro creates one BeatScript struct entry within an array.
 * With such an abundance of commands (to significant excess!), prioritise macro creation for notable commands.
 * Common function calls using commands 0x03 and 0x04 could use their own macros too.
 * Some commands could be grouped together, such as those used for loading engines or running engine events.
 */

#include "global.h"
#include "src/code_08001360.h"
#include "src/code_0800b778.h"
#include "src/scenes/gameplay.h"
#include "src/scenes/results.h"

enum BeatScriptArgType {
    BEATSCRIPT_ARG_BYTE,
    BEATSCRIPT_ARG_SHORT,
    BEATSCRIPT_ARG_INTEGER,
    BEATSCRIPT_ARG_FUNCTION
};

// New BeatScript Instruction
#define BSC_UNDEFINED(cmd,arg1,arg2,arg3) { ((u32)(cmd)), ((u32)(arg1)), ((u32)(arg2)), ((u32)(arg3)) }


/*
 * SCRIPT OPERATION COMMANDS
 *
 * Commands related to moving around scripts.
 */

// Command 0x00: Rest
#define BSC_REST(beats) BSC_UNDEFINED(0x00,0,0,beats)

// Command 0x01: Stop
#define BSC_STOP BSC_UNDEFINED(0x01,0,0,0)

// Command 0xB1: Reset Timer (flattens timeUntilNext)
#define BSC_RESET_TIMER BSC_UNDEFINED(0xB1,0,0,0)

// Command 0x0D: Branch with Link
#define BSC_BRANCH_W_LINK(script) BSC_UNDEFINED(0x0D,0,script,0)

// Command 0xB0: Branch with Link to Predefined Script (D_030053c0 + 0x24)
#define BSC_BRANCH_W_LINK_1 BSC_UNDEFINED(0xB0,0,0,0)

// Command 0x0E: Return from Branch
#define BSC_RETURN BSC_UNDEFINED(0x0E,0,0,0)

// Command 0x0F: Branch (without Link)
#define BSC_BRANCH(script) BSC_UNDEFINED(0x0F,0,script,0)

// Command 0x10: Loop Start
#define BSC_LOOP_START BSC_UNDEFINED(0x10,0,0,0)

// Command 0x11: Loop End
#define BSC_LOOP_END BSC_UNDEFINED(0x11,0,0,0)

// Command 0x12: Conditional - If Equal
#define BSC_COND_IF_VAR_EQUAL(ptr,type,val) BSC_UNDEFINED(0x12,type,ptr,val)

// Command 0x13: Conditional - If Not Equal
#define BSC_COND_IF_VAR_NOT_EQUAL(ptr,type,val) BSC_UNDEFINED(0x13,type,ptr,val)

// Command 0x14: Else
#define BSC_COND_ELSE BSC_UNDEFINED(0x14,0,0,0)

// Command 0x15: Conditional Statement End
#define BSC_COND_END BSC_UNDEFINED(0x15,0,0,0)

// Command 0x16: Conditional - If Set
#define BSC_COND_IF_BIT_SET(ptr,bit) BSC_UNDEFINED(0x16,0,ptr,bit)

// Command 0x17: Conditional - If Clear
#define BSC_COND_IF_BIT_CLEAR(ptr,bit) BSC_UNDEFINED(0x17,0,ptr,bit)

// Command 0x1A: Switch Statement Start
#define BSC_SWITCH_ARG(ptr,type) BSC_UNDEFINED(0x1A,type,0,ptr)

// Command 0x1B: Switch Statement End
#define BSC_SWITCH_END BSC_UNDEFINED(0x1B,0,0,0)

// Command 0x1C: Switch Case Start
#define BSC_CASE(var) BSC_UNDEFINED(0x1C,0,0,var)

// Command 0x1D: Switch Case End
#define BSC_CASE_END BSC_UNDEFINED(0x1D,0,0,0)

// Command 0x21: Conditional (Scene) - If Equal
#define BSC_COND_IF_SCENE_VAR_EQUAL(index,type,val) BSC_UNDEFINED(0x21,type,index,val)

// Command 0x22: Conditional (Scene) - If Not Equal
#define BSC_COND_IF_SCENE_VAR_NOT_EQUAL(index,type,val) BSC_UNDEFINED(0x22,type,index,val)

// Command 0x23: Conditional (Scene) - Switch Statement Start
#define BSC_SWITCH_ARG_SCENE(index,type) BSC_UNDEFINED(0x23,type,0,index)


/*
 * GENERAL OPERATION COMMANDS
 *
 * Commands related to operating on variables and running functions generically.
*/

// Command 0x02: Run Function with Stored Parameter (D_03005588)
#define BSC_RUN_FUNC_0(func,arg) BSC_UNDEFINED(0x02,0,func,arg)

// Command 0x03: Run Function with 1 Argument
#define BSC_RUN_FUNC_1(func,arg) BSC_UNDEFINED(0x03,0,func,arg)

// Command 0x04: Run Function with 2 Arguments
#define BSC_RUN_FUNC_2(func,arg1,arg2) BSC_UNDEFINED(0x04,arg1,func,arg2)

// Command 0x05: Set Variable at Pointer
#define BSC_SET_VAR(ptr,size,val) BSC_UNDEFINED(0x05,size,ptr,val)

// Command 0x06: Add to Variable at Pointer
#define BSC_ADD_VAR(ptr,size,val) BSC_UNDEFINED(0x06,size,ptr,val)

// Command 0x07: Set Bit in Variable at Pointer
#define BSC_SET_BIT(ptr,size,bit) BSC_UNDEFINED(0x07,size,ptr,bit)

// Command 0x08: Clear Bit in Variable at Pointer
#define BSC_CLEAR_BIT(ptr,size,bit) BSC_UNDEFINED(0x08,size,ptr,bit)

// Command 0x09: Set Variable in Scene
#define BSC_SCENE_SET_VAR(index,size,val) BSC_UNDEFINED(0x09,size,index,val)

// Command 0x0A: Add to Variable in Scene
#define BSC_SCENE_ADD_VAR(index,size,val) BSC_UNDEFINED(0x0A,size,index,val)

// Command 0x0B: Set Bit in Variable in Scene
#define BSC_SCENE_SET_BIT(index,size,bit) BSC_UNDEFINED(0x0B,size,index,bit)

// Command 0x0C: Clear Bit in Variable in Scene
#define BSC_SCENE_CLEAR_BIT(index,size,bit) BSC_UNDEFINED(0x0C,size,index,bit)


/*
 * SOUND & TIMING COMMANDS
 *
 * Commands related to playing and operating on music and sound effects.
 * Also includes commands related to script speed.
*/

// Command 0x28: Play Music
#define BSC_PLAY_MUSIC(playerID,music) BSC_UNDEFINED(0x28,0,playerID,music)

// Command 0x3A: Play Music (without overriding existing music)
#define BSC_ADD_MUSIC(playerID,music) BSC_UNDEFINED(0x3A,0,playerID,music)

// Command 0x29: Play Sound Effect
#define BSC_PLAY_SOUND(sound) BSC_UNDEFINED(0x29,0,0,sound)

// Command 0xAE: Play Sound Effect (at volume & pitch)
#define BSC_PLAY_SOUND_1(sound,volume,pitch) BSC_UNDEFINED(0xAE,volume,pitch,sound)

// Command 0xB2: Play Sound Effect to Tempo (at volume & pitch)
#define BSC_PLAY_SOUND_2(sound,baseBPM,volume,pitch) BSC_UNDEFINED(0xB2,baseBPM,((pitch)<<16)&((u16)(volume)),sound)

// Command 0x35: Fade-In Music
#define BSC_MUSIC_FADE_IN(duration,inBeats) BSC_UNDEFINED(0x35,inBeats,0,duration)

// Command 0x36: Fade-Out Music
#define BSC_MUSIC_FADE_OUT(duration,inBeats) BSC_UNDEFINED(0x36,inBeats,0,duration)

// Command 0x38: Fade-Out Sound Effect
#define BSC_SOUND_FADE_OUT(sound,duration) BSC_UNDEFINED(0x38,0,sound,duration)

// Command 0x3C: Set Speed
#define BSC_SET_SPEED(speed) BSC_UNDEFINED(0x3C,0,0,speed)

// Command 0xA7: Set Speed to Music (this also plays the given music)
#define BSC_SET_SPEED_TO_MUSIC(music) BSC_UNDEFINED(0xA7,0,0,music)

// Command 0x3D: Set Music Pitch (effectively unused)
#define BSC_SET_MUSIC_PITCH(pitch) BSC_UNDEFINED(0x3D,0,0,pitch)

// Command 0x3E: Set Music Pitch
#define BSC_SET_MUSIC_PITCH_2(pitch) BSC_UNDEFINED(0x3E,0,0,pitch)

// Command 0x4C: Gradually Change Tempo
#define BSC_CHANGE_TEMPO(targetBPM,duration) BSC_UNDEFINED(0x4C,0,targetBPM,duration)

// Command 0xAF: Gradually Multiply Speed
#define BSC_MULTIPLY_SPEED(multiplier,duration) BSC_UNDEFINED(0xAF,0,multiplier,duration)

// Command 0x4E: Gradually Change Music Pitch
#define BSC_CHANGE_MUSIC_PITCH(targetPitch,duration) BSC_UNDEFINED(0x4E,0,targetPitch,duration)

// Command 0x50: Gradually Change Music Volume
#define BSC_CHANGE_VOLUME(targetVolume,duration) BSC_UNDEFINED(0x50,0,targetVolume,duration)

// Command 0xAC: Set Music Track Volume
#define BSC_SET_MUSIC_TRACK_VOLUME(volume,tracks) BSC_UNDEFINED(0xAC,tracks,volume,0)

// Command 0xAD: Gradually Change Music Track Volume
#define BSC_CHANGE_MUSIC_TRACK_VOLUME(targetVolume,duration,tracks) BSC_UNDEFINED(0xAD,tracks,targetVolume,duration)


/*
 * GRAPHICS COMMANDS
 *
 * Commands related to modifying and displaying graphics.
*/

// Command 0x47: Load Graphics Table
#define BSC_LOAD_GRAPHICS_TABLE(ptr,arg) BSC_UNDEFINED(0x47,0,ptr,arg)

// Command 0x3F: Modify BG Layer Display
#define BSC_MODIFY_BG_LAYER(args,reverse,duration,inBeats) BSC_UNDEFINED(0x3F,reverse,args,((inBeats<<31)&(duration)))

// Command 0x4A: Fade-In Palette From Solid Colour
#define BSC_FADE_PALETTE_FROM_COLOUR(colour,reverse,duration) BSC_UNDEFINED(0x4A, reverse, duration, colour)


/*
 * COMMON FUNCTION CALLS
 *
 * Convenience macros for commonly-called functions.
*/

extern void func_0800bdf8();
#define BSC3_SET_TEMPO(bpm) BSC_RUN_FUNC_1(func_0800bdf8,bpm)

extern void func_0800c184();
#define BSC3_SET_MUSIC_PITCH(pitch) BSC_RUN_FUNC_1(func_0800c184,pitch)

extern void func_0800c0d8();
#define BSC3_SET_MUSIC_VOLUME(volume) BSC_RUN_FUNC_1(func_0800c0d8,volume)

extern void func_0801db04();
#define BSC3_ENABLE_PAUSE_MENU(enable) BSC_RUN_FUNC_1(func_0801db04,enable)

extern void func_080173c4();
#define BSC3_ENABLE_PLAY_INPUTS(enable) BSC_RUN_FUNC_1(func_080173c4,enable)

extern void func_08018660();
#define BSC3_DISPLAY_TEXT(text) BSC_RUN_FUNC_1(func_08018660,text)



extern void func_08019310();
#define BSC3_SET_RESULTS_HEADER(text) BSC_RUN_FUNC_1(func_08019310,text)

extern void func_08019304();
#define BSC3_IMPORT_MARKING_CRITERIA(index) BSC_RUN_FUNC_1(func_08019304,index)

extern void func_08019324();
#define BSC3_ENABLE_INPUT_ASSESSMENT(enable) BSC_RUN_FUNC_1(func_08019324,enable)

extern void func_08017908();
#define BSC3_SET_CURRENT_MARKING_CRITERIA(id) BSC_RUN_FUNC_1(func_08017908,id)

extern void func_080177dc();
#define BSC3_FORGIVE_X_MISSES(x) BSC_RUN_FUNC_1(func_080177dc,x)



extern void func_08017604();
#define BSC3_START_PERFECT_CAMPAIGN BSC_RUN_FUNC_1(func_08017604,0)

extern void func_08017648();
#define BSC3_ENABLE_PERFECT_ASSESSMENT(enable) BSC_RUN_FUNC_1(func_08017648,enable)



extern void func_08017188();
#define BSC4_LOAD_GAME_ENGINE(engine,version) BSC_RUN_FUNC_1(func_08017188,version,engine)

extern void func_08017380();
extern s32 func_0801738c();
#define BSC4_GAME_ENGINE_EVENT(engine,event,args) BSC_RUN_FUNC_1(func_08017380,args), BSC_RUN_FUNC_2(func_0801738c,event,engine)

extern s32 func_08017348();
#define BSC4_GAME_COMMON_EVENT(event,arg) BSC_RUN_FUNC_2(func_08017348,event,arg)
#define BSC4_GAME_COMMON_BEAT_ANIMATION(arg) BSC4_GAME_COMMON_EVENT(0,arg)
#define BSC4_GAME_COMMON_DISPLAY_TEXT(arg) BSC4_GAME_COMMON_EVENT(1,arg)
#define BSC4_GAME_COMMON_INIT_TUTORIAL(scene) BSC4_GAME_COMMON_EVENT(2,scene)

extern void func_080179f4();
#define BSC3_SPAWN_CUE(id) BSC_RUN_FUNC_1(func_080179f4,id)
