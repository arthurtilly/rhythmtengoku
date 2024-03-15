asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start drum_intro_engine_start \n\
	PUSH {R4-R7, LR} \n\
	MOV R7, R10 \n\
	MOV R6, R9 \n\
	MOV R5, R8 \n\
	PUSH {R5, R6, R7} \n\
	SUB SP, 0x28 \n\
	STR R0, [SP, 0x14] \n\
	LDR R0, =gCurrentEngineData \n\
	LDR R0, [R0] \n\
	MOVS R1, 0xd5 \n\
	LSLS R1, R1, 0x2 \n\
	ADDS R7, R0, R1 \n\
	MOVS R4, 0x0 \n\
	MOV R2, SP \n\
	LDRB R2, [R2, 0x14] \n\
	STRB R2, [R0] \n\
	BL drum_intro_init_gfx1 \n\
	BL scene_show_obj_layer \n\
	MOVS R2, 0x40 \n\
	RSBS R2, R2, 0x0 \n\
	MOVS R3, 0x10 \n\
	RSBS R3, R3, 0x0 \n\
	STR R4, [SP] \n\
	MOVS R0, 0x1d \n\
	STR R0, [SP, 0x4] \n\
	MOVS R0, 0x1 \n\
	STR R0, [SP, 0x8] \n\
	MOVS R1, 0x0 \n\
	BL scene_set_bg_layer_display \n\
	BL func_08024bd0 \n\
	LDR R4, =anim_drum_samurai_body \n\
	CMP R0, 0x0 \n\
	BEQ branch_08024344 \n\
	LDR R4, =anim_drum_player_body \n\
 \n\
branch_08024344: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R1, =gSpriteHandler \n\
	LDR R0, [R1] \n\
	MOVS R1, 0x78 \n\
	STR R1, [SP] \n\
	MOVS R1, 0x90 \n\
	LSLS R1, R1, 0x7 \n\
	STR R1, [SP, 0x4] \n\
	MOVS R1, 0x1 \n\
	RSBS R1, R1, 0x0 \n\
	STR R1, [SP, 0x8] \n\
	MOVS R1, 0x0 \n\
	STR R1, [SP, 0xc] \n\
	STR R1, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x0 \n\
	MOVS R3, 0x78 \n\
	BL sprite_create \n\
	STRH R0, [R7, 0x2] \n\
	BL func_08024bd0 \n\
	LDR R4, =anim_drum_samurai_head \n\
	CMP R0, 0x0 \n\
	BEQ branch_0802437e \n\
	LDR R4, =anim_drum_player_head \n\
 \n\
branch_0802437e: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R2, =gSpriteHandler \n\
	LDR R0, [R2] \n\
	MOVS R1, 0x78 \n\
	STR R1, [SP] \n\
	LDR R1, =0x00004805\n\
	STR R1, [SP, 0x4] \n\
	MOVS R1, 0x1 \n\
	STR R1, [SP, 0x8] \n\
	MOVS R1, 0x7f \n\
	STR R1, [SP, 0xc] \n\
	MOVS R1, 0x0 \n\
	STR R1, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x0 \n\
	MOVS R3, 0x78 \n\
	BL sprite_create \n\
	STRH R0, [R7] \n\
	BL func_08024bd0 \n\
	LDR R4, =anim_drum_samurai_waist \n\
	CMP R0, 0x0 \n\
	BEQ branch_080243b6 \n\
	LDR R4, =anim_drum_player_waist \n\
 \n\
branch_080243b6: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R1, =gSpriteHandler \n\
	LDR R0, [R1] \n\
	MOVS R1, 0x78 \n\
	STR R1, [SP] \n\
	LDR R1, =0x000047fb \n\
	STR R1, [SP, 0x4] \n\
	MOVS R1, 0x1 \n\
	STR R1, [SP, 0x8] \n\
	MOVS R1, 0x7f \n\
	STR R1, [SP, 0xc] \n\
	MOVS R1, 0x0 \n\
	STR R1, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x0 \n\
	MOVS R3, 0x78 \n\
	BL sprite_create \n\
	STRH R0, [R7, 0x4] \n\
	BL func_08024bd0 \n\
	LDR R4, =anim_drum_samurai_use_snare_l \n\
	CMP R0, 0x0 \n\
	BEQ branch_080243ee \n\
	LDR R4, =anim_drum_player_use_snare_l \n\
 \n\
