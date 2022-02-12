asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08027f90 \n\
/* 08027f90 */ PUSH {LR} \n\
/* 08027f92 */ LDR R0, =D_030055d0 \n\
/* 08027f94 */ LDR R1, [R0] \n\
/* 08027f96 */ LDRB R0, [R1] \n\
/* 08027f98 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 08027f9a */ BNE branch_08027fbc \n\
/* 08027f9c */ LDR R2, =0x00000427 \n\
/* 08027f9e */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08027fa0 */ LDRB R0, [R0] \n\
/* 08027fa2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08027fa4 */ BNE branch_08027fbc \n\
/* 08027fa6 */ SUBS R2, 0x3 @ Subtract 0x3 from R2 \n\
/* 08027fa8 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08027faa */ LDRB R0, [R0] \n\
/* 08027fac */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08027fae */ BLS branch_08027fb6 \n\
/* 08027fb0 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08027fb2 */ BL func_080271f0 \n\
 \n\
branch_08027fb6: \n\
/* 08027fb6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08027fb8 */ BL func_08027f4c \n\
 \n\
branch_08027fbc: \n\
/* 08027fbc */ POP {R0} \n\
/* 08027fbe */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
