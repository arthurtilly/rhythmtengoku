asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08023c0c \n\
/* 08023c0c */ PUSH {LR} \n\
/* 08023c0e */ LDR R3, =gCurrentEngineData \n\
/* 08023c10 */ LDR R1, [R3] \n\
/* 08023c12 */ LDR R2, =0x000003a9 \n\
/* 08023c14 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08023c16 */ LDRB R0, [R1] \n\
/* 08023c18 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08023c1a */ STRB R0, [R1] \n\
/* 08023c1c */ LDR R0, [R3] \n\
/* 08023c1e */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 08023c20 */ LDRB R0, [R1] \n\
/* 08023c22 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08023c24 */ BLS branch_08023c38 \n\
/* 08023c26 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08023c28 */ STRB R0, [R1] \n\
/* 08023c2a */ LDR R0, [R3] \n\
/* 08023c2c */ MOVS R1, 0xEC @ Set R1 to 0xEC \n\
/* 08023c2e */ LSLS R1, R1, 0x2 \n\
/* 08023c30 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08023c32 */ LDR R0, [R0] \n\
/* 08023c34 */ BL func_0801d95c \n\
 \n\
branch_08023c38: \n\
/* 08023c38 */ POP {R0} \n\
/* 08023c3a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
