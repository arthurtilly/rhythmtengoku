asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003dec \n\
/* 08003dec */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08003dee */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08003df0 */ LSLS R1, R1, 0x2 \n\
/* 08003df2 */ LDRB R3, [R0] \n\
/* 08003df4 */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 08003df6 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 08003df8 */ ANDS R2, R3 @ Set R2 to R2 & R3 \n\
/* 08003dfa */ ORRS R2, R1 @ Set R2 to R2 | R1 \n\
/* 08003dfc */ STRB R2, [R0] \n\
/* 08003dfe */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
