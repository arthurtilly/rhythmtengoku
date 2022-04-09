asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804691c \n\
/* 0804691c */ PUSH {LR} \n\
/* 0804691e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046920 */ BL func_0800c604 \n\
/* 08046924 */ BL func_08017578 \n\
/* 08046928 */ POP {R0} \n\
/* 0804692a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
