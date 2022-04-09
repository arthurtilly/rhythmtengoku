asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045dec \n\
/* 08045dec */ PUSH {LR} \n\
/* 08045dee */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045df0 */ BL func_0800c604 \n\
/* 08045df4 */ BL func_08017578 \n\
/* 08045df8 */ POP {R0} \n\
/* 08045dfa */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
