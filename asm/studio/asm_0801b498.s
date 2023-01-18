asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801b498 \n\
/* 0801b498 */ PUSH {R4, LR} \n\
/* 0801b49a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801b49c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801b49e */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 0801b4a0 */ BL clamp_int32 \n\
/* 0801b4a4 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801b4a6 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801b4a8 */ BL func_0801c51c \n\
/* 0801b4ac */ POP {R4} \n\
/* 0801b4ae */ POP {R0} \n\
/* 0801b4b0 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
