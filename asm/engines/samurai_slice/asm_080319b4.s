asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080319b4 \n\
/* 080319b4 */ PUSH {R4-R6, LR} \n\
/* 080319b6 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 080319b8 */ PUSH {R6} \n\
/* 080319ba */ SUB SP, 0x14 \n\
/* 080319bc */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080319be */ LDR R6, =gSpriteHandler \n\
/* 080319c0 */ LDR R0, [R6] \n\
/* 080319c2 */ LDR R1, =anim_med_demon_hop \n\
/* 080319c4 */ MOVS R2, 0x42 @ Set R2 to 0x42 \n\
/* 080319c6 */ STR R2, [SP] \n\
/* 080319c8 */ LDR R2, =0x800a \n\
/* 080319ca */ STR R2, [SP, 0x4] \n\
/* 080319cc */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080319ce */ STR R4, [SP, 0x8] \n\
/* 080319d0 */ STR R4, [SP, 0xC] \n\
/* 080319d2 */ STR R4, [SP, 0x10] \n\
/* 080319d4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080319d6 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 080319d8 */ BL sprite_create \n\
/* 080319dc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080319de */ MOV R8, R1 @ Set R8 to R1 \n\
/* 080319e0 */ STRH R0, [R5] \n\
/* 080319e2 */ LDR R0, [R6] \n\
/* 080319e4 */ LDR R1, =anim_demon_shadow \n\
/* 080319e6 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 080319e8 */ STR R2, [SP] \n\
/* 080319ea */ LDR R2, =0x8014 \n\
/* 080319ec */ STR R2, [SP, 0x4] \n\
/* 080319ee */ STR R4, [SP, 0x8] \n\
/* 080319f0 */ STR R4, [SP, 0xC] \n\
/* 080319f2 */ STR R4, [SP, 0x10] \n\
/* 080319f4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080319f6 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 080319f8 */ BL sprite_create \n\
/* 080319fc */ STRH R0, [R5, 0x2] \n\
/* 080319fe */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08031a00 */ STRB R2, [R5, 0x4] \n\
/* 08031a02 */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 08031a04 */ LSLS R0, R0, 0x8 \n\
/* 08031a06 */ STR R0, [R5, 0x8] \n\
/* 08031a08 */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 08031a0a */ LSLS R0, R0, 0x6 \n\
/* 08031a0c */ STR R0, [R5, 0xC] \n\
/* 08031a0e */ LDR R0, [R6] \n\
/* 08031a10 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08031a12 */ LDRSH R1, [R5, R2] \n\
/* 08031a14 */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 08031a16 */ MOVS R3, 0x28 @ Set R3 to 0x28 \n\
/* 08031a18 */ BL sprite_set_x_y \n\
/* 08031a1c */ LDR R0, [R6] \n\
/* 08031a1e */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08031a20 */ LDRSH R1, [R5, R2] \n\
/* 08031a22 */ LDR R2, [R5, 0x8] \n\
/* 08031a24 */ LSLS R2, R2, 0x8 \n\
/* 08031a26 */ ASRS R2, R2, 0x10 \n\
/* 08031a28 */ LDR R3, [R5, 0xC] \n\
/* 08031a2a */ LSLS R3, R3, 0x8 \n\
/* 08031a2c */ ASRS R3, R3, 0x10 \n\
/* 08031a2e */ BL sprite_set_x_y \n\
/* 08031a32 */ LDR R0, [R6] \n\
/* 08031a34 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08031a36 */ LDRSH R1, [R5, R2] \n\
/* 08031a38 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08031a3a */ BL sprite_set_visible \n\
/* 08031a3e */ LDR R0, [R6] \n\
/* 08031a40 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08031a42 */ LDRSH R1, [R5, R2] \n\
/* 08031a44 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08031a46 */ BL sprite_set_visible \n\
/* 08031a4a */ ADD SP, 0x14 \n\
/* 08031a4c */ POP {R3} \n\
/* 08031a4e */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08031a50 */ POP {R4-R6} \n\
/* 08031a52 */ POP {R0} \n\
/* 08031a54 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
