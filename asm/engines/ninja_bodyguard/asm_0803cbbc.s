asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start ninja_bodyguard_init_gfx1 \n\
/* 0803cbbc */ PUSH {LR} \n\
/* 0803cbbe */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803cbc0 */ BL func_0800c604 \n\
/* 0803cbc4 */ BL get_current_mem_id \n\
/* 0803cbc8 */ LSLS R0, R0, 0x10 \n\
/* 0803cbca */ LSRS R0, R0, 0x10 \n\
/* 0803cbcc */ LDR R1, =ninja_bodyguard_buffered_textures \n\
/* 0803cbce */ BL start_new_texture_loader \n\
/* 0803cbd2 */ LDR R1, =ninja_bodyguard_init_gfx2 \n\
/* 0803cbd4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803cbd6 */ BL run_func_after_task \n\
/* 0803cbda */ POP {R0} \n\
/* 0803cbdc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
