asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08040d10 \n\
/* 08040d10 */ PUSH {R4-R6, LR} \n\
/* 08040d12 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08040d14 */ PUSH {R6} \n\
/* 08040d16 */ SUB SP, 0x8 \n\
/* 08040d18 */ BL get_current_mem_id \n\
/* 08040d1c */ LSLS R0, R0, 0x10 \n\
/* 08040d1e */ LSRS R0, R0, 0x10 \n\
/* 08040d20 */ LDR R1, =gCurrentEngineData \n\
/* 08040d22 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08040d24 */ LDR R4, [R1] \n\
/* 08040d26 */ MOVS R2, 0xC1 @ Set R2 to 0xC1 \n\
/* 08040d28 */ LSLS R2, R2, 0x2 \n\
/* 08040d2a */ ADDS R1, R4, R2 @ Set R1 to R4 + R2 \n\
/* 08040d2c */ LDRB R1, [R1] \n\
/* 08040d2e */ LDR R3, =0x302 \n\
/* 08040d30 */ ADDS R2, R4, R3 @ Set R2 to R4 + R3 \n\
/* 08040d32 */ LDRH R3, [R2] \n\
/* 08040d34 */ LDR R6, =mechanical_horse_backgrounds \n\
/* 08040d36 */ LDR R5, =0x2ff \n\
/* 08040d38 */ ADDS R4, R4, R5 @ Set R4 to R4 + R5 \n\
/* 08040d3a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08040d3c */ LDRSB R2, [R4, R2] \n\
/* 08040d3e */ LSLS R2, R2, 0x3 \n\
/* 08040d40 */ ADDS R2, R2, R6 @ Set R2 to R2 + R6 \n\
/* 08040d42 */ LDR R2, [R2] \n\
/* 08040d44 */ STR R2, [SP] \n\
/* 08040d46 */ LDR R2, =(D_03004b10 + 0x54) \n\
/* 08040d48 */ STR R2, [SP, 0x4] \n\
/* 08040d4a */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08040d4c */ BL palette_fade_in \n\
/* 08040d50 */ LDR R1, =func_08040cfc \n\
/* 08040d52 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08040d54 */ BL run_func_after_task \n\
/* 08040d58 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08040d5a */ LDR R0, [R1] \n\
/* 08040d5c */ ADDS R5, R0, R5 @ Set R5 to R0 + R5 \n\
/* 08040d5e */ LDRB R1, [R5] \n\
/* 08040d60 */ LDR R2, =0x2fe \n\
/* 08040d62 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08040d64 */ STRB R1, [R0] \n\
/* 08040d66 */ ADD SP, 0x8 \n\
/* 08040d68 */ POP {R3} \n\
/* 08040d6a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08040d6c */ POP {R4-R6} \n\
/* 08040d6e */ POP {R0} \n\
/* 08040d70 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
