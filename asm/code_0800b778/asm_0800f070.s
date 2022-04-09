asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800f070 \n\
/* 0800f070 */ LDR R2, =D_030053c0 \n\
/* 0800f072 */ LSLS R0, R0, 0x2 \n\
/* 0800f074 */ MOVS R3, 0xCC @ Set R3 to 0xCC \n\
/* 0800f076 */ LSLS R3, R3, 0x1 \n\
/* 0800f078 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0800f07a */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800f07c */ STR R1, [R0] \n\
/* 0800f07e */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
