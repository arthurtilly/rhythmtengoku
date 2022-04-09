asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c6e4 \n\
/* 0800c6e4 */ PUSH {LR} \n\
/* 0800c6e6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800c6e8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800c6ea */ LDR R3, =jtbl_0800c704 \n\
 \n\
branch_0800c6ec: \n\
/* 0800c6ec */ LDRB R0, [R1] \n\
/* 0800c6ee */ ADDS R1, 0xC @ Add 0xC to R1 \n\
/* 0800c6f0 */ SUBS R0, 0x12 @ Subtract 0x12 from R0 \n\
/* 0800c6f2 */ CMP R0, 0x40 @ Compare R0 and 0x40 \n\
/* 0800c6f4 */ BHI branch_0800c6ec \n\
/* 0800c6f6 */ LSLS R0, R0, 0x2 \n\
/* 0800c6f8 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0800c6fa */ LDR R0, [R0] \n\
/* 0800c6fc */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
\n\
jtbl_0800c704: \n\
.word jump_0800c808 \n\
.word jump_0800c808 \n\
.word jump_0800c80c \n\
.word jump_0800c814 \n\
.word jump_0800c808 \n\
.word jump_0800c808 \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word jump_0800c808 \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word jump_0800c808 \n\
.word jump_0800c808 \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word jump_0800c808 \n\
.word branch_0800c6ec \n\
.word jump_0800c808 \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word branch_0800c6ec \n\
.word jump_0800c808 \n\
.word jump_0800c808 \n\
 \n\
 jump_0800c808: \n\
/* 0800c808 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0800c80a */ B branch_0800c6ec \n\
\n\
jump_0800c80c: \n\
/* 0800c80c */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800c80e */ BEQ branch_0800c812 \n\
/* 0800c810 */ B branch_0800c6ec \n\
 \n\
branch_0800c812: \n\
/* 0800c812 */ B branch_0800c81c \n\
\n\
jump_0800c814: \n\
/* 0800c814 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800c816 */ BEQ branch_0800c81c \n\
/* 0800c818 */ SUBS R2, 0x1 @ Subtract 0x1 from R2 \n\
/* 0800c81a */ B branch_0800c6ec \n\
 \n\
branch_0800c81c: \n\
/* 0800c81c */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0800c81e */ POP {R1} \n\
/* 0800c820 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
