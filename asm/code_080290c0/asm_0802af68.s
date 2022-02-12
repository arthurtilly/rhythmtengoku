asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802af68 \n\
/* 0802af68 */ LDR R1, =D_03001568 \n\
/* 0802af6a */ LDR R1, [R1] \n\
/* 0802af6c */ MOVS R2, 0xCE @ Set R2 to 0xCE \n\
/* 0802af6e */ LSLS R2, R2, 0x2 \n\
/* 0802af70 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802af72 */ STRH R0, [R1] \n\
/* 0802af74 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
