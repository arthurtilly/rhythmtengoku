asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08049b34 \n\
/* 08049b34 */ PUSH {R4, LR} \n\
/* 08049b36 */ LDR R4, =D_030064a4 \n\
/* 08049b38 */ STR R0, [R4] \n\
/* 08049b3a */ LDR R0, =D_03005630 \n\
/* 08049b3c */ STR R1, [R0] \n\
/* 08049b3e */ LDR R0, =D_03005b48 \n\
/* 08049b40 */ STR R2, [R0] \n\
/* 08049b42 */ LDR R0, =D_03005634 \n\
/* 08049b44 */ STR R3, [R0] \n\
/* 08049b46 */ POP {R4} \n\
/* 08049b48 */ POP {R0} \n\
/* 08049b4a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
