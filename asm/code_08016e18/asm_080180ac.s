asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080180ac \n\
/* 080180ac */ LDRH R0, [R0, 0xA] \n\
/* 080180ae */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
