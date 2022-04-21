asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804d614 \n\
/* 0804d614 */ PUSH {R4-R6, LR} \n\
/* 0804d616 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804d618 */ LSLS R2, R2, 0x10 \n\
/* 0804d61a */ LSRS R6, R2, 0x10 \n\
/* 0804d61c */ LDR R2, =D_03004428 \n\
/* 0804d61e */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 0804d620 */ STRB R0, [R2] \n\
/* 0804d622 */ LSLS R1, R1, 0x10 \n\
/* 0804d624 */ ASRS R4, R1, 0x10 \n\
/* 0804d626 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804d628 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804d62a */ BL func_0804cc68 \n\
/* 0804d62e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804d630 */ BNE branch_0804d63e \n\
/* 0804d632 */ LDR R1, [R5, 0x8] \n\
/* 0804d634 */ LSLS R0, R4, 0x4 \n\
/* 0804d636 */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 0804d638 */ LSLS R0, R0, 0x2 \n\
/* 0804d63a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804d63c */ STRH R6, [R0, 0x2] \n\
 \n\
branch_0804d63e: \n\
/* 0804d63e */ POP {R4-R6} \n\
/* 0804d640 */ POP {R0} \n\
/* 0804d642 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
