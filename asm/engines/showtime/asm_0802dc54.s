asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802dc54 \n\
/* 0802dc54 */ PUSH {R4-R7, LR} \n\
/* 0802dc56 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0802dc58 */ PUSH {R7} \n\
/* 0802dc5a */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0802dc5c */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0802dc5e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802dc60 */ LDR R5, =gCurrentEngineData \n\
/* 0802dc62 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_0802dc64: \n\
/* 0802dc64 */ LDR R0, [R5] \n\
/* 0802dc66 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0802dc68 */ LSLS R1, R1, 0x2 \n\
/* 0802dc6a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802dc6c */ ADDS R1, R0, R4 @ Set R1 to R0 + R4 \n\
/* 0802dc6e */ LDR R6, [R1] \n\
/* 0802dc70 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0802dc72 */ BNE branch_0802dcf4 \n\
/* 0802dc74 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802dc76 */ STR R0, [R1] \n\
/* 0802dc78 */ MOVS R0, 0x90 @ Set R0 to 0x90 \n\
/* 0802dc7a */ LSLS R0, R0, 0x1 \n\
/* 0802dc7c */ BL agb_random \n\
/* 0802dc80 */ LDR R2, [R5] \n\
/* 0802dc82 */ MOVS R3, 0x85 @ Set R3 to 0x85 \n\
/* 0802dc84 */ LSLS R3, R3, 0x2 \n\
/* 0802dc86 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0802dc88 */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 0802dc8a */ LSLS R0, R0, 0x10 \n\
/* 0802dc8c */ LSRS R0, R0, 0x10 \n\
/* 0802dc8e */ MOVS R1, 0x60 @ Set R1 to 0x60 \n\
/* 0802dc90 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0802dc92 */ STR R1, [R2] \n\
/* 0802dc94 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0802dc96 */ LSLS R0, R0, 0x1 \n\
/* 0802dc98 */ BL agb_random \n\
/* 0802dc9c */ LDR R2, [R5] \n\
/* 0802dc9e */ MOVS R3, 0x86 @ Set R3 to 0x86 \n\
/* 0802dca0 */ LSLS R3, R3, 0x2 \n\
/* 0802dca2 */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 0802dca4 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802dca6 */ LSLS R0, R0, 0x10 \n\
/* 0802dca8 */ LSRS R0, R0, 0x10 \n\
/* 0802dcaa */ SUBS R0, 0x80 @ Subtract 0x80 from R0 \n\
/* 0802dcac */ STR R0, [R1] \n\
/* 0802dcae */ MOVS R1, 0x83 @ Set R1 to 0x83 \n\
/* 0802dcb0 */ LSLS R1, R1, 0x2 \n\
/* 0802dcb2 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0802dcb4 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802dcb6 */ LSLS R1, R7, 0x8 \n\
/* 0802dcb8 */ STR R1, [R0] \n\
/* 0802dcba */ SUBS R3, 0x8 @ Subtract 0x8 from R3 \n\
/* 0802dcbc */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 0802dcbe */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802dcc0 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802dcc2 */ LSLS R1, R3, 0x8 \n\
/* 0802dcc4 */ STR R1, [R0] \n\
/* 0802dcc6 */ LDR R0, =gSpriteHandler \n\
/* 0802dcc8 */ LDR R0, [R0] \n\
/* 0802dcca */ MOVS R3, 0x81 @ Set R3 to 0x81 \n\
/* 0802dccc */ LSLS R3, R3, 0x2 \n\
/* 0802dcce */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 0802dcd0 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802dcd2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802dcd4 */ LDRSH R1, [R1, R2] \n\
/* 0802dcd6 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0802dcd8 */ BL sprite_set_visible \n\
/* 0802dcdc */ LDR R0, [R5] \n\
/* 0802dcde */ MOVS R3, 0x82 @ Set R3 to 0x82 \n\
/* 0802dce0 */ LSLS R3, R3, 0x2 \n\
/* 0802dce2 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0802dce4 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802dce6 */ STR R6, [R0] \n\
/* 0802dce8 */ B branch_0802dcfc \n\
\n\
.ltorg \n\
 \n\
branch_0802dcf4: \n\
/* 0802dcf4 */ ADDS R4, 0x1C @ Add 0x1C to R4 \n\
/* 0802dcf6 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0802dcf8 */ CMP R2, 0xF @ Compare R2 and 0xF \n\
/* 0802dcfa */ BLE branch_0802dc64 \n\
 \n\
branch_0802dcfc: \n\
/* 0802dcfc */ POP {R3} \n\
/* 0802dcfe */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802dd00 */ POP {R4-R7} \n\
/* 0802dd02 */ POP {R0} \n\
/* 0802dd04 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
