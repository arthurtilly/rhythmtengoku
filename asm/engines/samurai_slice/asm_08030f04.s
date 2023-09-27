asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08030f04 \n\
/* 08030f04 */ PUSH {R4, LR} \n\
/* 08030f06 */ SUB SP, 0x4 \n\
/* 08030f08 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08030f0a */ LDR R0, =gCurrentEngineData \n\
/* 08030f0c */ LDR R0, [R0] \n\
/* 08030f0e */ STR R4, [R0, 0x8] \n\
/* 08030f10 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 08030f12 */ BL ticks_to_frames \n\
/* 08030f16 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08030f18 */ LDR R2, =(D_030053c0 + 0x190) \n\
/* 08030f1a */ LDRH R3, [R2] \n\
/* 08030f1c */ STR R4, [SP] \n\
/* 08030f1e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08030f20 */ BL scene_start_integer_interp \n\
/* 08030f24 */ ADD SP, 0x4 \n\
/* 08030f26 */ POP {R4} \n\
/* 08030f28 */ POP {R0} \n\
/* 08030f2a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
