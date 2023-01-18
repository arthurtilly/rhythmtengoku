asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804d8c4 \n\
/* 0804d8c4 */ PUSH {R4-R6, LR} \n\
/* 0804d8c6 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804d8c8 */ LSLS R2, R2, 0x18 \n\
/* 0804d8ca */ LSRS R6, R2, 0x18 \n\
/* 0804d8cc */ LDR R2, =D_03004428 \n\
/* 0804d8ce */ MOVS R0, 0x12 @ Set R0 to 0x12 \n\
/* 0804d8d0 */ STRB R0, [R2] \n\
/* 0804d8d2 */ LSLS R1, R1, 0x10 \n\
/* 0804d8d4 */ ASRS R4, R1, 0x10 \n\
/* 0804d8d6 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804d8d8 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804d8da */ BL func_0804cc68 \n\
/* 0804d8de */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804d8e0 */ BNE branch_0804d8ee \n\
/* 0804d8e2 */ LDR R1, [R5, 0x8] \n\
/* 0804d8e4 */ LSLS R0, R4, 0x4 \n\
/* 0804d8e6 */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 0804d8e8 */ LSLS R0, R0, 0x2 \n\
/* 0804d8ea */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804d8ec */ STRB R6, [R0, 0x16] \n\
 \n\
branch_0804d8ee: \n\
/* 0804d8ee */ POP {R4-R6} \n\
/* 0804d8f0 */ POP {R0} \n\
/* 0804d8f2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
