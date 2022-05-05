asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08049bac \n\
/* 08049bac */ LDR R0, =D_03005620 \n\
/* 08049bae */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08049bb0 */ STR R2, [R0, 0x8] \n\
/* 08049bb2 */ STR R2, [R0, 0x4] \n\
/* 08049bb4 */ STR R2, [R0] \n\
/* 08049bb6 */ LDR R0, =D_030064c0 \n\
/* 08049bb8 */ STRB R2, [R0] \n\
/* 08049bba */ LDR R0, =D_03005638 \n\
/* 08049bbc */ LDR R0, [R0] \n\
/* 08049bbe */ LDR R1, =D_030064b0 \n\
/* 08049bc0 */ LDR R1, [R1] \n\
/* 08049bc2 */ LSLS R0, R0, 0x2 \n\
/* 08049bc4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08049bc6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08049bc8 */ SUBS R1, 0x8 @ Subtract 0x8 from R1 \n\
/* 08049bca */ SUBS R0, 0x4 @ Subtract 0x4 from R0 \n\
/* 08049bcc */ STR R2, [R0] \n\
/* 08049bce */ STR R2, [R1] \n\
/* 08049bd0 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
