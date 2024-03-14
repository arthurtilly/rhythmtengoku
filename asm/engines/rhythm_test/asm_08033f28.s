asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08033f28 \n\
/* 08033f28 */ PUSH {R4-R6, LR} \n\
/* 08033f2a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08033f2c */ LDR R6, =gCurrentEngineData \n\
/* 08033f2e */ LDR R1, [R6] \n\
/* 08033f30 */ LDRB R0, [R1, 0x8] \n\
/* 08033f32 */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 08033f34 */ BNE branch_08033f6e \n\
/* 08033f36 */ LDR R4, =gSpriteHandler \n\
/* 08033f38 */ LDR R0, [R4] \n\
/* 08033f3a */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08033f3c */ LDRSH R1, [R1, R2] \n\
/* 08033f3e */ LSLS R2, R5, 0x18 \n\
/* 08033f40 */ ASRS R2, R2, 0x18 \n\
/* 08033f42 */ BL sprite_set_anim_cel \n\
/* 08033f46 */ LDR R0, [R4] \n\
/* 08033f48 */ LDR R1, [R6] \n\
/* 08033f4a */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08033f4c */ LDRSH R1, [R1, R2] \n\
/* 08033f4e */ NEGS R2, R5 @ Set R2 to -R5 \n\
/* 08033f50 */ ORRS R2, R5 @ Set R2 to R2 | R5 \n\
/* 08033f52 */ LSRS R2, R2, 0x1F \n\
/* 08033f54 */ BL sprite_set_anim_cel \n\
/* 08033f58 */ LDR R0, =s_f_machine_click_seqData \n\
/* 08033f5a */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08033f5c */ LSLS R2, R2, 0x4 \n\
/* 08033f5e */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08033f60 */ BEQ branch_08033f66 \n\
/* 08033f62 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 08033f64 */ LSLS R2, R2, 0x2 \n\
 \n\
branch_08033f66: \n\
/* 08033f66 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08033f68 */ LSLS R1, R1, 0x1 \n\
/* 08033f6a */ BL play_sound_w_pitch_volume \n\
 \n\
branch_08033f6e: \n\
/* 08033f6e */ POP {R4-R6} \n\
/* 08033f70 */ POP {R0} \n\
/* 08033f72 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
