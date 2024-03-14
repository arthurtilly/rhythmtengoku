asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start ninja_bodyguard_engine_start \n\
/* 0803cbe8 */ PUSH {R4-R6, LR} \n\
/* 0803cbea */ SUB SP, 0x14 \n\
/* 0803cbec */ LDR R6, =gCurrentEngineData \n\
/* 0803cbee */ LDR R1, [R6] \n\
/* 0803cbf0 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0803cbf2 */ STRB R0, [R1] \n\
/* 0803cbf4 */ BL ninja_bodyguard_init_gfx1 \n\
/* 0803cbf8 */ BL scene_show_obj_layer \n\
/* 0803cbfc */ STR R4, [SP] \n\
/* 0803cbfe */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 0803cc00 */ STR R0, [SP, 0x4] \n\
/* 0803cc02 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 0803cc04 */ STR R5, [SP, 0x8] \n\
/* 0803cc06 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803cc08 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803cc0a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803cc0c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803cc0e */ BL scene_set_bg_layer_display \n\
/* 0803cc12 */ STR R4, [SP] \n\
/* 0803cc14 */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 0803cc16 */ STR R0, [SP, 0x4] \n\
/* 0803cc18 */ STR R5, [SP, 0x8] \n\
/* 0803cc1a */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803cc1c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803cc1e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803cc20 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803cc22 */ BL scene_set_bg_layer_display \n\
/* 0803cc26 */ LDR R0, [R6] \n\
/* 0803cc28 */ STRB R4, [R0, 0x1] \n\
/* 0803cc2a */ BL func_0803c43c \n\
/* 0803cc2e */ BL func_0803c964 \n\
/* 0803cc32 */ BL func_0803bf14 \n\
/* 0803cc36 */ BL func_0803bda8 \n\
/* 0803cc3a */ MOVS R0, 0x15 @ Set R0 to 0x15 \n\
/* 0803cc3c */ BL ninja_get_anim \n\
/* 0803cc40 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0803cc42 */ LDR R5, =gSpriteHandler \n\
/* 0803cc44 */ LDR R0, [R5] \n\
/* 0803cc46 */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 0803cc48 */ STR R2, [SP] \n\
/* 0803cc4a */ LDR R2, =0x47f6 \n\
/* 0803cc4c */ STR R2, [SP, 0x4] \n\
/* 0803cc4e */ STR R4, [SP, 0x8] \n\
/* 0803cc50 */ STR R4, [SP, 0xC] \n\
/* 0803cc52 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0803cc54 */ LSLS R2, R2, 0x8 \n\
/* 0803cc56 */ STR R2, [SP, 0x10] \n\
/* 0803cc58 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803cc5a */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 0803cc5c */ BL sprite_create \n\
/* 0803cc60 */ LDR R1, [R6] \n\
/* 0803cc62 */ MOVS R2, 0xBB @ Set R2 to 0xBB \n\
/* 0803cc64 */ LSLS R2, R2, 0x2 \n\
/* 0803cc66 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803cc68 */ STRH R0, [R1] \n\
/* 0803cc6a */ LDR R0, [R5] \n\
/* 0803cc6c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803cc6e */ LDRSH R1, [R1, R2] \n\
/* 0803cc70 */ MOVS R2, 0x64 @ Set R2 to 0x64 \n\
/* 0803cc72 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0803cc74 */ BL sprite_set_x_y \n\
/* 0803cc78 */ LDR R0, [R6] \n\
/* 0803cc7a */ LDR R1, =0x2ee \n\
/* 0803cc7c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803cc7e */ STRB R4, [R0] \n\
/* 0803cc80 */ LDR R0, [R6] \n\
/* 0803cc82 */ MOVS R2, 0xBC @ Set R2 to 0xBC \n\
/* 0803cc84 */ LSLS R2, R2, 0x2 \n\
/* 0803cc86 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0803cc88 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0803cc8a */ LSLS R1, R1, 0x1 \n\
/* 0803cc8c */ STRH R1, [R0] \n\
/* 0803cc8e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803cc90 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803cc92 */ BL gameplay_set_input_buttons \n\
/* 0803cc96 */ ADD SP, 0x14 \n\
/* 0803cc98 */ POP {R4-R6} \n\
/* 0803cc9a */ POP {R0} \n\
/* 0803cc9c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
