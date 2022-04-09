asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802bf20 \n\
/* 0802bf20 */ PUSH {R4, LR} \n\
/* 0802bf22 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0802bf24 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0802bf26 */ BL func_0802ce70 \n\
/* 0802bf2a */ STR R0, [R4, 0x4] \n\
/* 0802bf2c */ BL func_0802d38c \n\
/* 0802bf30 */ POP {R4} \n\
/* 0802bf32 */ POP {R0} \n\
/* 0802bf34 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
