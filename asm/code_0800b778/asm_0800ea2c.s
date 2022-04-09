asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ea2c \n\
/* 0800ea2c */ LDR R1, =D_030053c0 \n\
/* 0800ea2e */ MOVS R2, 0xB4 @ Set R2 to 0xB4 \n\
/* 0800ea30 */ LSLS R2, R2, 0x1 \n\
/* 0800ea32 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0800ea34 */ STRH R0, [R1] \n\
/* 0800ea36 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
