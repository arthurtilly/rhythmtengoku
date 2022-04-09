asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c824 \n\
/* 0800c824 */ PUSH {LR} \n\
/* 0800c826 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800c828 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800c82a */ LDR R3, =jtbl_0800c844 \n\
 \n\
branch_0800c82c: \n\
/* 0800c82c */ LDRB R0, [R1] \n\
/* 0800c82e */ ADDS R1, 0xC @ Add 0xC to R1 \n\
/* 0800c830 */ SUBS R0, 0x12 @ Subtract 0x12 from R0 \n\
/* 0800c832 */ CMP R0, 0x40 @ Compare R0 and 0x40 \n\
/* 0800c834 */ BHI branch_0800c82c \n\
/* 0800c836 */ LSLS R0, R0, 0x2 \n\
/* 0800c838 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0800c83a */ LDR R0, [R0] \n\
/* 0800c83c */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
\n\
jtbl_0800c844: \n\
.word jump_0800c948 \n\
.word jump_0800c948 \n\
.word branch_0800c82c \n\
.word jump_0800c94c \n\
.word jump_0800c948 \n\
.word jump_0800c948 \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word jump_0800c948 \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word jump_0800c948 \n\
.word jump_0800c948 \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word jump_0800c948 \n\
.word branch_0800c82c \n\
.word jump_0800c948 \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word branch_0800c82c \n\
.word jump_0800c948 \n\
.word jump_0800c948 \n\
\n\
jump_0800c948: \n\
/* 0800c948 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0800c94a */ B branch_0800c82c \n\
\n\
jump_0800c94c: \n\
/* 0800c94c */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800c94e */ BEQ branch_0800c954 \n\
/* 0800c950 */ SUBS R2, 0x1 @ Subtract 0x1 from R2 \n\
/* 0800c952 */ B branch_0800c82c \n\
 \n\
branch_0800c954: \n\
/* 0800c954 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0800c956 */ POP {R1} \n\
/* 0800c958 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
