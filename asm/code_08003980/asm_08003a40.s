asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003a40 \n\
/* 08003a40 */ LDR R2, [R0] \n\
/* 08003a42 */ STRB R1, [R2] \n\
/* 08003a44 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08003a46 */ LSRS R1, R1, 0x8 \n\
/* 08003a48 */ STRB R1, [R2] \n\
/* 08003a4a */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08003a4c */ STR R2, [R0] \n\
/* 08003a4e */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
