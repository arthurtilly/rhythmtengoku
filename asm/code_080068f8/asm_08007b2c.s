asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007b2c \n\
/* 08007b2c */ PUSH {R4, LR} \n\
/* 08007b2e */ LSLS R4, R1, 0x10 \n\
/* 08007b30 */ ASRS R4, R4, 0x10 \n\
/* 08007b32 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08007b34 */ BL func_08007b04 \n\
/* 08007b38 */ LDR R0, =D_03005380 \n\
/* 08007b3a */ LDR R0, [R0] \n\
/* 08007b3c */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08007b3e */ BL func_0804d504 \n\
/* 08007b42 */ POP {R4} \n\
/* 08007b44 */ POP {R0} \n\
/* 08007b46 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
