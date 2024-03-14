asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start rat_race_cue_update_stop \n\
/* 0803a564 */ PUSH {R4, LR} \n\
/* 0803a566 */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 0803a568 */ LDR R0, =gCurrentEngineData \n\
/* 0803a56a */ LDR R1, [R0] \n\
/* 0803a56c */ LDR R0, [R3, 0x4] \n\
/* 0803a56e */ LDR R1, [R1, 0x34] \n\
/* 0803a570 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0803a572 */ STR R0, [R3, 0x4] \n\
/* 0803a574 */ ASRS R2, R0, 0x8 \n\
/* 0803a576 */ MOVS R0, 0x50 @ Set R0 to 0x50 \n\
/* 0803a578 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0803a57a */ CMP R2, R0 @ Check R2 - R0 \n\
/* 0803a57c */ BLE branch_0803a59c \n\
/* 0803a57e */ LDR R0, =gSpriteHandler \n\
/* 0803a580 */ LDR R0, [R0] \n\
/* 0803a582 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803a584 */ LDRSH R1, [R3, R4] \n\
/* 0803a586 */ LSLS R2, R2, 0x10 \n\
/* 0803a588 */ ASRS R2, R2, 0x10 \n\
/* 0803a58a */ BL sprite_set_x \n\
/* 0803a58e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803a590 */ B branch_0803a59e \n\
\n\
.ltorg \n\
 \n\
branch_0803a59c: \n\
/* 0803a59c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0803a59e: \n\
/* 0803a59e */ POP {R4} \n\
/* 0803a5a0 */ POP {R1} \n\
/* 0803a5a2 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
