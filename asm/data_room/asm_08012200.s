asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08012200 \n\
/* 08012200 */ LDR R2, =D_03001318 \n\
/* 08012202 */ STRB R0, [R2] \n\
/* 08012204 */ LDR R0, =D_03001319 \n\
/* 08012206 */ STRB R1, [R0] \n\
/* 08012208 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
