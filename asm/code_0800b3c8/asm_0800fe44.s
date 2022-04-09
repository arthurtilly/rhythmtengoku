asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800fe44 \n\
/* 0800fe44 */ PUSH {LR} \n\
/* 0800fe46 */ LSLS R1, R1, 0x10 \n\
/* 0800fe48 */ LSRS R1, R1, 0x10 \n\
/* 0800fe4a */ LSLS R2, R2, 0x10 \n\
/* 0800fe4c */ LSRS R2, R2, 0x10 \n\
/* 0800fe4e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800fe50 */ BEQ branch_0800fe5c \n\
/* 0800fe52 */ STRH R1, [R0, 0x4] \n\
/* 0800fe54 */ STRH R1, [R0, 0x6] \n\
/* 0800fe56 */ STRH R2, [R0, 0x8] \n\
/* 0800fe58 */ BL func_0800f904 \n\
 \n\
branch_0800fe5c: \n\
/* 0800fe5c */ POP {R0} \n\
/* 0800fe5e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
