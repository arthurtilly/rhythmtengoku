asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08035e98 \n\
/* 08035e98 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08035e9a */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 08035e9c */ LSLS R2, R2, 0x1 \n\
/* 08035e9e */ LDRB R3, [R1, 0x1] \n\
/* 08035ea0 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08035ea2 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08035ea4 */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 08035ea6 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 08035ea8 */ STRB R0, [R1, 0x1] \n\
/* 08035eaa */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