branch_080243ee: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R2, =gSpriteHandler \n\
	LDR R0, [R2] \n\
	MOVS R1, 0x57 \n\
	STR R1, [SP] \n\
	LDR R1, =0x000047ec \n\
	STR R1, [SP, 0x4] \n\
	MOVS R1, 0x1 \n\
	STR R1, [SP, 0x8] \n\
	MOVS R1, 0x7f \n\
	STR R1, [SP, 0xc] \n\
	MOVS R1, 0x0 \n\
	STR R1, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x7f \n\
	MOVS R3, 0x7f \n\
	BL sprite_create \n\
	STRH R0, [R7, 0x6] \n\
	BL func_08024bd0 \n\
	LDR R4, =anim_drum_samurai_use_snare_r \n\
	CMP R0, 0x0 \n\
	BEQ branch_08024426 \n\
	LDR R4, =anim_drum_player_use_snare_r \n\
 \n\
branch_08024426: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R1, =gSpriteHandler \n\
	LDR R0, [R1] \n\
	MOVS R1, 0x55 \n\
	STR R1, [SP] \n\
	LDR R1, =0x0000480a \n\
	STR R1, [SP, 0x4] \n\
	MOVS R1, 0x1 \n\
	STR R1, [SP, 0x8] \n\
	MOVS R1, 0x7f \n\
	STR R1, [SP, 0xc] \n\
	MOVS R1, 0x0 \n\
	STR R1, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x7f \n\
	MOVS R3, 0x82 \n\
	BL sprite_create \n\
	STRH R0, [R7, 0x8] \n\
	BL func_08024bd0 \n\
	LDR R4, =anim_drum_samurai_use_pedal_l \n\
	CMP R0, 0x0 \n\
	BEQ branch_0802445e \n\
	LDR R4, =anim_drum_player_use_pedal_l \n\
 \n\
branch_0802445e: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R2, =gSpriteHandler \n\
	LDR R0, [R2] \n\
	MOVS R1, 0x78 \n\
	MOV R9, R1 \n\
	STR R1, [SP] \n\
	LDR R1, =0x000047f6 \n\
	STR R1, [SP, 0x4] \n\
	MOVS R2, 0x1 \n\
	MOV R8, R2 \n\
	STR R2, [SP, 0x8] \n\
	MOVS R6, 0x7f \n\
	STR R6, [SP, 0xc] \n\
	MOVS R5, 0x0 \n\
	STR R5, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x2 \n\
	MOVS R3, 0x78 \n\
	BL sprite_create \n\
	STRH R0, [R7, 0xa] \n\
	BL func_08024bd0 \n\
	LDR R4, =anim_drum_samurai_use_pedal_r \n\
	CMP R0, 0x0 \n\
	BEQ branch_0802449a \n\
	LDR R4, =anim_drum_player_use_pedal_r \n\
 \n\
branch_0802449a: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R1, =gSpriteHandler \n\
	LDR R0, [R1] \n\
	MOV R2, R9 \n\
	STR R2, [SP] \n\
	LDR R1, =0x00004814 \n\
	STR R1, [SP, 0x4] \n\
	MOV R1, R8 \n\
	STR R1, [SP, 0x8] \n\
	STR R6, [SP, 0xc] \n\
	STR R5, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x2 \n\
	MOVS R3, 0x78 \n\
	BL sprite_create \n\
	STRH R0, [R7, 0xc] \n\
	BL func_08024bd0 \n\
	LDR R4, =anim_drum_samurai_kit_bass_l \n\
	CMP R0, 0x0 \n\
	BEQ branch_080244ce \n\
	LDR R4, =anim_drum_player_kit_bass_l \n\
 \n\
branch_080244ce: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R2, =gSpriteHandler \n\
	LDR R0, [R2] \n\
	MOV R1, R9 \n\
	STR R1, [SP] \n\
	LDR R1, =0x00004864 \n\
	STR R1, [SP, 0x4] \n\
	MOV R2, R8 \n\
	STR R2, [SP, 0x8] \n\
	STR R6, [SP, 0xc] \n\
	STR R5, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x0 \n\
	MOVS R3, 0x78 \n\
	BL sprite_create \n\
	STRH R0, [R7, 0x12] \n\
	BL func_08024bd0 \n\
	LDR R4, =anim_drum_samurai_kit_bass_r \n\
	CMP R0, 0x0 \n\
	BEQ branch_08024502 \n\
	LDR R4, =anim_drum_player_kit_bass_r \n\
 \n\
