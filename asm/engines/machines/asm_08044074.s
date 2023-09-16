asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08044074 \n\
/* 08044074 */ PUSH {R4-R6, LR} \n\
/* 08044076 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08044078 */ LDR R0, =s_rap_15ji_desuka_seqData \n\
/* 0804407a */ BL stop_sound \n\
/* 0804407e */ LDR R0, =s_rap_oyatu_desuka_seqData \n\
/* 08044080 */ BL stop_sound \n\
/* 08044084 */ LDR R0, =s_rap_wakari_desuka_seqData \n\
/* 08044086 */ BL stop_sound \n\
/* 0804408a */ LDR R0, =s_rap_oisi_kamone_seqData \n\
/* 0804408c */ BL stop_sound \n\
/* 08044090 */ LDR R0, =s_rap_herusi_kamone_seqData \n\
/* 08044092 */ BL stop_sound \n\
/* 08044096 */ LDR R0, =s_rap_soremoso_kamone_seqData \n\
/* 08044098 */ BL stop_sound \n\
/* 0804409c */ LDR R0, =s_rap_tanosi_kamone_seqData \n\
/* 0804409e */ BL stop_sound \n\
/* 080440a2 */ LDR R0, =s_rap_oyatuha_saiko_seqData \n\
/* 080440a4 */ BL stop_sound \n\
/* 080440a8 */ LDR R0, =s_rap_kibunha_saiko_seqData \n\
/* 080440aa */ BL stop_sound \n\
/* 080440ae */ LDR R0, =s_rap_orette_saiko_seqData \n\
/* 080440b0 */ BL stop_sound \n\
/* 080440b4 */ LDR R0, =s_rap_kimitte_saiko_seqData \n\
/* 080440b6 */ BL stop_sound \n\
/* 080440ba */ LDR R4, =gCurrentEngineData \n\
/* 080440bc */ LDR R0, [R4] \n\
/* 080440be */ LDR R5, =0x382 \n\
/* 080440c0 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 080440c2 */ LDRH R0, [R0] \n\
/* 080440c4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080440c6 */ BNE branch_080440d8 \n\
/* 080440c8 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 080440ca */ BL agb_random \n\
/* 080440ce */ LDR R1, [R4] \n\
/* 080440d0 */ MOVS R2, 0xE0 @ Set R2 to 0xE0 \n\
/* 080440d2 */ LSLS R2, R2, 0x2 \n\
/* 080440d4 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080440d6 */ STRB R0, [R1] \n\
 \n\
branch_080440d8: \n\
/* 080440d8 */ MOVS R0, 0x24 @ Set R0 to 0x24 \n\
/* 080440da */ BL ticks_to_frames \n\
/* 080440de */ LDR R1, [R4] \n\
/* 080440e0 */ ADDS R2, R1, R5 @ Set R2 to R1 + R5 \n\
/* 080440e2 */ STRH R0, [R2] \n\
/* 080440e4 */ LDR R2, =rap_machine_sfx_pool \n\
/* 080440e6 */ MOVS R3, 0xE0 @ Set R3 to 0xE0 \n\
/* 080440e8 */ LSLS R3, R3, 0x2 \n\
/* 080440ea */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 080440ec */ LDRB R0, [R1] \n\
/* 080440ee */ LSLS R0, R0, 0x2 \n\
/* 080440f0 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080440f2 */ LDR R1, [R0] \n\
/* 080440f4 */ LSLS R0, R6, 0x2 \n\
/* 080440f6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080440f8 */ LDR R0, [R0] \n\
/* 080440fa */ BL play_sound \n\
/* 080440fe */ LDR R2, [R4] \n\
/* 08044100 */ MOVS R3, 0xDF @ Set R3 to 0xDF \n\
/* 08044102 */ LSLS R3, R3, 0x2 \n\
/* 08044104 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 08044106 */ STR R0, [R1] \n\
/* 08044108 */ CMP R6, 0x3 @ Compare R6 and 0x3 \n\
/* 0804410a */ BNE branch_080441b2 \n\
/* 0804410c */ MOVS R1, 0xDE @ Set R1 to 0xDE \n\
/* 0804410e */ LSLS R1, R1, 0x2 \n\
/* 08044110 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08044112 */ LDRB R4, [R0] \n\
/* 08044114 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08044116 */ BEQ branch_08044158 \n\
/* 08044118 */ BL func_08044810 \n\
/* 0804411c */ B branch_080441b2 \n\
\n\
.ltorg \n\
 \n\
branch_08044158: \n\
/* 08044158 */ LDR R3, =0x381 \n\
/* 0804415a */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 0804415c */ LDRB R5, [R0] \n\
/* 0804415e */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08044160 */ BEQ branch_08044188 \n\
/* 08044162 */ LDR R0, =s_rap_machine_bgm_seqData \n\
/* 08044164 */ BL func_080447f4 \n\
/* 08044168 */ LDR R0, =D_030053c0 \n\
/* 0804416a */ MOVS R2, 0xC9 @ Set R2 to 0xC9 \n\
/* 0804416c */ LSLS R2, R2, 0x1 \n\
/* 0804416e */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 08044170 */ STRH R4, [R1] \n\
/* 08044172 */ MOVS R3, 0xCA @ Set R3 to 0xCA \n\
/* 08044174 */ LSLS R3, R3, 0x1 \n\
/* 08044176 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08044178 */ STRH R4, [R0] \n\
/* 0804417a */ B branch_080441a2 \n\
\n\
.ltorg \n\
 \n\
branch_08044188: \n\
/* 08044188 */ LDR R0, =s_rap_bgm_seqData \n\
/* 0804418a */ BL func_080447f4 \n\
/* 0804418e */ LDR R0, =D_030053c0 \n\
/* 08044190 */ MOVS R2, 0xC9 @ Set R2 to 0xC9 \n\
/* 08044192 */ LSLS R2, R2, 0x1 \n\
/* 08044194 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 08044196 */ STRH R5, [R1] \n\
/* 08044198 */ MOVS R3, 0xCA @ Set R3 to 0xCA \n\
/* 0804419a */ LSLS R3, R3, 0x1 \n\
/* 0804419c */ ADDS R1, R0, R3 @ Set R1 to R0 + R3 \n\
/* 0804419e */ LDR R0, =0xffe9 \n\
/* 080441a0 */ STRH R0, [R1] \n\
 \n\
branch_080441a2: \n\
/* 080441a2 */ LDR R0, =gCurrentEngineData \n\
/* 080441a4 */ LDR R1, [R0] \n\
/* 080441a6 */ LDR R0, =0x381 \n\
/* 080441a8 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080441aa */ LDRB R0, [R1] \n\
/* 080441ac */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080441ae */ EORS R0, R2 @ Set R0 to R0 ^ R2 \n\
/* 080441b0 */ STRB R0, [R1] \n\
 \n\
branch_080441b2: \n\
/* 080441b2 */ POP {R4-R6} \n\
/* 080441b4 */ POP {R0} \n\
/* 080441b6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
