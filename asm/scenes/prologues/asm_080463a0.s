asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080463a0 \n\
/* 080463a0 */ PUSH {R4, R5, LR} \n\
/* 080463a2 */ SUB SP, 0x14 \n\
/* 080463a4 */ LDR R5, =D_030055d0 \n\
/* 080463a6 */ LDR R1, [R5] \n\
/* 080463a8 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080463aa */ STRB R0, [R1] \n\
/* 080463ac */ BL func_08046370 \n\
/* 080463b0 */ BL func_0800e0ec \n\
/* 080463b4 */ STR R4, [SP] \n\
/* 080463b6 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 080463b8 */ STR R0, [SP, 0x4] \n\
/* 080463ba */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080463bc */ STR R0, [SP, 0x8] \n\
/* 080463be */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080463c0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080463c2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080463c4 */ BL func_0800e0a0 \n\
/* 080463c8 */ LDR R0, =D_03005380 \n\
/* 080463ca */ LDR R0, [R0] \n\
/* 080463cc */ LDR R1, =D_088b0bf0 \n\
/* 080463ce */ MOVS R2, 0x8C @ Set R2 to 0x8C \n\
/* 080463d0 */ STR R2, [SP] \n\
/* 080463d2 */ STR R4, [SP, 0x4] \n\
/* 080463d4 */ STR R4, [SP, 0x8] \n\
/* 080463d6 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080463d8 */ STR R2, [SP, 0xC] \n\
/* 080463da */ STR R4, [SP, 0x10] \n\
/* 080463dc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080463de */ MOVS R3, 0x70 @ Set R3 to 0x70 \n\
/* 080463e0 */ BL func_0804d160 \n\
/* 080463e4 */ LDR R1, [R5] \n\
/* 080463e6 */ STRH R0, [R1, 0x2] \n\
/* 080463e8 */ ADD SP, 0x14 \n\
/* 080463ea */ POP {R4, R5} \n\
/* 080463ec */ POP {R0} \n\
/* 080463ee */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
