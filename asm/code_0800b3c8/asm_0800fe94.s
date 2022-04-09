asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800fe94 \n\
/* 0800fe94 */ PUSH {LR} \n\
/* 0800fe96 */ LSLS R1, R1, 0x10 \n\
/* 0800fe98 */ LSRS R1, R1, 0x10 \n\
/* 0800fe9a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800fe9c */ BEQ branch_0800fea4 \n\
/* 0800fe9e */ STRH R1, [R0, 0x8] \n\
/* 0800fea0 */ BL func_0800f904 \n\
 \n\
branch_0800fea4: \n\
/* 0800fea4 */ POP {R0} \n\
/* 0800fea6 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