branch_08024502: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R1, =gSpriteHandler \n\
	LDR R0, [R1] \n\
	MOV R2, R9 \n\
	STR R2, [SP] \n\
	LDR R1, =0x0000486e \n\
	STR R1, [SP, 0x4] \n\
	MOV R1, R8 \n\
	STR R1, [SP, 0x8] \n\
	STR R6, [SP, 0xc] \n\
	STR R5, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x0 \n\
	MOVS R3, 0x78 \n\
	BL sprite_create \n\
	STRH R0, [R7, 0x14] \n\
	BL func_08024bd0 \n\
	LDR R4, =anim_drum_samurai_kit_snare \n\
	CMP R0, 0x0 \n\
	BEQ branch_08024536 \n\
	LDR R4, =anim_drum_player_kit_snare \n\
 \n\
branch_08024536: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R2, =gSpriteHandler \n\
	LDR R0, [R2] \n\
	MOV R1, R9 \n\
	STR R1, [SP] \n\
	LDR R1, =0x0000480f \n\
	STR R1, [SP, 0x4] \n\
	MOV R2, R8 \n\
	STR R2, [SP, 0x8] \n\
	STR R6, [SP, 0xc] \n\
	STR R5, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x0 \n\
	MOVS R3, 0x78 \n\
	BL sprite_create \n\
	STRH R0, [R7, 0x16] \n\
	BL func_08024bd0 \n\
	LDR R4, =anim_drum_samurai_kit_tom \n\
	CMP R0, 0x0 \n\
	BEQ branch_0802456a \n\
	LDR R4, =anim_drum_player_kit_tom \n\
 \n\
branch_0802456a: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R1, =gSpriteHandler \n\
	LDR R0, [R1] \n\
	MOV R2, R9 \n\
	STR R2, [SP] \n\
	LDR R1, =0x000047f1 \n\
	STR R1, [SP, 0x4] \n\
	MOV R1, R8 \n\
	STR R1, [SP, 0x8] \n\
	STR R6, [SP, 0xc] \n\
	STR R5, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x0 \n\
	MOVS R3, 0x78 \n\
	BL sprite_create \n\
	STRH R0, [R7, 0x18] \n\
	BL func_08024bd0 \n\
	LDR R4, =anim_drum_samurai_kit_hihat \n\
	CMP R0, 0x0 \n\
	BEQ branch_0802459e \n\
	LDR R4, =anim_drum_player_kit_hihat \n\
 \n\
branch_0802459e: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R2, =gSpriteHandler \n\
	LDR R0, [R2] \n\
	MOV R1, R9 \n\
	STR R1, [SP] \n\
	LDR R1, =0x000047f2 \n\
	STR R1, [SP, 0x4] \n\
	MOV R2, R8 \n\
	STR R2, [SP, 0x8] \n\
	STR R6, [SP, 0xc] \n\
	STR R5, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x0 \n\
	MOVS R3, 0x78 \n\
	BL sprite_create \n\
	STRH R0, [R7, 0x1a] \n\
	BL func_08024bd0 \n\
	LDR R4, =anim_drum_samurai_kit_splash \n\
	CMP R0, 0x0 \n\
	BEQ branch_080245d2 \n\
	LDR R4, =anim_drum_player_kit_splash \n\
 \n\
branch_080245d2: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R1, =gSpriteHandler \n\
	LDR R0, [R1] \n\
	MOV R2, R9 \n\
	STR R2, [SP] \n\
	LDR R1, =0x00004878 \n\
	STR R1, [SP, 0x4] \n\
	MOV R1, R8 \n\
	STR R1, [SP, 0x8] \n\
	STR R6, [SP, 0xc] \n\
	STR R5, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x7f \n\
	MOVS R3, 0x78 \n\
	BL sprite_create \n\
	STRH R0, [R7, 0x1c] \n\
	BL func_08024bd0 \n\
	LDR R4, =anim_drum_samurai_kit_crash \n\
	CMP R0, 0x0 \n\
	BEQ branch_08024606 \n\
	LDR R4, =anim_drum_player_kit_crash \n\
 \n\
