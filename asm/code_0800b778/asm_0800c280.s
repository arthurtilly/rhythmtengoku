asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c280 \n\
/* 0800c280 */ PUSH {R4, LR} \n\
/* 0800c282 */ BL play_sound \n\
/* 0800c286 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800c288 */ BL func_0800c1b4 \n\
/* 0800c28c */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800c28e */ LSLS R1, R1, 0x10 \n\
/* 0800c290 */ LSRS R1, R1, 0x10 \n\
/* 0800c292 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800c294 */ BL set_soundplayer_speed \n\
/* 0800c298 */ LDR R0, =D_030053c0 \n\
/* 0800c29a */ MOVS R2, 0x1E @ Set R2 to 0x1E \n\
/* 0800c29c */ LDRSH R1, [R0, R2] \n\
/* 0800c29e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800c2a0 */ BL set_soundplayer_pitch \n\
/* 0800c2a4 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800c2a6 */ POP {R4} \n\
/* 0800c2a8 */ POP {R1} \n\
/* 0800c2aa */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
