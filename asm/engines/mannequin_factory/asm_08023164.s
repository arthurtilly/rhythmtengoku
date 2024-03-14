asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08023164 \n\
/* 08023164 */ PUSH {R4, LR} \n\
/* 08023166 */ SUB SP, 0x14 \n\
/* 08023168 */ LDR R0, =gSpriteHandler \n\
/* 0802316a */ LDR R0, [R0] \n\
/* 0802316c */ LDR R1, =anim_mannequin_game_over \n\
/* 0802316e */ MOVS R2, 0x48 @ Set R2 to 0x48 \n\
/* 08023170 */ STR R2, [SP] \n\
/* 08023172 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08023174 */ LSLS R2, R2, 0x4 \n\
/* 08023176 */ STR R2, [SP, 0x4] \n\
/* 08023178 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 0802317a */ STR R4, [SP, 0x8] \n\
/* 0802317c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802317e */ STR R2, [SP, 0xC] \n\
/* 08023180 */ STR R2, [SP, 0x10] \n\
/* 08023182 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08023184 */ BL sprite_create \n\
/* 08023188 */ LDR R2, =gCurrentEngineData \n\
/* 0802318a */ LDR R0, [R2] \n\
/* 0802318c */ LDR R1, =0x00000414 \n\
/* 0802318e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08023190 */ STRB R4, [R0] \n\
/* 08023192 */ LDR R0, =D_030046a8 \n\
/* 08023194 */ LDR R1, [R0] \n\
/* 08023196 */ MOVS R0, 0xAA @ Set R0 to 0xAA \n\
/* 08023198 */ LSLS R0, R0, 0x2 \n\
/* 0802319a */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0802319c */ LDR R0, [R2] \n\
/* 0802319e */ LDR R2, =0x00000424 \n\
/* 080231a0 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080231a2 */ LDR R0, [R0] \n\
/* 080231a4 */ STR R0, [R1] \n\
/* 080231a6 */ ADD SP, 0x14 \n\
/* 080231a8 */ POP {R4} \n\
/* 080231aa */ POP {R0} \n\
/* 080231ac */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
