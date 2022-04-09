asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800a4a8 \n\
/* 0800a4a8 */ PUSH {R4-R7, LR} \n\
/* 0800a4aa */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0800a4ac */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0800a4ae */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800a4b0 */ PUSH {R5-R7} \n\
/* 0800a4b2 */ SUB SP, 0x2C \n\
/* 0800a4b4 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0800a4b6 */ STR R1, [SP, 0x1C] \n\
/* 0800a4b8 */ STR R2, [SP, 0x18] \n\
/* 0800a4ba */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0800a4bc */ STR R0, [SP, 0x20] \n\
/* 0800a4be */ LDRB R0, [R0] \n\
/* 0800a4c0 */ LDR R1, =D_030012fc \n\
/* 0800a4c2 */ STRB R0, [R1] \n\
/* 0800a4c4 */ LDRB R0, [R7, 0x6] \n\
/* 0800a4c6 */ LDR R2, =D_030012fd \n\
/* 0800a4c8 */ STRB R0, [R2] \n\
/* 0800a4ca */ LDRB R0, [R7, 0xA] \n\
/* 0800a4cc */ LDR R1, =D_030012fe \n\
/* 0800a4ce */ STRB R0, [R1] \n\
/* 0800a4d0 */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 0800a4d2 */ ADDS R2, 0x25 @ Add 0x25 to R2 \n\
/* 0800a4d4 */ STR R2, [SP, 0x24] \n\
/* 0800a4d6 */ LDRB R0, [R2] \n\
/* 0800a4d8 */ LDR R1, =D_030012ff \n\
/* 0800a4da */ STRB R0, [R1] \n\
/* 0800a4dc */ ADDS R2, 0x30 @ Add 0x30 to R2 \n\
/* 0800a4de */ STR R2, [SP, 0x28] \n\
/* 0800a4e0 */ LDRB R0, [R2] \n\
/* 0800a4e2 */ LDR R1, =D_03001300 \n\
/* 0800a4e4 */ STRB R0, [R1] \n\
/* 0800a4e6 */ LDR R0, =(func_0800a2f8 + 1) \n\
/* 0800a4e8 */ BL func_0800a084 \n\
/* 0800a4ec */ LDRB R1, [R7, 0x4] \n\
/* 0800a4ee */ LDR R0, =D_08938258 \n\
/* 0800a4f0 */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 0800a4f2 */ LDRB R6, [R0] \n\
/* 0800a4f4 */ LDR R0, =D_0893825d \n\
/* 0800a4f6 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800a4f8 */ LDRB R4, [R1] \n\
/* 0800a4fa */ LDR R0, [SP, 0x1C] \n\
/* 0800a4fc */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800a4fe */ BL __umodsi3 \n\
/* 0800a502 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800a504 */ LDR R0, [SP, 0x1C] \n\
/* 0800a506 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800a508 */ BL __udivsi3 \n\
/* 0800a50c */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0800a50e */ MULS R2, R6 @ Multiply R2 by R6 \n\
/* 0800a510 */ MOV R10, R2 @ Set R10 to R2 \n\
/* 0800a512 */ LSLS R0, R0, 0x1 \n\
/* 0800a514 */ LDRH R1, [R7, 0x26] \n\
/* 0800a516 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800a518 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0800a51a */ LSLS R4, R1, 0x5 \n\
/* 0800a51c */ ADD R4, R10 @ Add R10 to R4 \n\
/* 0800a51e */ LSLS R4, R4, 0x5 \n\
/* 0800a520 */ LDR R2, =D_06010000 \n\
/* 0800a522 */ ADDS R1, R4, R2 @ Set R1 to R4 + R2 \n\
/* 0800a524 */ LSLS R6, R6, 0x5 \n\
/* 0800a526 */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
/* 0800a528 */ LSLS R5, R5, 0x2 \n\
/* 0800a52a */ STR R5, [SP] \n\
/* 0800a52c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800a52e */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0800a530 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0800a532 */ BL func_080018e0 \n\
/* 0800a536 */ LDR R0, =D_06010400 \n\
/* 0800a538 */ ADDS R1, R4, R0 @ Set R1 to R4 + R0 \n\
/* 0800a53a */ STR R5, [SP] \n\
/* 0800a53c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800a53e */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0800a540 */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0800a542 */ BL func_080018e0 \n\
/* 0800a546 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800a548 */ ADDS R0, 0x54 @ Add 0x54 to R0 \n\
/* 0800a54a */ LDRB R0, [R0] \n\
/* 0800a54c */ LDR R2, [SP, 0x1C] \n\
/* 0800a54e */ SUBS R1, R2, R0 @ Set R1 to R2 - R0 \n\
/* 0800a550 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800a552 */ BGE branch_0800a55a \n\
/* 0800a554 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0800a556 */ LDRSH R0, [R7, R2] \n\
/* 0800a558 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
 \n\
branch_0800a55a: \n\
/* 0800a55a */ LDRH R0, [R7, 0x2C] \n\
/* 0800a55c */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0800a55e */ LDRB R0, [R7, 0xB] \n\
/* 0800a560 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800a562 */ MULS R5, R1 @ Multiply R5 by R1 \n\
/* 0800a564 */ LDRH R1, [R7, 0x2E] \n\
/* 0800a566 */ ADDS R5, R5, R1 @ Set R5 to R5 + R1 \n\
/* 0800a568 */ LSLS R5, R5, 0x10 \n\
/* 0800a56a */ LSRS R5, R5, 0x10 \n\
/* 0800a56c */ LDRH R6, [R7, 0x30] \n\
/* 0800a56e */ LDRH R0, [R7] \n\
/* 0800a570 */ LDRB R3, [R7, 0xA] \n\
/* 0800a572 */ ADD R2, SP, 0x18 \n\
/* 0800a574 */ STR R2, [SP] \n\
/* 0800a576 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0800a578 */ STR R1, [SP, 0x4] \n\
/* 0800a57a */ LDRB R1, [R7, 0x6] \n\
/* 0800a57c */ STR R1, [SP, 0x8] \n\
/* 0800a57e */ LDRH R1, [R7, 0x8] \n\
/* 0800a580 */ STR R1, [SP, 0xC] \n\
/* 0800a582 */ LDR R2, [SP, 0x24] \n\
/* 0800a584 */ LDRB R1, [R2] \n\
/* 0800a586 */ STR R1, [SP, 0x10] \n\
/* 0800a588 */ LDR R2, [SP, 0x28] \n\
/* 0800a58a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800a58c */ LDRSB R1, [R2, R1] \n\
/* 0800a58e */ STR R1, [SP, 0x14] \n\
/* 0800a590 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0800a592 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800a594 */ BL func_0800a030 \n\
/* 0800a598 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800a59a */ LDR R0, =D_03005380 \n\
/* 0800a59c */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800a59e */ LDR R0, [R0] \n\
/* 0800a5a0 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0800a5a2 */ LSLS R2, R2, 0x10 \n\
/* 0800a5a4 */ ASRS R2, R2, 0x10 \n\
/* 0800a5a6 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0800a5a8 */ LSLS R5, R5, 0x10 \n\
/* 0800a5aa */ ASRS R5, R5, 0x10 \n\
/* 0800a5ac */ STR R5, [SP] \n\
/* 0800a5ae */ STR R6, [SP, 0x4] \n\
/* 0800a5b0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800a5b2 */ STR R2, [SP, 0x8] \n\
/* 0800a5b4 */ STR R2, [SP, 0xC] \n\
/* 0800a5b6 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0800a5b8 */ LSLS R2, R2, 0x8 \n\
/* 0800a5ba */ STR R2, [SP, 0x10] \n\
/* 0800a5bc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800a5be */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0800a5c0 */ BL func_0804d160 \n\
/* 0800a5c4 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800a5c6 */ LSLS R4, R4, 0x10 \n\
/* 0800a5c8 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800a5ca */ LDR R0, [R1] \n\
/* 0800a5cc */ LSRS R2, R4, 0x10 \n\
/* 0800a5ce */ MOV R10, R2 @ Set R10 to R2 \n\
/* 0800a5d0 */ ASRS R4, R4, 0x10 \n\
/* 0800a5d2 */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 0800a5d4 */ LDRSB R2, [R7, R2] \n\
/* 0800a5d6 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800a5d8 */ BL func_0804d8c4 \n\
/* 0800a5dc */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800a5de */ LDR R0, [R1] \n\
/* 0800a5e0 */ LDR R2, [R7, 0x4C] \n\
/* 0800a5e2 */ LDR R3, [R7, 0x50] \n\
/* 0800a5e4 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800a5e6 */ BL func_0804db44 \n\
/* 0800a5ea */ LDR R0, [R7, 0x10] \n\
/* 0800a5ec */ LDR R2, [SP, 0x1C] \n\
/* 0800a5ee */ LSLS R4, R2, 0x1 \n\
/* 0800a5f0 */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 0800a5f2 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0800a5f4 */ STRH R1, [R0] \n\
/* 0800a5f6 */ BL func_0800a05c \n\
/* 0800a5fa */ LDR R1, [R7, 0x14] \n\
/* 0800a5fc */ ADDS R1, R4, R1 @ Set R1 to R4 + R1 \n\
/* 0800a5fe */ STRH R0, [R1] \n\
/* 0800a600 */ LDR R0, [R7, 0x18] \n\
/* 0800a602 */ LDR R2, [SP, 0x1C] \n\
/* 0800a604 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800a606 */ LDR R2, =D_030012fc \n\
/* 0800a608 */ LDRB R1, [R2] \n\
/* 0800a60a */ STRB R1, [R0] \n\
/* 0800a60c */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800a60e */ LDR R0, [R1] \n\
/* 0800a610 */ LDR R1, [R7, 0x20] \n\
/* 0800a612 */ ADDS R1, R4, R1 @ Set R1 to R4 + R1 \n\
/* 0800a614 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800a616 */ LDRSH R1, [R1, R2] \n\
/* 0800a618 */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 0800a61a */ LSLS R6, R6, 0x10 \n\
/* 0800a61c */ LSRS R6, R6, 0x10 \n\
/* 0800a61e */ STR R6, [SP] \n\
/* 0800a620 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0800a622 */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 0800a624 */ BL func_0804d55c \n\
/* 0800a628 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800a62a */ LDR R0, [R1] \n\
/* 0800a62c */ LDR R1, [R7, 0x20] \n\
/* 0800a62e */ ADDS R4, R4, R1 @ Set R4 to R4 + R1 \n\
/* 0800a630 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800a632 */ LDRSH R1, [R4, R2] \n\
/* 0800a634 */ LDR R2, [R7, 0x4C] \n\
/* 0800a636 */ LDR R3, [R7, 0x50] \n\
/* 0800a638 */ BL func_0804db44 \n\
/* 0800a63c */ LDR R1, =D_030012fc \n\
/* 0800a63e */ LDRB R0, [R1] \n\
/* 0800a640 */ LDR R2, [SP, 0x20] \n\
/* 0800a642 */ STRB R0, [R2] \n\
/* 0800a644 */ LDR R1, =D_030012fd \n\
/* 0800a646 */ LDRB R0, [R1] \n\
/* 0800a648 */ STRB R0, [R7, 0x6] \n\
/* 0800a64a */ LDR R2, =D_030012fe \n\
/* 0800a64c */ LDRB R0, [R2] \n\
/* 0800a64e */ STRB R0, [R7, 0xA] \n\
/* 0800a650 */ LDR R1, =D_030012ff \n\
/* 0800a652 */ LDRB R0, [R1] \n\
/* 0800a654 */ LDR R2, [SP, 0x24] \n\
/* 0800a656 */ STRB R0, [R2] \n\
/* 0800a658 */ LDR R1, =D_03001300 \n\
/* 0800a65a */ LDRB R0, [R1] \n\
/* 0800a65c */ LDR R2, [SP, 0x28] \n\
/* 0800a65e */ STRB R0, [R2] \n\
/* 0800a660 */ LDR R0, [SP, 0x18] \n\
/* 0800a662 */ ADD SP, 0x2C \n\
/* 0800a664 */ POP {R3-R5} \n\
/* 0800a666 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800a668 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800a66a */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0800a66c */ POP {R4-R7} \n\
/* 0800a66e */ POP {R1} \n\
/* 0800a670 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
