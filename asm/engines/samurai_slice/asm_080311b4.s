asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start samurai_slice_engine_stop \n\
/* 080311b4 */ LDR R0, =D_03004b10 \n\
/* 080311b6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080311b8 */ ADDS R1, 0x4C @ Add 0x4C to R1 \n\
/* 080311ba */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080311bc */ STRH R2, [R1] \n\
/* 080311be */ ADDS R0, 0x4E @ Add 0x4E to R0 \n\
/* 080311c0 */ STRH R2, [R0] \n\
/* 080311c2 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
