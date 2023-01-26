asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801c5a4 \n\
/* 0801c5a4 */ PUSH {R4-R7, LR} \n\
/* 0801c5a6 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0801c5a8 */ PUSH {R7} \n\
/* 0801c5aa */ LDR R5, =D_030046a4 \n\
/* 0801c5ac */ LDR R0, [R5] \n\
/* 0801c5ae */ MOVS R7, 0xD8 @ Set R7 to 0xD8 \n\
/* 0801c5b0 */ LSLS R7, R7, 0x2 \n\
/* 0801c5b2 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0801c5b4 */ LDR R0, [R0] \n\
/* 0801c5b6 */ BL func_0800b368 \n\
/* 0801c5ba */ NEGS R1, R0 @ Set R1 to -R0 \n\
/* 0801c5bc */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0801c5be */ LSRS R4, R1, 0x1F \n\
/* 0801c5c0 */ LDR R0, [R5] \n\
/* 0801c5c2 */ MOVS R1, 0xDC @ Set R1 to 0xDC \n\
/* 0801c5c4 */ LSLS R1, R1, 0x2 \n\
/* 0801c5c6 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0801c5c8 */ ADD R0, R8 @ Add R8 to R0 \n\
/* 0801c5ca */ LDR R0, [R0] \n\
/* 0801c5cc */ BL func_0800b368 \n\
/* 0801c5d0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801c5d2 */ BEQ branch_0801c5d6 \n\
/* 0801c5d4 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
 \n\
branch_0801c5d6: \n\
/* 0801c5d6 */ LDR R0, [R5] \n\
/* 0801c5d8 */ MOVS R6, 0xDA @ Set R6 to 0xDA \n\
/* 0801c5da */ LSLS R6, R6, 0x2 \n\
/* 0801c5dc */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0801c5de */ LDR R0, [R0] \n\
/* 0801c5e0 */ BL func_0800b368 \n\
/* 0801c5e4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801c5e6 */ BEQ branch_0801c5ea \n\
/* 0801c5e8 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
 \n\
branch_0801c5ea: \n\
/* 0801c5ea */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0801c5ec */ BNE branch_0801c5fe \n\
/* 0801c5ee */ LDR R1, [R5] \n\
/* 0801c5f0 */ LDR R3, =0x37a \n\
/* 0801c5f2 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0801c5f4 */ LDRH R2, [R1] \n\
/* 0801c5f6 */ MOVS R0, 0xC8 @ Set R0 to 0xC8 \n\
/* 0801c5f8 */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 0801c5fa */ ASRS R0, R0, 0x8 \n\
/* 0801c5fc */ STRH R0, [R1] \n\
 \n\
branch_0801c5fe: \n\
/* 0801c5fe */ LDR R2, [R5] \n\
/* 0801c600 */ LDR R1, =0x376 \n\
/* 0801c602 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0801c604 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801c606 */ LDRSH R0, [R0, R3] \n\
/* 0801c608 */ MOVS R3, 0xDE @ Set R3 to 0xDE \n\
/* 0801c60a */ LSLS R3, R3, 0x2 \n\
/* 0801c60c */ ADDS R1, R2, R3 @ Set R1 to R2 + R3 \n\
/* 0801c60e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801c610 */ LDRSH R1, [R1, R3] \n\
/* 0801c612 */ LDR R3, =0x37a \n\
/* 0801c614 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 0801c616 */ LDRH R2, [R2] \n\
/* 0801c618 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 0801c61a */ LSLS R3, R3, 0x1 \n\
/* 0801c61c */ SUBS R2, R3, R2 @ Set R2 to R3 - R2 \n\
/* 0801c61e */ BL func_08008f04 \n\
/* 0801c622 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801c624 */ LSLS R4, R4, 0x10 \n\
/* 0801c626 */ LSRS R4, R4, 0x10 \n\
/* 0801c628 */ LDR R0, =D_03004b10 \n\
/* 0801c62a */ STRH R4, [R0, 0x10] \n\
/* 0801c62c */ LDR R0, [R5] \n\
/* 0801c62e */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0801c630 */ LDR R0, [R0] \n\
/* 0801c632 */ LSLS R4, R4, 0x10 \n\
/* 0801c634 */ ASRS R4, R4, 0x10 \n\
/* 0801c636 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801c638 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801c63a */ BL func_0800b384 \n\
/* 0801c63e */ LDR R0, [R5] \n\
/* 0801c640 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0801c642 */ LDR R0, [R0] \n\
/* 0801c644 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801c646 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801c648 */ BL func_0800b384 \n\
/* 0801c64c */ LDR R0, [R5] \n\
/* 0801c64e */ ADD R0, R8 @ Add R8 to R0 \n\
/* 0801c650 */ LDR R0, [R0] \n\
/* 0801c652 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801c654 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801c656 */ BL func_0800b384 \n\
/* 0801c65a */ POP {R3} \n\
/* 0801c65c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801c65e */ POP {R4-R7} \n\
/* 0801c660 */ POP {R0} \n\
/* 0801c662 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
