asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080443c0 \n\
/* 080443c0 */ PUSH {R4-R7, LR} \n\
/* 080443c2 */ SUB SP, 0x4 \n\
/* 080443c4 */ LDR R7, =gCurrentEngineData \n\
/* 080443c6 */ LDR R1, [R7] \n\
/* 080443c8 */ LDR R2, =0x35f \n\
/* 080443ca */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080443cc */ LDRB R6, [R0] \n\
/* 080443ce */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 080443d0 */ BNE branch_08044414 \n\
/* 080443d2 */ ADDS R2, 0x3 @ Add 0x3 to R2 \n\
/* 080443d4 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080443d6 */ LDRB R0, [R0] \n\
/* 080443d8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080443da */ BEQ branch_08044414 \n\
/* 080443dc */ LDR R4, =D_03005380 \n\
/* 080443de */ LDR R0, [R4] \n\
/* 080443e0 */ MOVS R5, 0xD8 @ Set R5 to 0xD8 \n\
/* 080443e2 */ LSLS R5, R5, 0x2 \n\
/* 080443e4 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 080443e6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080443e8 */ LDRSH R1, [R1, R2] \n\
/* 080443ea */ STR R6, [SP] \n\
/* 080443ec */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080443ee */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080443f0 */ BL func_0804dae0 \n\
/* 080443f4 */ LDR R0, [R4] \n\
/* 080443f6 */ LDR R1, [R7] \n\
/* 080443f8 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 080443fa */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080443fc */ LDRSH R1, [R1, R2] \n\
/* 080443fe */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08044400 */ BL func_0804cebc \n\
/* 08044404 */ BL stop_drumtech \n\
/* 08044408 */ LDR R0, [R7] \n\
/* 0804440a */ LDR R1, =0x362 \n\
/* 0804440c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804440e */ STRB R6, [R0] \n\
/* 08044410 */ BL func_08044810 \n\
 \n\
branch_08044414: \n\
/* 08044414 */ ADD SP, 0x4 \n\
/* 08044416 */ POP {R4-R7} \n\
/* 08044418 */ POP {R0} \n\
/* 0804441a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
