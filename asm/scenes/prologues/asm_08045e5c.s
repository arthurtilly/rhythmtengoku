asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045e5c \n\
/* 08045e5c */ PUSH {R4, R5, LR} \n\
/* 08045e5e */ SUB SP, 0x14 \n\
/* 08045e60 */ LDR R5, =D_030055d0 \n\
/* 08045e62 */ LDR R1, [R5] \n\
/* 08045e64 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08045e66 */ STRB R0, [R1] \n\
/* 08045e68 */ BL func_08045e2c \n\
/* 08045e6c */ BL func_0800e0ec \n\
/* 08045e70 */ STR R4, [SP] \n\
/* 08045e72 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08045e74 */ STR R0, [SP, 0x4] \n\
/* 08045e76 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08045e78 */ STR R0, [SP, 0x8] \n\
/* 08045e7a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08045e7c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045e7e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08045e80 */ BL func_0800e0a0 \n\
/* 08045e84 */ LDR R0, =D_03005380 \n\
/* 08045e86 */ LDR R0, [R0] \n\
/* 08045e88 */ LDR R1, =D_088afb9c \n\
/* 08045e8a */ MOVS R2, 0x64 @ Set R2 to 0x64 \n\
/* 08045e8c */ STR R2, [SP] \n\
/* 08045e8e */ STR R4, [SP, 0x4] \n\
/* 08045e90 */ STR R4, [SP, 0x8] \n\
/* 08045e92 */ STR R4, [SP, 0xC] \n\
/* 08045e94 */ STR R4, [SP, 0x10] \n\
/* 08045e96 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045e98 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08045e9a */ BL func_0804d160 \n\
/* 08045e9e */ LDR R1, [R5] \n\
/* 08045ea0 */ STRH R0, [R1, 0x2] \n\
/* 08045ea2 */ ADD SP, 0x14 \n\
/* 08045ea4 */ POP {R4, R5} \n\
/* 08045ea6 */ POP {R0} \n\
/* 08045ea8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
