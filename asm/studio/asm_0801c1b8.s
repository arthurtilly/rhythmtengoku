asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801c1b8 \n\
/* 0801c1b8 */ LDR R0, =D_03001544 \n\
/* 0801c1ba */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801c1bc */ STRB R1, [R0] \n\
/* 0801c1be */ LDR R0, =D_03001545 \n\
/* 0801c1c0 */ STRB R1, [R0] \n\
/* 0801c1c2 */ LDR R0, =D_03001546 \n\
/* 0801c1c4 */ STRB R1, [R0] \n\
/* 0801c1c6 */ LDR R0, =D_03001547 \n\
/* 0801c1c8 */ STRB R1, [R0] \n\
/* 0801c1ca */ LDR R0, =D_03001548 \n\
/* 0801c1cc */ STRB R1, [R0] \n\
/* 0801c1ce */ LDR R0, =D_03001549 \n\
/* 0801c1d0 */ STRB R1, [R0] \n\
/* 0801c1d2 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
