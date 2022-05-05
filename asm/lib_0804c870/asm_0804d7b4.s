asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804d7b4 \n\
/* 0804d7b4 */ PUSH {R4-R6, LR} \n\
/* 0804d7b6 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804d7b8 */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 0804d7ba */ LDR R2, =D_03004428 \n\
/* 0804d7bc */ MOVS R0, 0xD @ Set R0 to 0xD \n\
/* 0804d7be */ STRB R0, [R2] \n\
/* 0804d7c0 */ LSLS R1, R1, 0x10 \n\
/* 0804d7c2 */ ASRS R4, R1, 0x10 \n\
/* 0804d7c4 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804d7c6 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804d7c8 */ BL func_0804cc68 \n\
/* 0804d7cc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804d7ce */ BNE branch_0804d7dc \n\
/* 0804d7d0 */ LDR R1, [R5, 0x8] \n\
/* 0804d7d2 */ LSLS R0, R4, 0x4 \n\
/* 0804d7d4 */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 0804d7d6 */ LSLS R0, R0, 0x2 \n\
/* 0804d7d8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804d7da */ STR R6, [R0, 0x10] \n\
 \n\
branch_0804d7dc: \n\
/* 0804d7dc */ POP {R4-R6} \n\
/* 0804d7de */ POP {R0} \n\
/* 0804d7e0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
