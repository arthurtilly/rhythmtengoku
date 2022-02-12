asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08027f4c \n\
/* 08027f4c */ PUSH {LR} \n\
/* 08027f4e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08027f50 */ LDR R0, =D_030055d0 \n\
/* 08027f52 */ LDR R1, [R0] \n\
/* 08027f54 */ LDR R3, =0x00000427 \n\
/* 08027f56 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08027f58 */ LDRB R0, [R0] \n\
/* 08027f5a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08027f5c */ BNE branch_08027f64 \n\
/* 08027f5e */ SUBS R3, 0x3 @ Subtract 0x3 from R3 \n\
/* 08027f60 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08027f62 */ STRB R2, [R0] \n\
 \n\
branch_08027f64: \n\
/* 08027f64 */ POP {R0} \n\
/* 08027f66 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
