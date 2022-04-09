asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800aca0 \n\
/* 0800aca0 */ PUSH {LR} \n\
/* 0800aca2 */ LSLS R1, R1, 0x10 \n\
/* 0800aca4 */ LSRS R1, R1, 0x10 \n\
/* 0800aca6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800aca8 */ BEQ branch_0800acac \n\
/* 0800acaa */ STRH R1, [R0, 0x30] \n\
 \n\
branch_0800acac: \n\
/* 0800acac */ POP {R0} \n\
/* 0800acae */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
