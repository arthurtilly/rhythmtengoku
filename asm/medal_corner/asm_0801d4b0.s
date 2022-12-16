asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d4b0 \n\
/* 0801d4b0 */ PUSH {LR} \n\
/* 0801d4b2 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0801d4b4 */ BL func_0801d160 \n\
/* 0801d4b8 */ LDR R0, =s_menu_cursor1_seqData \n\
/* 0801d4ba */ BL play_sound \n\
/* 0801d4be */ POP {R0} \n\
/* 0801d4c0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
