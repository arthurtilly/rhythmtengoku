asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080182ac \n\
/* 080182ac */ LDR R1, =D_03001328 \n\
/* 080182ae */ STR R0, [R1] \n\
/* 080182b0 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
