asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802fc38 \n\
/* 0802fc38 */ PUSH {LR} \n\
/* 0802fc3a */ BL func_0802f664 \n\
/* 0802fc3e */ LDR R2, =D_030055d0 \n\
/* 0802fc40 */ LDR R0, [R2] \n\
/* 0802fc42 */ LDR R3, =0x90e \n\
/* 0802fc44 */ ADDS R1, R0, R3 @ Set R1 to R0 + R3 \n\
/* 0802fc46 */ LDRB R0, [R1] \n\
/* 0802fc48 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802fc4a */ BEQ branch_0802fc5c \n\
/* 0802fc4c */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0802fc4e */ STRB R0, [R1] \n\
/* 0802fc50 */ LDR R1, =D_03004b10 \n\
/* 0802fc52 */ LDR R0, [R2] \n\
/* 0802fc54 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0802fc56 */ LDRB R0, [R0] \n\
/* 0802fc58 */ ADDS R1, 0x50 @ Add 0x50 to R1 \n\
/* 0802fc5a */ STRH R0, [R1] \n\
 \n\
branch_0802fc5c: \n\
/* 0802fc5c */ POP {R0} \n\
/* 0802fc5e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
