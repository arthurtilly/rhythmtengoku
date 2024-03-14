asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start ninja_bodyguard_cue_hit \n\
/* 0803cd3c */ PUSH {R4-R7, LR} \n\
/* 0803cd3e */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0803cd40 */ PUSH {R7} \n\
/* 0803cd42 */ SUB SP, 0xC \n\
/* 0803cd44 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0803cd46 */ LDR R7, =gCurrentEngineData \n\
/* 0803cd48 */ LDR R0, [R7] \n\
/* 0803cd4a */ LDRB R6, [R0, 0x6] \n\
/* 0803cd4c */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0803cd4e */ BEQ branch_0803cd5c \n\
/* 0803cd50 */ CMP R6, 0x1 @ Compare R6 and 0x1 \n\
/* 0803cd52 */ BEQ branch_0803cd9c \n\
/* 0803cd54 */ B branch_0803cdde \n\
\n\
.ltorg \n\
 \n\
branch_0803cd5c: \n\
/* 0803cd5c */ MOVS R0, 0x11 @ Set R0 to 0x11 \n\
/* 0803cd5e */ BL ninja_get_anim \n\
/* 0803cd62 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803cd64 */ LDR R4, =gSpriteHandler \n\
/* 0803cd66 */ LDR R0, [R4] \n\
/* 0803cd68 */ LDR R1, [R7] \n\
/* 0803cd6a */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0803cd6c */ LDRSH R1, [R1, R3] \n\
/* 0803cd6e */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 0803cd70 */ STR R5, [SP] \n\
/* 0803cd72 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803cd74 */ STR R3, [SP, 0x4] \n\
/* 0803cd76 */ STR R6, [SP, 0x8] \n\
/* 0803cd78 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803cd7a */ BL sprite_set_anim \n\
/* 0803cd7e */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 0803cd80 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803cd82 */ BL gameplay_set_input_buttons \n\
/* 0803cd86 */ LDR R0, [R4] \n\
/* 0803cd88 */ LDR R1, [R7] \n\
/* 0803cd8a */ MOVS R2, 0xBB @ Set R2 to 0xBB \n\
/* 0803cd8c */ LSLS R2, R2, 0x2 \n\
/* 0803cd8e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803cd90 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803cd92 */ LDRSH R1, [R1, R3] \n\
/* 0803cd94 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803cd96 */ B branch_0803cdd6 \n\
\n\
.ltorg \n\
 \n\
branch_0803cd9c: \n\
/* 0803cd9c */ MOVS R0, 0x12 @ Set R0 to 0x12 \n\
/* 0803cd9e */ BL ninja_get_anim \n\
/* 0803cda2 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803cda4 */ LDR R4, =gSpriteHandler \n\
/* 0803cda6 */ LDR R0, [R4] \n\
/* 0803cda8 */ LDR R1, [R7] \n\
/* 0803cdaa */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0803cdac */ LDRSH R1, [R1, R3] \n\
/* 0803cdae */ STR R6, [SP] \n\
/* 0803cdb0 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803cdb2 */ STR R3, [SP, 0x4] \n\
/* 0803cdb4 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0803cdb6 */ STR R5, [SP, 0x8] \n\
/* 0803cdb8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803cdba */ BL sprite_set_anim \n\
/* 0803cdbe */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803cdc0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803cdc2 */ BL gameplay_set_input_buttons \n\
/* 0803cdc6 */ LDR R0, [R4] \n\
/* 0803cdc8 */ LDR R1, [R7] \n\
/* 0803cdca */ MOVS R2, 0xBB @ Set R2 to 0xBB \n\
/* 0803cdcc */ LSLS R2, R2, 0x2 \n\
/* 0803cdce */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803cdd0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803cdd2 */ LDRSH R1, [R1, R3] \n\
/* 0803cdd4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
 \n\
branch_0803cdd6: \n\
/* 0803cdd6 */ BL sprite_set_anim_cel \n\
/* 0803cdda */ LDR R0, [R7] \n\
/* 0803cddc */ STRB R5, [R0, 0x6] \n\
 \n\
branch_0803cdde: \n\
/* 0803cdde */ BL func_0803c8c4 \n\
/* 0803cde2 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0803cde4 */ BL func_0803c710 \n\
/* 0803cde8 */ LDR R0, =s_ninja_hit_seqData \n\
/* 0803cdea */ BL play_sound \n\
/* 0803cdee */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803cdf0 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0803cdf2 */ LDRH R1, [R0] \n\
/* 0803cdf4 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803cdf6 */ BL set_soundplayer_volume \n\
/* 0803cdfa */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0803cdfc */ LDRH R1, [R2] \n\
/* 0803cdfe */ LSLS R1, R1, 0x11 \n\
/* 0803ce00 */ MOVS R3, 0xFE @ Set R3 to 0xFE \n\
/* 0803ce02 */ LSLS R3, R3, 0x18 \n\
/* 0803ce04 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0803ce06 */ ASRS R1, R1, 0x10 \n\
/* 0803ce08 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803ce0a */ BL set_soundplayer_pitch \n\
/* 0803ce0e */ ADD SP, 0xC \n\
/* 0803ce10 */ POP {R3} \n\
/* 0803ce12 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803ce14 */ POP {R4-R7} \n\
/* 0803ce16 */ POP {R0} \n\
/* 0803ce18 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
