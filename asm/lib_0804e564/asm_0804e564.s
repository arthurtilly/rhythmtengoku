asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e564 \n\
/* 0804e564 */ LDR R2, =D_03004438 \n\
/* 0804e566 */ MOVS R3, 0x3 @ Set R3 to 0x3 \n\
/* 0804e568 */ STRH R3, [R2] \n\
/* 0804e56a */ LDR R0, =D_08bd0cc8 \n\
/* 0804e56c */ LDR R1, [R0] \n\
/* 0804e56e */ LDRH R0, [R2] \n\
/* 0804e570 */ STRH R0, [R1] \n\
/* 0804e572 */ LDR R2, =D_0300443a \n\
/* 0804e574 */ STRH R3, [R2] \n\
/* 0804e576 */ LDRH R0, [R2] \n\
/* 0804e578 */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 0804e57a */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804e57c */ STRH R0, [R2] \n\
/* 0804e57e */ LDR R0, =D_08bd0ccc \n\
/* 0804e580 */ LDR R1, [R0] \n\
/* 0804e582 */ LDRH R0, [R2] \n\
/* 0804e584 */ STRH R0, [R1] \n\
/* 0804e586 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
