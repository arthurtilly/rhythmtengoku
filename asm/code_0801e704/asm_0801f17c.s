asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801f17c \n\
/* 0801f17c */ PUSH {LR} \n\
/* 0801f17e */ LDR R0, =D_030055d0 \n\
/* 0801f180 */ LDR R0, [R0] \n\
/* 0801f182 */ LDRB R0, [R0, 0x5] \n\
/* 0801f184 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801f186 */ BNE branch_0801f18c \n\
/* 0801f188 */ BL func_0801f040 \n\
 \n\
branch_0801f18c: \n\
/* 0801f18c */ POP {R0} \n\
/* 0801f18e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
