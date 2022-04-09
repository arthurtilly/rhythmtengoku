asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800fe78 \n\
/* 0800fe78 */ PUSH {LR} \n\
/* 0800fe7a */ LSLS R1, R1, 0x10 \n\
/* 0800fe7c */ LSRS R1, R1, 0x10 \n\
/* 0800fe7e */ LSLS R2, R2, 0x10 \n\
/* 0800fe80 */ LSRS R2, R2, 0x10 \n\
/* 0800fe82 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800fe84 */ BEQ branch_0800fe8e \n\
/* 0800fe86 */ STRH R1, [R0, 0x4] \n\
/* 0800fe88 */ STRH R2, [R0, 0x6] \n\
/* 0800fe8a */ BL func_0800f904 \n\
 \n\
branch_0800fe8e: \n\
/* 0800fe8e */ POP {R0} \n\
/* 0800fe90 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
