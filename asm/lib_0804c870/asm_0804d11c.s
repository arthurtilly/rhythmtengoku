asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804d11c \n\
/* 0804d11c */ PUSH {LR} \n\
/* 0804d11e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0804d120 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804d122 */ LDR R0, [R2] \n\
/* 0804d124 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804d126 */ BEQ branch_0804d138 \n\
 \n\
branch_0804d128: \n\
/* 0804d128 */ ADDS R0, R1, 0x1 @ Set R0 to R1 + 0x1 \n\
/* 0804d12a */ LSLS R0, R0, 0x18 \n\
/* 0804d12c */ LSRS R1, R0, 0x18 \n\
/* 0804d12e */ LSLS R0, R1, 0x3 \n\
/* 0804d130 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0804d132 */ LDR R0, [R0] \n\
/* 0804d134 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804d136 */ BNE branch_0804d128 \n\
 \n\
branch_0804d138: \n\
/* 0804d138 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0804d13a */ POP {R1} \n\
/* 0804d13c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
