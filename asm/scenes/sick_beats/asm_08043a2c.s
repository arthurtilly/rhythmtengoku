asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08043a2c \n\
/* 08043a2c */ PUSH {LR} \n\
/* 08043a2e */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08043a30 */ BL func_0800fc70 \n\
/* 08043a34 */ POP {R0} \n\
/* 08043a36 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
