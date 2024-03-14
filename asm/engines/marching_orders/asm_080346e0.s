asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080346e0 \n\
/* 080346e0 */ PUSH {R4-R7, LR} \n\
/* 080346e2 */ SUB SP, 0x14 \n\
/* 080346e4 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080346e6 */ LDR R7, =gCurrentEngineData \n\
/* 080346e8 */ LDR R0, [R7] \n\
/* 080346ea */ LDRH R6, [R0, 0x3E] \n\
/* 080346ec */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 080346ee */ BNE branch_080347b4 \n\
/* 080346f0 */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 080346f2 */ BEQ branch_08034730 \n\
/* 080346f4 */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 080346f6 */ BCC branch_08034704 \n\
/* 080346f8 */ CMP R5, 0x2 @ Compare R5 and 0x2 \n\
/* 080346fa */ BEQ branch_08034788 \n\
/* 080346fc */ B branch_080347b4 \n\
\n\
.ltorg \n\
 \n\
branch_08034704: \n\
/* 08034704 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08034706 */ BL func_08034100 \n\
/* 0803470a */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803470c */ LDR R0, =gSpriteHandler \n\
/* 0803470e */ LDR R0, [R0] \n\
/* 08034710 */ LDR R1, [R7] \n\
/* 08034712 */ MOVS R3, 0x3C @ Set R3 to 0x3C \n\
/* 08034714 */ LDRSH R1, [R1, R3] \n\
/* 08034716 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08034718 */ STR R3, [SP] \n\
/* 0803471a */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803471c */ STR R3, [SP, 0x4] \n\
/* 0803471e */ STR R6, [SP, 0x8] \n\
/* 08034720 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08034722 */ BL sprite_set_anim \n\
/* 08034726 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08034728 */ B branch_080347ac \n\
\n\
.ltorg \n\
 \n\
branch_08034730: \n\
/* 08034730 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08034732 */ BL func_08034100 \n\
/* 08034736 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08034738 */ LDR R4, =gSpriteHandler \n\
/* 0803473a */ LDR R0, [R4] \n\
/* 0803473c */ LDR R1, [R7] \n\
/* 0803473e */ MOVS R3, 0x3C @ Set R3 to 0x3C \n\
/* 08034740 */ LDRSH R1, [R1, R3] \n\
/* 08034742 */ STR R5, [SP] \n\
/* 08034744 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08034746 */ STR R3, [SP, 0x4] \n\
/* 08034748 */ STR R6, [SP, 0x8] \n\
/* 0803474a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803474c */ BL sprite_set_anim \n\
/* 08034750 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 08034752 */ BL func_08034100 \n\
/* 08034756 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08034758 */ LDR R0, [R4] \n\
/* 0803475a */ MOVS R2, 0x28 @ Set R2 to 0x28 \n\
/* 0803475c */ STR R2, [SP] \n\
/* 0803475e */ LDR R2, =0x480a \n\
/* 08034760 */ STR R2, [SP, 0x4] \n\
/* 08034762 */ STR R5, [SP, 0x8] \n\
/* 08034764 */ STR R6, [SP, 0xC] \n\
/* 08034766 */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
/* 08034768 */ STR R2, [SP, 0x10] \n\
/* 0803476a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803476c */ MOVS R3, 0x1E @ Set R3 to 0x1E \n\
/* 0803476e */ BL sprite_create \n\
/* 08034772 */ LDR R0, =s_guntai_ikari_seqData \n\
/* 08034774 */ BL play_sound \n\
/* 08034778 */ B branch_080347aa \n\
\n\
.ltorg \n\
 \n\
branch_08034788: \n\
/* 08034788 */ MOVS R0, 0xE @ Set R0 to 0xE \n\
/* 0803478a */ BL func_08034100 \n\
/* 0803478e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08034790 */ LDR R0, =gSpriteHandler \n\
/* 08034792 */ LDR R0, [R0] \n\
/* 08034794 */ LDR R1, [R7] \n\
/* 08034796 */ MOVS R3, 0x3C @ Set R3 to 0x3C \n\
/* 08034798 */ LDRSH R1, [R1, R3] \n\
/* 0803479a */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803479c */ STR R3, [SP] \n\
/* 0803479e */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080347a0 */ STR R3, [SP, 0x4] \n\
/* 080347a2 */ STR R6, [SP, 0x8] \n\
/* 080347a4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080347a6 */ BL sprite_set_anim \n\
 \n\
branch_080347aa: \n\
/* 080347aa */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
 \n\
branch_080347ac: \n\
/* 080347ac */ BL ticks_to_frames \n\
/* 080347b0 */ LDR R1, [R7] \n\
/* 080347b2 */ STRH R0, [R1, 0x3E] \n\
 \n\
branch_080347b4: \n\
/* 080347b4 */ ADD SP, 0x14 \n\
/* 080347b6 */ POP {R4-R7} \n\
/* 080347b8 */ POP {R0} \n\
/* 080347ba */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
