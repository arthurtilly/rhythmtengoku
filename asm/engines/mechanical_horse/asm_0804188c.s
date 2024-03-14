asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804188c \n\
/* 0804188c */ PUSH {R4, R5, LR} \n\
/* 0804188e */ SUB SP, 0xC \n\
/* 08041890 */ LDR R4, =gCurrentEngineData \n\
/* 08041892 */ LDR R1, [R4] \n\
/* 08041894 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08041896 */ ADDS R0, 0x36 @ Add 0x36 to R0 \n\
/* 08041898 */ LDRB R0, [R0] \n\
/* 0804189a */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0804189c */ BNE branch_080418ec \n\
/* 0804189e */ LDR R5, =gSpriteHandler \n\
/* 080418a0 */ LDR R0, [R5] \n\
/* 080418a2 */ MOVS R2, 0x34 @ Set R2 to 0x34 \n\
/* 080418a4 */ LDRSH R1, [R1, R2] \n\
/* 080418a6 */ BL sprite_get_anim_cel \n\
/* 080418aa */ LSLS R0, R0, 0x18 \n\
/* 080418ac */ ASRS R0, R0, 0x18 \n\
/* 080418ae */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 080418b0 */ BLE branch_0804192e \n\
/* 080418b2 */ LDR R0, [R4] \n\
/* 080418b4 */ ADDS R0, 0x36 @ Add 0x36 to R0 \n\
/* 080418b6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080418b8 */ STRB R3, [R0] \n\
/* 080418ba */ LDR R0, [R5] \n\
/* 080418bc */ LDR R2, [R4] \n\
/* 080418be */ MOVS R4, 0x34 @ Set R4 to 0x34 \n\
/* 080418c0 */ LDRSH R1, [R2, R4] \n\
/* 080418c2 */ LDR R4, =mechanical_horse_jockey_anim \n\
/* 080418c4 */ MOVS R5, 0xB3 @ Set R5 to 0xB3 \n\
/* 080418c6 */ LSLS R5, R5, 0x2 \n\
/* 080418c8 */ ADDS R2, R2, R5 @ Set R2 to R2 + R5 \n\
/* 080418ca */ LDRB R2, [R2] \n\
/* 080418cc */ LSLS R2, R2, 0x2 \n\
/* 080418ce */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 080418d0 */ LDR R2, [R2] \n\
/* 080418d2 */ STR R3, [SP] \n\
/* 080418d4 */ STR R3, [SP, 0x4] \n\
/* 080418d6 */ STR R3, [SP, 0x8] \n\
/* 080418d8 */ BL sprite_set_anim \n\
/* 080418dc */ B branch_0804192e \n\
\n\
.ltorg \n\
 \n\
branch_080418ec: \n\
/* 080418ec */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 080418ee */ BNE branch_0804192e \n\
/* 080418f0 */ LDR R5, =gSpriteHandler \n\
/* 080418f2 */ LDR R0, [R5] \n\
/* 080418f4 */ MOVS R2, 0x34 @ Set R2 to 0x34 \n\
/* 080418f6 */ LDRSH R1, [R1, R2] \n\
/* 080418f8 */ BL sprite_get_anim_cel \n\
/* 080418fc */ LSLS R0, R0, 0x18 \n\
/* 080418fe */ ASRS R0, R0, 0x18 \n\
/* 08041900 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08041902 */ BLE branch_0804192e \n\
/* 08041904 */ LDR R0, [R4] \n\
/* 08041906 */ ADDS R0, 0x36 @ Add 0x36 to R0 \n\
/* 08041908 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804190a */ STRB R3, [R0] \n\
/* 0804190c */ LDR R0, [R5] \n\
/* 0804190e */ LDR R2, [R4] \n\
/* 08041910 */ MOVS R4, 0x34 @ Set R4 to 0x34 \n\
/* 08041912 */ LDRSH R1, [R2, R4] \n\
/* 08041914 */ LDR R4, =mechanical_horse_jockey_anim \n\
/* 08041916 */ MOVS R5, 0xB3 @ Set R5 to 0xB3 \n\
/* 08041918 */ LSLS R5, R5, 0x2 \n\
/* 0804191a */ ADDS R2, R2, R5 @ Set R2 to R2 + R5 \n\
/* 0804191c */ LDRB R2, [R2] \n\
/* 0804191e */ LSLS R2, R2, 0x2 \n\
/* 08041920 */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 08041922 */ LDR R2, [R2] \n\
/* 08041924 */ STR R3, [SP] \n\
/* 08041926 */ STR R3, [SP, 0x4] \n\
/* 08041928 */ STR R3, [SP, 0x8] \n\
/* 0804192a */ BL sprite_set_anim \n\
 \n\
branch_0804192e: \n\
/* 0804192e */ ADD SP, 0xC \n\
/* 08041930 */ POP {R4, R5} \n\
/* 08041932 */ POP {R0} \n\
/* 08041934 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
