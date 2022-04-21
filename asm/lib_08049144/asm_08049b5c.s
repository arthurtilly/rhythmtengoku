asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08049b5c \n\
/* 08049b5c */ LDR R1, =D_03005b88 \n\
/* 08049b5e */ LDR R1, [R1] \n\
/* 08049b60 */ LSLS R0, R0, 0x5 \n\
/* 08049b62 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08049b64 */ LDRB R0, [R0] \n\
/* 08049b66 */ LSLS R0, R0, 0x1F \n\
/* 08049b68 */ LSRS R0, R0, 0x1F \n\
/* 08049b6a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
