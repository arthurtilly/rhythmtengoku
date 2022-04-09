asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003a78 \n\
/* 08003a78 */ LDR R1, [R0] \n\
/* 08003a7a */ SUBS R1, 0x2 @ Subtract 0x2 from R1 \n\
/* 08003a7c */ STR R1, [R0] \n\
/* 08003a7e */ LDRB R0, [R1] \n\
/* 08003a80 */ LDRB R1, [R1, 0x1] \n\
/* 08003a82 */ LSLS R1, R1, 0x8 \n\
/* 08003a84 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08003a86 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
