asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start ninja_bodyguard_engine_update \n\
/* 0803ccf4 */ PUSH {LR} \n\
/* 0803ccf6 */ BL func_0803c5c0 \n\
/* 0803ccfa */ BL func_0803bec4 \n\
/* 0803ccfe */ POP {R0} \n\
/* 0803cd00 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
