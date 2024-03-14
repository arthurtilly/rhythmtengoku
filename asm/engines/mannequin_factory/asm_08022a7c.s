asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08022a7c \n\
/* 08022a7c */ PUSH {R4-R6, LR} \n\
/* 08022a7e */ SUB SP, 0x14 \n\
/* 08022a80 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08022a82 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08022a84 */ ADDS R0, R6, 0x4 @ Set R0 to R6 + 0x4 \n\
/* 08022a86 */ LDRB R2, [R4, 0xA] \n\
/* 08022a88 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 08022a8a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08022a8c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08022a8e */ BGE branch_08022a92 \n\
/* 08022a90 */ ADDS R0, R1, 0x3 @ Set R0 to R1 + 0x3 \n\
 \n\
branch_08022a92: \n\
/* 08022a92 */ ASRS R0, R0, 0x2 \n\
/* 08022a94 */ LSLS R0, R0, 0x2 \n\
/* 08022a96 */ SUBS R0, R1, R0 @ Set R0 to R1 - R0 \n\
/* 08022a98 */ STRB R0, [R4, 0xA] \n\
/* 08022a9a */ LDR R5, =gSpriteHandler \n\
/* 08022a9c */ LDR R0, [R5] \n\
/* 08022a9e */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08022aa0 */ LDRSH R1, [R4, R2] \n\
/* 08022aa2 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08022aa4 */ LDRSB R2, [R4, R2] \n\
/* 08022aa6 */ BL sprite_set_anim_cel \n\
/* 08022aaa */ LDR R0, [R5] \n\
/* 08022aac */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08022aae */ LDRSH R1, [R4, R2] \n\
/* 08022ab0 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08022ab2 */ LDRSB R2, [R4, R2] \n\
/* 08022ab4 */ BL sprite_set_anim_cel \n\
/* 08022ab8 */ LDR R0, [R5] \n\
/* 08022aba */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08022abc */ LDRSH R1, [R4, R2] \n\
/* 08022abe */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08022ac0 */ LDRSB R2, [R4, R2] \n\
/* 08022ac2 */ BL sprite_set_anim_cel \n\
/* 08022ac6 */ LDR R2, =anim_mannequin_slap_effect_l \n\
/* 08022ac8 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08022aca */ BGE branch_08022ace \n\
/* 08022acc */ LDR R2, =anim_mannequin_slap_effect_r \n\
 \n\
branch_08022ace: \n\
/* 08022ace */ LDR R0, [R5] \n\
/* 08022ad0 */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 08022ad2 */ STR R1, [SP] \n\
/* 08022ad4 */ LDR R1, =0x00004814 \n\
/* 08022ad6 */ STR R1, [SP, 0x4] \n\
/* 08022ad8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08022ada */ STR R1, [SP, 0x8] \n\
/* 08022adc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08022ade */ STR R1, [SP, 0xC] \n\
/* 08022ae0 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 08022ae2 */ STR R1, [SP, 0x10] \n\
/* 08022ae4 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08022ae6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08022ae8 */ MOVS R3, 0x48 @ Set R3 to 0x48 \n\
/* 08022aea */ BL sprite_create \n\
/* 08022aee */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 08022af0 */ LSLS R0, R0, 0x2 \n\
/* 08022af2 */ STRH R0, [R4, 0x12] \n\
/* 08022af4 */ ADD SP, 0x14 \n\
/* 08022af6 */ POP {R4-R6} \n\
/* 08022af8 */ POP {R0} \n\
/* 08022afa */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
