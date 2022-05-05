asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08049e3c \n\
/* 08049e3c */ PUSH {R4, R5, LR} \n\
/* 08049e3e */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08049e40 */ LDRB R0, [R5, 0x14] \n\
/* 08049e42 */ LSLS R0, R0, 0x1B \n\
/* 08049e44 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08049e46 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08049e48 */ BEQ branch_08049e5e \n\
 \n\
branch_08049e4a: \n\
/* 08049e4a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08049e4c */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08049e4e */ BL func_08049d30 \n\
/* 08049e52 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08049e54 */ LDRB R0, [R5, 0x14] \n\
/* 08049e56 */ LSLS R0, R0, 0x1B \n\
/* 08049e58 */ LSRS R0, R0, 0x1B \n\
/* 08049e5a */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08049e5c */ BCC branch_08049e4a \n\
 \n\
branch_08049e5e: \n\
/* 08049e5e */ POP {R4, R5} \n\
/* 08049e60 */ POP {R0} \n\
/* 08049e62 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
