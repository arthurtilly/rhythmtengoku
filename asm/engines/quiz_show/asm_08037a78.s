asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08037a78 \n\
/* 08037a78 */ PUSH {R4-R7, LR} \n\
/* 08037a7a */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08037a7c */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08037a7e */ PUSH {R6, R7} \n\
/* 08037a80 */ SUB SP, 0xC \n\
/* 08037a82 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08037a84 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08037a86 */ BNE branch_08037a98 \n\
/* 08037a88 */ LDR R0, =gCurrentEngineData \n\
/* 08037a8a */ LDR R0, [R0] \n\
/* 08037a8c */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08037a8e */ ADDS R7, 0x8 @ Add 0x8 to R7 \n\
/* 08037a90 */ B branch_08037aa0 \n\
\n\
.ltorg \n\
 \n\
branch_08037a98: \n\
/* 08037a98 */ LDR R0, =gCurrentEngineData \n\
/* 08037a9a */ LDR R0, [R0] \n\
/* 08037a9c */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 08037a9e */ ADDS R7, 0x1C @ Add 0x1C to R7 \n\
 \n\
branch_08037aa0: \n\
/* 08037aa0 */ CMP R1, 0x4 @ Compare R1 and 0x4 \n\
/* 08037aa2 */ BLS branch_08037aa6 \n\
/* 08037aa4 */ B branch_08037bc8 \n\
 \n\
branch_08037aa6: \n\
/* 08037aa6 */ LSLS R0, R1, 0x2 \n\
/* 08037aa8 */ LDR R1, =jtbl_08037ab8 \n\
/* 08037aaa */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08037aac */ LDR R0, [R0] \n\
/* 08037aae */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_08037ab8: \n\
.word jump_08037acc \n\
.word jump_08037b1c \n\
.word jump_08037b68 \n\
.word jump_08037b7c \n\
.word jump_08037ba8 \n\
jump_08037acc: \n\
/* 08037acc */ LDR R0, =gSpriteHandler \n\
/* 08037ace */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08037ad0 */ LDR R0, [R0] \n\
/* 08037ad2 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08037ad4 */ LDRSH R1, [R7, R2] \n\
/* 08037ad6 */ LDR R2, =quiz_show_arm_r_anim \n\
/* 08037ad8 */ LSLS R4, R4, 0x2 \n\
/* 08037ada */ ADDS R2, R4, R2 @ Set R2 to R4 + R2 \n\
/* 08037adc */ LDR R2, [R2] \n\
/* 08037ade */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08037ae0 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08037ae2 */ STR R3, [SP] \n\
/* 08037ae4 */ MOVS R6, 0x7F @ Set R6 to 0x7F \n\
/* 08037ae6 */ STR R6, [SP, 0x4] \n\
/* 08037ae8 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08037aea */ STR R5, [SP, 0x8] \n\
/* 08037aec */ BL sprite_set_anim \n\
/* 08037af0 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08037af2 */ LDR R0, [R1] \n\
/* 08037af4 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08037af6 */ LDRSH R1, [R7, R2] \n\
/* 08037af8 */ LDR R2, =quiz_show_arm_l_anim \n\
/* 08037afa */ ADDS R4, R4, R2 @ Set R4 to R4 + R2 \n\
/* 08037afc */ LDR R2, [R4] \n\
/* 08037afe */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08037b00 */ STR R3, [SP] \n\
/* 08037b02 */ STR R6, [SP, 0x4] \n\
/* 08037b04 */ STR R5, [SP, 0x8] \n\
/* 08037b06 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08037b08 */ BL sprite_set_anim \n\
/* 08037b0c */ B branch_08037bc8 \n\
\n\
.ltorg \n\
jump_08037b1c: \n\
/* 08037b1c */ LDR R0, =gSpriteHandler \n\
/* 08037b1e */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08037b20 */ LDR R0, [R0] \n\
/* 08037b22 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08037b24 */ LDRSH R1, [R7, R2] \n\
/* 08037b26 */ LDR R2, =quiz_show_arm_r_anim \n\
/* 08037b28 */ LSLS R5, R4, 0x2 \n\
/* 08037b2a */ ADDS R2, R5, R2 @ Set R2 to R5 + R2 \n\
/* 08037b2c */ LDR R2, [R2] \n\
/* 08037b2e */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
/* 08037b30 */ NEGS R6, R6 @ Set R6 to -R6 \n\
/* 08037b32 */ STR R6, [SP] \n\
/* 08037b34 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08037b36 */ STR R4, [SP, 0x4] \n\
/* 08037b38 */ STR R4, [SP, 0x8] \n\
/* 08037b3a */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08037b3c */ BL sprite_set_anim \n\
/* 08037b40 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 08037b42 */ LDR R0, [R3] \n\
/* 08037b44 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08037b46 */ LDRSH R1, [R7, R2] \n\
/* 08037b48 */ LDR R2, =quiz_show_arm_l_anim \n\
/* 08037b4a */ ADDS R5, R5, R2 @ Set R5 to R5 + R2 \n\
/* 08037b4c */ LDR R2, [R5] \n\
/* 08037b4e */ STR R6, [SP] \n\
/* 08037b50 */ STR R4, [SP, 0x4] \n\
/* 08037b52 */ STR R4, [SP, 0x8] \n\
/* 08037b54 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08037b56 */ BL sprite_set_anim \n\
/* 08037b5a */ B branch_08037bc8 \n\
\n\
.ltorg \n\
jump_08037b68: \n\
/* 08037b68 */ LDR R0, =gSpriteHandler \n\
/* 08037b6a */ LDR R0, [R0] \n\
/* 08037b6c */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08037b6e */ LDRSH R1, [R7, R3] \n\
/* 08037b70 */ LDR R3, =quiz_show_face_neutral_anim \n\
/* 08037b72 */ B branch_08037b86 \n\
\n\
.ltorg \n\
jump_08037b7c: \n\
/* 08037b7c */ LDR R0, =gSpriteHandler \n\
/* 08037b7e */ LDR R0, [R0] \n\
/* 08037b80 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08037b82 */ LDRSH R1, [R7, R2] \n\
/* 08037b84 */ LDR R3, =quiz_show_face_success_anim \n\
 \n\
