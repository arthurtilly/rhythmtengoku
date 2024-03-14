asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803e208 \n\
/* 0803e208 */ PUSH {R4, R5, LR} \n\
/* 0803e20a */ SUB SP, 0xC \n\
/* 0803e20c */ LDR R5, =gCurrentEngineData \n\
/* 0803e20e */ LDR R0, [R5] \n\
/* 0803e210 */ LDRH R4, [R0, 0x1C] \n\
/* 0803e212 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0803e214 */ BNE branch_0803e248 \n\
/* 0803e216 */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 0803e218 */ BL tap_trial_get_anim \n\
/* 0803e21c */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803e21e */ LDR R0, =gSpriteHandler \n\
/* 0803e220 */ LDR R0, [R0] \n\
/* 0803e222 */ LDR R1, [R5] \n\
/* 0803e224 */ MOVS R3, 0x18 @ Set R3 to 0x18 \n\
/* 0803e226 */ LDRSH R1, [R1, R3] \n\
/* 0803e228 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803e22a */ STR R3, [SP] \n\
/* 0803e22c */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803e22e */ STR R3, [SP, 0x4] \n\
/* 0803e230 */ STR R4, [SP, 0x8] \n\
/* 0803e232 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803e234 */ BL sprite_set_anim \n\
/* 0803e238 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 0803e23a */ BL ticks_to_frames \n\
/* 0803e23e */ LDR R1, [R5] \n\
/* 0803e240 */ STRH R0, [R1, 0x1C] \n\
/* 0803e242 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803e244 */ BL func_0803e258 \n\
 \n\
branch_0803e248: \n\
/* 0803e248 */ ADD SP, 0xC \n\
/* 0803e24a */ POP {R4, R5} \n\
/* 0803e24c */ POP {R0} \n\
/* 0803e24e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
