asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ae00 \n\
/* 0800ae00 */ PUSH {LR} \n\
/* 0800ae02 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800ae04 */ BEQ branch_0800ae08 \n\
/* 0800ae06 */ STRB R1, [R0, 0xB] \n\
 \n\
branch_0800ae08: \n\
/* 0800ae08 */ POP {R0} \n\
/* 0800ae0a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
