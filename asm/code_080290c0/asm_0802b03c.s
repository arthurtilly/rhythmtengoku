asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802b03c \n\
/* 0802b03c */ LDR R1, =D_03001568 \n\
/* 0802b03e */ LDR R1, [R1] \n\
/* 0802b040 */ MOVS R2, 0xCC @ Set R2 to 0xCC \n\
/* 0802b042 */ LSLS R2, R2, 0x2 \n\
/* 0802b044 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802b046 */ STRH R0, [R1] \n\
/* 0802b048 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
