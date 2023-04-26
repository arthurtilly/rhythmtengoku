asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08042b30 \n\
/* 08042b30 */ PUSH {R4, R5, LR} \n\
/* 08042b32 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08042b34 */ LDR R0, =gCurrentEngineData \n\
/* 08042b36 */ LDR R0, [R0] \n\
/* 08042b38 */ LDRB R0, [R0] \n\
/* 08042b3a */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08042b3c */ BNE branch_08042b4e \n\
/* 08042b3e */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08042b40 */ CMP R4, R5 @ Check R4 - R5 \n\
/* 08042b42 */ BCS branch_08042b4e \n\
 \n\
branch_08042b44: \n\
/* 08042b44 */ BL func_080429e8 \n\
/* 08042b48 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08042b4a */ CMP R4, R5 @ Check R4 - R5 \n\
/* 08042b4c */ BCC branch_08042b44 \n\
 \n\
branch_08042b4e: \n\
/* 08042b4e */ POP {R4, R5} \n\
/* 08042b50 */ POP {R0} \n\
/* 08042b52 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
