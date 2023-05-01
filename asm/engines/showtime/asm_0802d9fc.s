asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802d9fc \n\
/* 0802d9fc */ PUSH {R4-R7, LR} \n\
/* 0802d9fe */ LDR R1, =gCurrentEngineData \n\
/* 0802da00 */ LDR R6, [R1] \n\
/* 0802da02 */ MOVS R0, 0xFC @ Set R0 to 0xFC \n\
/* 0802da04 */ LSLS R0, R0, 0x1 \n\
/* 0802da06 */ ADDS R5, R6, R0 @ Set R5 to R6 + R0 \n\
/* 0802da08 */ LDR R0, [R5] \n\
/* 0802da0a */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0802da0c */ STR R0, [R5] \n\
/* 0802da0e */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 0802da10 */ CMP R0, 0x9 @ Compare R0 and 0x9 \n\
/* 0802da12 */ BLE branch_0802da38 \n\
/* 0802da14 */ MOVS R1, 0xFA @ Set R1 to 0xFA \n\
/* 0802da16 */ LSLS R1, R1, 0x1 \n\
/* 0802da18 */ ADDS R4, R6, R1 @ Set R4 to R6 + R1 \n\
/* 0802da1a */ LDR R0, [R4] \n\
/* 0802da1c */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0802da1e */ STR R0, [R4] \n\
/* 0802da20 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 0802da22 */ BL __modsi3 \n\
/* 0802da26 */ STR R0, [R4] \n\
/* 0802da28 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802da2a */ STR R0, [R5] \n\
/* 0802da2c */ MOVS R0, 0xFE @ Set R0 to 0xFE \n\
/* 0802da2e */ LSLS R0, R0, 0x1 \n\
/* 0802da30 */ ADDS R1, R6, R0 @ Set R1 to R6 + R0 \n\
/* 0802da32 */ LDR R0, [R1] \n\
/* 0802da34 */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 0802da36 */ STR R0, [R1] \n\
 \n\
branch_0802da38: \n\
/* 0802da38 */ LDR R0, [R7] \n\
/* 0802da3a */ MOVS R1, 0xFA @ Set R1 to 0xFA \n\
/* 0802da3c */ LSLS R1, R1, 0x1 \n\
/* 0802da3e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802da40 */ LDR R1, [R0] \n\
/* 0802da42 */ CMP R1, 0x5 @ Compare R1 and 0x5 \n\
/* 0802da44 */ BLE branch_0802da50 \n\
/* 0802da46 */ MOVS R0, 0xA @ Set R0 to 0xA \n\
/* 0802da48 */ SUBS R3, R0, R1 @ Set R3 to R0 - R1 \n\
/* 0802da4a */ B branch_0802da52 \n\
\n\
.ltorg \n\
 \n\
branch_0802da50: \n\
/* 0802da50 */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
 \n\
branch_0802da52: \n\
/* 0802da52 */ LDR R0, [R7] \n\
/* 0802da54 */ MOVS R1, 0xFE @ Set R1 to 0xFE \n\
/* 0802da56 */ LSLS R1, R1, 0x1 \n\
/* 0802da58 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802da5a */ LDR R2, [R0] \n\
/* 0802da5c */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0802da5e */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0802da60 */ BGE branch_0802da64 \n\
/* 0802da62 */ ADDS R1, 0xFF @ Add 0xFF to R1 \n\
 \n\
branch_0802da64: \n\
/* 0802da64 */ ASRS R1, R1, 0x8 \n\
/* 0802da66 */ LSLS R1, R1, 0x8 \n\
/* 0802da68 */ SUBS R1, R2, R1 @ Set R1 to R2 - R1 \n\
/* 0802da6a */ STR R1, [R0] \n\
/* 0802da6c */ LSLS R1, R1, 0x10 \n\
/* 0802da6e */ ASRS R1, R1, 0x10 \n\
/* 0802da70 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802da72 */ SUBS R2, R2, R3 @ Set R2 to R2 - R3 \n\
/* 0802da74 */ LSLS R2, R2, 0x15 \n\
/* 0802da76 */ ASRS R2, R2, 0x10 \n\
/* 0802da78 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0802da7a */ BL scene_set_bg_layer_pos \n\
/* 0802da7e */ POP {R4-R7} \n\
/* 0802da80 */ POP {R0} \n\
/* 0802da82 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
