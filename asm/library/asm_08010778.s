asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08010778 \n\
/* 08010778 */ PUSH {LR} \n\
/* 0801077a */ BL func_08008628 \n\
/* 0801077e */ BL func_08004058 \n\
/* 08010782 */ POP {R0} \n\
/* 08010784 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
