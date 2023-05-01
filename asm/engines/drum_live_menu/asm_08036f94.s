asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08036f94 \n\
/* 08036f94 */ PUSH {LR} \n\
/* 08036f96 */ LDR R0, =gCurrentEngineData \n\
/* 08036f98 */ LDR R1, [R0] \n\
/* 08036f9a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08036f9c */ STRB R0, [R1, 0x9] \n\
/* 08036f9e */ BL set_pause_beatscript_scene \n\
/* 08036fa2 */ POP {R0} \n\
/* 08036fa4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
