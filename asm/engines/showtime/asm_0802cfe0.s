asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802cfe0 \n\
/* 0802cfe0 */ PUSH {R4-R7, LR} \n\
/* 0802cfe2 */ SUB SP, 0xC \n\
/* 0802cfe4 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0802cfe6 */ LDR R7, =gCurrentEngineData \n\
/* 0802cfe8 */ LDR R2, [R7] \n\
/* 0802cfea */ LSLS R0, R5, 0x2 \n\
/* 0802cfec */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0802cfee */ LSLS R6, R0, 0x3 \n\
/* 0802cff0 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802cff2 */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0802cff4 */ ADDS R1, R0, R6 @ Set R1 to R0 + R6 \n\
/* 0802cff6 */ LDR R0, [R1] \n\
/* 0802cff8 */ CMP R0, 0x6 @ Compare R0 and 0x6 \n\
/* 0802cffa */ BNE branch_0802d052 \n\
/* 0802cffc */ MOVS R0, 0x9 @ Set R0 to 0x9 \n\
/* 0802cffe */ STR R0, [R1] \n\
/* 0802d000 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802d002 */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0802d004 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0802d006 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802d008 */ STR R4, [R0] \n\
/* 0802d00a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0802d00c */ BL func_0802d068 \n\
/* 0802d010 */ LDR R1, [R7] \n\
/* 0802d012 */ ADDS R1, 0x34 @ Add 0x34 to R1 \n\
/* 0802d014 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0802d016 */ STR R0, [R1] \n\
/* 0802d018 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0802d01a */ BL func_0802d080 \n\
/* 0802d01e */ LDR R2, [R7] \n\
/* 0802d020 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0802d022 */ ADDS R1, 0x38 @ Add 0x38 to R1 \n\
/* 0802d024 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0802d026 */ STR R0, [R1] \n\
/* 0802d028 */ LDR R5, =gSpriteHandler \n\
/* 0802d02a */ LDR R0, [R5] \n\
/* 0802d02c */ ADDS R2, R2, R6 @ Set R2 to R2 + R6 \n\
/* 0802d02e */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0802d030 */ LDRSH R1, [R2, R3] \n\
/* 0802d032 */ LDR R2, =anim_showtime_penguin_catch \n\
/* 0802d034 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802d036 */ STR R3, [SP] \n\
/* 0802d038 */ STR R4, [SP, 0x4] \n\
/* 0802d03a */ STR R4, [SP, 0x8] \n\
/* 0802d03c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802d03e */ BL sprite_set_anim \n\
/* 0802d042 */ LDR R0, [R5] \n\
/* 0802d044 */ LDR R1, [R7] \n\
/* 0802d046 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0802d048 */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0802d04a */ LDRSH R1, [R1, R2] \n\
/* 0802d04c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802d04e */ BL sprite_set_anim_cel \n\
 \n\
branch_0802d052: \n\
/* 0802d052 */ ADD SP, 0xC \n\
/* 0802d054 */ POP {R4-R7} \n\
/* 0802d056 */ POP {R0} \n\
/* 0802d058 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
