asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046168 \n\
/* 08046168 */ PUSH {R4, R5, LR} \n\
/* 0804616a */ SUB SP, 0x14 \n\
/* 0804616c */ LDR R5, =D_030055d0 \n\
/* 0804616e */ LDR R1, [R5] \n\
/* 08046170 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08046172 */ STRB R0, [R1] \n\
/* 08046174 */ BL func_08046138 \n\
/* 08046178 */ BL func_0800e0ec \n\
/* 0804617c */ STR R4, [SP] \n\
/* 0804617e */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08046180 */ STR R0, [SP, 0x4] \n\
/* 08046182 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08046184 */ STR R0, [SP, 0x8] \n\
/* 08046186 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08046188 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804618a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804618c */ BL func_0800e0a0 \n\
/* 08046190 */ LDR R0, =D_03005380 \n\
/* 08046192 */ LDR R0, [R0] \n\
/* 08046194 */ LDR R1, =D_088b0690 \n\
/* 08046196 */ MOVS R2, 0x96 @ Set R2 to 0x96 \n\
/* 08046198 */ STR R2, [SP] \n\
/* 0804619a */ STR R4, [SP, 0x4] \n\
/* 0804619c */ STR R4, [SP, 0x8] \n\
/* 0804619e */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080461a0 */ STR R2, [SP, 0xC] \n\
/* 080461a2 */ STR R4, [SP, 0x10] \n\
/* 080461a4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080461a6 */ MOVS R3, 0xA0 @ Set R3 to 0xA0 \n\
/* 080461a8 */ BL func_0804d160 \n\
/* 080461ac */ LDR R1, [R5] \n\
/* 080461ae */ STRH R0, [R1, 0x2] \n\
/* 080461b0 */ ADD SP, 0x14 \n\
/* 080461b2 */ POP {R4, R5} \n\
/* 080461b4 */ POP {R0} \n\
/* 080461b6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
