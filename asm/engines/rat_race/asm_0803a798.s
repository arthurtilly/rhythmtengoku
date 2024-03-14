asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803a798 \n\
/* 0803a798 */ PUSH {R4, R5, LR} \n\
/* 0803a79a */ SUB SP, 0x4 \n\
/* 0803a79c */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803a79e */ LDR R3, =gCurrentEngineData \n\
/* 0803a7a0 */ LDR R0, [R3] \n\
/* 0803a7a2 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803a7a4 */ ADDS R2, 0x80 @ Add 0x80 to R2 \n\
/* 0803a7a6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803a7a8 */ STR R1, [R2] \n\
/* 0803a7aa */ ADDS R0, 0x7C @ Add 0x7C to R0 \n\
/* 0803a7ac */ STRB R4, [R0] \n\
/* 0803a7ae */ ADDS R5, R3, 0x0 @ Set R5 to R3 + 0x0 \n\
/* 0803a7b0 */ CMP R4, 0x6 @ Compare R4 and 0x6 \n\
/* 0803a7b2 */ BLS branch_0803a7b6 \n\
/* 0803a7b4 */ B branch_0803a8d8 \n\
 \n\
branch_0803a7b6: \n\
/* 0803a7b6 */ LSLS R0, R4, 0x2 \n\
/* 0803a7b8 */ LDR R1, =jtbl_0803a7c8 \n\
/* 0803a7ba */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803a7bc */ LDR R0, [R0] \n\
/* 0803a7be */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_0803a7c8: \n\
.word jump_0803a7e4 \n\
.word jump_0803a838 \n\
.word jump_0803a86c \n\
.word branch_0803a8d8 \n\
.word jump_0803a8bc \n\
.word jump_0803a8c6 \n\
.word branch_0803a8d8 \n\
jump_0803a7e4: \n\
/* 0803a7e4 */ LDR R1, [R5] \n\
/* 0803a7e6 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0803a7e8 */ ADDS R2, 0x84 @ Add 0x84 to R2 \n\
/* 0803a7ea */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 0803a7ec */ LSLS R0, R0, 0x7 \n\
/* 0803a7ee */ STR R0, [R2] \n\
/* 0803a7f0 */ LDR R4, =gSpriteHandler \n\
/* 0803a7f2 */ LDR R0, [R4] \n\
/* 0803a7f4 */ ADDS R1, 0x76 @ Add 0x76 to R1 \n\
/* 0803a7f6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a7f8 */ LDRSH R1, [R1, R2] \n\
/* 0803a7fa */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a7fc */ BL sprite_set_visible \n\
/* 0803a800 */ LDR R0, [R4] \n\
/* 0803a802 */ LDR R1, [R5] \n\
/* 0803a804 */ ADDS R1, 0x76 @ Add 0x76 to R1 \n\
/* 0803a806 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a808 */ LDRSH R1, [R1, R2] \n\
/* 0803a80a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a80c */ BL sprite_set_anim_cel \n\
/* 0803a810 */ LDR R0, [R4] \n\
/* 0803a812 */ LDR R1, [R5] \n\
/* 0803a814 */ ADDS R1, 0x78 @ Add 0x78 to R1 \n\
/* 0803a816 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a818 */ LDRSH R1, [R1, R2] \n\
/* 0803a81a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a81c */ BL sprite_set_visible \n\
/* 0803a820 */ LDR R0, [R4] \n\
/* 0803a822 */ LDR R1, [R5] \n\
/* 0803a824 */ ADDS R1, 0x7A @ Add 0x7A to R1 \n\
/* 0803a826 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a828 */ LDRSH R1, [R1, R2] \n\
/* 0803a82a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a82c */ BL sprite_set_visible \n\
/* 0803a830 */ B branch_0803a8d8 \n\
\n\
.ltorg \n\
jump_0803a838: \n\
/* 0803a838 */ LDR R4, =gSpriteHandler \n\
/* 0803a83a */ LDR R0, [R4] \n\
/* 0803a83c */ LDR R1, [R5] \n\
/* 0803a83e */ ADDS R1, 0x78 @ Add 0x78 to R1 \n\
/* 0803a840 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a842 */ LDRSH R1, [R1, R2] \n\
/* 0803a844 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a846 */ BL sprite_set_anim_cel \n\
/* 0803a84a */ LDR R0, [R4] \n\
/* 0803a84c */ LDR R1, [R5] \n\
/* 0803a84e */ ADDS R1, 0x78 @ Add 0x78 to R1 \n\
/* 0803a850 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a852 */ LDRSH R1, [R1, R2] \n\
/* 0803a854 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a856 */ STR R2, [SP] \n\
/* 0803a858 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803a85a */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803a85c */ BL sprite_set_playback \n\
/* 0803a860 */ LDR R0, [R4] \n\
/* 0803a862 */ LDR R1, [R5] \n\
/* 0803a864 */ ADDS R1, 0x78 @ Add 0x78 to R1 \n\
/* 0803a866 */ B branch_0803a8a2 \n\
\n\
.ltorg \n\
jump_0803a86c: \n\
/* 0803a86c */ LDR R0, =s_rat_cat_seqData \n\
/* 0803a86e */ BL play_sound \n\
/* 0803a872 */ LDR R5, =gSpriteHandler \n\
/* 0803a874 */ LDR R0, [R5] \n\
/* 0803a876 */ LDR R4, =gCurrentEngineData \n\
/* 0803a878 */ LDR R1, [R4] \n\
/* 0803a87a */ ADDS R1, 0x7A @ Add 0x7A to R1 \n\
/* 0803a87c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a87e */ LDRSH R1, [R1, R2] \n\
/* 0803a880 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a882 */ BL sprite_set_anim_cel \n\
/* 0803a886 */ LDR R0, [R5] \n\
/* 0803a888 */ LDR R1, [R4] \n\
/* 0803a88a */ ADDS R1, 0x7A @ Add 0x7A to R1 \n\
/* 0803a88c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a88e */ LDRSH R1, [R1, R2] \n\
/* 0803a890 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a892 */ STR R2, [SP] \n\
/* 0803a894 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803a896 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803a898 */ BL sprite_set_playback \n\
/* 0803a89c */ LDR R0, [R5] \n\
/* 0803a89e */ LDR R1, [R4] \n\
/* 0803a8a0 */ ADDS R1, 0x7A @ Add 0x7A to R1 \n\
 \n\
