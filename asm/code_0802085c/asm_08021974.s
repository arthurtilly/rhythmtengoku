asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08021974 \n\
/* 08021974 */ PUSH {R4, R5, LR} \n\
/* 08021976 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08021978 */ LDR R5, =D_03005380 \n\
/* 0802197a */ LDR R0, [R5] \n\
/* 0802197c */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802197e */ LDRSH R1, [R4, R2] \n\
/* 08021980 */ BL func_0804d504 \n\
/* 08021984 */ LDR R0, [R5] \n\
/* 08021986 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08021988 */ LDRSH R1, [R4, R2] \n\
/* 0802198a */ BL func_0804d504 \n\
/* 0802198e */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08021990 */ LDRSB R0, [R4, R0] \n\
/* 08021992 */ BL func_080021b8 \n\
/* 08021996 */ MOVS R0, 0x9 @ Set R0 to 0x9 \n\
/* 08021998 */ LDRSB R0, [R4, R0] \n\
/* 0802199a */ BL func_080021b8 \n\
/* 0802199e */ POP {R4, R5} \n\
/* 080219a0 */ POP {R0} \n\
/* 080219a2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
