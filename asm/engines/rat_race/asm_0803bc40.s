asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803bc40 \n\
/* 0803bc40 */ PUSH {R4, R5, LR} \n\
/* 0803bc42 */ SUB SP, 0x14 \n\
/* 0803bc44 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803bc46 */ LDR R5, =gSpriteHandler \n\
/* 0803bc48 */ LDR R0, [R5] \n\
/* 0803bc4a */ LDR R1, =anim_rat_race_plates \n\
/* 0803bc4c */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 0803bc4e */ STR R2, [SP] \n\
/* 0803bc50 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 0803bc52 */ STR R2, [SP, 0x4] \n\
/* 0803bc54 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803bc56 */ STR R2, [SP, 0x8] \n\
/* 0803bc58 */ STR R2, [SP, 0xC] \n\
/* 0803bc5a */ STR R2, [SP, 0x10] \n\
/* 0803bc5c */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 0803bc5e */ BL sprite_create \n\
/* 0803bc62 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803bc64 */ STRH R0, [R4] \n\
/* 0803bc66 */ STRB R1, [R4, 0x2] \n\
/* 0803bc68 */ MOVS R2, 0xBC @ Set R2 to 0xBC \n\
/* 0803bc6a */ LSLS R2, R2, 0x9 \n\
/* 0803bc6c */ STR R2, [R4, 0x4] \n\
/* 0803bc6e */ LDR R0, [R5] \n\
/* 0803bc70 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803bc72 */ LDRSH R1, [R4, R3] \n\
/* 0803bc74 */ ASRS R2, R2, 0x8 \n\
/* 0803bc76 */ MOVS R3, 0x7E @ Set R3 to 0x7E \n\
/* 0803bc78 */ BL sprite_set_x_y \n\
/* 0803bc7c */ LDR R0, [R5] \n\
/* 0803bc7e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803bc80 */ LDRSH R1, [R4, R2] \n\
/* 0803bc82 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803bc84 */ BL sprite_set_visible \n\
/* 0803bc88 */ ADD SP, 0x14 \n\
/* 0803bc8a */ POP {R4, R5} \n\
/* 0803bc8c */ POP {R0} \n\
/* 0803bc8e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
