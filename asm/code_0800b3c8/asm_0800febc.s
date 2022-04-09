asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800febc \n\
/* 0800febc */ PUSH {LR} \n\
/* 0800febe */ LSLS R1, R1, 0x10 \n\
/* 0800fec0 */ LSRS R1, R1, 0x10 \n\
/* 0800fec2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800fec4 */ BEQ branch_0800fecc \n\
/* 0800fec6 */ STRH R1, [R0, 0x10] \n\
/* 0800fec8 */ BL func_0800f904 \n\
 \n\
branch_0800fecc: \n\
/* 0800fecc */ POP {R0} \n\
/* 0800fece */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
