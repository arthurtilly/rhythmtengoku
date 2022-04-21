asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804c508 \n\
/* 0804c508 */ PUSH {R4-R7, LR} \n\
/* 0804c50a */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0804c50c */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0804c50e */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0804c510 */ PUSH {R5-R7} \n\
/* 0804c512 */ LDR R1, =D_03001598 \n\
/* 0804c514 */ LDR R1, [R1] \n\
/* 0804c516 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 0804c518 */ LDR R1, =D_030015a0 \n\
/* 0804c51a */ LDR R7, [R1] \n\
/* 0804c51c */ LDR R1, =D_030015a4 \n\
/* 0804c51e */ LDRH R5, [R1] \n\
/* 0804c520 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804c522 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0804c524 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0804c526 */ BNE branch_0804c52a \n\
/* 0804c528 */ B branch_0804c696 \n\
 \n\
branch_0804c52a: \n\
/* 0804c52a */ LDRB R3, [R7] \n\
/* 0804c52c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804c52e */ LDRSB R1, [R7, R1] \n\
/* 0804c530 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804c532 */ BGE branch_0804c56e \n\
/* 0804c534 */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 0804c536 */ ANDS R2, R3 @ Set R2 to R2 & R3 \n\
/* 0804c538 */ MOVS R1, 0xF @ Set R1 to 0xF \n\
/* 0804c53a */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0804c53c */ ANDS R1, R3 @ Set R1 to R1 & R3 \n\
/* 0804c53e */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0804c540 */ ADDS R1, R7, 0x1 @ Set R1 to R7 + 0x1 \n\
/* 0804c542 */ MOV R12, R1 @ Set R12 to R1 \n\
/* 0804c544 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 0804c546 */ LDR R6, =D_030015a6 \n\
/* 0804c548 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0804c54a */ ADDS R1, 0x80 @ Add 0x80 to R1 \n\
/* 0804c54c */ LSLS R1, R1, 0x18 \n\
/* 0804c54e */ LSRS R1, R1, 0x18 \n\
/* 0804c550 */ CMP R1, 0x6F @ Compare R1 and 0x6F \n\
/* 0804c552 */ BHI branch_0804c568 \n\
/* 0804c554 */ STRB R3, [R6] \n\
/* 0804c556 */ B branch_0804c582 \n\
\n\
.ltorg \n\
 \n\
branch_0804c568: \n\
/* 0804c568 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804c56a */ STRB R1, [R6] \n\
/* 0804c56c */ B branch_0804c582 \n\
 \n\
branch_0804c56e: \n\
/* 0804c56e */ LDR R1, =D_030015a6 \n\
/* 0804c570 */ LDRB R1, [R1] \n\
/* 0804c572 */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 0804c574 */ ANDS R2, R1 @ Set R2 to R2 & R1 \n\
/* 0804c576 */ MOVS R3, 0xF @ Set R3 to 0xF \n\
/* 0804c578 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804c57a */ ANDS R3, R1 @ Set R3 to R3 & R1 \n\
/* 0804c57c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804c57e */ MOV R12, R7 @ Set R12 to R7 \n\
/* 0804c580 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_0804c582: \n\
/* 0804c582 */ ADDS R6, R4, 0x1 @ Set R6 to R4 + 0x1 \n\
/* 0804c584 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 0804c586 */ MOV R1, R12 @ Set R1 to R12 \n\
/* 0804c588 */ LDRB R3, [R1] \n\
/* 0804c58a */ LDRB R1, [R1, 0x1] \n\
/* 0804c58c */ MOV R12, R1 @ Set R12 to R1 \n\
/* 0804c58e */ CMP R2, 0xB0 @ Compare R2 and 0xB0 \n\
/* 0804c590 */ BEQ branch_0804c5ec \n\
/* 0804c592 */ CMP R2, 0xB0 @ Compare R2 and 0xB0 \n\
/* 0804c594 */ BGT branch_0804c5ae \n\
/* 0804c596 */ CMP R2, 0x90 @ Compare R2 and 0x90 \n\
/* 0804c598 */ BEQ branch_0804c5d6 \n\
/* 0804c59a */ CMP R2, 0x90 @ Compare R2 and 0x90 \n\
/* 0804c59c */ BGT branch_0804c5a8 \n\
/* 0804c59e */ CMP R2, 0x80 @ Compare R2 and 0x80 \n\
/* 0804c5a0 */ BEQ branch_0804c5c6 \n\
/* 0804c5a2 */ B branch_0804c686 \n\
\n\
.ltorg \n\
 \n\
