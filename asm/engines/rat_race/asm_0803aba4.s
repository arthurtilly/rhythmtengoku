asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803aba4 \n\
/* 0803aba4 */ PUSH {R4-R7, LR} \n\
/* 0803aba6 */ SUB SP, 0x14 \n\
/* 0803aba8 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0803abaa */ LSLS R1, R1, 0x18 \n\
/* 0803abac */ LDR R2, =rat_race_init_rat_data \n\
/* 0803abae */ LSRS R1, R1, 0x14 \n\
/* 0803abb0 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803abb2 */ LDMIA R1!, {R2-R4} \n\
/* 0803abb4 */ STMIA R0!, {R2-R4} \n\
/* 0803abb6 */ LDR R1, [R1] \n\
/* 0803abb8 */ STR R1, [R0] \n\
/* 0803abba */ LDR R5, =gSpriteHandler \n\
/* 0803abbc */ LDR R0, [R5] \n\
/* 0803abbe */ LDR R1, =anim_rat_run \n\
/* 0803abc0 */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 0803abc2 */ STR R2, [SP] \n\
/* 0803abc4 */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 0803abc6 */ STR R2, [SP, 0x4] \n\
/* 0803abc8 */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 0803abca */ STR R7, [SP, 0x8] \n\
/* 0803abcc */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803abce */ STR R4, [SP, 0xC] \n\
/* 0803abd0 */ STR R4, [SP, 0x10] \n\
/* 0803abd2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803abd4 */ MOVS R3, 0x64 @ Set R3 to 0x64 \n\
/* 0803abd6 */ BL sprite_create \n\
/* 0803abda */ STRH R0, [R6] \n\
/* 0803abdc */ LDRB R0, [R6, 0x5] \n\
/* 0803abde */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803abe0 */ BEQ branch_0803abee \n\
/* 0803abe2 */ LDR R0, [R5] \n\
/* 0803abe4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803abe6 */ LDRSH R1, [R6, R2] \n\
/* 0803abe8 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803abea */ BL sprite_set_base_palette \n\
 \n\
branch_0803abee: \n\
/* 0803abee */ LDR R0, [R5] \n\
/* 0803abf0 */ LDR R1, =anim_rat_fear_particles_barely \n\
/* 0803abf2 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 0803abf4 */ STR R2, [SP] \n\
/* 0803abf6 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0803abf8 */ STR R2, [SP, 0x4] \n\
/* 0803abfa */ STR R7, [SP, 0x8] \n\
/* 0803abfc */ STR R4, [SP, 0xC] \n\
/* 0803abfe */ STR R4, [SP, 0x10] \n\
/* 0803ac00 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ac02 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 0803ac04 */ BL sprite_create \n\
/* 0803ac08 */ STRH R0, [R6, 0x2] \n\
/* 0803ac0a */ LDR R0, =gCurrentEngineData \n\
/* 0803ac0c */ LDR R0, [R0] \n\
/* 0803ac0e */ LDRB R0, [R0] \n\
/* 0803ac10 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803ac12 */ BNE branch_0803ac38 \n\
/* 0803ac14 */ LDR R0, [R6, 0x8] \n\
/* 0803ac16 */ LDR R3, =0xffff0000 \n\
/* 0803ac18 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0803ac1a */ STR R0, [R6, 0x8] \n\
/* 0803ac1c */ B branch_0803ac40 \n\
\n\
.ltorg \n\
 \n\
branch_0803ac38: \n\
/* 0803ac38 */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 0803ac3a */ LSLS R0, R0, 0x7 \n\
/* 0803ac3c */ STR R0, [R6, 0x8] \n\
/* 0803ac3e */ STRB R7, [R6, 0x4] \n\
 \n\
branch_0803ac40: \n\
/* 0803ac40 */ LDR R4, =gSpriteHandler \n\
/* 0803ac42 */ LDR R0, [R4] \n\
/* 0803ac44 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ac46 */ LDRSH R1, [R6, R2] \n\
/* 0803ac48 */ LDR R5, =D_089e68ac \n\
/* 0803ac4a */ LDRB R3, [R6, 0x5] \n\
/* 0803ac4c */ LSLS R3, R3, 0x2 \n\
/* 0803ac4e */ ADDS R3, R3, R5 @ Set R3 to R3 + R5 \n\
/* 0803ac50 */ LDR R2, [R6, 0x8] \n\
/* 0803ac52 */ LDR R3, [R3] \n\
/* 0803ac54 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0803ac56 */ LSLS R2, R2, 0x8 \n\
/* 0803ac58 */ ASRS R2, R2, 0x10 \n\
/* 0803ac5a */ MOVS R3, 0x90 @ Set R3 to 0x90 \n\
/* 0803ac5c */ BL sprite_set_x_y \n\
/* 0803ac60 */ LDR R0, [R4] \n\
/* 0803ac62 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0803ac64 */ LDRSH R1, [R6, R3] \n\
/* 0803ac66 */ LDRB R3, [R6, 0x5] \n\
/* 0803ac68 */ LSLS R3, R3, 0x2 \n\
/* 0803ac6a */ ADDS R3, R3, R5 @ Set R3 to R3 + R5 \n\
/* 0803ac6c */ LDR R2, [R6, 0x8] \n\
/* 0803ac6e */ LDR R3, [R3] \n\
/* 0803ac70 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0803ac72 */ LSLS R2, R2, 0x8 \n\
/* 0803ac74 */ ASRS R2, R2, 0x10 \n\
/* 0803ac76 */ MOVS R3, 0x90 @ Set R3 to 0x90 \n\
/* 0803ac78 */ BL sprite_set_x_y \n\
/* 0803ac7c */ LDR R0, [R4] \n\
/* 0803ac7e */ MOVS R4, 0x2 @ Set R4 to 0x2 \n\
/* 0803ac80 */ LDRSH R1, [R6, R4] \n\
/* 0803ac82 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803ac84 */ BL sprite_set_visible \n\
/* 0803ac88 */ ADD SP, 0x14 \n\
/* 0803ac8a */ POP {R4-R7} \n\
/* 0803ac8c */ POP {R0} \n\
/* 0803ac8e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
