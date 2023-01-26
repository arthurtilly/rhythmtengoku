asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804d890 \n\
/* 0804d890 */ PUSH {R4-R6, LR} \n\
/* 0804d892 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804d894 */ LSLS R2, R2, 0x10 \n\
/* 0804d896 */ LSRS R6, R2, 0x10 \n\
/* 0804d898 */ LDR R2, =D_03004428 \n\
/* 0804d89a */ MOVS R0, 0x11 @ Set R0 to 0x11 \n\
/* 0804d89c */ STRB R0, [R2] \n\
/* 0804d89e */ LSLS R1, R1, 0x10 \n\
/* 0804d8a0 */ ASRS R4, R1, 0x10 \n\
/* 0804d8a2 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804d8a4 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804d8a6 */ BL func_0804cc68 \n\
/* 0804d8aa */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804d8ac */ BNE branch_0804d8ba \n\
/* 0804d8ae */ LDR R1, [R5, 0x8] \n\
/* 0804d8b0 */ LSLS R0, R4, 0x4 \n\
/* 0804d8b2 */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 0804d8b4 */ LSLS R0, R0, 0x2 \n\
/* 0804d8b6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804d8b8 */ STRH R6, [R0, 0x14] \n\
 \n\
branch_0804d8ba: \n\
/* 0804d8ba */ POP {R4-R6} \n\
/* 0804d8bc */ POP {R0} \n\
/* 0804d8be */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