branch_0804c5a8: \n\
/* 0804c5a8 */ CMP R2, 0xA0 @ Compare R2 and 0xA0 \n\
/* 0804c5aa */ BEQ branch_0804c5e6 \n\
/* 0804c5ac */ B branch_0804c686 \n\
 \n\
branch_0804c5ae: \n\
/* 0804c5ae */ CMP R2, 0xD0 @ Compare R2 and 0xD0 \n\
/* 0804c5b0 */ BEQ branch_0804c610 \n\
/* 0804c5b2 */ CMP R2, 0xD0 @ Compare R2 and 0xD0 \n\
/* 0804c5b4 */ BGT branch_0804c5bc \n\
/* 0804c5b6 */ CMP R2, 0xC0 @ Compare R2 and 0xC0 \n\
/* 0804c5b8 */ BEQ branch_0804c5fe \n\
/* 0804c5ba */ B branch_0804c686 \n\
 \n\
branch_0804c5bc: \n\
/* 0804c5bc */ CMP R2, 0xE0 @ Compare R2 and 0xE0 \n\
/* 0804c5be */ BEQ branch_0804c620 \n\
/* 0804c5c0 */ CMP R2, 0xF0 @ Compare R2 and 0xF0 \n\
/* 0804c5c2 */ BEQ branch_0804c63e \n\
/* 0804c5c4 */ B branch_0804c686 \n\
 \n\
branch_0804c5c6: \n\
/* 0804c5c6 */ CMP R5, R4 @ Check R5 - R4 \n\
/* 0804c5c8 */ BCC branch_0804c614 \n\
/* 0804c5ca */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804c5cc */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0804c5ce */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804c5d0 */ BL func_0804bc5c \n\
/* 0804c5d4 */ B branch_0804c67a \n\
 \n\
branch_0804c5d6: \n\
/* 0804c5d6 */ CMP R5, R4 @ Check R5 - R4 \n\
/* 0804c5d8 */ BCC branch_0804c64c \n\
/* 0804c5da */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804c5dc */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0804c5de */ MOV R2, R12 @ Set R2 to R12 \n\
/* 0804c5e0 */ BL func_0804bc5c \n\
/* 0804c5e4 */ B branch_0804c67a \n\
 \n\
branch_0804c5e6: \n\
/* 0804c5e6 */ CMP R5, R4 @ Check R5 - R4 \n\
/* 0804c5e8 */ BCC branch_0804c614 \n\
/* 0804c5ea */ B branch_0804c67a \n\
 \n\
branch_0804c5ec: \n\
/* 0804c5ec */ CMP R5, R4 @ Check R5 - R4 \n\
/* 0804c5ee */ BCC branch_0804c64c \n\
/* 0804c5f0 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0804c5f2 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804c5f4 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 0804c5f6 */ MOV R3, R12 @ Set R3 to R12 \n\
/* 0804c5f8 */ BL func_0804b95c \n\
/* 0804c5fc */ B branch_0804c67a \n\
 \n\
branch_0804c5fe: \n\
/* 0804c5fe */ CMP R5, R6 @ Check R5 - R6 \n\
/* 0804c600 */ BCC branch_0804c614 \n\
/* 0804c602 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0804c604 */ LDR R0, [R1, 0x4] \n\
/* 0804c606 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804c608 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 0804c60a */ BL func_0804ab88 \n\
/* 0804c60e */ B branch_0804c61a \n\
 \n\
branch_0804c610: \n\
/* 0804c610 */ CMP R5, R6 @ Check R5 - R6 \n\
/* 0804c612 */ BCS branch_0804c61a \n\
 \n\
branch_0804c614: \n\
/* 0804c614 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0804c616 */ MOV R9, R3 @ Set R9 to R3 \n\
/* 0804c618 */ B branch_0804c68a \n\
 \n\
branch_0804c61a: \n\
/* 0804c61a */ ADDS R7, R7, R6 @ Set R7 to R7 + R6 \n\
/* 0804c61c */ SUBS R5, R5, R6 @ Set R5 to R5 - R6 \n\
/* 0804c61e */ B branch_0804c68a \n\
 \n\
