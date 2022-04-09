asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800f218 \n\
/* 0800f218 */ PUSH {R4, LR} \n\
/* 0800f21a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800f21c */ BL func_0800f22c \n\
/* 0800f220 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800f222 */ BL func_0800f614 \n\
/* 0800f226 */ POP {R4} \n\
/* 0800f228 */ POP {R0} \n\
/* 0800f22a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
