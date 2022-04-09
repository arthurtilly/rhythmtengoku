asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003a50 \n\
/* 08003a50 */ LDR R2, [R0] \n\
/* 08003a52 */ STRB R1, [R2] \n\
/* 08003a54 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08003a56 */ LSRS R3, R1, 0x8 \n\
/* 08003a58 */ STRB R3, [R2] \n\
/* 08003a5a */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08003a5c */ LSRS R3, R1, 0x10 \n\
/* 08003a5e */ STRB R3, [R2] \n\
/* 08003a60 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08003a62 */ LSRS R1, R1, 0x18 \n\
/* 08003a64 */ STRB R1, [R2] \n\
/* 08003a66 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08003a68 */ STR R2, [R0] \n\
/* 08003a6a */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
