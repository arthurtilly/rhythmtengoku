asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045c5c \n\
/* 08045c5c */ PUSH {R4, R5, LR} \n\
/* 08045c5e */ SUB SP, 0x14 \n\
/* 08045c60 */ LDR R5, =D_030055d0 \n\
/* 08045c62 */ LDR R1, [R5] \n\
/* 08045c64 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08045c66 */ STRB R0, [R1] \n\
/* 08045c68 */ BL func_08045c2c \n\
/* 08045c6c */ BL func_0800e0ec \n\
/* 08045c70 */ STR R4, [SP] \n\
/* 08045c72 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08045c74 */ STR R0, [SP, 0x4] \n\
/* 08045c76 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08045c78 */ STR R0, [SP, 0x8] \n\
/* 08045c7a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08045c7c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045c7e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08045c80 */ BL func_0800e0a0 \n\
/* 08045c84 */ LDR R0, =D_03005380 \n\
/* 08045c86 */ LDR R0, [R0] \n\
/* 08045c88 */ LDR R1, =D_088af6b4 \n\
/* 08045c8a */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 08045c8c */ STR R2, [SP] \n\
/* 08045c8e */ STR R4, [SP, 0x4] \n\
/* 08045c90 */ STR R4, [SP, 0x8] \n\
/* 08045c92 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08045c94 */ STR R2, [SP, 0xC] \n\
/* 08045c96 */ STR R4, [SP, 0x10] \n\
/* 08045c98 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045c9a */ MOVS R3, 0x3C @ Set R3 to 0x3C \n\
/* 08045c9c */ BL func_0804d160 \n\
/* 08045ca0 */ LDR R1, [R5] \n\
/* 08045ca2 */ STRH R0, [R1, 0x2] \n\
/* 08045ca4 */ ADD SP, 0x14 \n\
/* 08045ca6 */ POP {R4, R5} \n\
/* 08045ca8 */ POP {R0} \n\
/* 08045caa */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
