asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080081d4 \n\
/* 080081d4 */ PUSH {R4, R5, LR} \n\
/* 080081d6 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 080081d8 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 080081da */ ADDS R5, R3, 0x0 @ Set R5 to R3 + 0x0 \n\
/* 080081dc */ LDRB R0, [R5] \n\
/* 080081de */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080081e0 */ BEQ branch_080081ea \n\
 \n\
branch_080081e2: \n\
/* 080081e2 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 080081e4 */ LDRB R0, [R3] \n\
/* 080081e6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080081e8 */ BNE branch_080081e2 \n\
 \n\
branch_080081ea: \n\
/* 080081ea */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080081ec */ B branch_080081f6 \n\
 \n\
branch_080081ee: \n\
/* 080081ee */ STRB R0, [R3] \n\
/* 080081f0 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 080081f2 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 080081f4 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
 \n\
branch_080081f6: \n\
/* 080081f6 */ LDRB R0, [R1] \n\
/* 080081f8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080081fa */ BEQ branch_08008200 \n\
/* 080081fc */ CMP R2, R4 @ Check R2 - R4 \n\
/* 080081fe */ BCC branch_080081ee \n\
 \n\
branch_08008200: \n\
/* 08008200 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08008202 */ STRB R0, [R3] \n\
/* 08008204 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08008206 */ POP {R4, R5} \n\
/* 08008208 */ POP {R1} \n\
/* 0800820a */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
