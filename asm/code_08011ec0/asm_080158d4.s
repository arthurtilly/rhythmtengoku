asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080158d4 \n\
/* 080158d4 */ PUSH {LR} \n\
/* 080158d6 */ BL func_08008628 \n\
/* 080158da */ BL func_08003f28 \n\
/* 080158de */ BL func_08004058 \n\
/* 080158e2 */ BL func_08006d80 \n\
/* 080158e6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080158e8 */ BL func_08007014 \n\
/* 080158ec */ POP {R0} \n\
/* 080158ee */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
