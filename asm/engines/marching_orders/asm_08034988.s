asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08034988 \n\
/* 08034988 */ PUSH {R4, LR} \n\
/* 0803498a */ LDR R4, =gCurrentEngineData \n\
/* 0803498c */ LDR R0, [R4] \n\
/* 0803498e */ ADDS R0, 0x2C @ Add 0x2C to R0 \n\
/* 08034990 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 08034992 */ BL func_080343b8 \n\
/* 08034996 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 08034998 */ BL ticks_to_frames \n\
/* 0803499c */ LDR R1, [R4] \n\
/* 0803499e */ STRH R0, [R1, 0x3A] \n\
/* 080349a0 */ POP {R4} \n\
/* 080349a2 */ POP {R0} \n\
/* 080349a4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
