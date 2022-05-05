asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08049e64 \n\
/* 08049e64 */ PUSH {R4, R5, LR} \n\
/* 08049e66 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08049e68 */ LDRB R0, [R5, 0x14] \n\
/* 08049e6a */ LSLS R0, R0, 0x1B \n\
/* 08049e6c */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08049e6e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08049e70 */ BEQ branch_08049e86 \n\
 \n\
branch_08049e72: \n\
/* 08049e72 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08049e74 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08049e76 */ BL func_08049db8 \n\
/* 08049e7a */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08049e7c */ LDRB R0, [R5, 0x14] \n\
/* 08049e7e */ LSLS R0, R0, 0x1B \n\
/* 08049e80 */ LSRS R0, R0, 0x1B \n\
/* 08049e82 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08049e84 */ BCC branch_08049e72 \n\
 \n\
branch_08049e86: \n\
/* 08049e86 */ POP {R4, R5} \n\
/* 08049e88 */ POP {R0} \n\
/* 08049e8a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
