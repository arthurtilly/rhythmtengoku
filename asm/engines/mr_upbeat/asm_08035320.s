asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start mr_upbeat_engine_update \n\
/* 08035320 */ PUSH {LR} \n\
/* 08035322 */ BL func_08034eb4 \n\
/* 08035326 */ BL func_08035168 \n\
/* 0803532a */ POP {R0} \n\
/* 0803532c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
