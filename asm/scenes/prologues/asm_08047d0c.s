asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047d0c \n\
/* 08047d0c */ PUSH {R4-R6, LR} \n\
/* 08047d0e */ SUB SP, 0x4 \n\
/* 08047d10 */ LDR R6, =D_03005380 \n\
/* 08047d12 */ LDR R0, [R6] \n\
/* 08047d14 */ LDR R5, =D_030055d0 \n\
/* 08047d16 */ LDR R1, [R5] \n\
/* 08047d18 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08047d1a */ LDRSH R1, [R1, R2] \n\
/* 08047d1c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08047d1e */ STR R4, [SP] \n\
/* 08047d20 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08047d22 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08047d24 */ BL func_0804dae0 \n\
/* 08047d28 */ LDR R0, [R6] \n\
/* 08047d2a */ LDR R1, [R5] \n\
/* 08047d2c */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08047d2e */ LDRSH R1, [R1, R2] \n\
/* 08047d30 */ STR R4, [SP] \n\
/* 08047d32 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08047d34 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08047d36 */ BL func_0804dae0 \n\
/* 08047d3a */ ADD SP, 0x4 \n\
/* 08047d3c */ POP {R4-R6} \n\
/* 08047d3e */ POP {R0} \n\
/* 08047d40 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
