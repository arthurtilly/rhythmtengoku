asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08040dd8 \n\
/* 08040dd8 */ PUSH {R4-R6, LR} \n\
/* 08040dda */ SUB SP, 0x8 \n\
/* 08040ddc */ LDR R4, =gCurrentEngineData \n\
/* 08040dde */ LDR R0, [R4] \n\
/* 08040de0 */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 08040de2 */ LSLS R1, R1, 0x2 \n\
/* 08040de4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08040de6 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08040de8 */ STRB R1, [R0] \n\
/* 08040dea */ LDR R0, [R4] \n\
/* 08040dec */ LDR R3, =0x306 \n\
/* 08040dee */ ADDS R1, R0, R3 @ Set R1 to R0 + R3 \n\
/* 08040df0 */ LDRB R1, [R1] \n\
/* 08040df2 */ LDR R2, =0x2ff \n\
/* 08040df4 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08040df6 */ STRB R1, [R0] \n\
/* 08040df8 */ LDR R1, [R4] \n\
/* 08040dfa */ MOVS R5, 0xC2 @ Set R5 to 0xC2 \n\
/* 08040dfc */ LSLS R5, R5, 0x2 \n\
/* 08040dfe */ ADDS R0, R1, R5 @ Set R0 to R1 + R5 \n\
/* 08040e00 */ LDRH R2, [R0] \n\
/* 08040e02 */ LDR R6, =0x302 \n\
/* 08040e04 */ ADDS R0, R1, R6 @ Set R0 to R1 + R6 \n\
/* 08040e06 */ STRH R2, [R0] \n\
/* 08040e08 */ LDR R2, =0x30a \n\
/* 08040e0a */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08040e0c */ LDRH R2, [R0] \n\
/* 08040e0e */ SUBS R5, 0x4 @ Subtract 0x4 from R5 \n\
/* 08040e10 */ ADDS R0, R1, R5 @ Set R0 to R1 + R5 \n\
/* 08040e12 */ STRH R2, [R0] \n\
/* 08040e14 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08040e16 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 08040e18 */ STRB R0, [R1] \n\
/* 08040e1a */ BL get_current_mem_id \n\
/* 08040e1e */ LSLS R0, R0, 0x10 \n\
/* 08040e20 */ LSRS R0, R0, 0x10 \n\
/* 08040e22 */ LDR R4, [R4] \n\
/* 08040e24 */ ADDS R5, R4, R5 @ Set R5 to R4 + R5 \n\
/* 08040e26 */ LDRB R1, [R5] \n\
/* 08040e28 */ LDR R3, =mechanical_horse_backgrounds \n\
/* 08040e2a */ LDR R5, =0x2fe \n\
/* 08040e2c */ ADDS R2, R4, R5 @ Set R2 to R4 + R5 \n\
/* 08040e2e */ LDRB R2, [R2] \n\
/* 08040e30 */ LSLS R2, R2, 0x18 \n\
/* 08040e32 */ ASRS R2, R2, 0x18 \n\
/* 08040e34 */ LSLS R2, R2, 0x3 \n\
/* 08040e36 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08040e38 */ LDR R3, [R2] \n\
/* 08040e3a */ ADDS R4, R4, R6 @ Set R4 to R4 + R6 \n\
/* 08040e3c */ LDRH R2, [R4] \n\
/* 08040e3e */ STR R2, [SP] \n\
/* 08040e40 */ LDR R2, =(D_03004b10 + 0x54) \n\
/* 08040e42 */ STR R2, [SP, 0x4] \n\
/* 08040e44 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08040e46 */ BL palette_fade_out \n\
/* 08040e4a */ LDR R1, =func_08040d90 \n\
/* 08040e4c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08040e4e */ BL run_func_after_task \n\
/* 08040e52 */ ADD SP, 0x8 \n\
/* 08040e54 */ POP {R4-R6} \n\
/* 08040e56 */ POP {R0} \n\
/* 08040e58 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
