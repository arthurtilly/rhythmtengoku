asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080229f0 \n\
/* 080229f0 */ PUSH {R4-R6, LR} \n\
/* 080229f2 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 080229f4 */ LDRB R0, [R6, 0x10] \n\
/* 080229f6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080229f8 */ BNE branch_08022a72 \n\
/* 080229fa */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080229fc */ STRB R0, [R6, 0x10] \n\
/* 080229fe */ LDRB R0, [R6, 0xD] \n\
/* 08022a00 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08022a02 */ STRB R0, [R6, 0xD] \n\
/* 08022a04 */ LSLS R0, R0, 0x18 \n\
/* 08022a06 */ ASRS R0, R0, 0x18 \n\
/* 08022a08 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 08022a0a */ BLE branch_08022a14 \n\
/* 08022a0c */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08022a0e */ BL func_08022894 \n\
/* 08022a12 */ B branch_08022a72 \n\
 \n\
branch_08022a14: \n\
/* 08022a14 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 08022a16 */ BGT branch_08022a72 \n\
/* 08022a18 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 08022a1a */ STRH R0, [R6, 0xE] \n\
/* 08022a1c */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08022a1e */ BL func_080225bc \n\
/* 08022a22 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08022a24 */ LDR R5, =gSpriteHandler \n\
/* 08022a26 */ LDR R0, [R5] \n\
/* 08022a28 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08022a2a */ LDRSH R1, [R6, R2] \n\
/* 08022a2c */ LSLS R4, R4, 0x10 \n\
/* 08022a2e */ ASRS R4, R4, 0x10 \n\
/* 08022a30 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08022a32 */ BL sprite_set_x \n\
/* 08022a36 */ LDR R0, [R5] \n\
/* 08022a38 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08022a3a */ LDRSH R1, [R6, R2] \n\
/* 08022a3c */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08022a3e */ BL sprite_set_x \n\
/* 08022a42 */ LDR R0, [R5] \n\
/* 08022a44 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08022a46 */ LDRSH R1, [R6, R2] \n\
/* 08022a48 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08022a4a */ BL sprite_set_x \n\
/* 08022a4e */ LDR R0, [R5] \n\
/* 08022a50 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08022a52 */ LDRSH R1, [R6, R2] \n\
/* 08022a54 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08022a56 */ BL sprite_set_x \n\
/* 08022a5a */ LDR R0, [R5] \n\
/* 08022a5c */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08022a5e */ LDRSH R1, [R6, R2] \n\
/* 08022a60 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08022a62 */ BL sprite_set_visible \n\
/* 08022a66 */ LDR R0, [R5] \n\
/* 08022a68 */ MOVS R2, 0x8 @ Set R2 to 0x8 \n\
/* 08022a6a */ LDRSH R1, [R6, R2] \n\
/* 08022a6c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08022a6e */ BL sprite_set_anim_cel \n\
 \n\
branch_08022a72: \n\
/* 08022a72 */ POP {R4-R6} \n\
/* 08022a74 */ POP {R0} \n\
/* 08022a76 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