branch_0804c620: \n\
/* 0804c620 */ CMP R5, R4 @ Check R5 - R4 \n\
/* 0804c622 */ BCC branch_0804c64c \n\
/* 0804c624 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 0804c626 */ ANDS R3, R0 @ Set R3 to R3 & R0 \n\
/* 0804c628 */ MOV R1, R12 @ Set R1 to R12 \n\
/* 0804c62a */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0804c62c */ LSLS R0, R1, 0x7 \n\
/* 0804c62e */ ORRS R3, R0 @ Set R3 to R3 | R0 \n\
/* 0804c630 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0804c632 */ LDR R0, [R1, 0x4] \n\
/* 0804c634 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804c636 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 0804c638 */ BL func_0804aa40 \n\
/* 0804c63c */ B branch_0804c67a \n\
 \n\
branch_0804c63e: \n\
/* 0804c63e */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0804c640 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0804c642 */ BEQ branch_0804c652 \n\
/* 0804c644 */ CMP R3, 0x3 @ Compare R3 and 0x3 \n\
/* 0804c646 */ BHI branch_0804c686 \n\
/* 0804c648 */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 0804c64a */ BHI branch_0804c680 \n\
 \n\
branch_0804c64c: \n\
/* 0804c64c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804c64e */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0804c650 */ B branch_0804c68a \n\
 \n\
branch_0804c652: \n\
/* 0804c652 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 0804c654 */ ADDS R1, R7, 0x1 @ Set R1 to R7 + 0x1 \n\
/* 0804c656 */ CMP R4, R5 @ Check R4 - R5 \n\
/* 0804c658 */ BCS branch_0804c674 \n\
/* 0804c65a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804c65c */ LDRSB R0, [R7, R0] \n\
/* 0804c65e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804c660 */ BLT branch_0804c674 \n\
 \n\
branch_0804c662: \n\
/* 0804c662 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0804c664 */ CMP R4, R5 @ Check R4 - R5 \n\
/* 0804c666 */ BCS branch_0804c674 \n\
/* 0804c668 */ ADDS R0, R7, R4 @ Set R0 to R7 + R4 \n\
/* 0804c66a */ LDRB R0, [R0] \n\
/* 0804c66c */ LSLS R0, R0, 0x18 \n\
/* 0804c66e */ ASRS R0, R0, 0x18 \n\
/* 0804c670 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804c672 */ BGE branch_0804c662 \n\
 \n\
branch_0804c674: \n\
/* 0804c674 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0804c676 */ BL func_0804b80c \n\
 \n\
branch_0804c67a: \n\
/* 0804c67a */ ADDS R7, R7, R4 @ Set R7 to R7 + R4 \n\
/* 0804c67c */ SUBS R5, R5, R4 @ Set R5 to R5 - R4 \n\
/* 0804c67e */ B branch_0804c68a \n\
 \n\
branch_0804c680: \n\
/* 0804c680 */ ADDS R7, 0x2 @ Add 0x2 to R7 \n\
/* 0804c682 */ SUBS R5, 0x2 @ Subtract 0x2 from R5 \n\
/* 0804c684 */ B branch_0804c68a \n\
 \n\
branch_0804c686: \n\
/* 0804c686 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 0804c688 */ SUBS R5, 0x1 @ Subtract 0x1 from R5 \n\
 \n\
branch_0804c68a: \n\
/* 0804c68a */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0804c68c */ BEQ branch_0804c696 \n\
/* 0804c68e */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0804c690 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0804c692 */ BNE branch_0804c696 \n\
/* 0804c694 */ B branch_0804c52a \n\
 \n\
branch_0804c696: \n\
/* 0804c696 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0804c698 */ LDR R6, =D_030015a4 \n\
/* 0804c69a */ CMP R4, R5 @ Check R4 - R5 \n\
/* 0804c69c */ BCS branch_0804c6b0 \n\
/* 0804c69e */ LDR R3, =D_030015a0 \n\
 \n\
branch_0804c6a0: \n\
/* 0804c6a0 */ LDR R1, [R3] \n\
/* 0804c6a2 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0804c6a4 */ ADDS R2, R7, R4 @ Set R2 to R7 + R4 \n\
/* 0804c6a6 */ LDRB R2, [R2] \n\
/* 0804c6a8 */ STRB R2, [R1] \n\
/* 0804c6aa */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0804c6ac */ CMP R4, R5 @ Check R4 - R5 \n\
/* 0804c6ae */ BCC branch_0804c6a0 \n\
 \n\
branch_0804c6b0: \n\
/* 0804c6b0 */ STRH R5, [R6] \n\
/* 0804c6b2 */ POP {R3-R5} \n\
/* 0804c6b4 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804c6b6 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0804c6b8 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0804c6ba */ POP {R4-R7} \n\
/* 0804c6bc */ POP {R1} \n\
/* 0804c6be */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
