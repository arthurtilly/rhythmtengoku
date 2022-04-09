asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045d60 \n\
/* 08045d60 */ PUSH {R4, R5, LR} \n\
/* 08045d62 */ SUB SP, 0x14 \n\
/* 08045d64 */ LDR R5, =D_030055d0 \n\
/* 08045d66 */ LDR R1, [R5] \n\
/* 08045d68 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08045d6a */ STRB R0, [R1] \n\
/* 08045d6c */ BL func_08045d30 \n\
/* 08045d70 */ BL func_0800e0ec \n\
/* 08045d74 */ STR R4, [SP] \n\
/* 08045d76 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08045d78 */ STR R0, [SP, 0x4] \n\
/* 08045d7a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08045d7c */ STR R0, [SP, 0x8] \n\
/* 08045d7e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08045d80 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045d82 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08045d84 */ BL func_0800e0a0 \n\
/* 08045d88 */ LDR R0, =D_03005380 \n\
/* 08045d8a */ LDR R0, [R0] \n\
/* 08045d8c */ LDR R1, =D_088af7d4 \n\
/* 08045d8e */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08045d90 */ STR R2, [SP] \n\
/* 08045d92 */ STR R4, [SP, 0x4] \n\
/* 08045d94 */ STR R4, [SP, 0x8] \n\
/* 08045d96 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08045d98 */ STR R2, [SP, 0xC] \n\
/* 08045d9a */ STR R4, [SP, 0x10] \n\
/* 08045d9c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08045d9e */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08045da0 */ BL func_0804d160 \n\
/* 08045da4 */ LDR R1, [R5] \n\
/* 08045da6 */ STRH R0, [R1, 0x2] \n\
/* 08045da8 */ ADD SP, 0x14 \n\
/* 08045daa */ POP {R4, R5} \n\
/* 08045dac */ POP {R0} \n\
/* 08045dae */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
