asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08017568 \n\
/* 08017568 */ LDR R1, =D_030046a4 \n\
/* 0801756a */ LDR R1, [R1] \n\
/* 0801756c */ ADDS R1, 0x84 @ Add 0x84 to R1 \n\
/* 0801756e */ STRH R0, [R1] \n\
/* 08017570 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
