asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801350c \n\
/* 0801350c */ PUSH {LR} \n\
/* 0801350e */ LDR R0, =D_030055d4 \n\
/* 08013510 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08013512 */ STR R1, [R0] \n\
/* 08013514 */ LDR R0, =D_03005590 \n\
/* 08013516 */ STR R1, [R0] \n\
/* 08013518 */ BL func_08012850 \n\
/* 0801351c */ BL func_08013994 \n\
/* 08013520 */ BL func_080127fc \n\
/* 08013524 */ POP {R0} \n\
/* 08013526 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
