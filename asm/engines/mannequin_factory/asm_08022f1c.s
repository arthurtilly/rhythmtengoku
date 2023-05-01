asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08022f1c \n\
/* 08022f1c */ PUSH {R4, LR} \n\
/* 08022f1e */ LDR R4, =gCurrentEngineData \n\
/* 08022f20 */ LDR R1, [R4] \n\
/* 08022f22 */ ADDS R1, 0xB0 @ Add 0xB0 to R1 \n\
/* 08022f24 */ LDRH R1, [R1] \n\
/* 08022f26 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08022f28 */ LSRS R0, R0, 0x8 \n\
/* 08022f2a */ MOVS R2, 0xB4 @ Set R2 to 0xB4 \n\
/* 08022f2c */ LSLS R2, R2, 0x1 \n\
/* 08022f2e */ MOVS R1, 0x3C @ Set R1 to 0x3C \n\
/* 08022f30 */ BL clamp_int32 \n\
/* 08022f34 */ LDR R1, [R4] \n\
/* 08022f36 */ ADDS R1, 0xB0 @ Add 0xB0 to R1 \n\
/* 08022f38 */ STRH R0, [R1] \n\
/* 08022f3a */ LDRH R0, [R1] \n\
/* 08022f3c */ BL set_beatscript_tempo \n\
/* 08022f40 */ POP {R4} \n\
/* 08022f42 */ POP {R0} \n\
/* 08022f44 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
