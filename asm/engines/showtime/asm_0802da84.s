asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802da84 \n\
/* 0802da84 */ PUSH {R4-R7, LR} \n\
/* 0802da86 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0802da88 */ PUSH {R7} \n\
/* 0802da8a */ SUB SP, 0x14 \n\
/* 0802da8c */ LDR R0, =gCurrentEngineData \n\
/* 0802da8e */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0802da90 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0802da92 */ LDR R7, =gSpriteHandler \n\
/* 0802da94 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802da96 */ MOVS R6, 0xF @ Set R6 to 0xF \n\
 \n\
branch_0802da98: \n\
/* 0802da98 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0802da9a */ LDR R0, [R1] \n\
/* 0802da9c */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0802da9e */ LSLS R2, R2, 0x2 \n\
/* 0802daa0 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802daa2 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802daa4 */ STR R5, [R0] \n\
/* 0802daa6 */ LDR R0, [R7] \n\
/* 0802daa8 */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 0802daaa */ STR R1, [SP] \n\
/* 0802daac */ STR R5, [SP, 0x4] \n\
/* 0802daae */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802dab0 */ STR R1, [SP, 0x8] \n\
/* 0802dab2 */ STR R5, [SP, 0xC] \n\
/* 0802dab4 */ STR R5, [SP, 0x10] \n\
/* 0802dab6 */ LDR R1, =anim_showtime_bubble \n\
/* 0802dab8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802daba */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 0802dabc */ BL sprite_create \n\
/* 0802dac0 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802dac2 */ LDR R2, [R3] \n\
/* 0802dac4 */ MOVS R3, 0x81 @ Set R3 to 0x81 \n\
/* 0802dac6 */ LSLS R3, R3, 0x2 \n\
/* 0802dac8 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 0802daca */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802dacc */ LSLS R0, R0, 0x10 \n\
/* 0802dace */ ASRS R0, R0, 0x10 \n\
/* 0802dad0 */ STR R0, [R1] \n\
/* 0802dad2 */ ADDS R3, 0x4 @ Add 0x4 to R3 \n\
/* 0802dad4 */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 0802dad6 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802dad8 */ STR R5, [R0] \n\
/* 0802dada */ LDR R0, [R7] \n\
/* 0802dadc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802dade */ LDRSH R1, [R1, R2] \n\
/* 0802dae0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802dae2 */ BL sprite_set_visible \n\
/* 0802dae6 */ ADDS R4, 0x1C @ Add 0x1C to R4 \n\
/* 0802dae8 */ SUBS R6, 0x1 @ Subtract 0x1 from R6 \n\
/* 0802daea */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0802daec */ BGE branch_0802da98 \n\
/* 0802daee */ ADD SP, 0x14 \n\
/* 0802daf0 */ POP {R3} \n\
/* 0802daf2 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802daf4 */ POP {R4-R7} \n\
/* 0802daf6 */ POP {R0} \n\
/* 0802daf8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
