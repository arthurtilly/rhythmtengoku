asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080127d0 \n\
/* 080127d0 */ PUSH {LR} \n\
/* 080127d2 */ LDR R0, =D_030046a4 \n\
/* 080127d4 */ LDR R0, [R0] \n\
/* 080127d6 */ LDR R0, [R0, 0x8] \n\
/* 080127d8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080127da */ BNE branch_080127e4 \n\
/* 080127dc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080127de */ B branch_080127e6 \n\
\n\
.ltorg \n\
 \n\
branch_080127e4: \n\
/* 080127e4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_080127e6: \n\
/* 080127e6 */ POP {R1} \n\
/* 080127e8 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
