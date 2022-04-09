asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08019304 \n\
/* 08019304 */ LDR R1, =D_089d7980 \n\
/* 08019306 */ LDR R1, [R1] \n\
/* 08019308 */ STR R0, [R1, 0x78] \n\
/* 0801930a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
