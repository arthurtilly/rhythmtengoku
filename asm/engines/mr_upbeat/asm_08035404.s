asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start mr_upbeat_input_event \n\
/* 08035404 */ PUSH {LR} \n\
/* 08035406 */ BL func_08034ff4 \n\
/* 0803540a */ POP {R0} \n\
/* 0803540c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
