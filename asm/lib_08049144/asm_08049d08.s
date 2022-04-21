asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08049d08 \n\
/* 08049d08 */ PUSH {R4, R5, LR} \n\
/* 08049d0a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08049d0c */ LDRB R0, [R5, 0x14] \n\
/* 08049d0e */ LSLS R0, R0, 0x1B \n\
/* 08049d10 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08049d12 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08049d14 */ BEQ branch_08049d2a \n\
 \n\
branch_08049d16: \n\
/* 08049d16 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08049d18 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08049d1a */ BL func_08049c34 \n\
/* 08049d1e */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08049d20 */ LDRB R0, [R5, 0x14] \n\
/* 08049d22 */ LSLS R0, R0, 0x1B \n\
/* 08049d24 */ LSRS R0, R0, 0x1B \n\
/* 08049d26 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08049d28 */ BCC branch_08049d16 \n\
 \n\
branch_08049d2a: \n\
/* 08049d2a */ POP {R4, R5} \n\
/* 08049d2c */ POP {R0} \n\
/* 08049d2e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
