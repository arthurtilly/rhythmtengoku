asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08034ff4 \n\
/* 08034ff4 */ PUSH {R4-R7, LR} \n\
/* 08034ff6 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08034ff8 */ PUSH {R7} \n\
/* 08034ffa */ SUB SP, 0xC \n\
/* 08034ffc */ LDR R0, =gCurrentEngineData \n\
/* 08034ffe */ LDR R6, [R0] \n\
/* 08035000 */ ADDS R7, R6, 0x4 @ Set R7 to R6 + 0x4 \n\
/* 08035002 */ LDR R0, =s_tap_kick_monky_seqData \n\
/* 08035004 */ BL play_sound \n\
/* 08035008 */ LDRB R5, [R7, 0x4] \n\
/* 0803500a */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 0803500c */ BEQ branch_0803501c \n\
/* 0803500e */ CMP R5, 0x2 @ Compare R5 and 0x2 \n\
/* 08035010 */ BEQ branch_08035050 \n\
/* 08035012 */ B branch_08035080 \n\
\n\
.ltorg \n\
 \n\
branch_0803501c: \n\
/* 0803501c */ LDR R4, =gSpriteHandler \n\
/* 0803501e */ LDR R0, [R4] \n\
/* 08035020 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08035022 */ LDRSH R1, [R6, R2] \n\
/* 08035024 */ LDR R2, =anim_mr_upbeat_l_step \n\
/* 08035026 */ STR R5, [SP] \n\
/* 08035028 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803502a */ STR R3, [SP, 0x4] \n\
/* 0803502c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803502e */ STR R3, [SP, 0x8] \n\
/* 08035030 */ BL sprite_set_anim \n\
/* 08035034 */ STRB R5, [R7, 0x5] \n\
/* 08035036 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08035038 */ STRB R0, [R7, 0x4] \n\
/* 0803503a */ LDR R0, [R4] \n\
/* 0803503c */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0803503e */ LDRSH R1, [R7, R2] \n\
/* 08035040 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08035042 */ BL sprite_set_anim_cel \n\
/* 08035046 */ B branch_08035080 \n\
\n\
.ltorg \n\
 \n\
branch_08035050: \n\
/* 08035050 */ LDR R0, =gSpriteHandler \n\
/* 08035052 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08035054 */ LDR R0, [R0] \n\
/* 08035056 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08035058 */ LDRSH R1, [R6, R2] \n\
/* 0803505a */ LDR R2, =anim_mr_upbeat_r_step \n\
/* 0803505c */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 0803505e */ STR R5, [SP] \n\
/* 08035060 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08035062 */ STR R3, [SP, 0x4] \n\
/* 08035064 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08035066 */ STR R4, [SP, 0x8] \n\
/* 08035068 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803506a */ BL sprite_set_anim \n\
/* 0803506e */ STRB R4, [R7, 0x5] \n\
/* 08035070 */ STRB R5, [R7, 0x4] \n\
/* 08035072 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08035074 */ LDR R0, [R1] \n\
/* 08035076 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08035078 */ LDRSH R1, [R7, R2] \n\
/* 0803507a */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0803507c */ BL sprite_set_anim_cel \n\
 \n\
branch_08035080: \n\
/* 08035080 */ ADD SP, 0xC \n\
/* 08035082 */ POP {R3} \n\
/* 08035084 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08035086 */ POP {R4-R7} \n\
/* 08035088 */ POP {R0} \n\
/* 0803508a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
