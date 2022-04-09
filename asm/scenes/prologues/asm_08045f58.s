asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045f58 \n\
/* 08045f58 */ PUSH {R4, R5, LR} \n\
/* 08045f5a */ SUB SP, 0x14 \n\
/* 08045f5c */ LDR R5, =D_030055d0 \n\
/* 08045f5e */ LDR R1, [R5] \n\
/* 08045f60 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08045f62 */ STRB R0, [R1] \n\
/* 08045f64 */ BL func_08045f28 \n\
/* 08045f68 */ BL func_0800e0ec \n\
/* 08045f6c */ STR R4, [SP] \n\
/* 08045f6e */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08045f70 */ STR R0, [SP, 0x4] \n\
/* 08045f72 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08045f74 */ STR R0, [SP, 0x8] \n\
/* 08045f76 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08045f78 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045f7a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08045f7c */ BL func_0800e0a0 \n\
/* 08045f80 */ LDR R0, =D_03005380 \n\
/* 08045f82 */ LDR R0, [R0] \n\
/* 08045f84 */ LDR R1, =D_088afdc4 \n\
/* 08045f86 */ MOVS R2, 0x64 @ Set R2 to 0x64 \n\
/* 08045f88 */ STR R2, [SP] \n\
/* 08045f8a */ STR R4, [SP, 0x4] \n\
/* 08045f8c */ STR R4, [SP, 0x8] \n\
/* 08045f8e */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08045f90 */ STR R2, [SP, 0xC] \n\
/* 08045f92 */ STR R4, [SP, 0x10] \n\
/* 08045f94 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045f96 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08045f98 */ BL func_0804d160 \n\
/* 08045f9c */ LDR R1, [R5] \n\
/* 08045f9e */ STRH R0, [R1, 0x2] \n\
/* 08045fa0 */ ADD SP, 0x14 \n\
/* 08045fa2 */ POP {R4, R5} \n\
/* 08045fa4 */ POP {R0} \n\
/* 08045fa6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
