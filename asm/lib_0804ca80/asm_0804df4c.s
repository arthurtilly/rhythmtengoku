asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804df4c \n\
/* 0804df4c */ PUSH {LR} \n\
/* 0804df4e */ LSLS R2, R2, 0x18 \n\
/* 0804df50 */ LSRS R2, R2, 0x18 \n\
/* 0804df52 */ LSLS R1, R1, 0x10 \n\
/* 0804df54 */ ASRS R3, R1, 0x10 \n\
/* 0804df56 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0804df58 */ BLT branch_0804df66 \n\
/* 0804df5a */ LSLS R1, R3, 0x4 \n\
/* 0804df5c */ SUBS R1, R1, R3 @ Set R1 to R1 - R3 \n\
/* 0804df5e */ LSLS R1, R1, 0x2 \n\
/* 0804df60 */ LDR R0, [R0, 0x8] \n\
/* 0804df62 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804df64 */ STRB R2, [R0, 0x17] \n\
 \n\
branch_0804df66: \n\
/* 0804df66 */ POP {R0} \n\
/* 0804df68 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
