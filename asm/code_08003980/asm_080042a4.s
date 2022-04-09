asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080042a4 \n\
/* 080042a4 */ PUSH {LR} \n\
/* 080042a6 */ LDR R0, =D_030008a4 \n\
/* 080042a8 */ LDRB R0, [R0] \n\
/* 080042aa */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080042ac */ BEQ branch_080042b4 \n\
/* 080042ae */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080042b0 */ BL func_08004070 \n\
 \n\
branch_080042b4: \n\
/* 080042b4 */ POP {R0} \n\
/* 080042b6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