branch_08024606: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R2, =gSpriteHandler \n\
	LDR R0, [R2] \n\
	MOV R1, R9 \n\
	STR R1, [SP] \n\
	LDR R1, =0x00004882 \n\
	STR R1, [SP, 0x4] \n\
	MOV R2, R8 \n\
	STR R2, [SP, 0x8] \n\
	STR R6, [SP, 0xc] \n\
	STR R5, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x7f \n\
	MOVS R3, 0x78 \n\
	BL sprite_create \n\
	STRH R0, [R7, 0x1e] \n\
	BL func_08024bd0 \n\
	LDR R4, =anim_drum_samurai_kit_seat \n\
	CMP R0, 0x0 \n\
	BEQ branch_0802463a \n\
	LDR R4, =anim_drum_player_kit_seat \n\
 \n\
branch_0802463a: \n\
	BL func_08024bd0 \n\
	BL func_08024bd0 \n\
	LDR R1, =gSpriteHandler \n\
	LDR R0, [R1] \n\
	MOV R2, R9 \n\
	STR R2, [SP] \n\
	LDR R1, =0x00004805 \n\
	STR R1, [SP, 0x4] \n\
	MOV R1, R8 \n\
	STR R1, [SP, 0x8] \n\
	STR R6, [SP, 0xc] \n\
	STR R5, [SP, 0x10] \n\
	ADDS R1, R4, 0x0 \n\
	MOVS R2, 0x0 \n\
	MOVS R3, 0x78 \n\
	BL sprite_create \n\
	STRH R0, [R7, 0x20] \n\
	ADDS R2, R7, 0x0 \n\
	ADDS R2, 0x22 \n\
	STR R2, [SP, 0x18] \n\
	MOVS R0, 0xff \n\
	STRB R0, [R2] \n\
	ADDS R0, R7, 0x0 \n\
	ADDS R0, 0x23 \n\
	STR R0, [SP, 0x1c] \n\
	MOVS R0, 0x1 \n\
	RSBS R0, R0, 0x0 \n\
	LDR R1, [SP, 0x1c] \n\
	STRB R0, [R1] \n\
	ADDS R1, R7, 0x0 \n\
	ADDS R1, 0x24 \n\
	STRB R0, [R1] \n\
	ADDS R2, 0x3 \n\
	STR R2, [SP, 0x20] \n\
	STRB R0, [R2] \n\
	MOVS R0, 0x26 \n\
	ADDS R0, R0, R7 \n\
	MOV R10, R0 \n\
	MOVS R0, 0x1 \n\
	RSBS R0, R0, 0x0 \n\
	MOV R1, R10 \n\
	STRB R0, [R1] \n\
	MOVS R2, 0x27 \n\
	ADDS R2, R2, R7 \n\
	MOV R9, R2 \n\
	STRB R0, [R2] \n\
	MOVS R0, 0x28 \n\
	ADDS R0, R0, R7 \n\
	MOV R8, R0 \n\
	MOVS R0, 0x1 \n\
	RSBS R0, R0, 0x0 \n\
	MOV R1, R8 \n\
	STRB R0, [R1] \n\
	LDR R6, =(D_03004b10 + 0x10) \n\
	ADDS R4, R6, 0x2 \n\
	LDR R2, =gSpriteHandler \n\
	LDR R0, [R2] \n\
	B branch_0802476c \n\
 \n\
