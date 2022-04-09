asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08016e94 \n\
/* 08016e94 */ PUSH {LR} \n\
/* 08016e96 */ LDR R0, =D_089ddbcc \n\
/* 08016e98 */ BL func_080182ac \n\
/* 08016e9c */ POP {R0} \n\
/* 08016e9e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