branch_08037b86: \n\
/* 08037b86 */ LSLS R2, R4, 0x2 \n\
/* 08037b88 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08037b8a */ LDR R2, [R2] \n\
/* 08037b8c */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08037b8e */ STR R3, [SP] \n\
/* 08037b90 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08037b92 */ STR R3, [SP, 0x4] \n\
/* 08037b94 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08037b96 */ STR R3, [SP, 0x8] \n\
/* 08037b98 */ BL sprite_set_anim \n\
/* 08037b9c */ B branch_08037bc8 \n\
\n\
.ltorg \n\
jump_08037ba8: \n\
/* 08037ba8 */ LDR R0, =gSpriteHandler \n\
/* 08037baa */ LDR R0, [R0] \n\
/* 08037bac */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08037bae */ LDRSH R1, [R7, R3] \n\
/* 08037bb0 */ LDR R3, =quiz_show_face_failure_anim \n\
/* 08037bb2 */ LSLS R2, R4, 0x2 \n\
/* 08037bb4 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08037bb6 */ LDR R2, [R2] \n\
/* 08037bb8 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08037bba */ STR R3, [SP] \n\
/* 08037bbc */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08037bbe */ STR R3, [SP, 0x4] \n\
/* 08037bc0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08037bc2 */ STR R3, [SP, 0x8] \n\
/* 08037bc4 */ BL sprite_set_anim \n\
 \n\
branch_08037bc8: \n\
/* 08037bc8 */ ADD SP, 0xC \n\
/* 08037bca */ POP {R3, R4} \n\
/* 08037bcc */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08037bce */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08037bd0 */ POP {R4-R7} \n\
/* 08037bd2 */ POP {R0} \n\
/* 08037bd4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
