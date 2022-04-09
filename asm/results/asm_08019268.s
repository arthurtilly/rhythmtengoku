asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08019268 \n\
/* 08019268 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801926a */ STRH R1, [R0] \n\
/* 0801926c */ STRH R1, [R0, 0x2] \n\
/* 0801926e */ STRH R1, [R0, 0x4] \n\
/* 08019270 */ STRH R1, [R0, 0x6] \n\
/* 08019272 */ STRH R1, [R0, 0x8] \n\
/* 08019274 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
