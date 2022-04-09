asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08043534 \n\
/* 08043534 */ PUSH {R4, LR} \n\
/* 08043536 */ LDR R3, =D_030055d0 \n\
/* 08043538 */ LDR R2, [R3] \n\
/* 0804353a */ MOVS R0, 0xFA @ Set R0 to 0xFA \n\
/* 0804353c */ LSLS R0, R0, 0x1 \n\
/* 0804353e */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 08043540 */ LDRH R0, [R1] \n\
/* 08043542 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08043544 */ BEQ branch_0804357c \n\
/* 08043546 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08043548 */ STRH R0, [R1] \n\
/* 0804354a */ LSLS R0, R0, 0x10 \n\
/* 0804354c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804354e */ BNE branch_0804357c \n\
/* 08043550 */ LDR R1, =0x1f1 \n\
/* 08043552 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 08043554 */ LDRB R1, [R0] \n\
/* 08043556 */ LDRB R0, [R0] \n\
/* 08043558 */ LSLS R0, R0, 0x18 \n\
/* 0804355a */ ASRS R0, R0, 0x18 \n\
/* 0804355c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804355e */ BLT branch_0804357c \n\
/* 08043560 */ MOVS R4, 0xF8 @ Set R4 to 0xF8 \n\
/* 08043562 */ LSLS R4, R4, 0x1 \n\
/* 08043564 */ ADDS R0, R2, R4 @ Set R0 to R2 + R4 \n\
/* 08043566 */ STRB R1, [R0] \n\
/* 08043568 */ LDR R0, [R3] \n\
/* 0804356a */ LDR R2, =0x1f1 \n\
/* 0804356c */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0804356e */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 08043570 */ STRB R0, [R1] \n\
/* 08043572 */ LDR R0, [R3] \n\
/* 08043574 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 08043576 */ ADDS R1, R0, R4 @ Set R1 to R0 + R4 \n\
/* 08043578 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804357a */ STRB R0, [R1] \n\
 \n\
branch_0804357c: \n\
/* 0804357c */ POP {R4} \n\
/* 0804357e */ POP {R0} \n\
/* 08043580 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
