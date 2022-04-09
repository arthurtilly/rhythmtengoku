asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080091c4 \n\
/* 080091c4 */ LDR R2, =D_030010fc \n\
/* 080091c6 */ STR R0, [R2] \n\
/* 080091c8 */ LDR R0, =D_03001100 \n\
/* 080091ca */ STR R1, [R0] \n\
/* 080091cc */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
