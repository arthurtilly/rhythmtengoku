asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start drum_intro_cue_hit \n\
/* 08024d6c */ PUSH {R4, R5, LR} \n\
/* 08024d6e */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08024d70 */ BL gameplay_get_last_hit_offset \n\
/* 08024d74 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08024d76 */ LDR R0, =gCurrentEngineData \n\
/* 08024d78 */ LDR R1, [R0] \n\
/* 08024d7a */ MOVS R3, 0xE3 @ Set R3 to 0xE3 \n\
/* 08024d7c */ LSLS R3, R3, 0x2 \n\
/* 08024d7e */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08024d80 */ LDR R0, [R0] \n\
/* 08024d82 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08024d84 */ BEQ branch_08024d9a \n\
/* 08024d86 */ LDR R3, [R0, 0x8] \n\
/* 08024d88 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08024d8a */ BEQ branch_08024d9a \n\
/* 08024d8c */ MOVS R5, 0xE4 @ Set R5 to 0xE4 \n\
/* 08024d8e */ LSLS R5, R5, 0x2 \n\
/* 08024d90 */ ADDS R0, R1, R5 @ Set R0 to R1 + R5 \n\
/* 08024d92 */ LDR R0, [R0] \n\
/* 08024d94 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08024d96 */ BL _call_via_r3 \n\
 \n\
branch_08024d9a: \n\
/* 08024d9a */ POP {R4, R5} \n\
/* 08024d9c */ POP {R0} \n\
/* 08024d9e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
