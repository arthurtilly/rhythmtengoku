asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start drum_intro_cue_barely \n\
/* 08024da4 */ PUSH {R4, R5, LR} \n\
/* 08024da6 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08024da8 */ BL gameplay_get_last_hit_offset \n\
/* 08024dac */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08024dae */ LDR R0, =gCurrentEngineData \n\
/* 08024db0 */ LDR R1, [R0] \n\
/* 08024db2 */ MOVS R3, 0xE3 @ Set R3 to 0xE3 \n\
/* 08024db4 */ LSLS R3, R3, 0x2 \n\
/* 08024db6 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08024db8 */ LDR R0, [R0] \n\
/* 08024dba */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08024dbc */ BEQ branch_08024dd2 \n\
/* 08024dbe */ LDR R3, [R0, 0xC] \n\
/* 08024dc0 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08024dc2 */ BEQ branch_08024dd2 \n\
/* 08024dc4 */ MOVS R5, 0xE4 @ Set R5 to 0xE4 \n\
/* 08024dc6 */ LSLS R5, R5, 0x2 \n\
/* 08024dc8 */ ADDS R0, R1, R5 @ Set R0 to R1 + R5 \n\
/* 08024dca */ LDR R0, [R0] \n\
/* 08024dcc */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08024dce */ BL _call_via_r3 \n\
 \n\
branch_08024dd2: \n\
/* 08024dd2 */ POP {R4, R5} \n\
/* 08024dd4 */ POP {R0} \n\
/* 08024dd6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
