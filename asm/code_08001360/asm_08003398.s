asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08003398 \n\
/* 08003398 */ LDRB R0, [R0] \n\
/* 0800339a */ LSLS R0, R0, 0x1E \n\
/* 0800339c */ LSRS R0, R0, 0x1F \n\
/* 0800339e */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
