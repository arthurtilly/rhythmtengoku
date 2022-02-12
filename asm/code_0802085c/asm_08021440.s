asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08021440 \n\
/* 08021440 */ PUSH {LR} \n\
/* 08021442 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08021444 */ LDR R0, =D_030055d0 \n\
/* 08021446 */ LDR R0, [R0] \n\
/* 08021448 */ LDR R0, [R0, 0x24] \n\
/* 0802144a */ BL func_0800aa4c \n\
/* 0802144e */ POP {R0} \n\
/* 08021450 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
