asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802f164 \n\
/* 0802f164 */ PUSH {LR} \n\
/* 0802f166 */ LDR R0, [R1, 0x4] \n\
/* 0802f168 */ BL func_0800fc70 \n\
/* 0802f16c */ POP {R0} \n\
/* 0802f16e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
