asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08017400 \n\
/* 08017400 */ LDR R1, =D_030046a4 \n\
/* 08017402 */ LDR R1, [R1] \n\
/* 08017404 */ STR R0, [R1, 0x74] \n\
/* 08017406 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
