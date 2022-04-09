asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802ec50 \n\
/* 0802ec50 */ PUSH {LR} \n\
/* 0802ec52 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802ec54 */ BL func_0800c604 \n\
/* 0802ec58 */ BL func_08017578 \n\
/* 0802ec5c */ POP {R0} \n\
/* 0802ec5e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
