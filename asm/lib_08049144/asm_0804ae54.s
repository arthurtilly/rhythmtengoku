asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804ae54 \n\
/* 0804ae54 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804ae56 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804ae58 */ STRB R1, [R0, 0x6] \n\
/* 0804ae5a */ STR R2, [R0, 0x8] \n\
/* 0804ae5c */ STRB R2, [R0, 0x7] \n\
/* 0804ae5e */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
