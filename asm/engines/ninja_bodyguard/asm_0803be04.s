asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803be04 \n\
/* 0803be04 */ PUSH {R4, LR} \n\
/* 0803be06 */ SUB SP, 0xC \n\
/* 0803be08 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803be0a */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803be0c */ STR R0, [SP] \n\
/* 0803be0e */ MOVS R0, 0x1C @ Set R0 to 0x1C \n\
/* 0803be10 */ STR R0, [SP, 0x4] \n\
/* 0803be12 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803be14 */ STR R0, [SP, 0x8] \n\
/* 0803be16 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0803be18 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803be1a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803be1c */ BL scene_set_bg_layer_display \n\
/* 0803be20 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0803be22 */ BNE branch_0803be36 \n\
/* 0803be24 */ LDR R0, =gCurrentEngineData \n\
/* 0803be26 */ LDR R0, [R0] \n\
/* 0803be28 */ MOVS R1, 0xBD @ Set R1 to 0xBD \n\
/* 0803be2a */ LSLS R1, R1, 0x2 \n\
/* 0803be2c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803be2e */ LDR R0, [R0] \n\
/* 0803be30 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803be32 */ BL affine_sprite_set_visible \n\
 \n\
branch_0803be36: \n\
/* 0803be36 */ ADD SP, 0xC \n\
/* 0803be38 */ POP {R4} \n\
/* 0803be3a */ POP {R0} \n\
/* 0803be3c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
