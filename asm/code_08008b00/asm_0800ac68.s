asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ac68 \n\
/* 0800ac68 */ PUSH {LR} \n\
/* 0800ac6a */ LSLS R1, R1, 0x10 \n\
/* 0800ac6c */ LSRS R1, R1, 0x10 \n\
/* 0800ac6e */ LSLS R2, R2, 0x10 \n\
/* 0800ac70 */ LSRS R2, R2, 0x10 \n\
/* 0800ac72 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800ac74 */ BEQ branch_0800ac7a \n\
/* 0800ac76 */ STRH R1, [R0, 0x2C] \n\
/* 0800ac78 */ STRH R2, [R0, 0x2E] \n\
 \n\
branch_0800ac7a: \n\
/* 0800ac7a */ POP {R0} \n\
/* 0800ac7c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
