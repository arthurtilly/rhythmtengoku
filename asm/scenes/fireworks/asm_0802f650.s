asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802f650 \n\
/* 0802f650 */ LDR R1, =D_030055d0 \n\
/* 0802f652 */ LDR R1, [R1] \n\
/* 0802f654 */ LDR R2, =0x911 \n\
/* 0802f656 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802f658 */ STRB R0, [R1] \n\
/* 0802f65a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
