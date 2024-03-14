asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08035094 \n\
/* 08035094 */ PUSH {R4-R6, LR} \n\
/* 08035096 */ SUB SP, 0xC \n\
/* 08035098 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803509a */ LDR R0, =gCurrentEngineData \n\
/* 0803509c */ LDR R0, [R0] \n\
/* 0803509e */ ADDS R5, R0, 0x4 @ Set R5 to R0 + 0x4 \n\
/* 080350a0 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 080350a2 */ ADDS R6, 0x10 @ Add 0x10 to R6 \n\
/* 080350a4 */ LDRB R0, [R5, 0x5] \n\
/* 080350a6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080350a8 */ BNE branch_080350bc \n\
/* 080350aa */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080350ac */ BNE branch_080350b8 \n\
/* 080350ae */ STRB R1, [R5, 0x8] \n\
/* 080350b0 */ B branch_080350c8 \n\
\n\
.ltorg \n\
 \n\
branch_080350b8: \n\
/* 080350b8 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080350ba */ B branch_080350c6 \n\
 \n\
branch_080350bc: \n\
/* 080350bc */ CMP R1, 0x1 @ Compare R1 and 0x1 \n\
/* 080350be */ BNE branch_080350c4 \n\
/* 080350c0 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080350c2 */ B branch_080350c6 \n\
 \n\
branch_080350c4: \n\
/* 080350c4 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
 \n\
branch_080350c6: \n\
/* 080350c6 */ STRB R0, [R5, 0x8] \n\
 \n\
branch_080350c8: \n\
/* 080350c8 */ LDR R0, =gSpriteHandler \n\
/* 080350ca */ LDR R0, [R0] \n\
/* 080350cc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080350ce */ LDRSH R1, [R5, R2] \n\
/* 080350d0 */ LDR R3, =mr_upbeat_trip_anim \n\
/* 080350d2 */ LDRB R2, [R5, 0x8] \n\
/* 080350d4 */ LSLS R2, R2, 0x2 \n\
/* 080350d6 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 080350d8 */ LDR R2, [R2] \n\
/* 080350da */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080350dc */ STR R3, [SP] \n\
/* 080350de */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080350e0 */ STR R3, [SP, 0x4] \n\
/* 080350e2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080350e4 */ STR R3, [SP, 0x8] \n\
/* 080350e6 */ BL sprite_set_anim \n\
/* 080350ea */ LDRB R0, [R5, 0x5] \n\
/* 080350ec */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080350ee */ ADDS R0, 0x20 @ Add 0x20 to R0 \n\
/* 080350f0 */ LDRB R1, [R0] \n\
/* 080350f2 */ NEGS R0, R1 @ Set R0 to -R1 \n\
/* 080350f4 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 080350f6 */ LSRS R3, R0, 0x1F \n\
/* 080350f8 */ LDR R4, =gSpriteHandler \n\
/* 080350fa */ LDR R0, [R4] \n\
/* 080350fc */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080350fe */ LDRSH R1, [R5, R2] \n\
/* 08035100 */ NEGS R2, R3 @ Set R2 to -R3 \n\
/* 08035102 */ ORRS R2, R3 @ Set R2 to R2 | R3 \n\
/* 08035104 */ ASRS R2, R2, 0x1F \n\
/* 08035106 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08035108 */ LSLS R3, R3, 0x5 \n\
/* 0803510a */ ANDS R2, R3 @ Set R2 to R2 & R3 \n\
/* 0803510c */ BL sprite_attr_set \n\
/* 08035110 */ LDR R0, [R4] \n\
/* 08035112 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08035114 */ LDRSH R1, [R5, R2] \n\
/* 08035116 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 08035118 */ BL sprite_set_anim_cel \n\
/* 0803511c */ LDR R0, =s_f_shuji_v_ouch_seqData \n\
/* 0803511e */ BL play_sound \n\
/* 08035122 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 08035124 */ BL ticks_to_frames \n\
/* 08035128 */ STRH R0, [R5, 0x6] \n\
/* 0803512a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803512c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803512e */ BL gameplay_set_input_buttons \n\
/* 08035132 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08035134 */ ADDS R1, 0x21 @ Add 0x21 to R1 \n\
/* 08035136 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08035138 */ STRB R0, [R1] \n\
/* 0803513a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803513c */ BL gameplay_enable_cue_spawning \n\
/* 08035140 */ LDR R0, =gCurrentEngineData \n\
/* 08035142 */ LDR R0, [R0] \n\
/* 08035144 */ LDR R0, [R0, 0x38] \n\
/* 08035146 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08035148 */ BEQ branch_0803514e \n\
/* 0803514a */ BL func_0801d968 \n\
 \n\
branch_0803514e: \n\
/* 0803514e */ ADD SP, 0xC \n\
/* 08035150 */ POP {R4-R6} \n\
/* 08035152 */ POP {R0} \n\
/* 08035154 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
