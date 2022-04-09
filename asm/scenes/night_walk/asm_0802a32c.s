asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802a32c \n\
/* 0802a32c */ PUSH {R4-R6, LR} \n\
/* 0802a32e */ SUB SP, 0xC \n\
/* 0802a330 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0802a332 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0802a334 */ ADDS R1, 0x5A @ Add 0x5A to R1 \n\
/* 0802a336 */ LDRH R0, [R1] \n\
/* 0802a338 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0802a33a */ STRH R0, [R1] \n\
/* 0802a33c */ LSLS R0, R0, 0x10 \n\
/* 0802a33e */ LSRS R5, R0, 0x10 \n\
/* 0802a340 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0802a342 */ BNE branch_0802a378 \n\
/* 0802a344 */ LDR R4, =D_03005380 \n\
/* 0802a346 */ LDR R0, [R4] \n\
/* 0802a348 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802a34a */ LDRSH R1, [R6, R2] \n\
/* 0802a34c */ LDR R2, =D_088ca158 \n\
/* 0802a34e */ STR R5, [SP] \n\
/* 0802a350 */ STR R5, [SP, 0x4] \n\
/* 0802a352 */ STR R5, [SP, 0x8] \n\
/* 0802a354 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802a356 */ BL func_0804d8f8 \n\
/* 0802a35a */ LDR R0, [R4] \n\
/* 0802a35c */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0802a35e */ ADDS R1, 0x5C @ Add 0x5C to R1 \n\
/* 0802a360 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802a362 */ LDRSH R1, [R1, R2] \n\
/* 0802a364 */ LDR R2, =D_088c9b08 \n\
/* 0802a366 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802a368 */ STR R3, [SP] \n\
/* 0802a36a */ STR R5, [SP, 0x4] \n\
/* 0802a36c */ STR R5, [SP, 0x8] \n\
/* 0802a36e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802a370 */ BL func_0804d8f8 \n\
/* 0802a374 */ BL func_0802a224 \n\
 \n\
branch_0802a378: \n\
/* 0802a378 */ ADD SP, 0xC \n\
/* 0802a37a */ POP {R4-R6} \n\
/* 0802a37c */ POP {R0} \n\
/* 0802a37e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
