asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080141c0 \n\
/* 080141c0 */ LDR R2, =D_030055d4 \n\
/* 080141c2 */ STR R0, [R2] \n\
/* 080141c4 */ LDR R0, =D_03005590 \n\
/* 080141c6 */ STR R1, [R0] \n\
/* 080141c8 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
