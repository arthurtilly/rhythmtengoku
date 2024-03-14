asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08038f2c \n\
/* 08038f2c */ PUSH {R4-R6, LR} \n\
/* 08038f2e */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08038f30 */ PUSH {R6} \n\
/* 08038f32 */ SUB SP, 0x14 \n\
/* 08038f34 */ LDR R0, =gCurrentEngineData \n\
/* 08038f36 */ LDR R6, [R0] \n\
/* 08038f38 */ ADDS R4, R6, 0x4 @ Set R4 to R6 + 0x4 \n\
/* 08038f3a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08038f3c */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 08038f3e */ STRB R5, [R4, 0x2] \n\
/* 08038f40 */ STR R3, [R4, 0xC] \n\
/* 08038f42 */ STR R3, [R4, 0x10] \n\
/* 08038f44 */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 08038f46 */ LSLS R0, R0, 0x8 \n\
/* 08038f48 */ STR R0, [R4, 0x4] \n\
/* 08038f4a */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08038f4c */ LSLS R0, R0, 0x8 \n\
/* 08038f4e */ STR R0, [R4, 0x8] \n\
/* 08038f50 */ LDR R0, =gSpriteHandler \n\
/* 08038f52 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08038f54 */ LDR R0, [R0] \n\
/* 08038f56 */ LDR R1, =anim_bunny_hop_run \n\
/* 08038f58 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08038f5a */ STR R2, [SP] \n\
/* 08038f5c */ LDR R2, =0x8005 \n\
/* 08038f5e */ STR R2, [SP, 0x4] \n\
/* 08038f60 */ STR R5, [SP, 0x8] \n\
/* 08038f62 */ STR R3, [SP, 0xC] \n\
/* 08038f64 */ STR R3, [SP, 0x10] \n\
/* 08038f66 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08038f68 */ MOVS R3, 0xC4 @ Set R3 to 0xC4 \n\
/* 08038f6a */ BL sprite_create \n\
/* 08038f6e */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08038f70 */ STRH R0, [R6, 0x4] \n\
/* 08038f72 */ BL scene_affine_group_alloc \n\
/* 08038f76 */ STRB R0, [R4, 0x16] \n\
/* 08038f78 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 08038f7a */ LDRSH R0, [R6, R1] \n\
/* 08038f7c */ MOVS R1, 0x16 @ Set R1 to 0x16 \n\
/* 08038f7e */ LDRSB R1, [R4, R1] \n\
/* 08038f80 */ BL assign_sprite_affine_param \n\
/* 08038f84 */ STRB R5, [R4, 0x17] \n\
/* 08038f86 */ STRB R5, [R4, 0x18] \n\
/* 08038f88 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08038f8a */ LDR R0, [R2] \n\
/* 08038f8c */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08038f8e */ LDRSH R1, [R6, R2] \n\
/* 08038f90 */ LDR R2, [R4, 0x4] \n\
/* 08038f92 */ LSLS R2, R2, 0x8 \n\
/* 08038f94 */ ASRS R2, R2, 0x10 \n\
/* 08038f96 */ LDR R3, [R4, 0x8] \n\
/* 08038f98 */ LSLS R3, R3, 0x8 \n\
/* 08038f9a */ ASRS R3, R3, 0x10 \n\
/* 08038f9c */ BL sprite_set_x_y \n\
/* 08038fa0 */ ADD SP, 0x14 \n\
/* 08038fa2 */ POP {R3} \n\
/* 08038fa4 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08038fa6 */ POP {R4-R6} \n\
/* 08038fa8 */ POP {R0} \n\
/* 08038faa */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
