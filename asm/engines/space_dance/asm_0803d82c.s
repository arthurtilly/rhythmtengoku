asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803d82c \n\
/* 0803d82c */ PUSH {LR} \n\
/* 0803d82e */ MOVS R0, 0x91 @ Set R0 to 0x91 \n\
/* 0803d830 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803d832 */ BL gameplay_set_input_buttons \n\
/* 0803d836 */ POP {R0} \n\
/* 0803d838 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
