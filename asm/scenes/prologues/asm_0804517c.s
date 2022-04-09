asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804517c \n\
/* 0804517c */ PUSH {R4, R5, LR} \n\
/* 0804517e */ SUB SP, 0x14 \n\
/* 08045180 */ LDR R5, =D_030055d0 \n\
/* 08045182 */ LDR R1, [R5] \n\
/* 08045184 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08045186 */ STRB R0, [R1] \n\
/* 08045188 */ BL func_0804514c \n\
/* 0804518c */ BL func_0800e0ec \n\
/* 08045190 */ STR R4, [SP] \n\
/* 08045192 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08045194 */ STR R0, [SP, 0x4] \n\
/* 08045196 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08045198 */ STR R0, [SP, 0x8] \n\
/* 0804519a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804519c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804519e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080451a0 */ BL func_0800e0a0 \n\
/* 080451a4 */ LDR R0, =D_03005380 \n\
/* 080451a6 */ LDR R0, [R0] \n\
/* 080451a8 */ LDR R1, =D_088ad2bc \n\
/* 080451aa */ MOVS R2, 0x5A @ Set R2 to 0x5A \n\
/* 080451ac */ STR R2, [SP] \n\
/* 080451ae */ STR R4, [SP, 0x4] \n\
/* 080451b0 */ STR R4, [SP, 0x8] \n\
/* 080451b2 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080451b4 */ STR R2, [SP, 0xC] \n\
/* 080451b6 */ STR R4, [SP, 0x10] \n\
/* 080451b8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080451ba */ MOVS R3, 0xA5 @ Set R3 to 0xA5 \n\
/* 080451bc */ BL func_0804d160 \n\
/* 080451c0 */ LDR R1, [R5] \n\
/* 080451c2 */ STRH R0, [R1, 0x2] \n\
/* 080451c4 */ ADD SP, 0x14 \n\
/* 080451c6 */ POP {R4, R5} \n\
/* 080451c8 */ POP {R0} \n\
/* 080451ca */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
