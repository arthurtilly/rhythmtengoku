asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start drum_live_menu_engine_update \n\
/* 0803703c */ PUSH {LR} \n\
/* 0803703e */ BL func_08036fac \n\
/* 08037042 */ BL func_08036ff4 \n\
/* 08037046 */ BL func_08036e28 \n\
/* 0803704a */ BL func_08036ec8 \n\
/* 0803704e */ BL func_08036f18 \n\
/* 08037052 */ POP {R0} \n\
/* 08037054 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
