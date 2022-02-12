asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08027ba0 \n\
/* 08027ba0 */ PUSH {LR} \n\
/* 08027ba2 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08027ba4 */ LDR R0, =D_030055d0 \n\
/* 08027ba6 */ LDR R0, [R0] \n\
/* 08027ba8 */ MOVS R2, 0x85 @ Set R2 to 0x85 \n\
/* 08027baa */ LSLS R2, R2, 0x3 \n\
/* 08027bac */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08027bae */ LDR R0, [R0] \n\
/* 08027bb0 */ BL func_0800aa4c \n\
/* 08027bb4 */ POP {R0} \n\
/* 08027bb6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
