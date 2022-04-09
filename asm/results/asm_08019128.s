asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08019128 \n\
/* 08019128 */ LDR R1, =D_03001334 \n\
/* 0801912a */ STR R0, [R1] \n\
/* 0801912c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
