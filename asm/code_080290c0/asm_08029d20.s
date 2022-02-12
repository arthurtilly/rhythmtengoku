asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08029d20 \n\
/* 08029d20 */ PUSH {LR} \n\
/* 08029d22 */ LDR R0, =D_030055d0 \n\
/* 08029d24 */ LDR R0, [R0] \n\
/* 08029d26 */ MOVS R1, 0xF1 @ Set R1 to 0xF1 \n\
/* 08029d28 */ LSLS R1, R1, 0x2 \n\
/* 08029d2a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08029d2c */ LDR R0, [R0] \n\
/* 08029d2e */ BL func_08006694 \n\
/* 08029d32 */ BL func_08004248 \n\
/* 08029d36 */ POP {R0} \n\
/* 08029d38 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
