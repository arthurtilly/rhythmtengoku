asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start sick_beats_init_gfx1 \n\
/* 080433bc */ PUSH {LR} \n\
/* 080433be */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080433c0 */ BL func_0800c604 \n\
/* 080433c4 */ BL get_current_mem_id \n\
/* 080433c8 */ LSLS R0, R0, 0x10 \n\
/* 080433ca */ LSRS R0, R0, 0x10 \n\
/* 080433cc */ LDR R1, =sick_beats_buffered_textures \n\
/* 080433ce */ BL func_080087b4 \n\
/* 080433d2 */ LDR R1, =sick_beats_init_gfx2 \n\
/* 080433d4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080433d6 */ BL run_func_after_task \n\
/* 080433da */ POP {R0} \n\
/* 080433dc */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
