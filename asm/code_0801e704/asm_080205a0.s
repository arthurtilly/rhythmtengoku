asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080205a0 \n\
/* 080205a0 */ PUSH {LR} \n\
/* 080205a2 */ LDR R0, [R1, 0x4] \n\
/* 080205a4 */ BL func_0800fc70 \n\
/* 080205a8 */ POP {R0} \n\
/* 080205aa */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
