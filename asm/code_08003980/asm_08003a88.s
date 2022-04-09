asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003a88 \n\
/* 08003a88 */ LDR R2, [R0] \n\
/* 08003a8a */ SUBS R2, 0x4 @ Subtract 0x4 from R2 \n\
/* 08003a8c */ STR R2, [R0] \n\
/* 08003a8e */ LDRB R0, [R2] \n\
/* 08003a90 */ LDRB R1, [R2, 0x1] \n\
/* 08003a92 */ LSLS R1, R1, 0x8 \n\
/* 08003a94 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08003a96 */ LDRB R1, [R2, 0x2] \n\
/* 08003a98 */ LSLS R1, R1, 0x10 \n\
/* 08003a9a */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08003a9c */ LDRB R1, [R2, 0x3] \n\
/* 08003a9e */ LSLS R1, R1, 0x18 \n\
/* 08003aa0 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08003aa2 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
