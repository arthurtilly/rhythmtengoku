asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080284a4 \n\
/* 080284a4 */ PUSH {R4, R5, LR} \n\
/* 080284a6 */ SUB SP, 0xC \n\
/* 080284a8 */ LDR R0, =gCurrentEngineData \n\
/* 080284aa */ LDR R4, [R0] \n\
/* 080284ac */ MOVS R0, 0xD5 @ Set R0 to 0xD5 \n\
/* 080284ae */ LSLS R0, R0, 0x2 \n\
/* 080284b0 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 080284b2 */ LDR R5, =gSpriteHandler \n\
/* 080284b4 */ LDR R0, [R5] \n\
/* 080284b6 */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 080284b8 */ LDRSH R1, [R4, R2] \n\
/* 080284ba */ LDR R2, =anim_drum_student_use_snare_r \n\
/* 080284bc */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080284be */ STR R3, [SP] \n\
/* 080284c0 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 080284c2 */ STR R3, [SP, 0x4] \n\
/* 080284c4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080284c6 */ STR R3, [SP, 0x8] \n\
/* 080284c8 */ BL sprite_set_anim \n\
/* 080284cc */ LDR R0, [R5] \n\
/* 080284ce */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 080284d0 */ LDRSH R1, [R4, R2] \n\
/* 080284d2 */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 080284d4 */ MOVS R3, 0x64 @ Set R3 to 0x64 \n\
/* 080284d6 */ BL sprite_set_x_y \n\
/* 080284da */ LDR R0, [R5] \n\
/* 080284dc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080284de */ LDRSH R1, [R4, R2] \n\
/* 080284e0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080284e2 */ BL sprite_set_anim_cel \n\
/* 080284e6 */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 080284e8 */ STRH R0, [R4, 0x2A] \n\
/* 080284ea */ MOVS R0, 0x64 @ Set R0 to 0x64 \n\
/* 080284ec */ STRH R0, [R4, 0x2C] \n\
/* 080284ee */ ADD SP, 0xC \n\
/* 080284f0 */ POP {R4, R5} \n\
/* 080284f2 */ POP {R0} \n\
/* 080284f4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
