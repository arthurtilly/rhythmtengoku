asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804d0d8 \n\
/* 0804d0d8 */ PUSH {R4, LR} \n\
/* 0804d0da */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0804d0dc */ LSLS R1, R1, 0x10 \n\
/* 0804d0de */ LSRS R4, R1, 0x10 \n\
/* 0804d0e0 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804d0e2 */ BLT branch_0804d110 \n\
/* 0804d0e4 */ MOVS R1, 0x12 @ Set R1 to 0x12 \n\
/* 0804d0e6 */ LDRSH R0, [R3, R1] \n\
/* 0804d0e8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804d0ea */ BLT branch_0804d0fa \n\
/* 0804d0ec */ LDR R2, [R3, 0x8] \n\
/* 0804d0ee */ LSLS R1, R0, 0x4 \n\
/* 0804d0f0 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0804d0f2 */ LSLS R1, R1, 0x2 \n\
/* 0804d0f4 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0804d0f6 */ STRH R4, [R1, 0x1A] \n\
/* 0804d0f8 */ B branch_0804d0fc \n\
 \n\
branch_0804d0fa: \n\
/* 0804d0fa */ STRH R4, [R3, 0x10] \n\
 \n\
branch_0804d0fc: \n\
/* 0804d0fc */ LSLS R1, R4, 0x10 \n\
/* 0804d0fe */ ASRS R1, R1, 0x10 \n\
/* 0804d100 */ LDR R2, [R3, 0x8] \n\
/* 0804d102 */ LSLS R0, R1, 0x4 \n\
/* 0804d104 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804d106 */ LSLS R0, R0, 0x2 \n\
/* 0804d108 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0804d10a */ LDR R1, =0x0000ffff \n\
/* 0804d10c */ STRH R1, [R0, 0x1A] \n\
/* 0804d10e */ STRH R4, [R3, 0x12] \n\
 \n\
branch_0804d110: \n\
/* 0804d110 */ POP {R4} \n\
/* 0804d112 */ POP {R0} \n\
/* 0804d114 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
