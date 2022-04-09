asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018114 \n\
/* 08018114 */ LDR R1, =D_030046a4 \n\
/* 08018116 */ LDR R1, [R1] \n\
/* 08018118 */ ADDS R1, 0x86 @ Add 0x86 to R1 \n\
/* 0801811a */ STRH R0, [R1] \n\
/* 0801811c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
