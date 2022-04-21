asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e618 \n\
/* 0804e618 */ LDR R2, =D_03004438 \n\
/* 0804e61a */ LDRH R3, [R2] \n\
/* 0804e61c */ LDR R1, =0x0000fff7 \n\
/* 0804e61e */ ANDS R1, R3 @ Set R1 to R1 & R3 \n\
/* 0804e620 */ STRH R1, [R2] \n\
/* 0804e622 */ LSLS R0, R0, 0x3 \n\
/* 0804e624 */ LDRH R1, [R2] \n\
/* 0804e626 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804e628 */ STRH R0, [R2] \n\
/* 0804e62a */ LDR R0, =D_08bd0cc8 \n\
/* 0804e62c */ LDR R1, [R0] \n\
/* 0804e62e */ LDRH R0, [R2] \n\
/* 0804e630 */ STRH R0, [R1] \n\
/* 0804e632 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
