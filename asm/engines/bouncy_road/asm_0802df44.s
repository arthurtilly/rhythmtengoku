asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802df44 \n\
/* 0802df44 */ PUSH {R4, LR} \n\
/* 0802df46 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802df48 */ MOVS R2, 0xD @ Set R2 to 0xD \n\
/* 0802df4a */ BL clamp_int32 \n\
/* 0802df4e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802df50 */ LSLS R0, R1, 0x3 \n\
/* 0802df52 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0802df54 */ LSLS R0, R0, 0x1 \n\
/* 0802df56 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0802df58 */ LSLS R2, R2, 0x1 \n\
/* 0802df5a */ SUBS R0, R2, R0 @ Set R0 to R2 - R0 \n\
/* 0802df5c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802df5e */ BL clamp_int32 \n\
/* 0802df62 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802df64 */ LDR R4, =gCurrentEngineData \n\
/* 0802df66 */ LDR R0, [R4] \n\
/* 0802df68 */ LDR R2, =0x1d3 \n\
/* 0802df6a */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0802df6c */ LDRB R0, [R0] \n\
/* 0802df6e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802df70 */ BNE branch_0802df84 \n\
/* 0802df72 */ LDR R0, =s_change_ball_seqData \n\
/* 0802df74 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802df76 */ BL play_sound_w_pitch_volume \n\
/* 0802df7a */ LDR R0, [R4] \n\
/* 0802df7c */ LDR R2, =0x1d3 \n\
/* 0802df7e */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0802df80 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0802df82 */ STRB R0, [R1] \n\
 \n\
branch_0802df84: \n\
/* 0802df84 */ POP {R4} \n\
/* 0802df86 */ POP {R0} \n\
 \n\
branch_0802df88: \n\
/* 0802df88 */ BX R0 \n\
/* 0802df8a */ MOVS R0, R0 \n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
