asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08042e80 \n\
/* 08042e80 */ PUSH {R4, R5, LR} \n\
/* 08042e82 */ LDR R0, =gCurrentEngineData \n\
/* 08042e84 */ LDR R0, [R0] \n\
/* 08042e86 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08042e88 */ MOVS R1, 0x98 @ Set R1 to 0x98 \n\
/* 08042e8a */ LSLS R1, R1, 0x1 \n\
/* 08042e8c */ ADDS R4, R0, R1 @ Set R4 to R0 + R1 \n\
 \n\
branch_08042e8e: \n\
/* 08042e8e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08042e90 */ BL func_08042de8 \n\
/* 08042e94 */ ADDS R4, 0xC @ Add 0xC to R4 \n\
/* 08042e96 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08042e98 */ CMP R5, 0xF @ Compare R5 and 0xF \n\
/* 08042e9a */ BLS branch_08042e8e \n\
/* 08042e9c */ POP {R4, R5} \n\
/* 08042e9e */ POP {R0} \n\
/* 08042ea0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
