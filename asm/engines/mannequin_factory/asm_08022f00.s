asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08022f00 \n\
/* 08022f00 */ PUSH {LR} \n\
/* 08022f02 */ LDR R1, =gCurrentEngineData \n\
/* 08022f04 */ LDR R1, [R1] \n\
/* 08022f06 */ ADDS R1, 0xB0 @ Add 0xB0 to R1 \n\
/* 08022f08 */ STRH R0, [R1] \n\
/* 08022f0a */ LSLS R0, R0, 0x10 \n\
/* 08022f0c */ LSRS R0, R0, 0x10 \n\
/* 08022f0e */ BL set_beatscript_tempo \n\
/* 08022f12 */ POP {R0} \n\
/* 08022f14 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
