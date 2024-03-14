asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803e160 \n\
/* 0803e160 */ PUSH {R4, R5, LR} \n\
/* 0803e162 */ SUB SP, 0xC \n\
/* 0803e164 */ LDR R5, =gCurrentEngineData \n\
/* 0803e166 */ LDR R0, [R5] \n\
/* 0803e168 */ LDRH R4, [R0, 0x1C] \n\
/* 0803e16a */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0803e16c */ BNE branch_0803e194 \n\
/* 0803e16e */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 0803e170 */ BL tap_trial_get_anim \n\
/* 0803e174 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803e176 */ LDR R0, =gSpriteHandler \n\
/* 0803e178 */ LDR R0, [R0] \n\
/* 0803e17a */ LDR R1, [R5] \n\
/* 0803e17c */ MOVS R3, 0x18 @ Set R3 to 0x18 \n\
/* 0803e17e */ LDRSH R1, [R1, R3] \n\
/* 0803e180 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803e182 */ STR R3, [SP] \n\
/* 0803e184 */ STR R4, [SP, 0x4] \n\
/* 0803e186 */ STR R4, [SP, 0x8] \n\
/* 0803e188 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803e18a */ BL sprite_set_anim \n\
/* 0803e18e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803e190 */ BL func_0803e258 \n\
 \n\
branch_0803e194: \n\
/* 0803e194 */ ADD SP, 0xC \n\
/* 0803e196 */ POP {R4, R5} \n\
/* 0803e198 */ POP {R0} \n\
/* 0803e19a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
