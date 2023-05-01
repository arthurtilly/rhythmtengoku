asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start tap_trial_cue_hit \n\
/* 0803e530 */ PUSH {LR} \n\
/* 0803e532 */ BL func_0803e644 \n\
/* 0803e536 */ LDR R0, =gCurrentEngineData \n\
/* 0803e538 */ LDR R0, [R0] \n\
/* 0803e53a */ MOVS R1, 0xE5 @ Set R1 to 0xE5 \n\
/* 0803e53c */ LSLS R1, R1, 0x2 \n\
/* 0803e53e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803e540 */ MOVS R1, 0x5 @ Set R1 to 0x5 \n\
/* 0803e542 */ STRB R1, [R0] \n\
/* 0803e544 */ POP {R0} \n\
/* 0803e546 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
