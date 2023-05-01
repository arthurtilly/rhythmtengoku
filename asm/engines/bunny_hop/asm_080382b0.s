asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080382b0 \n\
/* 080382b0 */ PUSH {R4, R5, LR} \n\
/* 080382b2 */ LDR R1, =bunny_hop_bgm_harmony_parts \n\
/* 080382b4 */ LDR R4, =gCurrentEngineData \n\
/* 080382b6 */ LDR R0, [R4] \n\
/* 080382b8 */ MOVS R5, 0xC4 @ Set R5 to 0xC4 \n\
/* 080382ba */ LSLS R5, R5, 0x2 \n\
/* 080382bc */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 080382be */ LDRB R0, [R0] \n\
/* 080382c0 */ LSLS R0, R0, 0x2 \n\
/* 080382c2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080382c4 */ LDR R0, [R0] \n\
/* 080382c6 */ BL play_sound \n\
/* 080382ca */ LDR R1, [R4] \n\
/* 080382cc */ MOVS R2, 0xC5 @ Set R2 to 0xC5 \n\
/* 080382ce */ LSLS R2, R2, 0x2 \n\
/* 080382d0 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080382d2 */ STR R0, [R1] \n\
/* 080382d4 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 080382d6 */ LSLS R1, R1, 0x1 \n\
/* 080382d8 */ BL set_soundplayer_speed \n\
/* 080382dc */ LDR R1, [R4] \n\
/* 080382de */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 080382e0 */ LDRB R0, [R1] \n\
/* 080382e2 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080382e4 */ STRB R0, [R1] \n\
/* 080382e6 */ POP {R4, R5} \n\
/* 080382e8 */ POP {R0} \n\
/* 080382ea */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
