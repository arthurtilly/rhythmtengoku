asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080296b0 \n\
/* 080296b0 */ PUSH {R4-R7, LR} \n\
/* 080296b2 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080296b4 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 080296b6 */ LDR R6, =D_03005380 \n\
/* 080296b8 */ LDR R0, [R6] \n\
/* 080296ba */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 080296bc */ LDRSH R1, [R4, R2] \n\
/* 080296be */ BL func_0804d6cc \n\
/* 080296c2 */ LSLS R0, R0, 0x18 \n\
/* 080296c4 */ ASRS R0, R0, 0x16 \n\
/* 080296c6 */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 080296c8 */ LDR R0, [R6] \n\
/* 080296ca */ MOVS R3, 0x12 @ Set R3 to 0x12 \n\
/* 080296cc */ LDRSH R1, [R4, R3] \n\
/* 080296ce */ LDRH R2, [R5] \n\
/* 080296d0 */ LDRH R7, [R4, 0x22] \n\
/* 080296d2 */ ADDS R2, R2, R7 @ Set R2 to R2 + R7 \n\
/* 080296d4 */ LSLS R2, R2, 0x10 \n\
/* 080296d6 */ ASRS R2, R2, 0x10 \n\
/* 080296d8 */ LDRH R3, [R5, 0x2] \n\
/* 080296da */ LDRH R7, [R4, 0x24] \n\
/* 080296dc */ ADDS R3, R3, R7 @ Set R3 to R3 + R7 \n\
/* 080296de */ LSLS R3, R3, 0x10 \n\
/* 080296e0 */ ASRS R3, R3, 0x10 \n\
/* 080296e2 */ BL func_0804d5d4 \n\
/* 080296e6 */ LDR R0, [R6] \n\
/* 080296e8 */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 080296ea */ LDRSH R1, [R4, R2] \n\
/* 080296ec */ LDRH R2, [R5] \n\
/* 080296ee */ LDRH R3, [R4, 0x26] \n\
/* 080296f0 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 080296f2 */ LSLS R2, R2, 0x10 \n\
/* 080296f4 */ ASRS R2, R2, 0x10 \n\
/* 080296f6 */ LDRH R3, [R5, 0x2] \n\
/* 080296f8 */ LDRH R7, [R4, 0x28] \n\
/* 080296fa */ ADDS R3, R3, R7 @ Set R3 to R3 + R7 \n\
/* 080296fc */ LSLS R3, R3, 0x10 \n\
/* 080296fe */ ASRS R3, R3, 0x10 \n\
/* 08029700 */ BL func_0804d5d4 \n\
/* 08029704 */ LDR R0, [R6] \n\
/* 08029706 */ MOVS R2, 0x1A @ Set R2 to 0x1A \n\
/* 08029708 */ LDRSH R1, [R4, R2] \n\
/* 0802970a */ LDRH R2, [R5] \n\
/* 0802970c */ LDRH R3, [R4, 0x2A] \n\
/* 0802970e */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 08029710 */ LSLS R2, R2, 0x10 \n\
/* 08029712 */ ASRS R2, R2, 0x10 \n\
/* 08029714 */ LDRH R3, [R5, 0x2] \n\
/* 08029716 */ LDRH R4, [R4, 0x2C] \n\
/* 08029718 */ ADDS R3, R3, R4 @ Set R3 to R3 + R4 \n\
/* 0802971a */ LSLS R3, R3, 0x10 \n\
/* 0802971c */ ASRS R3, R3, 0x10 \n\
/* 0802971e */ BL func_0804d5d4 \n\
/* 08029722 */ POP {R4-R7} \n\
/* 08029724 */ POP {R0} \n\
/* 08029726 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
