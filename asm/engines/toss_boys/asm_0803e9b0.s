asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803e9b0 \n\
/* 0803e9b0 */ PUSH {R4, LR} \n\
/* 0803e9b2 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803e9b4 */ LDR R0, =gCurrentEngineData \n\
/* 0803e9b6 */ LDR R1, [R0] \n\
/* 0803e9b8 */ MOVS R3, 0xDF @ Set R3 to 0xDF \n\
/* 0803e9ba */ LSLS R3, R3, 0x2 \n\
/* 0803e9bc */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0803e9be */ LDRB R0, [R0] \n\
/* 0803e9c0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803e9c2 */ BEQ branch_0803e9fe \n\
/* 0803e9c4 */ ADDS R3, 0x1A @ Add 0x1A to R3 \n\
/* 0803e9c6 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0803e9c8 */ LDRH R0, [R0] \n\
/* 0803e9ca */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803e9cc */ BNE branch_0803e9fe \n\
/* 0803e9ce */ ADDS R3, 0x2 @ Add 0x2 to R3 \n\
/* 0803e9d0 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0803e9d2 */ LDRB R0, [R0] \n\
/* 0803e9d4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803e9d6 */ BNE branch_0803e9fe \n\
/* 0803e9d8 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0803e9da */ LSLS R1, R1, 0x1 \n\
/* 0803e9dc */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0803e9de */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803e9e0 */ BL play_drumtech_note \n\
/* 0803e9e4 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803e9e6 */ BL get_beatscript_tempo \n\
/* 0803e9ea */ LSLS R0, R0, 0x8 \n\
/* 0803e9ec */ MOVS R1, 0x78 @ Set R1 to 0x78 \n\
/* 0803e9ee */ BL __divsi3 \n\
/* 0803e9f2 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803e9f4 */ LSLS R1, R1, 0x10 \n\
/* 0803e9f6 */ LSRS R1, R1, 0x10 \n\
/* 0803e9f8 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803e9fa */ BL set_soundplayer_speed \n\
 \n\
branch_0803e9fe: \n\
/* 0803e9fe */ POP {R4} \n\
/* 0803ea00 */ POP {R0} \n\
/* 0803ea02 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
