asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080107dc \n\
/* 080107dc */ PUSH {R4-R6, LR} \n\
/* 080107de */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080107e0 */ LDR R2, =D_030055a0 \n\
/* 080107e2 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080107e4 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 080107e6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
 \n\
branch_080107e8: \n\
/* 080107e8 */ LDRB R0, [R2] \n\
/* 080107ea */ CMP R0, R1 @ Check R0 - R1 \n\
/* 080107ec */ BEQ branch_08010818 \n\
/* 080107ee */ CMP R0, 0xFF @ Compare R0 and 0xFF \n\
/* 080107f0 */ BNE branch_080107f4 \n\
/* 080107f2 */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
 \n\
branch_080107f4: \n\
/* 080107f4 */ LDRH R0, [R2, 0x4] \n\
/* 080107f6 */ LDRH R6, [R4, 0x4] \n\
/* 080107f8 */ CMP R0, R6 @ Check R0 - R6 \n\
/* 080107fa */ BHI branch_080107fe \n\
/* 080107fc */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
 \n\
branch_080107fe: \n\
/* 080107fe */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 08010800 */ ADDS R2, 0x8 @ Add 0x8 to R2 \n\
/* 08010802 */ CMP R3, 0x4 @ Compare R3 and 0x4 \n\
/* 08010804 */ BLE branch_080107e8 \n\
/* 08010806 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08010808 */ BNE branch_0801081c \n\
/* 0801080a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801080c */ BL func_080107c8 \n\
/* 08010810 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08010812 */ B branch_08010824 \n\
\n\
.ltorg \n\
 \n\
branch_08010818: \n\
/* 08010818 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0801081a */ B branch_08010824 \n\
 \n\
branch_0801081c: \n\
/* 0801081c */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801081e */ BL func_080107c8 \n\
/* 08010822 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
 \n\
branch_08010824: \n\
/* 08010824 */ POP {R4-R6} \n\
/* 08010826 */ POP {R1} \n\
/* 08010828 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
