asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045ee8 \n\
/* 08045ee8 */ PUSH {LR} \n\
/* 08045eea */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045eec */ BL func_0800c604 \n\
/* 08045ef0 */ BL func_08017578 \n\
/* 08045ef4 */ POP {R0} \n\
/* 08045ef6 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
