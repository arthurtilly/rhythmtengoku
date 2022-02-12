asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802a2a4 \n\
/* 0802a2a4 */ PUSH {R4-R6, LR} \n\
/* 0802a2a6 */ SUB SP, 0xC \n\
/* 0802a2a8 */ LDR R0, =D_030055d0 \n\
/* 0802a2aa */ LDR R4, [R0] \n\
/* 0802a2ac */ MOVS R0, 0xD6 @ Set R0 to 0xD6 \n\
/* 0802a2ae */ LSLS R0, R0, 0x2 \n\
/* 0802a2b0 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0802a2b2 */ LDRB R1, [R4] \n\
/* 0802a2b4 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0802a2b6 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802a2b8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802a2ba */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0802a2bc */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0802a2be */ STRB R0, [R4] \n\
/* 0802a2c0 */ LDR R6, =D_03005380 \n\
/* 0802a2c2 */ LDR R0, [R6] \n\
/* 0802a2c4 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802a2c6 */ LDRSH R1, [R4, R2] \n\
/* 0802a2c8 */ LDR R2, =D_088c9f90 \n\
/* 0802a2ca */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802a2cc */ STR R3, [SP] \n\
/* 0802a2ce */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0802a2d0 */ STR R5, [SP, 0x4] \n\
/* 0802a2d2 */ STR R5, [SP, 0x8] \n\
/* 0802a2d4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802a2d6 */ BL func_0804d8f8 \n\
/* 0802a2da */ LDR R0, [R6] \n\
/* 0802a2dc */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802a2de */ LDRSH R1, [R4, R2] \n\
/* 0802a2e0 */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 0802a2e2 */ BL func_0804ddb0 \n\
/* 0802a2e6 */ STRH R0, [R4, 0x10] \n\
/* 0802a2e8 */ STR R5, [R4, 0x14] \n\
/* 0802a2ea */ STR R5, [R4, 0x18] \n\
/* 0802a2ec */ ADD SP, 0xC \n\
/* 0802a2ee */ POP {R4-R6} \n\
/* 0802a2f0 */ POP {R0} \n\
/* 0802a2f2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
