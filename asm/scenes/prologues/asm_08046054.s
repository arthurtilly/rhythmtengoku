asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046054 \n\
/* 08046054 */ PUSH {R4-R6, LR} \n\
/* 08046056 */ SUB SP, 0x14 \n\
/* 08046058 */ LDR R6, =D_030055d0 \n\
/* 0804605a */ LDR R1, [R6] \n\
/* 0804605c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0804605e */ STRB R0, [R1] \n\
/* 08046060 */ BL func_08046024 \n\
/* 08046064 */ BL func_0800e0ec \n\
/* 08046068 */ STR R4, [SP] \n\
/* 0804606a */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 0804606c */ STR R0, [SP, 0x4] \n\
/* 0804606e */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 08046070 */ STR R5, [SP, 0x8] \n\
/* 08046072 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08046074 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08046076 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046078 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804607a */ BL func_0800e0a0 \n\
/* 0804607e */ STR R4, [SP] \n\
/* 08046080 */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 08046082 */ STR R0, [SP, 0x4] \n\
/* 08046084 */ STR R5, [SP, 0x8] \n\
/* 08046086 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08046088 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804608a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804608c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804608e */ BL func_0800e0a0 \n\
/* 08046092 */ LDR R0, =D_03005380 \n\
/* 08046094 */ LDR R0, [R0] \n\
/* 08046096 */ LDR R1, =D_088affe0 \n\
/* 08046098 */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 0804609a */ STR R2, [SP] \n\
/* 0804609c */ STR R4, [SP, 0x4] \n\
/* 0804609e */ STR R4, [SP, 0x8] \n\
/* 080460a0 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080460a2 */ STR R2, [SP, 0xC] \n\
/* 080460a4 */ STR R4, [SP, 0x10] \n\
/* 080460a6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080460a8 */ MOVS R3, 0x87 @ Set R3 to 0x87 \n\
/* 080460aa */ BL func_0804d160 \n\
/* 080460ae */ LDR R1, [R6] \n\
/* 080460b0 */ STRH R0, [R1, 0x2] \n\
/* 080460b2 */ ADD SP, 0x14 \n\
/* 080460b4 */ POP {R4-R6} \n\
/* 080460b6 */ POP {R0} \n\
/* 080460b8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
