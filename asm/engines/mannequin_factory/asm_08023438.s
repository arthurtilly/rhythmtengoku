asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start mannequin_cue_hit \n\
/* 08023438 */ PUSH {R4, R5, LR} \n\
/* 0802343a */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0802343c */ LDR R0, =gCurrentEngineData \n\
/* 0802343e */ LDR R0, [R0] \n\
/* 08023440 */ LDR R1, =0x0000040c \n\
/* 08023442 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08023444 */ LDRB R0, [R0] \n\
/* 08023446 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08023448 */ BNE branch_080234ea \n\
/* 0802344a */ LDRB R0, [R5, 0x4] \n\
/* 0802344c */ BL func_08022ce8 \n\
/* 08023450 */ LDRB R0, [R5, 0x4] \n\
/* 08023452 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08023454 */ BEQ branch_080234dc \n\
/* 08023456 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08023458 */ BGT branch_08023468 \n\
/* 0802345a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802345c */ BEQ branch_080234ac \n\
/* 0802345e */ B branch_080234ea \n\
\n\
.ltorg \n\
 \n\
branch_08023468: \n\
/* 08023468 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0802346a */ BEQ branch_08023472 \n\
/* 0802346c */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0802346e */ BEQ branch_0802348c \n\
/* 08023470 */ B branch_080234ea \n\
 \n\
branch_08023472: \n\
/* 08023472 */ LDR R0, [R5] \n\
/* 08023474 */ BL func_080229f0 \n\
/* 08023478 */ LDR R0, [R5] \n\
/* 0802347a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802347c */ BL func_08022a7c \n\
/* 08023480 */ LDR R0, =s_HC_seqData \n\
/* 08023482 */ BL play_sound \n\
/* 08023486 */ B branch_080234ea \n\
\n\
.ltorg \n\
 \n\
branch_0802348c: \n\
/* 0802348c */ LDR R0, [R5] \n\
/* 0802348e */ BL func_080229f0 \n\
/* 08023492 */ LDR R0, [R5] \n\
/* 08023494 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08023496 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08023498 */ BL func_08022a7c \n\
/* 0802349c */ LDR R1, =s_HC_seqData \n\
/* 0802349e */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 080234a0 */ LSLS R2, R2, 0x1 \n\
/* 080234a2 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 080234a4 */ B branch_080234ca \n\
\n\
.ltorg \n\
 \n\
branch_080234ac: \n\
/* 080234ac */ LDR R0, [R5] \n\
/* 080234ae */ LDRB R4, [R0, 0xA] \n\
/* 080234b0 */ BL gameplay_get_last_hit_offset \n\
/* 080234b4 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080234b6 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080234b8 */ BL func_080223d0 \n\
/* 080234bc */ LDR R0, [R5] \n\
/* 080234be */ BL func_08022894 \n\
/* 080234c2 */ LDR R1, =s_SD5_seqData \n\
/* 080234c4 */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 080234c6 */ LSLS R2, R2, 0x1 \n\
/* 080234c8 */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
 \n\
branch_080234ca: \n\
/* 080234ca */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080234cc */ BL play_sound_in_player_w_pitch_volume \n\
/* 080234d0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080234d2 */ BL func_080233b4 \n\
/* 080234d6 */ B branch_080234ea \n\
\n\
.ltorg \n\
 \n\
branch_080234dc: \n\
/* 080234dc */ LDR R0, [R5] \n\
/* 080234de */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080234e0 */ BL func_08022b0c \n\
/* 080234e4 */ LDR R0, =s_SD4_seqData \n\
/* 080234e6 */ BL play_sound \n\
 \n\
branch_080234ea: \n\
/* 080234ea */ POP {R4, R5} \n\
/* 080234ec */ POP {R0} \n\
/* 080234ee */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
