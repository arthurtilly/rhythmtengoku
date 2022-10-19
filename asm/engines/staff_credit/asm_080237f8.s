asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080237f8 \n\
/* 080237f8 */ LDR R1, =D_030055d0 \n\
/* 080237fa */ LDR R1, [R1] \n\
/* 080237fc */ ADDS R1, 0x74 @ Add 0x74 to R1 \n\
/* 080237fe */ STRB R0, [R1] \n\
/* 08023800 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
