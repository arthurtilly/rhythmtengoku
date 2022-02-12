asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802b49c \n\
/* 0802b49c */ PUSH {R4-R7, LR} \n\
/* 0802b49e */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0802b4a0 */ PUSH {R7} \n\
/* 0802b4a2 */ SUB SP, 0xC \n\
/* 0802b4a4 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0802b4a6 */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 0802b4a8 */ LDR R0, =D_030055d0 \n\
/* 0802b4aa */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0802b4ac */ LDR R1, [R0] \n\
/* 0802b4ae */ LDR R7, =0x00000555 \n\
/* 0802b4b0 */ ADDS R0, R1, R7 @ Set R0 to R1 + R7 \n\
/* 0802b4b2 */ LDRB R0, [R0] \n\
/* 0802b4b4 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0802b4b6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802b4b8 */ BEQ branch_0802b4bc \n\
/* 0802b4ba */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
 \n\
branch_0802b4bc: \n\
/* 0802b4bc */ LDRB R0, [R1, 0x1] \n\
/* 0802b4be */ LSLS R0, R0, 0x1F \n\
/* 0802b4c0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802b4c2 */ BNE branch_0802b552 \n\
/* 0802b4c4 */ LDRB R0, [R4, 0x1] \n\
/* 0802b4c6 */ MOVS R5, 0x6 @ Set R5 to 0x6 \n\
/* 0802b4c8 */ ANDS R5, R0 @ Set R5 to R5 & R0 \n\
/* 0802b4ca */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0802b4cc */ BNE branch_0802b552 \n\
/* 0802b4ce */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802b4d0 */ ADDS R0, 0xC0 @ Add 0xC0 to R0 \n\
/* 0802b4d2 */ BL func_0800c3a4 \n\
/* 0802b4d6 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0802b4d8 */ LDRSH R1, [R4, R2] \n\
/* 0802b4da */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0802b4dc */ CMP R6, R0 @ Check R6 - R0 \n\
/* 0802b4de */ BLS branch_0802b552 \n\
/* 0802b4e0 */ LDRB R0, [R4, 0x1] \n\
/* 0802b4e2 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0802b4e4 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0802b4e6 */ STRB R0, [R4, 0x1] \n\
/* 0802b4e8 */ LDR R0, =D_03005380 \n\
/* 0802b4ea */ LDR R0, [R0] \n\
/* 0802b4ec */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0802b4ee */ LDRSH R1, [R4, R3] \n\
/* 0802b4f0 */ LDR R2, =D_088c9d10 \n\
/* 0802b4f2 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802b4f4 */ STR R3, [SP] \n\
/* 0802b4f6 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0802b4f8 */ STR R3, [SP, 0x4] \n\
/* 0802b4fa */ STR R5, [SP, 0x8] \n\
/* 0802b4fc */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802b4fe */ BL func_0804d8f8 \n\
/* 0802b502 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0802b504 */ LDR R0, [R1] \n\
/* 0802b506 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0802b508 */ LDRB R0, [R0] \n\
/* 0802b50a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802b50c */ BEQ branch_0802b53c \n\
/* 0802b50e */ LDR R0, =D_089e3610 \n\
/* 0802b510 */ LDRH R1, [R4] \n\
/* 0802b512 */ LSLS R1, R1, 0x17 \n\
/* 0802b514 */ LSRS R1, R1, 0x1C \n\
/* 0802b516 */ LSLS R1, R1, 0x2 \n\
/* 0802b518 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0802b51a */ LDR R0, [R1] \n\
/* 0802b51c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802b51e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802b520 */ BL func_0802aac0 \n\
/* 0802b524 */ B branch_0802b552 \n\
\n\
.ltorg \n\
 \n\
branch_0802b53c: \n\
/* 0802b53c */ LDR R0, =D_089e35a8 \n\
/* 0802b53e */ LDRH R1, [R4] \n\
/* 0802b540 */ LSLS R1, R1, 0x17 \n\
/* 0802b542 */ LSRS R1, R1, 0x1C \n\
/* 0802b544 */ LSLS R1, R1, 0x2 \n\
/* 0802b546 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0802b548 */ LDR R0, [R1] \n\
/* 0802b54a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802b54c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802b54e */ BL func_0802aac0 \n\
 \n\
branch_0802b552: \n\
/* 0802b552 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 0802b554 */ LDRSH R1, [R4, R2] \n\
/* 0802b556 */ MOVS R0, 0x90 @ Set R0 to 0x90 \n\
/* 0802b558 */ LSLS R0, R0, 0x1 \n\
/* 0802b55a */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0802b55c */ BL func_0800c3a4 \n\
/* 0802b560 */ CMP R6, R0 @ Check R6 - R0 \n\
/* 0802b562 */ BLS branch_0802b578 \n\
/* 0802b564 */ LDRB R0, [R4, 0x1] \n\
/* 0802b566 */ LSLS R0, R0, 0x1C \n\
/* 0802b568 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802b56a */ BGE branch_0802b570 \n\
/* 0802b56c */ BL func_0802a224 \n\
 \n\
