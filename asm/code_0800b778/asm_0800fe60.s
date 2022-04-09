asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800fe60 \n\
/* 0800fe60 */ PUSH {LR} \n\
/* 0800fe62 */ LSLS R1, R1, 0x10 \n\
/* 0800fe64 */ LSRS R1, R1, 0x10 \n\
/* 0800fe66 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800fe68 */ BEQ branch_0800fe72 \n\
/* 0800fe6a */ STRH R1, [R0, 0x4] \n\
/* 0800fe6c */ STRH R1, [R0, 0x6] \n\
/* 0800fe6e */ BL func_0800f904 \n\
 \n\
branch_0800fe72: \n\
/* 0800fe72 */ POP {R0} \n\
/* 0800fe74 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
