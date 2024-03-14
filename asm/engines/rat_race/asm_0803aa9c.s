asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803aa9c \n\
/* 0803aa9c */ PUSH {R4-R6, LR} \n\
/* 0803aa9e */ SUB SP, 0xC \n\
/* 0803aaa0 */ LDR R5, =gCurrentEngineData \n\
/* 0803aaa2 */ LDR R0, [R5] \n\
/* 0803aaa4 */ LDR R1, [R0, 0x30] \n\
/* 0803aaa6 */ LDR R4, =0xffff8800 \n\
/* 0803aaa8 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0803aaaa */ LSLS R1, R1, 0x8 \n\
/* 0803aaac */ ASRS R1, R1, 0x10 \n\
/* 0803aaae */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803aab0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803aab2 */ BL scene_set_bg_layer_pos \n\
/* 0803aab6 */ LDR R0, [R5] \n\
/* 0803aab8 */ LDR R1, [R0, 0x30] \n\
/* 0803aaba */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0803aabc */ LSRS R0, R1, 0x1F \n\
/* 0803aabe */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0803aac0 */ LSLS R1, R1, 0x7 \n\
/* 0803aac2 */ ASRS R1, R1, 0x10 \n\
/* 0803aac4 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803aac6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803aac8 */ BL scene_set_bg_layer_pos \n\
/* 0803aacc */ LDR R1, [R5] \n\
/* 0803aace */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0803aad0 */ ADDS R0, 0xD3 @ Add 0xD3 to R0 \n\
/* 0803aad2 */ LDRB R0, [R0] \n\
/* 0803aad4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803aad6 */ BEQ branch_0803ab80 \n\
/* 0803aad8 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0803aada */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 0803aadc */ LDRB R0, [R0] \n\
/* 0803aade */ CMP R0, 0x7 @ Compare R0 and 0x7 \n\
/* 0803aae0 */ BEQ branch_0803ab80 \n\
/* 0803aae2 */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 0803aae4 */ ADDS R3, 0xD4 @ Add 0xD4 to R3 \n\
/* 0803aae6 */ LDR R2, [R1, 0x30] \n\
/* 0803aae8 */ LDR R0, [R3] \n\
/* 0803aaea */ SUBS R0, R2, R0 @ Set R0 to R2 - R0 \n\
/* 0803aaec */ ASRS R0, R0, 0x8 \n\
/* 0803aaee */ LDR R1, =0x10f \n\
/* 0803aaf0 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0803aaf2 */ BLE branch_0803ab40 \n\
/* 0803aaf4 */ LDR R1, =0xfffef000 \n\
/* 0803aaf6 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0803aaf8 */ STR R0, [R3] \n\
/* 0803aafa */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803aafc */ ADDS R6, R5, 0x0 @ Set R6 to R5 + 0x0 \n\
/* 0803aafe */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_0803ab00: \n\
/* 0803ab00 */ LDR R1, [R6] \n\
/* 0803ab02 */ LSLS R2, R4, 0x4 \n\
/* 0803ab04 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803ab06 */ ADDS R1, 0x40 @ Add 0x40 to R1 \n\
/* 0803ab08 */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 0803ab0a */ STRB R0, [R1] \n\
/* 0803ab0c */ LDR R0, =gSpriteHandler \n\
/* 0803ab0e */ LDR R0, [R0] \n\
/* 0803ab10 */ LDR R1, [R6] \n\
/* 0803ab12 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803ab14 */ MOVS R2, 0x3C @ Set R2 to 0x3C \n\
/* 0803ab16 */ LDRSH R1, [R1, R2] \n\
/* 0803ab18 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803ab1a */ STR R2, [SP] \n\
/* 0803ab1c */ STR R5, [SP, 0x4] \n\
/* 0803ab1e */ STR R5, [SP, 0x8] \n\
/* 0803ab20 */ LDR R2, =anim_rat_cheer_full \n\
/* 0803ab22 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803ab24 */ BL sprite_set_anim \n\
/* 0803ab28 */ ADDS R0, R4, 0x1 @ Set R0 to R4 + 0x1 \n\
/* 0803ab2a */ LSLS R0, R0, 0x18 \n\
/* 0803ab2c */ LSRS R4, R0, 0x18 \n\
/* 0803ab2e */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 0803ab30 */ BLS branch_0803ab00 \n\
/* 0803ab32 */ LDR R0, =gCurrentEngineData \n\
/* 0803ab34 */ LDR R1, [R0] \n\
/* 0803ab36 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803ab38 */ STRB R0, [R1, 0x1C] \n\
/* 0803ab3a */ LDR R0, =s_f_rat_goal_seqData \n\
/* 0803ab3c */ BL play_sound \n\
 \n\
branch_0803ab40: \n\
/* 0803ab40 */ LDR R4, =gCurrentEngineData \n\
/* 0803ab42 */ LDR R0, [R4] \n\
/* 0803ab44 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803ab46 */ ADDS R2, 0xD4 @ Add 0xD4 to R2 \n\
/* 0803ab48 */ LDR R1, [R0, 0x30] \n\
/* 0803ab4a */ LDR R0, [R2] \n\
/* 0803ab4c */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0803ab4e */ LSLS R1, R1, 0x8 \n\
/* 0803ab50 */ ASRS R1, R1, 0x10 \n\
/* 0803ab52 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803ab54 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ab56 */ BL scene_set_bg_layer_pos \n\
/* 0803ab5a */ LDR R0, =gSpriteHandler \n\
/* 0803ab5c */ LDR R0, [R0] \n\
/* 0803ab5e */ LDR R3, [R4] \n\
/* 0803ab60 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0803ab62 */ ADDS R1, 0xD8 @ Add 0xD8 to R1 \n\
/* 0803ab64 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ab66 */ LDRSH R1, [R1, R2] \n\
/* 0803ab68 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 0803ab6a */ ADDS R2, 0xD4 @ Add 0xD4 to R2 \n\
/* 0803ab6c */ LDR R2, [R2] \n\
/* 0803ab6e */ LDR R3, [R3, 0x30] \n\
/* 0803ab70 */ SUBS R2, R2, R3 @ Set R2 to R2 - R3 \n\
/* 0803ab72 */ MOVS R3, 0x90 @ Set R3 to 0x90 \n\
/* 0803ab74 */ LSLS R3, R3, 0x9 \n\
/* 0803ab76 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0803ab78 */ LSLS R2, R2, 0x8 \n\
/* 0803ab7a */ ASRS R2, R2, 0x10 \n\
/* 0803ab7c */ BL sprite_set_x \n\
 \n\
branch_0803ab80: \n\
/* 0803ab80 */ ADD SP, 0xC \n\
/* 0803ab82 */ POP {R4-R6} \n\
/* 0803ab84 */ POP {R0} \n\
/* 0803ab86 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