branch_0802b570: \n\
/* 0802b570 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802b572 */ B branch_0802b634 \n\
\n\
.ltorg \n\
 \n\
branch_0802b578: \n\
/* 0802b578 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0802b57a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802b57c */ BL func_0802b28c \n\
/* 0802b580 */ LDR R6, =D_03005380 \n\
/* 0802b582 */ LDR R2, [R6] \n\
/* 0802b584 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0802b586 */ LDRSH R1, [R4, R3] \n\
/* 0802b588 */ LSLS R0, R0, 0x10 \n\
/* 0802b58a */ ASRS R5, R0, 0x10 \n\
/* 0802b58c */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802b58e */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0802b590 */ BL func_0804d614 \n\
/* 0802b594 */ LDRB R0, [R4, 0xE] \n\
/* 0802b596 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802b598 */ BEQ branch_0802b5a6 \n\
/* 0802b59a */ LDR R0, [R6] \n\
/* 0802b59c */ MOVS R2, 0x10 @ Set R2 to 0x10 \n\
/* 0802b59e */ LDRSH R1, [R4, R2] \n\
/* 0802b5a0 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0802b5a2 */ BL func_0804d614 \n\
 \n\
branch_0802b5a6: \n\
/* 0802b5a6 */ LDR R2, =D_030055d0 \n\
/* 0802b5a8 */ LDR R0, [R2] \n\
/* 0802b5aa */ LDRB R0, [R0, 0x1] \n\
/* 0802b5ac */ LSLS R0, R0, 0x1F \n\
/* 0802b5ae */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802b5b0 */ BNE branch_0802b5b8 \n\
/* 0802b5b2 */ LDRH R0, [R4, 0x6] \n\
/* 0802b5b4 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0802b5b6 */ STRH R0, [R4, 0x6] \n\
 \n\
branch_0802b5b8: \n\
/* 0802b5b8 */ LDRH R1, [R4] \n\
/* 0802b5ba */ MOVS R0, 0xBC @ Set R0 to 0xBC \n\
/* 0802b5bc */ LSLS R0, R0, 0x3 \n\
/* 0802b5be */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802b5c0 */ CMP R0, 0x80 @ Compare R0 and 0x80 \n\
/* 0802b5c2 */ BNE branch_0802b632 \n\
/* 0802b5c4 */ LDRB R0, [R4, 0x1] \n\
/* 0802b5c6 */ LSLS R0, R0, 0x1B \n\
/* 0802b5c8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802b5ca */ BGE branch_0802b608 \n\
/* 0802b5cc */ LDR R0, [R2] \n\
/* 0802b5ce */ LDR R3, =0x0000054c \n\
/* 0802b5d0 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0802b5d2 */ LDR R0, [R0] \n\
/* 0802b5d4 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0802b5d6 */ BHI branch_0802b632 \n\
/* 0802b5d8 */ LDR R0, [R6] \n\
/* 0802b5da */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802b5dc */ LDRSH R1, [R4, R2] \n\
/* 0802b5de */ LDR R2, =D_088ca120 \n\
/* 0802b5e0 */ STR R7, [SP] \n\
/* 0802b5e2 */ STR R7, [SP, 0x4] \n\
/* 0802b5e4 */ STR R7, [SP, 0x8] \n\
/* 0802b5e6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802b5e8 */ BL func_0804d8f8 \n\
/* 0802b5ec */ LDRB R1, [R4, 0x1] \n\
/* 0802b5ee */ MOVS R0, 0x11 @ Set R0 to 0x11 \n\
/* 0802b5f0 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0802b5f2 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0802b5f4 */ B branch_0802b630 \n\
\n\
.ltorg \n\
 \n\
branch_0802b608: \n\
/* 0802b608 */ LDR R0, [R2] \n\
/* 0802b60a */ LDR R3, =0x0000054c \n\
/* 0802b60c */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0802b60e */ LDR R0, [R0] \n\
/* 0802b610 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0802b612 */ BLS branch_0802b632 \n\
/* 0802b614 */ LDR R0, [R6] \n\
/* 0802b616 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802b618 */ LDRSH R1, [R4, R2] \n\
/* 0802b61a */ LDR R2, =D_088ca0d8 \n\
/* 0802b61c */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802b61e */ STR R3, [SP] \n\
/* 0802b620 */ STR R7, [SP, 0x4] \n\
/* 0802b622 */ STR R7, [SP, 0x8] \n\
/* 0802b624 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802b626 */ BL func_0804d8f8 \n\
/* 0802b62a */ LDRB R0, [R4, 0x1] \n\
/* 0802b62c */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 0802b62e */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
 \n\
branch_0802b630: \n\
/* 0802b630 */ STRB R0, [R4, 0x1] \n\
 \n\
branch_0802b632: \n\
/* 0802b632 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
 \n\
branch_0802b634: \n\
/* 0802b634 */ ADD SP, 0xC \n\
/* 0802b636 */ POP {R3} \n\
/* 0802b638 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802b63a */ POP {R4-R7} \n\
/* 0802b63c */ POP {R1} \n\
/* 0802b63e */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
