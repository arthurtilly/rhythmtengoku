asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080349ac \n\
/* 080349ac */ PUSH {R4, LR} \n\
/* 080349ae */ LDR R4, =gCurrentEngineData \n\
/* 080349b0 */ LDR R0, [R4] \n\
/* 080349b2 */ ADDS R0, 0x2C @ Add 0x2C to R0 \n\
/* 080349b4 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 080349b6 */ BL func_080343b8 \n\
/* 080349ba */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 080349bc */ BL ticks_to_frames \n\
/* 080349c0 */ LDR R1, [R4] \n\
/* 080349c2 */ STRH R0, [R1, 0x3A] \n\
/* 080349c4 */ POP {R4} \n\
/* 080349c6 */ POP {R0} \n\
/* 080349c8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
