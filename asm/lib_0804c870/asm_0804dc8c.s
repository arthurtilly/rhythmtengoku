asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804dc8c \n\
/* 0804dc8c */ PUSH {R4, LR} \n\
/* 0804dc8e */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0804dc90 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0804dc92 */ LSLS R1, R1, 0x10 \n\
/* 0804dc94 */ ASRS R1, R1, 0x10 \n\
/* 0804dc96 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804dc98 */ BLT branch_0804dcb0 \n\
/* 0804dc9a */ LSLS R0, R1, 0x4 \n\
/* 0804dc9c */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804dc9e */ LSLS R0, R0, 0x2 \n\
/* 0804dca0 */ LDR R2, [R3, 0x8] \n\
/* 0804dca2 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0804dca4 */ LDR R0, [R2, 0x10] \n\
/* 0804dca6 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0804dca8 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0804dcaa */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804dcac */ ORRS R0, R4 @ Set R0 to R0 | R4 \n\
/* 0804dcae */ STR R0, [R2, 0x10] \n\
 \n\
branch_0804dcb0: \n\
/* 0804dcb0 */ POP {R4} \n\
/* 0804dcb2 */ POP {R0} \n\
/* 0804dcb4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
