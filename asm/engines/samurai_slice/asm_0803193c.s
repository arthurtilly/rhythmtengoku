asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start samurai_slice_common_beat_animation \n\
/* 0803193c */ PUSH {R4, R5, LR} \n\
/* 0803193e */ SUB SP, 0x4 \n\
/* 08031940 */ LDR R0, =gCurrentEngineData \n\
/* 08031942 */ LDR R1, [R0] \n\
/* 08031944 */ LDRB R0, [R1, 0x4] \n\
/* 08031946 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08031948 */ BEQ branch_08031992 \n\
/* 0803194a */ LDR R0, =gSpriteHandler \n\
/* 0803194c */ LDR R0, [R0] \n\
/* 0803194e */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08031950 */ LDRSH R1, [R1, R2] \n\
/* 08031952 */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 08031954 */ BL sprite_get_data \n\
/* 08031958 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803195a */ LDR R0, =anim_samurai_beat_2 \n\
/* 0803195c */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0803195e */ BEQ branch_0803196c \n\
/* 08031960 */ LDR R0, =anim_samurai_beat_1 \n\
/* 08031962 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08031964 */ BEQ branch_0803196c \n\
/* 08031966 */ LDR R0, =anim_samurai_beat_3 \n\
/* 08031968 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0803196a */ BNE branch_08031992 \n\
 \n\
branch_0803196c: \n\
/* 0803196c */ LDR R5, =gSpriteHandler \n\
/* 0803196e */ LDR R0, [R5] \n\
/* 08031970 */ LDR R4, =gCurrentEngineData \n\
/* 08031972 */ LDR R1, [R4] \n\
/* 08031974 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08031976 */ LDRSH R1, [R1, R2] \n\
/* 08031978 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803197a */ BL sprite_set_anim_cel \n\
/* 0803197e */ LDR R0, [R5] \n\
/* 08031980 */ LDR R1, [R4] \n\
/* 08031982 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08031984 */ LDRSH R1, [R1, R2] \n\
/* 08031986 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08031988 */ STR R2, [SP] \n\
/* 0803198a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803198c */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803198e */ BL sprite_set_playback \n\
 \n\
branch_08031992: \n\
/* 08031992 */ ADD SP, 0x4 \n\
/* 08031994 */ POP {R4, R5} \n\
/* 08031996 */ POP {R0} \n\
/* 08031998 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
