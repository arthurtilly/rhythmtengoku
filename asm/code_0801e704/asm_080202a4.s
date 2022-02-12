asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080202a4 \n\
/* 080202a4 */ PUSH {LR} \n\
/* 080202a6 */ SUB SP, 0x8 \n\
/* 080202a8 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080202aa */ LDR R0, =D_030055d0 \n\
/* 080202ac */ LDR R0, [R0] \n\
/* 080202ae */ LDR R3, [R0, 0x34] \n\
/* 080202b0 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 080202b2 */ BEQ branch_080202d4 \n\
/* 080202b4 */ LDR R1, =D_088a1ba0 \n\
/* 080202b6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080202b8 */ STR R0, [SP] \n\
/* 080202ba */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080202bc */ STR R0, [SP, 0x4] \n\
/* 080202be */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 080202c0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080202c2 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080202c4 */ BL func_08010064 \n\
/* 080202c8 */ B branch_080202e6 \n\
\n\
.ltorg \n\
 \n\
branch_080202d4: \n\
/* 080202d4 */ LDR R1, =D_088a1bd0 \n\
/* 080202d6 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080202d8 */ STR R0, [SP] \n\
/* 080202da */ STR R2, [SP, 0x4] \n\
/* 080202dc */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 080202de */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080202e0 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080202e2 */ BL func_08010064 \n\
 \n\
branch_080202e6: \n\
/* 080202e6 */ ADD SP, 0x8 \n\
/* 080202e8 */ POP {R0} \n\
/* 080202ea */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
