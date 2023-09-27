asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080349d0 \n\
/* 080349d0 */ PUSH {R4, LR} \n\
/* 080349d2 */ LDR R4, =gCurrentEngineData \n\
/* 080349d4 */ LDR R0, [R4] \n\
/* 080349d6 */ ADDS R0, 0x2C @ Add 0x2C to R0 \n\
/* 080349d8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080349da */ BL func_080343b8 \n\
/* 080349de */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 080349e0 */ BL ticks_to_frames \n\
/* 080349e4 */ LDR R1, [R4] \n\
/* 080349e6 */ STRH R0, [R1, 0x3A] \n\
/* 080349e8 */ POP {R4} \n\
/* 080349ea */ POP {R0} \n\
/* 080349ec */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
