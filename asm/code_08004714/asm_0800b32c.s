asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800b32c \n\
/* 0800b32c */ PUSH {R4, R5, LR} \n\
/* 0800b32e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0800b330 */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 0800b332 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800b334 */ BEQ branch_0800b362 \n\
/* 0800b336 */ MOVS R1, 0x16 @ Set R1 to 0x16 \n\
/* 0800b338 */ LDRSH R0, [R2, R1] \n\
/* 0800b33a */ MOVS R3, 0x2C @ Set R3 to 0x2C \n\
/* 0800b33c */ LDRSH R1, [R2, R3] \n\
/* 0800b33e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800b340 */ MOVS R3, 0x30 @ Set R3 to 0x30 \n\
/* 0800b342 */ LDRSH R1, [R2, R3] \n\
/* 0800b344 */ ADDS R1, R0, R1 @ Set R1 to R0 + R1 \n\
/* 0800b346 */ LDRB R4, [R2, 0x8] \n\
/* 0800b348 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0800b34a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800b34c */ BL __modsi3 \n\
/* 0800b350 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800b352 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800b354 */ BGE branch_0800b358 \n\
/* 0800b356 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
 \n\
branch_0800b358: \n\
/* 0800b358 */ LDR R0, [R5, 0x4] \n\
/* 0800b35a */ BL func_0800add8 \n\
/* 0800b35e */ LSLS R0, R0, 0x10 \n\
/* 0800b360 */ ASRS R0, R0, 0x10 \n\
 \n\
branch_0800b362: \n\
/* 0800b362 */ POP {R4, R5} \n\
/* 0800b364 */ POP {R1} \n\
/* 0800b366 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
