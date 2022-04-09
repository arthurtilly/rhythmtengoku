asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018054 \n\
/* 08018054 */ LDR R0, =D_030046a4 \n\
/* 08018056 */ LDR R0, [R0] \n\
/* 08018058 */ ADDS R0, 0x79 @ Add 0x79 to R0 \n\
/* 0801805a */ LDRB R0, [R0] \n\
/* 0801805c */ LSLS R0, R0, 0x18 \n\
/* 0801805e */ ASRS R0, R0, 0x18 \n\
/* 08018060 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
