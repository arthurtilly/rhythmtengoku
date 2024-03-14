asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start space_dance_common_beat_animation \n\
/* 0803d914 */ PUSH {R4-R7, LR} \n\
/* 0803d916 */ SUB SP, 0xC \n\
/* 0803d918 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0803d91a */ LDR R7, =gCurrentEngineData \n\
 \n\
branch_0803d91c: \n\
/* 0803d91c */ LDR R0, [R7] \n\
/* 0803d91e */ LSLS R4, R6, 0x1 \n\
/* 0803d920 */ ADDS R0, 0xE @ Add 0xE to R0 \n\
/* 0803d922 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0803d924 */ LDRH R5, [R0] \n\
/* 0803d926 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0803d928 */ BNE branch_0803d950 \n\
/* 0803d92a */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 0803d92c */ BL space_dance_get_anim \n\
/* 0803d930 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803d932 */ LDR R0, =gSpriteHandler \n\
/* 0803d934 */ LDR R0, [R0] \n\
/* 0803d936 */ LDR R1, [R7] \n\
/* 0803d938 */ ADDS R1, 0x6 @ Add 0x6 to R1 \n\
/* 0803d93a */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0803d93c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803d93e */ LDRSH R1, [R1, R3] \n\
/* 0803d940 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803d942 */ STR R3, [SP] \n\
/* 0803d944 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803d946 */ STR R3, [SP, 0x4] \n\
/* 0803d948 */ STR R5, [SP, 0x8] \n\
/* 0803d94a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803d94c */ BL sprite_set_anim \n\
 \n\
branch_0803d950: \n\
/* 0803d950 */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 0803d952 */ CMP R6, 0x3 @ Compare R6 and 0x3 \n\
/* 0803d954 */ BLS branch_0803d91c \n\
/* 0803d956 */ LDR R5, =gCurrentEngineData \n\
/* 0803d958 */ LDR R1, [R5] \n\
/* 0803d95a */ LDRH R0, [R1, 0x18] \n\
/* 0803d95c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803d95e */ BNE branch_0803d98e \n\
/* 0803d960 */ LDRB R0, [R1, 0x1B] \n\
/* 0803d962 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803d964 */ BEQ branch_0803d98e \n\
/* 0803d966 */ LDRH R4, [R1, 0x1C] \n\
/* 0803d968 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0803d96a */ BNE branch_0803d98e \n\
/* 0803d96c */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0803d96e */ BL space_dance_get_anim \n\
/* 0803d972 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803d974 */ LDR R0, =gSpriteHandler \n\
/* 0803d976 */ LDR R0, [R0] \n\
/* 0803d978 */ LDR R1, [R5] \n\
/* 0803d97a */ MOVS R3, 0x16 @ Set R3 to 0x16 \n\
/* 0803d97c */ LDRSH R1, [R1, R3] \n\
/* 0803d97e */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803d980 */ STR R3, [SP] \n\
/* 0803d982 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803d984 */ STR R3, [SP, 0x4] \n\
/* 0803d986 */ STR R4, [SP, 0x8] \n\
/* 0803d988 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803d98a */ BL sprite_set_anim \n\
 \n\
branch_0803d98e: \n\
/* 0803d98e */ ADD SP, 0xC \n\
/* 0803d990 */ POP {R4-R7} \n\
/* 0803d992 */ POP {R0} \n\
/* 0803d994 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
