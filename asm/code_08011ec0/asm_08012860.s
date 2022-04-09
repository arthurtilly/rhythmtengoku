asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08012860 \n\
/* 08012860 */ LDR R1, =D_03001320 \n\
/* 08012862 */ STRB R0, [R1] \n\
/* 08012864 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
