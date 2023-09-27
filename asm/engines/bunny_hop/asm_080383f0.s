asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080383f0 \n\
/* 080383f0 */ PUSH {R4, R5, LR} \n\
/* 080383f2 */ MOVS R1, 0xF @ Set R1 to 0xF \n\
/* 080383f4 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080383f6 */ ANDS R5, R1 @ Set R5 to R5 & R1 \n\
/* 080383f8 */ LSRS R4, R0, 0x4 \n\
/* 080383fa */ ANDS R4, R1 @ Set R4 to R4 & R1 \n\
/* 080383fc */ LSRS R0, R0, 0x8 \n\
/* 080383fe */ BL ticks_to_frames \n\
/* 08038402 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08038404 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08038406 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08038408 */ BL func_08038384 \n\
/* 0803840c */ POP {R4, R5} \n\
/* 0803840e */ POP {R0} \n\
/* 08038410 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
