asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e6c4 \n\
/* 0804e6c4 */ LDR R1, =D_0300443c \n\
/* 0804e6c6 */ LDR R2, [R1] \n\
/* 0804e6c8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804e6ca */ STRH R3, [R2, 0x10] \n\
/* 0804e6cc */ STRH R3, [R2, 0x12] \n\
/* 0804e6ce */ LDR R1, =0x7fffffff \n\
/* 0804e6d0 */ STR R1, [R2, 0x18] \n\
/* 0804e6d2 */ STR R3, [R2, 0x14] \n\
/* 0804e6d4 */ STR R3, [R2, 0x1C] \n\
/* 0804e6d6 */ STRH R0, [R2, 0x22] \n\
/* 0804e6d8 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
