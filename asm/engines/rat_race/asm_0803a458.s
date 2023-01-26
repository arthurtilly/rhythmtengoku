asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start rat_race_engine_update \n\
/* 0803a458 */ PUSH {LR} \n\
/* 0803a45a */ BL func_0803a198 \n\
/* 0803a45e */ BL func_0803b37c \n\
/* 0803a462 */ BL func_0803aa9c \n\
/* 0803a466 */ BL func_0803bc08 \n\
/* 0803a46a */ BL func_0803a8e4 \n\
/* 0803a46e */ BL func_0803bd58 \n\
/* 0803a472 */ BL func_0803a3c4 \n\
/* 0803a476 */ POP {R0} \n\
/* 0803a478 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
