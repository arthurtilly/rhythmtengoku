asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803d5e4 \n\
/* 0803d5e4 */ PUSH {LR} \n\
/* 0803d5e6 */ MOVS R0, 0x91 @ Set R0 to 0x91 \n\
/* 0803d5e8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803d5ea */ BL gameplay_set_input_buttons \n\
/* 0803d5ee */ POP {R0} \n\
/* 0803d5f0 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
