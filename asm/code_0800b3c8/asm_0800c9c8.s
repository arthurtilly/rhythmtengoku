asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c9c8 \n\
/* 0800c9c8 */ PUSH {LR} \n\
/* 0800c9ca */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800c9cc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800c9ce */ LDR R3, =jtbl_0800c9e8 \n\
 \n\
branch_0800c9d0: \n\
/* 0800c9d0 */ LDRB R0, [R1] \n\
/* 0800c9d2 */ ADDS R1, 0xC @ Add 0xC to R1 \n\
/* 0800c9d4 */ SUBS R0, 0x1E @ Subtract 0x1E from R0 \n\
/* 0800c9d6 */ CMP R0, 0x7 @ Compare R0 and 0x7 \n\
/* 0800c9d8 */ BHI branch_0800c9d0 \n\
/* 0800c9da */ LSLS R0, R0, 0x2 \n\
/* 0800c9dc */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0800c9de */ LDR R0, [R0] \n\
/* 0800c9e0 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
\n\
jtbl_0800c9e8: \n\
.word jump_0800ca08 \n\
.word jump_0800ca08 \n\
.word jump_0800ca0c \n\
.word branch_0800c9d0 \n\
.word branch_0800c9d0 \n\
.word branch_0800c9d0 \n\
.word jump_0800ca08 \n\
.word jump_0800ca08 \n\
\n\
jump_0800ca08: \n\
/* 0800ca08 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0800ca0a */ B branch_0800c9d0 \n\
\n\
jump_0800ca0c: \n\
/* 0800ca0c */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800ca0e */ BEQ branch_0800ca14 \n\
/* 0800ca10 */ SUBS R2, 0x1 @ Subtract 0x1 from R2 \n\
/* 0800ca12 */ B branch_0800c9d0 \n\
 \n\
branch_0800ca14: \n\
/* 0800ca14 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0800ca16 */ POP {R1} \n\
/* 0800ca18 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
