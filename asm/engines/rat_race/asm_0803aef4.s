asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803aef4 \n\
/* 0803aef4 */ PUSH {R4-R7, LR} \n\
/* 0803aef6 */ SUB SP, 0xC \n\
/* 0803aef8 */ ADDS R7, R2, 0x0 @ Set R7 to R2 + 0x0 \n\
/* 0803aefa */ LSLS R1, R1, 0x10 \n\
/* 0803aefc */ LSRS R4, R1, 0x10 \n\
/* 0803aefe */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803af00 */ BL func_0800c604 \n\
/* 0803af04 */ LDRB R0, [R7, 0xC] \n\
/* 0803af06 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 0803af08 */ BLS branch_0803af0c \n\
/* 0803af0a */ B branch_0803b022 \n\
 \n\
branch_0803af0c: \n\
/* 0803af0c */ LSLS R0, R0, 0x2 \n\
/* 0803af0e */ LDR R1, =jtbl_0803af1c \n\
/* 0803af10 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803af12 */ LDR R0, [R0] \n\
/* 0803af14 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_0803af1c: \n\
.word jump_0803af30 \n\
.word jump_0803af54 \n\
.word jump_0803afc8 \n\
.word jump_0803af7c \n\
.word jump_0803b004 \n\
jump_0803af30: \n\
/* 0803af30 */ LDR R0, =gSpriteHandler \n\
/* 0803af32 */ LDR R0, [R0] \n\
/* 0803af34 */ LSLS R1, R4, 0x10 \n\
/* 0803af36 */ ASRS R1, R1, 0x10 \n\
/* 0803af38 */ LDR R2, =anim_rat_run \n\
/* 0803af3a */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 0803af3c */ STR R4, [SP] \n\
/* 0803af3e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803af40 */ STR R3, [SP, 0x4] \n\
/* 0803af42 */ STR R3, [SP, 0x8] \n\
/* 0803af44 */ BL sprite_set_anim \n\
/* 0803af48 */ STRB R4, [R7, 0x4] \n\
/* 0803af4a */ B branch_0803b022 \n\
\n\
.ltorg \n\
jump_0803af54: \n\
/* 0803af54 */ LDR R0, =gSpriteHandler \n\
/* 0803af56 */ LDR R0, [R0] \n\
/* 0803af58 */ LSLS R1, R4, 0x10 \n\
/* 0803af5a */ ASRS R1, R1, 0x10 \n\
/* 0803af5c */ LDR R2, =anim_rat_stop \n\
/* 0803af5e */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803af60 */ STR R3, [SP] \n\
/* 0803af62 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803af64 */ STR R3, [SP, 0x4] \n\
/* 0803af66 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803af68 */ STR R3, [SP, 0x8] \n\
/* 0803af6a */ BL sprite_set_anim \n\
/* 0803af6e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803af70 */ B branch_0803b020 \n\
\n\
.ltorg \n\
jump_0803af7c: \n\
/* 0803af7c */ LDR R6, =gSpriteHandler \n\
/* 0803af7e */ LDR R1, [R6] \n\
/* 0803af80 */ LSLS R0, R4, 0x10 \n\
/* 0803af82 */ ASRS R5, R0, 0x10 \n\
/* 0803af84 */ LDRB R0, [R7, 0x5] \n\
/* 0803af86 */ LDR R2, =anim_rat_angry_run_l \n\
/* 0803af88 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0803af8a */ BNE branch_0803af8e \n\
/* 0803af8c */ LDR R2, =anim_rat_angry_run_r \n\
 \n\
branch_0803af8e: \n\
/* 0803af8e */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 0803af90 */ STR R4, [SP] \n\
/* 0803af92 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 0803af94 */ STR R0, [SP, 0x4] \n\
/* 0803af96 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0803af98 */ STR R0, [SP, 0x8] \n\
/* 0803af9a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0803af9c */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0803af9e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803afa0 */ BL sprite_set_anim \n\
/* 0803afa4 */ LDR R0, [R6] \n\
/* 0803afa6 */ LDR R2, =func_0803aef4 \n\
/* 0803afa8 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0803afaa */ ADDS R3, R7, 0x0 @ Set R3 to R7 + 0x0 \n\
/* 0803afac */ BL sprite_set_callback \n\
/* 0803afb0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803afb2 */ STRB R0, [R7, 0xC] \n\
/* 0803afb4 */ STRB R4, [R7, 0x4] \n\
/* 0803afb6 */ B branch_0803b022 \n\
\n\
.ltorg \n\
jump_0803afc8: \n\
/* 0803afc8 */ LDR R5, =gSpriteHandler \n\
/* 0803afca */ LDR R0, [R5] \n\
/* 0803afcc */ LSLS R4, R4, 0x10 \n\
/* 0803afce */ ASRS R4, R4, 0x10 \n\
/* 0803afd0 */ LDR R2, =anim_rat_angry_stop_r \n\
/* 0803afd2 */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
/* 0803afd4 */ STR R6, [SP] \n\
/* 0803afd6 */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
/* 0803afd8 */ STR R1, [SP, 0x4] \n\
/* 0803afda */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0803afdc */ STR R1, [SP, 0x8] \n\
/* 0803afde */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0803afe0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803afe2 */ BL sprite_set_anim \n\
/* 0803afe6 */ LDR R0, [R5] \n\
/* 0803afe8 */ LDR R2, =func_0803aef4 \n\
/* 0803afea */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0803afec */ ADDS R3, R7, 0x0 @ Set R3 to R7 + 0x0 \n\
/* 0803afee */ BL sprite_set_callback \n\
/* 0803aff2 */ STRB R6, [R7, 0xC] \n\
/* 0803aff4 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803aff6 */ B branch_0803b020 \n\
\n\
.ltorg \n\
jump_0803b004: \n\
/* 0803b004 */ LDR R0, =gSpriteHandler \n\
/* 0803b006 */ LDR R0, [R0] \n\
/* 0803b008 */ LSLS R1, R4, 0x10 \n\
/* 0803b00a */ ASRS R1, R1, 0x10 \n\
/* 0803b00c */ LDR R2, =anim_rat_prepare_dash \n\
/* 0803b00e */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803b010 */ STR R3, [SP] \n\
/* 0803b012 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803b014 */ STR R3, [SP, 0x4] \n\
/* 0803b016 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803b018 */ STR R3, [SP, 0x8] \n\
/* 0803b01a */ BL sprite_set_anim \n\
/* 0803b01e */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
 \n\
branch_0803b020: \n\
/* 0803b020 */ STRB R0, [R7, 0x4] \n\
 \n\
branch_0803b022: \n\
/* 0803b022 */ ADD SP, 0xC \n\
/* 0803b024 */ POP {R4-R7} \n\
/* 0803b026 */ POP {R0} \n\
/* 0803b028 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
