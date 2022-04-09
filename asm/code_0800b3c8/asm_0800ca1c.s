asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ca1c \n\
/* 0800ca1c */ PUSH {LR} \n\
/* 0800ca1e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800ca20 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800ca22 */ LDR R3, =jtbl_0800ca3c \n\
 \n\
branch_0800ca24: \n\
/* 0800ca24 */ SUBS R1, 0xC @ Subtract 0xC from R1 \n\
/* 0800ca26 */ LDRB R0, [R1] \n\
/* 0800ca28 */ SUBS R0, 0x1E @ Subtract 0x1E from R0 \n\
/* 0800ca2a */ CMP R0, 0x7 @ Compare R0 and 0x7 \n\
/* 0800ca2c */ BHI branch_0800ca24 \n\
/* 0800ca2e */ LSLS R0, R0, 0x2 \n\
/* 0800ca30 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0800ca32 */ LDR R0, [R0] \n\
/* 0800ca34 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
\n\
jtbl_0800ca3c: \n\
.word jump_0800ca60 \n\
.word jump_0800ca60 \n\
.word jump_0800ca5c \n\
.word branch_0800ca24 \n\
.word branch_0800ca24 \n\
.word branch_0800ca24 \n\
.word jump_0800ca60 \n\
.word jump_0800ca60 \n\
\n\
jump_0800ca5c: \n\
/* 0800ca5c */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0800ca5e */ B branch_0800ca24 \n\
\n\
jump_0800ca60: \n\
/* 0800ca60 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800ca62 */ BEQ branch_0800ca68 \n\
/* 0800ca64 */ SUBS R2, 0x1 @ Subtract 0x1 from R2 \n\
/* 0800ca66 */ B branch_0800ca24 \n\
 \n\
branch_0800ca68: \n\
/* 0800ca68 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0800ca6a */ POP {R1} \n\
/* 0800ca6c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
