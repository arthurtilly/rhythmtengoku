asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start staff_credit_engine_update \n\
/* 0802393c */ PUSH {LR} \n\
/* 0802393e */ BL func_080238c0 \n\
/* 08023942 */ BL func_08023808 \n\
/* 08023946 */ POP {R0} \n\
/* 08023948 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
