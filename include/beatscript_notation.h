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
#define BSC_COND_IF_BIT_SET(ptr,val) BSC_UNDEFINED(0x16,0,ptr,val)

// Command 0x17: Conditional - If Clear
#define BSC_COND_IF_BIT_CLEAR(ptr,val) BSC_UNDEFINED(0x17,0,ptr,val)

// Command 0x1A: Switch Statement Start
#define BSC_SWITCH_ARG(ptr,type) BSC_UNDEFINED(0x1A,type,0,ptr)

// Command 0x1B: Switch Statement End
#define BSC_SWITCH_END BSC_UNDEFINED(0x1B,0,0,0)

// Command 0x1C: Switch Case Start
#define BSC_CASE(var) BSC_UNDEFINED(0x1C,0,0,var)

// Command 0x1D: Switch Case End
#define BSC_CASE_END BSC_UNDEFINED(0x1C,0,0,0)

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
#define BSC_PLAY_SOUND_2(sound,originalTempo,volume,pitch) BSC_UNDEFINED(0xB2,originalTempo,((pitch)<<16)&((u16)(volume)),sound)

// Command 0x35: Fade-In Music
#define BSC_MUSIC_FADE_IN(duration,inBeats) BSC_UNDEFINED(0x35,inBeats,0,duration)

// Command 0x36: Fade-Out Music
#define BSC_MUSIC_FADE_OUT(duration,inBeats) BSC_UNDEFINED(0x36,inBeats,0,duration)

// Command 0x38: Fade-Out Sound Effect
#define BSC_MUSIC_FADE_OUT(sound,duration) BSC_UNDEFINED(0x38,0,sound,duration)

// Command 0x3C: Set Speed
#define BSC_SET_SPEED(speed) BSC_UNDEFINED(0x3C,0,0,speed)

// Command 0xA7: Set Speed to Music (this also plays the given music)
#define BSC_SET_SPEED_TO_MUSIC(music) BSC_UNDEFINED(0xA7,0,0,music)

// Command 0x3D: Set Music Pitch (effectively unused)
#define BSC_SET_MUSIC_PITCH(pitch) BSC_UNDEFINED(0x3D,0,0,pitch)

// Command 0x3E: Set Music Pitch
#define BSC_SET_MUSIC_PITCH_2(pitch) BSC_UNDEFINED(0x3E,0,0,pitch)


/*
 * GRAPHICS COMMANDS
 *
 * Commands related to modifying and displaying graphics.
*/
