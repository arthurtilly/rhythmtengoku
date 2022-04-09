asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08017918 \n\
/* 08017918 */ LDR R0, =D_030046a4 \n\
/* 0801791a */ LDR R0, [R0] \n\
/* 0801791c */ ADDS R0, 0x7A @ Add 0x7A to R0 \n\
/* 0801791e */ LDRB R0, [R0] \n\
/* 08017920 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
