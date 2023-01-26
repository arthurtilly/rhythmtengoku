asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047f08 \n\
/* 08047f08 */ PUSH {LR} \n\
/* 08047f0a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08047f0c */ BL gameplay_get_inter_engine_variable \n\
/* 08047f10 */ BL stop_soundplayer \n\
/* 08047f14 */ POP {R0} \n\
/* 08047f16 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
