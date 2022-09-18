asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011510 \n\
/* 08011510 */ PUSH {LR} \n\
/* 08011512 */ LDR R1, =(VRAMBase + 0xf000) \n\
/* 08011514 */ BL func_08003eb8 \n\
/* 08011518 */ POP {R0} \n\
/* 0801151a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
