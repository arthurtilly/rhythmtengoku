asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804ad9c \n\
/* 0804ad9c */ LSLS R2, R2, 0x18 \n\
/* 0804ad9e */ LSRS R2, R2, 0x18 \n\
/* 0804ada0 */ LDR R3, [R0, 0x18] \n\
/* 0804ada2 */ LSLS R1, R1, 0x5 \n\
/* 0804ada4 */ ADDS R3, R1, R3 @ Set R3 to R1 + R3 \n\
/* 0804ada6 */ STRB R2, [R3, 0x1D] \n\
/* 0804ada8 */ LDR R0, [R0, 0x18] \n\
/* 0804adaa */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804adac */ STRB R2, [R1, 0x1E] \n\
/* 0804adae */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
