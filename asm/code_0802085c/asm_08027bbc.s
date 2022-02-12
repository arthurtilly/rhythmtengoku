asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08027bbc \n\
/* 08027bbc */ PUSH {LR} \n\
/* 08027bbe */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08027bc0 */ LDR R0, =D_030055d0 \n\
/* 08027bc2 */ LDR R0, [R0] \n\
/* 08027bc4 */ MOVS R2, 0x85 @ Set R2 to 0x85 \n\
/* 08027bc6 */ LSLS R2, R2, 0x3 \n\
/* 08027bc8 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08027bca */ LDR R0, [R0] \n\
/* 08027bcc */ BL func_0800a7fc \n\
/* 08027bd0 */ POP {R0} \n\
/* 08027bd2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
