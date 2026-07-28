asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803e908 \n\
/* 0803e908 */ PUSH {R4, LR} \n\
/* 0803e90a */ SUB SP, 0xC \n\
/* 0803e90c */ LDR R4, =gCurrentEngineData \n\
/* 0803e90e */ LDR R0, [R4] \n\
/* 0803e910 */ MOVS R2, 0xE7 @ Set R2 to 0xE7 \n\
/* 0803e912 */ LSLS R2, R2, 0x2 \n\
/* 0803e914 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0803e916 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803e918 */ LDRSH R0, [R1, R2] \n\
/* 0803e91a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803e91c */ BLT branch_0803e946 \n\
/* 0803e91e */ LDR R0, =gSpriteHandler \n\
/* 0803e920 */ LDR R0, [R0] \n\
/* 0803e922 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803e924 */ LDRSH R1, [R1, R2] \n\
/* 0803e926 */ LDR R2, =anim_toss_remix_5_soshi_strum_launch \n\
/* 0803e928 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803e92a */ STR R3, [SP] \n\
/* 0803e92c */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803e92e */ STR R3, [SP, 0x4] \n\
/* 0803e930 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803e932 */ STR R3, [SP, 0x8] \n\
/* 0803e934 */ BL sprite_set_anim \n\
/* 0803e938 */ MOVS R0, 0x3C @ Set R0 to 0x3C \n\
/* 0803e93a */ BL ticks_to_frames \n\
/* 0803e93e */ LDR R1, [R4] \n\
/* 0803e940 */ LDR R2, =0x39e \n\
/* 0803e942 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803e944 */ STRH R0, [R1] \n\
 \n\
branch_0803e946: \n\
/* 0803e946 */ ADD SP, 0xC \n\
/* 0803e948 */ POP {R4} \n\
/* 0803e94a */ POP {R0} \n\
/* 0803e94c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
