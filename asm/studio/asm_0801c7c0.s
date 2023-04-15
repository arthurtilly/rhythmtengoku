asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801c7c0 \n\
/* 0801c7c0 */ PUSH {LR} \n\
/* 0801c7c2 */ BL scene_stop_music \n\
/* 0801c7c6 */ BL func_0801d978 \n\
/* 0801c7ca */ LDR R0, =D_089d84ac \n\
/* 0801c7cc */ BL func_0801d968 \n\
/* 0801c7d0 */ LDR R1, =0x3ff \n\
/* 0801c7d2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801c7d4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801c7d6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801c7d8 */ BL key_rec_set_mode \n\
/* 0801c7dc */ POP {R0} \n\
/* 0801c7de */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
