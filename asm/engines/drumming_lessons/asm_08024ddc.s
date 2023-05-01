asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start drum_intro_cue_miss \n\
/* 08024ddc */ PUSH {R4, LR} \n\
/* 08024dde */ LDR R0, =gCurrentEngineData \n\
/* 08024de0 */ LDR R3, [R0] \n\
/* 08024de2 */ MOVS R2, 0xE3 @ Set R2 to 0xE3 \n\
/* 08024de4 */ LSLS R2, R2, 0x2 \n\
/* 08024de6 */ ADDS R0, R3, R2 @ Set R0 to R3 + R2 \n\
/* 08024de8 */ LDR R0, [R0] \n\
/* 08024dea */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08024dec */ BEQ branch_08024e00 \n\
/* 08024dee */ LDR R2, [R0, 0x10] \n\
/* 08024df0 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08024df2 */ BEQ branch_08024e00 \n\
/* 08024df4 */ MOVS R4, 0xE4 @ Set R4 to 0xE4 \n\
/* 08024df6 */ LSLS R4, R4, 0x2 \n\
/* 08024df8 */ ADDS R0, R3, R4 @ Set R0 to R3 + R4 \n\
/* 08024dfa */ LDR R0, [R0] \n\
/* 08024dfc */ BL _call_via_r2 \n\
 \n\
branch_08024e00: \n\
/* 08024e00 */ POP {R4} \n\
/* 08024e02 */ POP {R0} \n\
/* 08024e04 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
