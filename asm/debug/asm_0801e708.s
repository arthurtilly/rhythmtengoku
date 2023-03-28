asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801e708 \n\
/* 0801e708 */ PUSH {LR} \n\
/* 0801e70a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e70c */ BL func_0800c604 \n\
/* 0801e710 */ BL get_current_mem_id \n\
/* 0801e714 */ LSLS R0, R0, 0x10 \n\
/* 0801e716 */ LSRS R0, R0, 0x10 \n\
/* 0801e718 */ LDR R1, =flash_mem_test_buffered_textures \n\
/* 0801e71a */ BL start_new_texture_loader \n\
/* 0801e71e */ LDR R1, =set_pause_beatscript_scene \n\
/* 0801e720 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801e722 */ BL run_func_after_task \n\
/* 0801e726 */ POP {R0} \n\
/* 0801e728 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
