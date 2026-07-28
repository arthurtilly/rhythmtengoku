asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803f0b8 \n\
/* 0803f0b8 */ PUSH {R4, R5, LR} \n\
/* 0803f0ba */ SUB SP, 0x4 \n\
/* 0803f0bc */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803f0be */ LDR R4, =gCurrentEngineData \n\
/* 0803f0c0 */ LDR R0, [R4] \n\
/* 0803f0c2 */ MOVS R2, 0xDF @ Set R2 to 0xDF \n\
/* 0803f0c4 */ LSLS R2, R2, 0x2 \n\
/* 0803f0c6 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0803f0c8 */ LDRB R0, [R0] \n\
/* 0803f0ca */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803f0cc */ BEQ branch_0803f10e \n\
/* 0803f0ce */ LDR R3, =D_03004b10 \n\
/* 0803f0d0 */ LDR R0, =D_089e869c \n\
/* 0803f0d2 */ LSLS R1, R1, 0x2 \n\
/* 0803f0d4 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0803f0d6 */ LDRH R2, [R1] \n\
/* 0803f0d8 */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
/* 0803f0da */ LSLS R5, R5, 0x1 \n\
/* 0803f0dc */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0803f0de */ SUBS R0, R0, R2 @ Set R0 to R0 - R2 \n\
/* 0803f0e0 */ STRH R0, [R3, 0xC] \n\
/* 0803f0e2 */ LDRH R1, [R1, 0x2] \n\
/* 0803f0e4 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0803f0e6 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0803f0e8 */ STRH R0, [R3, 0xE] \n\
/* 0803f0ea */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0803f0ec */ BL ticks_to_frames \n\
/* 0803f0f0 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803f0f2 */ LDR R2, [R4] \n\
/* 0803f0f4 */ LDR R0, =0x39a \n\
/* 0803f0f6 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0803f0f8 */ MOVS R0, 0xA @ Set R0 to 0xA \n\
/* 0803f0fa */ STR R0, [SP] \n\
/* 0803f0fc */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803f0fe */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803f100 */ BL scene_start_integer_interp \n\
/* 0803f104 */ LDR R0, =s_ninja_wind_seqData \n\
/* 0803f106 */ MOVS R1, 0xA0 @ Set R1 to 0xA0 \n\
/* 0803f108 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803f10a */ BL play_sound_w_pitch_volume \n\
 \n\
branch_0803f10e: \n\
/* 0803f10e */ ADD SP, 0x4 \n\
/* 0803f110 */ POP {R4, R5} \n\
/* 0803f112 */ POP {R0} \n\
/* 0803f114 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
