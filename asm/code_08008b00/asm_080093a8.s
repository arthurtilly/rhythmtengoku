asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080093a8 \n\
/* 080093a8 */ LDR R0, =D_03001190 \n\
/* 080093aa */ LDR R0, [R0] \n\
/* 080093ac */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
