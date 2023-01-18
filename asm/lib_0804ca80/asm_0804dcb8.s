asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804dcb8 \n\
/* 0804dcb8 */ PUSH {LR} \n\
/* 0804dcba */ LSLS R2, R2, 0x10 \n\
/* 0804dcbc */ LSRS R2, R2, 0x10 \n\
/* 0804dcbe */ LSLS R1, R1, 0x10 \n\
/* 0804dcc0 */ ASRS R3, R1, 0x10 \n\
/* 0804dcc2 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0804dcc4 */ BLT branch_0804dcd2 \n\
/* 0804dcc6 */ LSLS R1, R3, 0x4 \n\
/* 0804dcc8 */ SUBS R1, R1, R3 @ Set R1 to R1 - R3 \n\
/* 0804dcca */ LSLS R1, R1, 0x2 \n\
/* 0804dccc */ LDR R0, [R0, 0x8] \n\
/* 0804dcce */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804dcd0 */ STRH R2, [R0, 0x38] \n\
 \n\
branch_0804dcd2: \n\
/* 0804dcd2 */ POP {R0} \n\
/* 0804dcd4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
