asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080378d8 \n\
/* 080378d8 */ PUSH {R4, R5, LR} \n\
/* 080378da */ SUB SP, 0x14 \n\
/* 080378dc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080378de */ BNE branch_080378f0 \n\
/* 080378e0 */ LDR R0, =gCurrentEngineData \n\
/* 080378e2 */ LDR R0, [R0] \n\
/* 080378e4 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080378e6 */ ADDS R5, 0x8 @ Add 0x8 to R5 \n\
/* 080378e8 */ B branch_080378f8 \n\
\n\
.ltorg \n\
 \n\
branch_080378f0: \n\
/* 080378f0 */ LDR R0, =gCurrentEngineData \n\
/* 080378f2 */ LDR R0, [R0] \n\
/* 080378f4 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080378f6 */ ADDS R5, 0x1C @ Add 0x1C to R5 \n\
 \n\
branch_080378f8: \n\
/* 080378f8 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080378fa */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080378fc */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080378fe */ BEQ branch_0803793c \n\
/* 08037900 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08037902 */ BGT branch_08037910 \n\
/* 08037904 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08037906 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08037908 */ BEQ branch_08037948 \n\
/* 0803790a */ B branch_08037a54 \n\
\n\
.ltorg \n\
 \n\
branch_08037910: \n\
/* 08037910 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08037912 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08037914 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08037916 */ BEQ branch_0803791a \n\
/* 08037918 */ B branch_08037a54 \n\
 \n\
branch_0803791a: \n\
/* 0803791a */ LDR R4, =gSpriteHandler \n\
/* 0803791c */ LDR R0, [R4] \n\
/* 0803791e */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08037920 */ LDRSH R1, [R5, R2] \n\
/* 08037922 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08037924 */ BL sprite_set_anim_cel \n\
/* 08037928 */ LDR R0, [R4] \n\
/* 0803792a */ MOVS R2, 0xE @ Set R2 to 0xE \n\
/* 0803792c */ LDRSH R1, [R5, R2] \n\
/* 0803792e */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08037930 */ BL sprite_set_anim_cel \n\
/* 08037934 */ B branch_08037a5a \n\
\n\
.ltorg \n\
 \n\
branch_0803793c: \n\
/* 0803793c */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0803793e */ LDRSH R1, [R5, R0] \n\
/* 08037940 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08037942 */ BL func_0803785c \n\
/* 08037946 */ B branch_08037a5a \n\
 \n\
branch_08037948: \n\
/* 08037948 */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 0803794a */ LDRSH R1, [R5, R2] \n\
/* 0803794c */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 0803794e */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08037950 */ BL func_0803785c \n\
/* 08037954 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 08037956 */ LDRSH R0, [R5, R1] \n\
/* 08037958 */ CMP R0, 0x78 @ Compare R0 and 0x78 \n\
/* 0803795a */ BEQ branch_080379c4 \n\
/* 0803795c */ CMP R0, 0x78 @ Compare R0 and 0x78 \n\
/* 0803795e */ BGT branch_08037966 \n\
/* 08037960 */ CMP R0, 0x64 @ Compare R0 and 0x64 \n\
/* 08037962 */ BEQ branch_0803796c \n\
/* 08037964 */ B branch_08037a5a \n\
 \n\
branch_08037966: \n\
/* 08037966 */ CMP R0, 0x96 @ Compare R0 and 0x96 \n\
/* 08037968 */ BEQ branch_08037a1c \n\
/* 0803796a */ B branch_08037a5a \n\
 \n\
