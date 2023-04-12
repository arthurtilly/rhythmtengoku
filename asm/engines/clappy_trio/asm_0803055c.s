asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803055c \n\
/* 0803055c */ PUSH {LR} \n\
/* 0803055e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08030560 */ BL func_0800c604 \n\
/* 08030564 */ BL get_current_mem_id \n\
/* 08030568 */ LSLS R0, R0, 0x10 \n\
/* 0803056a */ LSRS R0, R0, 0x10 \n\
/* 0803056c */ LDR R1, =clappy_trio_buffered_textures \n\
/* 0803056e */ BL start_new_texture_loader \n\
/* 08030572 */ LDR R1, =func_0803051c \n\
/* 08030574 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030576 */ BL run_func_after_task \n\
/* 0803057a */ POP {R0} \n\
/* 0803057c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
