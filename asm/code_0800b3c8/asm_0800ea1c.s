asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ea1c \n\
/* 0800ea1c */ LDR R1, =D_030053c0 \n\
/* 0800ea1e */ MOVS R2, 0xB5 @ Set R2 to 0xB5 \n\
/* 0800ea20 */ LSLS R2, R2, 0x1 \n\
/* 0800ea22 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0800ea24 */ STRH R0, [R1] \n\
/* 0800ea26 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
