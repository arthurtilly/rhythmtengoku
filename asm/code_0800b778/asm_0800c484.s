asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c484 \n\
/* 0800c484 */ PUSH {LR} \n\
/* 0800c486 */ BL flush_save_buffer_to_sram \n\
/* 0800c48a */ POP {R0} \n\
/* 0800c48c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
