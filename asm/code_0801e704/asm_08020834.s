asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08020834 \n\
/* 08020834 */ PUSH {LR} \n\
/* 08020836 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08020838 */ LDR R3, =D_030055d0 \n\
 \n\
branch_0802083a: \n\
/* 0802083a */ LDR R0, [R3] \n\
/* 0802083c */ LSLS R1, R2, 0x1 \n\
/* 0802083e */ ADDS R0, 0x4C @ Add 0x4C to R0 \n\
/* 08020840 */ ADDS R1, R0, R1 @ Set R1 to R0 + R1 \n\
/* 08020842 */ LDRH R0, [R1] \n\
/* 08020844 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08020846 */ BEQ branch_0802084c \n\
/* 08020848 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0802084a */ STRH R0, [R1] \n\
 \n\
branch_0802084c: \n\
/* 0802084c */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0802084e */ CMP R2, 0x3 @ Compare R2 and 0x3 \n\
/* 08020850 */ BLS branch_0802083a \n\
/* 08020852 */ POP {R0} \n\
/* 08020854 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
