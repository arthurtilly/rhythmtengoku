asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804649c \n\
/* 0804649c */ PUSH {R4, R5, LR} \n\
/* 0804649e */ SUB SP, 0x14 \n\
/* 080464a0 */ LDR R5, =D_030055d0 \n\
/* 080464a2 */ LDR R1, [R5] \n\
/* 080464a4 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080464a6 */ STRB R0, [R1] \n\
/* 080464a8 */ BL func_0804646c \n\
/* 080464ac */ BL func_0800e0ec \n\
/* 080464b0 */ STR R4, [SP] \n\
/* 080464b2 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 080464b4 */ STR R0, [SP, 0x4] \n\
/* 080464b6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080464b8 */ STR R0, [SP, 0x8] \n\
/* 080464ba */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080464bc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080464be */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080464c0 */ BL func_0800e0a0 \n\
/* 080464c4 */ LDR R0, =D_03005380 \n\
/* 080464c6 */ LDR R0, [R0] \n\
/* 080464c8 */ LDR R1, =D_088b0cb4 \n\
/* 080464ca */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 080464cc */ STR R2, [SP] \n\
/* 080464ce */ STR R4, [SP, 0x4] \n\
/* 080464d0 */ STR R4, [SP, 0x8] \n\
/* 080464d2 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080464d4 */ STR R2, [SP, 0xC] \n\
/* 080464d6 */ STR R4, [SP, 0x10] \n\
/* 080464d8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080464da */ MOVS R3, 0x70 @ Set R3 to 0x70 \n\
/* 080464dc */ BL func_0804d160 \n\
/* 080464e0 */ LDR R1, [R5] \n\
/* 080464e2 */ STRH R0, [R1, 0x2] \n\
/* 080464e4 */ ADD SP, 0x14 \n\
/* 080464e6 */ POP {R4, R5} \n\
/* 080464e8 */ POP {R0} \n\
/* 080464ea */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
