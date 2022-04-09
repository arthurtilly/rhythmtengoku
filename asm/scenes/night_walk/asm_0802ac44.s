asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802ac44 \n\
/* 0802ac44 */ LDR R1, =D_03001568 \n\
/* 0802ac46 */ LDR R1, [R1] \n\
/* 0802ac48 */ STR R0, [R1, 0xC] \n\
/* 0802ac4a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
