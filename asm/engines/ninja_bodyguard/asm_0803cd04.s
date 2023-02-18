asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start ninja_bodyguard_engine_stop \n\
/* 0803cd04 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
