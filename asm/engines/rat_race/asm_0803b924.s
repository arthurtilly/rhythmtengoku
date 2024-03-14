asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803b924 \n\
/* 0803b924 */ PUSH {R4, R5, LR} \n\
/* 0803b926 */ SUB SP, 0xC \n\
/* 0803b928 */ LDR R0, =gCurrentEngineData \n\
/* 0803b92a */ LDR R1, [R0] \n\
/* 0803b92c */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0803b92e */ ADDS R5, 0x3C @ Add 0x3C to R5 \n\
/* 0803b930 */ LDRB R1, [R5, 0x5] \n\
/* 0803b932 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803b934 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0803b936 */ BEQ branch_0803b940 \n\
 \n\
branch_0803b938: \n\
/* 0803b938 */ ADDS R5, 0x10 @ Add 0x10 to R5 \n\
/* 0803b93a */ LDRB R0, [R5, 0x5] \n\
/* 0803b93c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803b93e */ BNE branch_0803b938 \n\
 \n\
branch_0803b940: \n\
/* 0803b940 */ LDRB R3, [R5, 0x4] \n\
/* 0803b942 */ CMP R3, 0x1 @ Compare R3 and 0x1 \n\
/* 0803b944 */ BEQ branch_0803b950 \n\
/* 0803b946 */ CMP R3, 0x3 @ Compare R3 and 0x3 \n\
/* 0803b948 */ BEQ branch_0803b9bc \n\
/* 0803b94a */ B branch_0803b9ec \n\
\n\
.ltorg \n\
 \n\
branch_0803b950: \n\
/* 0803b950 */ LDR R0, [R2] \n\
/* 0803b952 */ ADDS R0, 0xD2 @ Add 0xD2 to R0 \n\
/* 0803b954 */ LDRB R0, [R0] \n\
/* 0803b956 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803b958 */ BEQ branch_0803b9ec \n\
/* 0803b95a */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803b95c */ STRB R0, [R5, 0x4] \n\
/* 0803b95e */ LDR R0, [R2] \n\
/* 0803b960 */ LDR R1, =0x11d \n\
/* 0803b962 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803b964 */ LDRB R4, [R0] \n\
/* 0803b966 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0803b968 */ BEQ branch_0803b990 \n\
/* 0803b96a */ LDR R0, =gSpriteHandler \n\
/* 0803b96c */ LDR R0, [R0] \n\
/* 0803b96e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803b970 */ LDRSH R1, [R5, R2] \n\
/* 0803b972 */ LDR R2, =anim_rat_stop \n\
/* 0803b974 */ STR R3, [SP] \n\
/* 0803b976 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803b978 */ STR R3, [SP, 0x4] \n\
/* 0803b97a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803b97c */ STR R3, [SP, 0x8] \n\
/* 0803b97e */ BL sprite_set_anim \n\
/* 0803b982 */ B branch_0803b9ec \n\
\n\
.ltorg \n\
 \n\
branch_0803b990: \n\
/* 0803b990 */ LDR R0, =gSpriteHandler \n\
/* 0803b992 */ LDR R0, [R0] \n\
/* 0803b994 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803b996 */ LDRSH R1, [R5, R2] \n\
/* 0803b998 */ LDR R2, =anim_rat_stop_barely \n\
/* 0803b99a */ STR R3, [SP] \n\
/* 0803b99c */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803b99e */ STR R3, [SP, 0x4] \n\
/* 0803b9a0 */ STR R4, [SP, 0x8] \n\
/* 0803b9a2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803b9a4 */ BL sprite_set_anim \n\
/* 0803b9a8 */ LDR R0, =s_f_rat_slip_seqData \n\
/* 0803b9aa */ BL play_sound \n\
/* 0803b9ae */ B branch_0803b9ec \n\
\n\
.ltorg \n\
 \n\
branch_0803b9bc: \n\
/* 0803b9bc */ LDR R0, [R2] \n\
/* 0803b9be */ ADDS R0, 0xD2 @ Add 0xD2 to R0 \n\
/* 0803b9c0 */ LDRB R0, [R0] \n\
/* 0803b9c2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803b9c4 */ BEQ branch_0803b9ec \n\
/* 0803b9c6 */ LDR R4, =gSpriteHandler \n\
/* 0803b9c8 */ LDR R0, [R4] \n\
/* 0803b9ca */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803b9cc */ LDRSH R1, [R5, R2] \n\
/* 0803b9ce */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0803b9d0 */ STR R2, [SP] \n\
/* 0803b9d2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803b9d4 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803b9d6 */ BL sprite_set_playback \n\
/* 0803b9da */ LDR R0, [R4] \n\
/* 0803b9dc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803b9de */ LDRSH R1, [R5, R2] \n\
/* 0803b9e0 */ LDR R2, =func_0803aef4 \n\
/* 0803b9e2 */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 0803b9e4 */ BL sprite_set_callback \n\
/* 0803b9e8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803b9ea */ STRB R0, [R5, 0xC] \n\
 \n\
branch_0803b9ec: \n\
/* 0803b9ec */ ADD SP, 0xC \n\
/* 0803b9ee */ POP {R4, R5} \n\
/* 0803b9f0 */ POP {R0} \n\
/* 0803b9f2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
