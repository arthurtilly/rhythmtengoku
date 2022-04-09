asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802ee24 \n\
/* 0802ee24 */ PUSH {LR} \n\
/* 0802ee26 */ BL func_0802ebf8 \n\
/* 0802ee2a */ BL func_0802ea20 \n\
/* 0802ee2e */ BL func_0802ee6c \n\
/* 0802ee32 */ BL func_0802e980 \n\
/* 0802ee36 */ BL func_0802edc8 \n\
/* 0802ee3a */ POP {R0} \n\
/* 0802ee3c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
