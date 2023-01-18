asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804d7e8 \n\
/* 0804d7e8 */ PUSH {R4-R6, LR} \n\
/* 0804d7ea */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804d7ec */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 0804d7ee */ LDR R2, =D_03004428 \n\
/* 0804d7f0 */ MOVS R0, 0xE @ Set R0 to 0xE \n\
/* 0804d7f2 */ STRB R0, [R2] \n\
/* 0804d7f4 */ LSLS R1, R1, 0x10 \n\
/* 0804d7f6 */ ASRS R4, R1, 0x10 \n\
/* 0804d7f8 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804d7fa */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804d7fc */ BL func_0804cc68 \n\
/* 0804d800 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804d802 */ BNE branch_0804d814 \n\
/* 0804d804 */ LDR R0, [R5, 0x8] \n\
/* 0804d806 */ LSLS R1, R4, 0x4 \n\
/* 0804d808 */ SUBS R1, R1, R4 @ Set R1 to R1 - R4 \n\
/* 0804d80a */ LSLS R1, R1, 0x2 \n\
/* 0804d80c */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804d80e */ LDR R0, [R1, 0x10] \n\
/* 0804d810 */ ORRS R0, R6 @ Set R0 to R0 | R6 \n\
/* 0804d812 */ STR R0, [R1, 0x10] \n\
 \n\
branch_0804d814: \n\
/* 0804d814 */ POP {R4-R6} \n\
/* 0804d816 */ POP {R0} \n\
/* 0804d818 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
