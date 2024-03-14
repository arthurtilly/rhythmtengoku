asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803ac98 \n\
/* 0803ac98 */ PUSH {R4-R7, LR} \n\
/* 0803ac9a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0803ac9c */ LDR R6, =gCurrentEngineData \n\
/* 0803ac9e */ LDR R1, [R6] \n\
/* 0803aca0 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0803aca2 */ ADDS R2, 0xE8 @ Add 0xE8 to R2 \n\
/* 0803aca4 */ LDR R4, [R2] \n\
/* 0803aca6 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0803aca8 */ BNE branch_0803acac \n\
/* 0803acaa */ LDR R4, =s_rat_signal_seqData \n\
 \n\
branch_0803acac: \n\
/* 0803acac */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803acae */ STR R0, [R2] \n\
/* 0803acb0 */ LDRB R0, [R1, 0x10] \n\
/* 0803acb2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803acb4 */ BEQ branch_0803ad40 \n\
/* 0803acb6 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0803acb8 */ BNE branch_0803acf4 \n\
/* 0803acba */ LDR R7, =gSpriteHandler \n\
/* 0803acbc */ LDR R0, [R7] \n\
/* 0803acbe */ ADDS R1, 0xDC @ Add 0xDC to R1 \n\
/* 0803acc0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803acc2 */ LDRSH R1, [R1, R2] \n\
/* 0803acc4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803acc6 */ BL sprite_get_data \n\
/* 0803acca */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803accc */ BNE branch_0803acf4 \n\
/* 0803acce */ LDR R0, [R6] \n\
/* 0803acd0 */ ADDS R0, 0xDE @ Add 0xDE to R0 \n\
/* 0803acd2 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803acd4 */ STRB R1, [R0] \n\
/* 0803acd6 */ LDR R0, [R7] \n\
/* 0803acd8 */ LDR R1, [R6] \n\
/* 0803acda */ ADDS R1, 0xDC @ Add 0xDC to R1 \n\
/* 0803acdc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803acde */ LDRSH R1, [R1, R2] \n\
/* 0803ace0 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803ace2 */ BL sprite_set_visible \n\
/* 0803ace6 */ B branch_0803ad06 \n\
\n\
.ltorg \n\
 \n\
branch_0803acf4: \n\
/* 0803acf4 */ CMP R5, 0x3 @ Compare R5 and 0x3 \n\
/* 0803acf6 */ BHI branch_0803ad14 \n\
/* 0803acf8 */ LDR R0, =gCurrentEngineData \n\
/* 0803acfa */ LDR R0, [R0] \n\
/* 0803acfc */ ADDS R0, 0xDE @ Add 0xDE to R0 \n\
/* 0803acfe */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0803ad00 */ STRB R1, [R0] \n\
/* 0803ad02 */ CMP R5, 0x3 @ Compare R5 and 0x3 \n\
/* 0803ad04 */ BEQ branch_0803ad2a \n\
 \n\
branch_0803ad06: \n\
/* 0803ad06 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803ad08 */ BL play_sound \n\
/* 0803ad0c */ B branch_0803ad2a \n\
\n\
.ltorg \n\
 \n\
branch_0803ad14: \n\
/* 0803ad14 */ CMP R5, 0x4 @ Compare R5 and 0x4 \n\
/* 0803ad16 */ BNE branch_0803ad2a \n\
/* 0803ad18 */ LDR R0, =gCurrentEngineData \n\
/* 0803ad1a */ LDR R1, [R0] \n\
/* 0803ad1c */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0803ad1e */ ADDS R2, 0xE2 @ Add 0xE2 to R2 \n\
/* 0803ad20 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803ad22 */ STRH R0, [R2] \n\
/* 0803ad24 */ ADDS R1, 0xDE @ Add 0xDE to R1 \n\
/* 0803ad26 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0803ad28 */ STRB R0, [R1] \n\
 \n\
branch_0803ad2a: \n\
/* 0803ad2a */ LDR R0, =gSpriteHandler \n\
/* 0803ad2c */ LDR R0, [R0] \n\
/* 0803ad2e */ LDR R1, =gCurrentEngineData \n\
/* 0803ad30 */ LDR R1, [R1] \n\
/* 0803ad32 */ ADDS R1, 0xDC @ Add 0xDC to R1 \n\
/* 0803ad34 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ad36 */ LDRSH R1, [R1, R2] \n\
/* 0803ad38 */ LSLS R2, R5, 0x18 \n\
/* 0803ad3a */ ASRS R2, R2, 0x18 \n\
/* 0803ad3c */ BL sprite_set_anim_cel \n\
 \n\
branch_0803ad40: \n\
/* 0803ad40 */ POP {R4-R7} \n\
/* 0803ad42 */ POP {R0} \n\
/* 0803ad44 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