branch_0803796c: \n\
/* 0803796c */ LDR R4, =gSpriteHandler \n\
/* 0803796e */ LDR R0, [R4] \n\
/* 08037970 */ LDR R5, =gCurrentEngineData \n\
/* 08037972 */ LDR R1, [R5] \n\
/* 08037974 */ MOVS R2, 0x28 @ Set R2 to 0x28 \n\
/* 08037976 */ LDRSH R1, [R1, R2] \n\
/* 08037978 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803797a */ BL sprite_set_visible \n\
/* 0803797e */ LDR R0, [R4] \n\
/* 08037980 */ LDR R1, [R5] \n\
/* 08037982 */ MOVS R2, 0x2A @ Set R2 to 0x2A \n\
/* 08037984 */ LDRSH R1, [R1, R2] \n\
/* 08037986 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08037988 */ BL sprite_set_visible \n\
/* 0803798c */ LDR R0, [R4] \n\
/* 0803798e */ LDR R1, =anim_quiz_show_explode_player_podium \n\
/* 08037990 */ MOVS R2, 0x98 @ Set R2 to 0x98 \n\
/* 08037992 */ STR R2, [SP] \n\
/* 08037994 */ LDR R2, =0x8814 \n\
/* 08037996 */ STR R2, [SP, 0x4] \n\
/* 08037998 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0803799a */ STR R2, [SP, 0x8] \n\
/* 0803799c */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0803799e */ STR R2, [SP, 0xC] \n\
/* 080379a0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080379a2 */ STR R2, [SP, 0x10] \n\
/* 080379a4 */ MOVS R3, 0x90 @ Set R3 to 0x90 \n\
/* 080379a6 */ BL sprite_create \n\
/* 080379aa */ LDR R1, =s_f_quiz_blast_ply_seqData \n\
/* 080379ac */ B branch_08037a40 \n\
\n\
.ltorg \n\
 \n\
branch_080379c4: \n\
/* 080379c4 */ LDR R4, =gSpriteHandler \n\
/* 080379c6 */ LDR R0, [R4] \n\
/* 080379c8 */ LDR R5, =gCurrentEngineData \n\
/* 080379ca */ LDR R1, [R5] \n\
/* 080379cc */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 080379ce */ LDRSH R1, [R1, R2] \n\
/* 080379d0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080379d2 */ BL sprite_set_visible \n\
/* 080379d6 */ LDR R0, [R4] \n\
/* 080379d8 */ LDR R1, [R5] \n\
/* 080379da */ MOVS R2, 0x16 @ Set R2 to 0x16 \n\
/* 080379dc */ LDRSH R1, [R1, R2] \n\
/* 080379de */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080379e0 */ BL sprite_set_visible \n\
/* 080379e4 */ LDR R0, [R4] \n\
/* 080379e6 */ LDR R1, =anim_quiz_show_explode_host_podium \n\
/* 080379e8 */ MOVS R2, 0x98 @ Set R2 to 0x98 \n\
/* 080379ea */ STR R2, [SP] \n\
/* 080379ec */ LDR R2, =0x8814 \n\
/* 080379ee */ STR R2, [SP, 0x4] \n\
/* 080379f0 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080379f2 */ STR R2, [SP, 0x8] \n\
/* 080379f4 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080379f6 */ STR R2, [SP, 0xC] \n\
/* 080379f8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080379fa */ STR R2, [SP, 0x10] \n\
/* 080379fc */ MOVS R3, 0x58 @ Set R3 to 0x58 \n\
/* 080379fe */ BL sprite_create \n\
/* 08037a02 */ LDR R1, =s_f_quiz_blast_com_seqData \n\
/* 08037a04 */ B branch_08037a40 \n\
\n\
.ltorg \n\
 \n\
branch_08037a1c: \n\
/* 08037a1c */ LDR R0, =gSpriteHandler \n\
/* 08037a1e */ LDR R0, [R0] \n\
/* 08037a20 */ LDR R1, =anim_quiz_show_explode_sign \n\
/* 08037a22 */ MOVS R2, 0x2D @ Set R2 to 0x2D \n\
/* 08037a24 */ STR R2, [SP] \n\
/* 08037a26 */ MOVS R2, 0x88 @ Set R2 to 0x88 \n\
/* 08037a28 */ LSLS R2, R2, 0x8 \n\
/* 08037a2a */ STR R2, [SP, 0x4] \n\
/* 08037a2c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08037a2e */ STR R2, [SP, 0x8] \n\
/* 08037a30 */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 08037a32 */ STR R2, [SP, 0xC] \n\
/* 08037a34 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08037a36 */ STR R2, [SP, 0x10] \n\
/* 08037a38 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08037a3a */ BL sprite_create \n\
/* 08037a3e */ LDR R1, =s_f_quiz_blast_plate_seqData \n\
 \n\
branch_08037a40: \n\
/* 08037a40 */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 08037a42 */ BL play_sound_in_player \n\
/* 08037a46 */ B branch_08037a5a \n\
\n\
.ltorg \n\
 \n\
branch_08037a54: \n\
/* 08037a54 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08037a56 */ BL func_0803785c \n\
 \n\
branch_08037a5a: \n\
/* 08037a5a */ ADD SP, 0x14 \n\
/* 08037a5c */ POP {R4, R5} \n\
/* 08037a5e */ POP {R0} \n\
/* 08037a60 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