.ltorg \n\
branch_0802476c: \n\
	BL sprite_handler_get_mem_id \n\
	ADDS R1, R0, 0x0 \n\
	LDR R2, =gSpriteHandler \n\
	LDR R0, [R2] \n\
	LSLS R1, R1, 0x10 \n\
	LSRS R1, R1, 0x10 \n\
	ADDS R2, R6, 0x0 \n\
	ADDS R3, R4, 0x0 \n\
	BL sprite_id_set_origin_x_y \n\
	LDR R1, =gSpriteHandler \n\
	LDR R0, [R1] \n\
	MOVS R2, 0x0 \n\
	LDRSH R1, [R7, R2] \n\
	ADDS R4, R7, 0x0 \n\
	ADDS R4, 0xe \n\
	ADDS R5, R7, 0x0 \n\
	ADDS R5, 0x10 \n\
	ADDS R2, R4, 0x0 \n\
	ADDS R3, R5, 0x0 \n\
	BL sprite_set_origin_x_y \n\
	LDR R1, =gSpriteHandler \n\
	LDR R0, [R1] \n\
	MOVS R2, 0x6 \n\
	LDRSH R1, [R7, R2] \n\
	ADDS R2, R4, 0x0 \n\
	ADDS R3, R5, 0x0 \n\
	BL sprite_set_origin_x_y \n\
	LDR R1, =gSpriteHandler \n\
	LDR R0, [R1] \n\
	MOVS R2, 0x8 \n\
	LDRSH R1, [R7, R2] \n\
	ADDS R2, R4, 0x0 \n\
	ADDS R3, R5, 0x0 \n\
	BL sprite_set_origin_x_y \n\
	LDRH R0, [R6] \n\
	STRH R0, [R7, 0xe] \n\
	LDRH R0, [R6, 0x2] \n\
	STRH R0, [R7, 0x10] \n\
	BL get_current_mem_id \n\
	LSLS R0, R0, 0x10 \n\
	LSRS R0, R0, 0x10 \n\
	MOVS R1, 0x4 \n\
	MOVS R2, 0x80 \n\
	MOVS R3, 0x1e \n\
	BL text_printer_create_new \n\
	ADDS R4, R0, 0x0 \n\
	BL gameplay_set_text_printer \n\
	ADDS R0, R4, 0x0 \n\
	MOVS R1, 0xf \n\
	BL text_printer_set_palette \n\
	ADDS R0, R4, 0x0 \n\
	MOVS R1, 0x0 \n\
	BL text_printer_set_colors \n\
	ADDS R0, R4, 0x0 \n\
	MOVS R1, 0x1 \n\
	BL text_printer_center_by_content \n\
	LDR R0, =gCurrentEngineData \n\
	LDR R0, [R0] \n\
	LDRB R0, [R0] \n\
	LDR R6, [SP, 0x18] \n\
	LDR R7, [SP, 0x1c] \n\
	LDR R1, [SP, 0x20] \n\
	STR R1, [SP, 0x24] \n\
	CMP R0, 0x1 \n\
	BEQ branch_0802482e \n\
	CMP R0, 0x1 \n\
	BGT branch_08024818 \n\
	CMP R0, 0x0 \n\
	BEQ branch_08024822 \n\
	B branch_08024856 \n\
 \n\
.ltorg \n\
branch_08024818: \n\
	CMP R0, 0x2 \n\
	BEQ branch_0802483a \n\
	CMP R0, 0x3 \n\
	BEQ branch_08024846 \n\
	B branch_08024856 \n\
 \n\
branch_08024822: \n\
	ADDS R0, R4, 0x0 \n\
	MOVS R1, 0xa \n\
	MOVS R2, 0x30 \n\
	BL text_printer_set_x_y \n\
	B branch_08024856 \n\
 \n\
branch_0802482e: \n\
	ADDS R0, R4, 0x0 \n\
	MOVS R1, 0xc \n\
	MOVS R2, 0xa \n\
	BL text_printer_set_x_y \n\
	B branch_08024856 \n\
 \n\
branch_0802483a: \n\
	ADDS R0, R4, 0x0 \n\
	MOVS R1, 0xa \n\
	MOVS R2, 0x20 \n\
	BL text_printer_set_x_y \n\
	B branch_08024856 \n\
 \n\
branch_08024846: \n\
	ADDS R0, R4, 0x0 \n\
	MOVS R1, 0xa \n\
	MOVS R2, 0x30 \n\
	BL text_printer_set_x_y \n\
	MOVS R0, 0x1 \n\
	BL gameplay_set_text_advance_icon \n\
 \n\
branch_08024856: \n\
	MOVS R0, 0xf3 \n\
	MOVS R1, 0x0 \n\
	BL gameplay_set_input_buttons \n\
	LDR R5, =gCurrentEngineData \n\
	LDR R0, [R5] \n\
	MOVS R2, 0xe0 \n\
	LSLS R2, R2, 0x2 \n\
	ADDS R0, R0, R2 \n\
	MOVS R4, 0x0 \n\
	STRB R4, [R0] \n\
	LDR R0, [R5] \n\
	LDR R1, =0x00000396 \n\
	ADDS R2, R0, R1 \n\
	LDR R1, =0x0000ffff \n\
	STRH R1, [R2] \n\
	ADDS R0, 0x4 \n\
	BL init_drumtech \n\
	BL func_08024ed0 \n\
	MOVS R0, 0x0 \n\
	BL gameplay_display_skip_icon \n\
	LDR R2, [SP, 0x14] \n\
	CMP R2, 0x1 \n\
	BEQ branch_080248be \n\
	CMP R2, 0x1 \n\
	BLO branch_080248a8 \n\
	CMP R2, 0x2 \n\
	BEQ branch_08024910 \n\
	CMP R2, 0x3 \n\
	BEQ branch_08024950 \n\
	B branch_08024966 \n\
 \n\
