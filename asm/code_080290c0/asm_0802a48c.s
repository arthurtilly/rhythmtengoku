asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802a48c \n\
/* 0802a48c */ PUSH {R4-R7, LR} \n\
/* 0802a48e */ SUB SP, 0xC \n\
/* 0802a490 */ LDR R0, =D_030055d0 \n\
/* 0802a492 */ LDR R1, [R0] \n\
/* 0802a494 */ MOVS R0, 0xD6 @ Set R0 to 0xD6 \n\
/* 0802a496 */ LSLS R0, R0, 0x2 \n\
/* 0802a498 */ ADDS R5, R1, R0 @ Set R5 to R1 + R0 \n\
/* 0802a49a */ LDRB R0, [R5, 0x1C] \n\
/* 0802a49c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802a49e */ BEQ branch_0802a4e2 \n\
/* 0802a4a0 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0802a4a2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802a4a4 */ STRB R0, [R5, 0x1C] \n\
/* 0802a4a6 */ LDRB R4, [R5, 0x1C] \n\
/* 0802a4a8 */ LDR R7, =D_03005380 \n\
/* 0802a4aa */ LDR R0, [R7] \n\
/* 0802a4ac */ LSLS R2, R4, 0x1 \n\
/* 0802a4ae */ LDR R6, =0x00000376 \n\
/* 0802a4b0 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0802a4b2 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802a4b4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802a4b6 */ LDRSH R1, [R1, R2] \n\
/* 0802a4b8 */ LDR R2, =D_088c9dc0 \n\
/* 0802a4ba */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
/* 0802a4bc */ STR R6, [SP] \n\
/* 0802a4be */ STR R3, [SP, 0x4] \n\
/* 0802a4c0 */ MOVS R3, 0x3 @ Set R3 to 0x3 \n\
/* 0802a4c2 */ STR R3, [SP, 0x8] \n\
/* 0802a4c4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802a4c6 */ BL func_0804d8f8 \n\
/* 0802a4ca */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0802a4cc */ BNE branch_0802a4e2 \n\
/* 0802a4ce */ LDR R0, [R7] \n\
/* 0802a4d0 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802a4d2 */ LDRSH R1, [R5, R2] \n\
/* 0802a4d4 */ LDR R2, =D_088c9ab8 \n\
/* 0802a4d6 */ STR R6, [SP] \n\
/* 0802a4d8 */ STR R4, [SP, 0x4] \n\
/* 0802a4da */ STR R4, [SP, 0x8] \n\
/* 0802a4dc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802a4de */ BL func_0804d8f8 \n\
 \n\
branch_0802a4e2: \n\
/* 0802a4e2 */ ADD SP, 0xC \n\
/* 0802a4e4 */ POP {R4-R7} \n\
/* 0802a4e6 */ POP {R0} \n\
/* 0802a4e8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
