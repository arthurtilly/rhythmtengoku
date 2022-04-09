asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08019340 \n\
/* 08019340 */ LDR R0, =D_089d7980 \n\
/* 08019342 */ LDR R0, [R0] \n\
/* 08019344 */ LDRB R0, [R0] \n\
/* 08019346 */ LSLS R0, R0, 0x1E \n\
/* 08019348 */ LSRS R0, R0, 0x1F \n\
/* 0801934a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
