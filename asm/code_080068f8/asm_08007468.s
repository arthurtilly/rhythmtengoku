asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007468 \n\
/* 08007468 */ PUSH {R4-R6, LR} \n\
/* 0800746a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800746c */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0800746e */ LDR R0, =D_03005380 \n\
/* 08007470 */ LDR R6, [R0] \n\
/* 08007472 */ LSLS R5, R5, 0x10 \n\
/* 08007474 */ ASRS R5, R5, 0x10 \n\
/* 08007476 */ LSLS R4, R4, 0x18 \n\
/* 08007478 */ ASRS R4, R4, 0x18 \n\
/* 0800747a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800747c */ BL func_08002520 \n\
/* 08007480 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08007482 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08007484 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08007486 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08007488 */ BL func_0804dc10 \n\
/* 0800748c */ POP {R4-R6} \n\
/* 0800748e */ POP {R0} \n\
/* 08007490 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
