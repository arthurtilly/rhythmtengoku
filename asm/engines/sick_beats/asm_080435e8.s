asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080435e8 \n\
/* 080435e8 */ PUSH {R4, R5, LR} \n\
/* 080435ea */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080435ec */ LDR R1, =gCurrentEngineData \n\
/* 080435ee */ LDR R3, [R1] \n\
/* 080435f0 */ MOVS R0, 0xF8 @ Set R0 to 0xF8 \n\
/* 080435f2 */ LSLS R0, R0, 0x1 \n\
/* 080435f4 */ ADDS R4, R3, R0 @ Set R4 to R3 + R0 \n\
/* 080435f6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080435f8 */ LDRSB R0, [R4, R0] \n\
/* 080435fa */ CMP R0, R2 @ Check R0 - R2 \n\
/* 080435fc */ BGT branch_08043626 \n\
/* 080435fe */ LDR R5, =0x1f1 \n\
/* 08043600 */ ADDS R0, R3, R5 @ Set R0 to R3 + R5 \n\
/* 08043602 */ LDRB R0, [R0] \n\
/* 08043604 */ LSLS R0, R0, 0x18 \n\
/* 08043606 */ ASRS R0, R0, 0x18 \n\
/* 08043608 */ CMP R0, R2 @ Check R0 - R2 \n\
/* 0804360a */ BGT branch_08043626 \n\
/* 0804360c */ LDRB R0, [R4] \n\
/* 0804360e */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08043610 */ LSLS R0, R0, 0x18 \n\
/* 08043612 */ LSRS R0, R0, 0x18 \n\
/* 08043614 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08043616 */ BHI branch_0804361e \n\
/* 08043618 */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 0804361a */ BNE branch_0804361e \n\
/* 0804361c */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
 \n\
branch_0804361e: \n\
/* 0804361e */ LDR R0, [R1] \n\
/* 08043620 */ LDR R1, =0x1f1 \n\
/* 08043622 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08043624 */ STRB R2, [R0] \n\
 \n\
branch_08043626: \n\
/* 08043626 */ POP {R4, R5} \n\
/* 08043628 */ POP {R0} \n\
/* 0804362a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
