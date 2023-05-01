asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801e9cc \n\
/* 0801e9cc */ PUSH {R4, LR} \n\
/* 0801e9ce */ SUB SP, 0x4 \n\
/* 0801e9d0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e9d2 */ BL func_08007324 \n\
/* 0801e9d6 */ BL func_080073f0 \n\
/* 0801e9da */ BL get_current_mem_id \n\
/* 0801e9de */ LSLS R0, R0, 0x10 \n\
/* 0801e9e0 */ LSRS R0, R0, 0x10 \n\
/* 0801e9e2 */ LDR R1, =bitmap_font_warioware_body \n\
/* 0801e9e4 */ MOVS R3, 0xD0 @ Set R3 to 0xD0 \n\
/* 0801e9e6 */ LSLS R3, R3, 0x2 \n\
/* 0801e9e8 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 0801e9ea */ STR R2, [SP] \n\
/* 0801e9ec */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801e9ee */ BL create_new_bmp_font_bg \n\
/* 0801e9f2 */ LDR R4, =gCurrentSceneData \n\
/* 0801e9f4 */ LDR R1, [R4] \n\
/* 0801e9f6 */ STR R0, [R1] \n\
/* 0801e9f8 */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 0801e9fa */ LSLS R0, R0, 0x2 \n\
/* 0801e9fc */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0801e9fe */ BL func_0800c660 \n\
/* 0801ea02 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801ea04 */ LDR R0, [R4] \n\
/* 0801ea06 */ STR R1, [R0, 0x4] \n\
/* 0801ea08 */ LDR R0, =D_03005380 \n\
/* 0801ea0a */ LDR R0, [R0] \n\
/* 0801ea0c */ LDR R2, =data_clear_scene_objects \n\
/* 0801ea0e */ LDR R3, =D_0300558c \n\
/* 0801ea10 */ LDR R3, [R3] \n\
/* 0801ea12 */ BL import_all_scene_objects \n\
/* 0801ea16 */ BL func_0801e9b0 \n\
/* 0801ea1a */ LDR R1, [R4] \n\
/* 0801ea1c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801ea1e */ STR R0, [R1, 0x8] \n\
/* 0801ea20 */ BL clear_save_data \n\
/* 0801ea24 */ BL flush_save_buffer_to_sram \n\
/* 0801ea28 */ LDR R0, =scene_riq_title \n\
/* 0801ea2a */ BL func_08000584 \n\
/* 0801ea2e */ ADD SP, 0x4 \n\
/* 0801ea30 */ POP {R4} \n\
/* 0801ea32 */ POP {R0} \n\
/* 0801ea34 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
