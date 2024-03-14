asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080324b8 \n\
/* 080324b8 */ PUSH {R4-R6, LR} \n\
/* 080324ba */ SUB SP, 0x14 \n\
/* 080324bc */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080324be */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 080324c0 */ STRB R4, [R5, 0x1C] \n\
/* 080324c2 */ BL scene_affine_group_alloc \n\
/* 080324c6 */ STRB R0, [R5, 0x2] \n\
/* 080324c8 */ LDR R6, =gSpriteHandler \n\
/* 080324ca */ LDR R0, [R6] \n\
/* 080324cc */ LDR R1, =anim_med_demon_hop \n\
/* 080324ce */ MOVS R2, 0x42 @ Set R2 to 0x42 \n\
/* 080324d0 */ STR R2, [SP] \n\
/* 080324d2 */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 080324d4 */ STR R2, [SP, 0x4] \n\
/* 080324d6 */ STR R4, [SP, 0x8] \n\
/* 080324d8 */ STR R4, [SP, 0xC] \n\
/* 080324da */ STR R4, [SP, 0x10] \n\
/* 080324dc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080324de */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 080324e0 */ BL sprite_create \n\
/* 080324e4 */ STRH R0, [R5] \n\
/* 080324e6 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080324e8 */ LDRSH R0, [R5, R1] \n\
/* 080324ea */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 080324ec */ LDRSB R1, [R5, R1] \n\
/* 080324ee */ BL assign_sprite_affine_param \n\
/* 080324f2 */ LDR R0, [R6] \n\
/* 080324f4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080324f6 */ LDRSH R1, [R5, R2] \n\
/* 080324f8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080324fa */ BL sprite_set_visible \n\
/* 080324fe */ ADD SP, 0x14 \n\
/* 08032500 */ POP {R4-R6} \n\
/* 08032502 */ POP {R0} \n\
/* 08032504 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
