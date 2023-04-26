asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803a41c \n\
/* 0803a41c */ LDR R2, =gCurrentEngineData \n\
/* 0803a41e */ LDR R0, [R2] \n\
/* 0803a420 */ ADDS R0, 0xD2 @ Add 0xD2 to R0 \n\
/* 0803a422 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803a424 */ STRB R1, [R0] \n\
/* 0803a426 */ LDR R0, [R2] \n\
/* 0803a428 */ ADDS R0, 0xDA @ Add 0xDA to R0 \n\
/* 0803a42a */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0803a42c */ STRB R1, [R0] \n\
/* 0803a42e */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
