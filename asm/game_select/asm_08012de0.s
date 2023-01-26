asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08012de0 \n\
/* 08012de0 */ PUSH {R4, LR} \n\
/* 08012de2 */ LDR R0, =D_030046a4 \n\
/* 08012de4 */ LDR R4, [R0] \n\
/* 08012de6 */ LDR R0, =0x453 \n\
/* 08012de8 */ ADDS R1, R4, R0 @ Set R1 to R4 + R0 \n\
/* 08012dea */ LDRB R0, [R1] \n\
/* 08012dec */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08012dee */ BEQ branch_08012e18 \n\
/* 08012df0 */ BL agb_random \n\
/* 08012df4 */ LSLS R0, R0, 0x10 \n\
/* 08012df6 */ LSRS R0, R0, 0x10 \n\
/* 08012df8 */ LDR R2, =0x454 \n\
/* 08012dfa */ ADDS R1, R4, R2 @ Set R1 to R4 + R2 \n\
/* 08012dfc */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08012dfe */ LDRB R4, [R1] \n\
/* 08012e00 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08012e02 */ BL func_08012cb4 \n\
/* 08012e06 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08012e08 */ B branch_08012e1c \n\
\n\
.ltorg \n\
 \n\
branch_08012e18: \n\
/* 08012e18 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08012e1a */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_08012e1c: \n\
/* 08012e1c */ POP {R4} \n\
/* 08012e1e */ POP {R1} \n\
/* 08012e20 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