branch_0803a8a2: \n\
/* 0803a8a2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a8a4 */ LDRSH R1, [R1, R2] \n\
/* 0803a8a6 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803a8a8 */ BL sprite_set_visible \n\
/* 0803a8ac */ B branch_0803a8d8 \n\
\n\
.ltorg \n\
jump_0803a8bc: \n\
/* 0803a8bc */ LDR R0, [R5] \n\
/* 0803a8be */ ADDS R0, 0x84 @ Add 0x84 to R0 \n\
/* 0803a8c0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803a8c2 */ STR R1, [R0] \n\
/* 0803a8c4 */ B branch_0803a8d8 \n\
jump_0803a8c6: \n\
/* 0803a8c6 */ LDR R0, =gSpriteHandler \n\
/* 0803a8c8 */ LDR R0, [R0] \n\
/* 0803a8ca */ LDR R1, [R5] \n\
/* 0803a8cc */ ADDS R1, 0x76 @ Add 0x76 to R1 \n\
/* 0803a8ce */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803a8d0 */ LDRSH R1, [R1, R2] \n\
/* 0803a8d2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803a8d4 */ BL sprite_set_visible \n\
 \n\
branch_0803a8d8: \n\
/* 0803a8d8 */ ADD SP, 0x4 \n\
/* 0803a8da */ POP {R4, R5} \n\
/* 0803a8dc */ POP {R0} \n\
/* 0803a8de */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