.ltorg \n\
branch_080248a8: \n\
	STR R4, [SP] \n\
	MOVS R0, 0x1e \n\
	STR R0, [SP, 0x4] \n\
	STR R4, [SP, 0x8] \n\
	MOVS R0, 0x2 \n\
	MOVS R1, 0x1 \n\
	MOVS R2, 0x0 \n\
	MOVS R3, 0x0 \n\
	BL scene_set_bg_layer_display \n\
	B branch_08024966 \n\
 \n\
branch_080248be: \n\
	STR R4, [SP] \n\
	MOVS R0, 0x1e \n\
	STR R0, [SP, 0x4] \n\
	LDR R0, [SP, 0x14] \n\
	STR R0, [SP, 0x8] \n\
	MOVS R0, 0x2 \n\
	MOVS R1, 0x1 \n\
	MOVS R2, 0x0 \n\
	MOVS R3, 0x0 \n\
	BL scene_set_bg_layer_display \n\
	LDR R0, =gSpriteHandler \n\
	LDR R0, [R0] \n\
	LDR R1, =anim_drum_player_unk25 \n\
	MOVS R2, 0x30 \n\
	STR R2, [SP] \n\
	LDR R2, =0x000048c8 \n\
	STR R2, [SP, 0x4] \n\
	LDR R2, [SP, 0x14] \n\
	STR R2, [SP, 0x8] \n\
	STR R4, [SP, 0xc] \n\
	MOVS R2, 0x80 \n\
	LSLS R2, R2, 0x8 \n\
	STR R2, [SP, 0x10] \n\
	MOVS R2, 0x0 \n\
	MOVS R3, 0x38 \n\
	BL sprite_create \n\
	LDR R1, [R5] \n\
	MOVS R2, 0xe5 \n\
	LSLS R2, R2, 0x2 \n\
	ADDS R1, R1, R2 \n\
	STRH R0, [R1] \n\
	B branch_08024966 \n\
 \n\
.ltorg \n\
branch_08024910: \n\
	STR R4, [SP] \n\
	MOVS R0, 0x1e \n\
	STR R0, [SP, 0x4] \n\
	MOVS R0, 0x1 \n\
	STR R0, [SP, 0x8] \n\
	MOVS R0, 0x2 \n\
	MOVS R1, 0x1 \n\
	MOVS R2, 0x0 \n\
	MOVS R3, 0x0 \n\
	BL scene_set_bg_layer_display \n\
	MOVS R2, 0x6c \n\
	RSBS R2, R2, 0x0 \n\
	STR R4, [SP] \n\
	MOVS R0, 0x1f \n\
	STR R0, [SP, 0x4] \n\
	STR R4, [SP, 0x8] \n\
	MOVS R0, 0x3 \n\
	MOVS R1, 0x0 \n\
	MOVS R3, 0x0 \n\
	BL scene_set_bg_layer_display \n\
	BL func_08023a18 \n\
	MOVS R1, 0x40 \n\
	RSBS R1, R1, 0x0 \n\
	MOVS R2, 0x14 \n\
	RSBS R2, R2, 0x0 \n\
	MOVS R0, 0x1 \n\
	BL scene_set_bg_layer_pos \n\
	B branch_08024966 \n\
 \n\
branch_08024950: \n\
	MOVS R0, 0x1 \n\
	STRB R0, [R6] \n\
	STRB R0, [R7] \n\
	LDR R1, [SP, 0x24] \n\
	STRB R0, [R1] \n\
	MOV R2, R10 \n\
	STRB R0, [R2] \n\
	MOV R1, R9 \n\
	STRB R0, [R1] \n\
	MOV R2, R8 \n\
	STRB R0, [R2] \n\
 \n\
branch_08024966: \n\
	ADD SP, 0x28 \n\
	POP {R3, R4, R5} \n\
	MOV R8, R3 \n\
	MOV R9, R4 \n\
	MOV R10, R5 \n\
	POP {R4, R5, R6, R7} \n\
	POP {R0} \n\
	BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
