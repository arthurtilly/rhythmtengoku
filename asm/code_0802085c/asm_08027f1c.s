asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08027f1c \n\
/* 08027f1c */ PUSH {LR} \n\
/* 08027f1e */ LDR R0, =D_030055d0 \n\
/* 08027f20 */ LDR R1, [R0] \n\
/* 08027f22 */ LDR R2, =0x00000427 \n\
/* 08027f24 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08027f26 */ LDRB R0, [R0] \n\
/* 08027f28 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08027f2a */ BNE branch_08027f3a \n\
/* 08027f2c */ LDR R0, =0x00000426 \n\
/* 08027f2e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08027f30 */ LDRB R0, [R1] \n\
/* 08027f32 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08027f34 */ BEQ branch_08027f3a \n\
/* 08027f36 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08027f38 */ STRB R0, [R1] \n\
 \n\
branch_08027f3a: \n\
/* 08027f3a */ POP {R0} \n\
/* 08027f3c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
