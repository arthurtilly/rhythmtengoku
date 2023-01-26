asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801a370 \n\
/* 0801a370 */ PUSH {LR} \n\
/* 0801a372 */ BL func_08008628 \n\
/* 0801a376 */ BL func_08004058 \n\
/* 0801a37a */ BL stop_all_soundplayers \n\
/* 0801a37e */ POP {R0} \n\
/* 0801a380 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
