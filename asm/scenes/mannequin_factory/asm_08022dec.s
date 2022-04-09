asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08022dec \n\
/* 08022dec */ PUSH {LR} \n\
/* 08022dee */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08022df0 */ BL func_0800c604 \n\
/* 08022df4 */ BL func_08017578 \n\
/* 08022df8 */ POP {R0} \n\
/* 08022dfa */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
