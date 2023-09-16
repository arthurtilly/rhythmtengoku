asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080373dc \n\
/* 080373dc */ PUSH {LR} \n\
/* 080373de */ BL ticks_to_frames \n\
/* 080373e2 */ LDR R1, =gCurrentEngineData \n\
/* 080373e4 */ LDR R1, [R1] \n\
/* 080373e6 */ STR R0, [R1, 0x3C] \n\
/* 080373e8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080373ea */ STR R0, [R1, 0x38] \n\
/* 080373ec */ POP {R0} \n\
/* 080373ee */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
