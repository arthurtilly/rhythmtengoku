asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08042b58 \n\
/* 08042b58 */ PUSH {LR} \n\
/* 08042b5a */ LDR R0, =gCurrentEngineData \n\
/* 08042b5c */ LDR R1, [R0] \n\
/* 08042b5e */ LDRB R0, [R1] \n\
/* 08042b60 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08042b62 */ BNE branch_08042b7a \n\
/* 08042b64 */ LDR R0, =0x26f \n\
/* 08042b66 */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 08042b68 */ MOVS R3, 0x9C @ Set R3 to 0x9C \n\
/* 08042b6a */ LSLS R3, R3, 0x2 \n\
/* 08042b6c */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08042b6e */ LDRB R1, [R2] \n\
/* 08042b70 */ LDRB R0, [R0] \n\
/* 08042b72 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08042b74 */ BCS branch_08042b7a \n\
/* 08042b76 */ ADDS R0, R1, 0x1 @ Set R0 to R1 + 0x1 \n\
/* 08042b78 */ STRB R0, [R2] \n\
 \n\
branch_08042b7a: \n\
/* 08042b7a */ POP {R0} \n\
/* 08042b7c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
