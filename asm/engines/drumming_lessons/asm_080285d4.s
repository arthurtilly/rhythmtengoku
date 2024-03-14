asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080285d4 \n\
/* 080285d4 */ PUSH {R4, R5, LR} \n\
/* 080285d6 */ SUB SP, 0xC \n\
/* 080285d8 */ LDR R0, =gCurrentEngineData \n\
/* 080285da */ LDR R4, [R0] \n\
/* 080285dc */ MOVS R0, 0xD5 @ Set R0 to 0xD5 \n\
/* 080285de */ LSLS R0, R0, 0x2 \n\
/* 080285e0 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 080285e2 */ LDR R5, =gSpriteHandler \n\
/* 080285e4 */ LDR R0, [R5] \n\
/* 080285e6 */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 080285e8 */ LDRSH R1, [R4, R2] \n\
/* 080285ea */ LDR R2, =anim_drum_student_use_splash \n\
/* 080285ec */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080285ee */ STR R3, [SP] \n\
/* 080285f0 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080285f2 */ STR R3, [SP, 0x4] \n\
/* 080285f4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080285f6 */ STR R3, [SP, 0x8] \n\
/* 080285f8 */ BL sprite_set_anim \n\
/* 080285fc */ LDR R0, [R5] \n\
/* 080285fe */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 08028600 */ LDRSH R1, [R4, R2] \n\
/* 08028602 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 08028604 */ MOVS R3, 0x64 @ Set R3 to 0x64 \n\
/* 08028606 */ BL sprite_set_x_y \n\
/* 0802860a */ LDR R0, [R5] \n\
/* 0802860c */ MOVS R2, 0xE @ Set R2 to 0xE \n\
/* 0802860e */ LDRSH R1, [R4, R2] \n\
/* 08028610 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08028612 */ BL sprite_set_anim_cel \n\
/* 08028616 */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 08028618 */ STRH R0, [R4, 0x26] \n\
/* 0802861a */ MOVS R0, 0x64 @ Set R0 to 0x64 \n\
/* 0802861c */ STRH R0, [R4, 0x28] \n\
/* 0802861e */ ADD SP, 0xC \n\
/* 08028620 */ POP {R4, R5} \n\
/* 08028622 */ POP {R0} \n\
/* 08028624 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
