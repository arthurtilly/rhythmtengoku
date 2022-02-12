asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802b258 \n\
/* 0802b258 */ PUSH {LR} \n\
/* 0802b25a */ LDR R1, =D_030055d0 \n\
/* 0802b25c */ LDR R1, [R1] \n\
/* 0802b25e */ MOVS R2, 0xAB @ Set R2 to 0xAB \n\
/* 0802b260 */ LSLS R2, R2, 0x3 \n\
/* 0802b262 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802b264 */ STRH R0, [R1] \n\
/* 0802b266 */ BL func_0802b03c \n\
/* 0802b26a */ POP {R0} \n\
/* 0802b26c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
