asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047a44 \n\
/* 08047a44 */ PUSH {R4, R5, LR} \n\
/* 08047a46 */ SUB SP, 0x14 \n\
/* 08047a48 */ LDR R5, =D_030055d0 \n\
/* 08047a4a */ LDR R1, [R5] \n\
/* 08047a4c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08047a4e */ STRB R0, [R1] \n\
/* 08047a50 */ BL func_08047a14 \n\
/* 08047a54 */ BL func_0800e0ec \n\
/* 08047a58 */ STR R4, [SP] \n\
/* 08047a5a */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08047a5c */ STR R0, [SP, 0x4] \n\
/* 08047a5e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08047a60 */ STR R0, [SP, 0x8] \n\
/* 08047a62 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08047a64 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047a66 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08047a68 */ BL func_0800e0a0 \n\
/* 08047a6c */ LDR R0, =D_03005380 \n\
/* 08047a6e */ LDR R0, [R0] \n\
/* 08047a70 */ LDR R1, =D_088b8388 \n\
/* 08047a72 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08047a74 */ STR R2, [SP] \n\
/* 08047a76 */ STR R4, [SP, 0x4] \n\
/* 08047a78 */ STR R4, [SP, 0x8] \n\
/* 08047a7a */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08047a7c */ STR R2, [SP, 0xC] \n\
/* 08047a7e */ STR R4, [SP, 0x10] \n\
/* 08047a80 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047a82 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08047a84 */ BL func_0804d160 \n\
/* 08047a88 */ LDR R1, [R5] \n\
/* 08047a8a */ STRH R0, [R1, 0x2] \n\
/* 08047a8c */ ADD SP, 0x14 \n\
/* 08047a8e */ POP {R4, R5} \n\
/* 08047a90 */ POP {R0} \n\
/* 08047a92 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
