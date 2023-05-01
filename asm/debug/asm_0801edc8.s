asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801edc8 \n\
/* 0801edc8 */ PUSH {R4, LR} \n\
/* 0801edca */ SUB SP, 0x4 \n\
/* 0801edcc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801edce */ BL func_08007324 \n\
/* 0801edd2 */ BL func_080073f0 \n\
/* 0801edd6 */ BL get_current_mem_id \n\
/* 0801edda */ LSLS R0, R0, 0x10 \n\
/* 0801eddc */ LSRS R0, R0, 0x10 \n\
/* 0801edde */ LDR R1, =bitmap_font_warioware_body \n\
/* 0801ede0 */ MOVS R3, 0xD0 @ Set R3 to 0xD0 \n\
/* 0801ede2 */ LSLS R3, R3, 0x2 \n\
/* 0801ede4 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 0801ede6 */ STR R2, [SP] \n\
/* 0801ede8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801edea */ BL create_new_bmp_font_bg \n\
/* 0801edee */ LDR R4, =gCurrentSceneData \n\
/* 0801edf0 */ LDR R1, [R4] \n\
/* 0801edf2 */ STR R0, [R1] \n\
/* 0801edf4 */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 0801edf6 */ LSLS R0, R0, 0x2 \n\
/* 0801edf8 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0801edfa */ BL func_0800c660 \n\
/* 0801edfe */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801ee00 */ LDR R0, [R4] \n\
/* 0801ee02 */ STR R1, [R0, 0x4] \n\
/* 0801ee04 */ LDR R0, =D_03005380 \n\
/* 0801ee06 */ LDR R0, [R0] \n\
/* 0801ee08 */ LDR R2, =empty_test_scene_objects \n\
/* 0801ee0a */ LDR R3, =D_0300558c \n\
/* 0801ee0c */ LDR R3, [R3] \n\
/* 0801ee0e */ BL import_all_scene_objects \n\
/* 0801ee12 */ BL func_0801edac \n\
/* 0801ee16 */ LDR R1, [R4] \n\
/* 0801ee18 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801ee1a */ STR R0, [R1, 0x8] \n\
/* 0801ee1c */ ADD SP, 0x4 \n\
/* 0801ee1e */ POP {R4} \n\
/* 0801ee20 */ POP {R0} \n\
/* 0801ee22 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
