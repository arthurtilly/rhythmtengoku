asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080382f4 \n\
/* 080382f4 */ PUSH {LR} \n\
/* 080382f6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080382f8 */ LDR R0, =gCurrentEngineData \n\
/* 080382fa */ LDR R0, [R0] \n\
/* 080382fc */ MOVS R2, 0xC5 @ Set R2 to 0xC5 \n\
/* 080382fe */ LSLS R2, R2, 0x2 \n\
/* 08038300 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08038302 */ LDR R0, [R0] \n\
/* 08038304 */ LSLS R1, R1, 0x10 \n\
/* 08038306 */ LSRS R1, R1, 0x10 \n\
/* 08038308 */ BL set_soundplayer_volume \n\
/* 0803830c */ POP {R0} \n\
/* 0803830e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
