asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start metronome_engine_update \n\
/* 08035ab0 */ PUSH {R4-R6, LR} \n\
/* 08035ab2 */ LDR R6, =gCurrentEngineData \n\
/* 08035ab4 */ LDR R2, [R6] \n\
/* 08035ab6 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08035ab8 */ LDRSH R5, [R2, R0] \n\
/* 08035aba */ LDR R3, =gSineTable \n\
/* 08035abc */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08035abe */ LDRSH R0, [R2, R1] \n\
/* 08035ac0 */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
/* 08035ac2 */ LSLS R4, R4, 0x2 \n\
/* 08035ac4 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08035ac6 */ LDR R1, =0x7ff \n\
/* 08035ac8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08035aca */ LSLS R0, R0, 0x1 \n\
/* 08035acc */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08035ace */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08035ad0 */ LDRSH R0, [R0, R3] \n\
/* 08035ad2 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08035ad4 */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 08035ad6 */ LDR R0, [R2, 0x4] \n\
/* 08035ad8 */ LSLS R1, R1, 0x8 \n\
/* 08035ada */ ASRS R1, R1, 0x10 \n\
/* 08035adc */ BL affine_sprite_set_rotation \n\
/* 08035ae0 */ LDR R3, =D_03004afc \n\
/* 08035ae2 */ LDRH R0, [R3] \n\
/* 08035ae4 */ ANDS R4, R0 @ Set R4 to R4 & R0 \n\
/* 08035ae6 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08035ae8 */ BEQ branch_08035af6 \n\
/* 08035aea */ LDR R0, [R6] \n\
/* 08035aec */ ADDS R0, 0x2E @ Add 0x2E to R0 \n\
/* 08035aee */ LDRB R1, [R0] \n\
/* 08035af0 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08035af2 */ EORS R1, R2 @ Set R1 to R1 ^ R2 \n\
/* 08035af4 */ STRB R1, [R0] \n\
 \n\
branch_08035af6: \n\
/* 08035af6 */ LDRH R1, [R3] \n\
/* 08035af8 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08035afa */ LSLS R0, R0, 0x1 \n\
/* 08035afc */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08035afe */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08035b00 */ BEQ branch_08035b0e \n\
/* 08035b02 */ LDR R0, [R6] \n\
/* 08035b04 */ ADDS R0, 0x2F @ Add 0x2F to R0 \n\
/* 08035b06 */ LDRB R1, [R0] \n\
/* 08035b08 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08035b0a */ EORS R1, R2 @ Set R1 to R1 ^ R2 \n\
/* 08035b0c */ STRB R1, [R0] \n\
 \n\
branch_08035b0e: \n\
/* 08035b0e */ LDR R0, =gSpriteHandler \n\
/* 08035b10 */ LDR R0, [R0] \n\
/* 08035b12 */ LDR R2, [R6] \n\
/* 08035b14 */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 08035b16 */ LDRSH R1, [R2, R3] \n\
/* 08035b18 */ ADDS R2, 0x2F @ Add 0x2F to R2 \n\
/* 08035b1a */ LDRB R2, [R2] \n\
/* 08035b1c */ BL sprite_set_visible \n\
/* 08035b20 */ POP {R4-R6} \n\
/* 08035b22 */ POP {R0} \n\
/* 08035b24 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
