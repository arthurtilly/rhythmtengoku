asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080015bc \n\
/* 080015bc */ PUSH {R4-R7, LR} \n\
/* 080015be */ MOV R7, R8 @ Set R7 to R8 \n\
/* 080015c0 */ PUSH {R7} \n\
/* 080015c2 */ LDR R0, =0x04000130 @ !Hardware REG_KEY \n\
/* 080015c4 */ LDRH R0, [R0] \n\
/* 080015c6 */ LDR R1, =D_030000ac \n\
/* 080015c8 */ LDRH R7, [R1] \n\
/* 080015ca */ ADDS R6, R7, 0x0 @ Set R6 to R7 + 0x0 \n\
/* 080015cc */ BICS R6, R0 @ Clear bits in R0 from R6 \n\
/* 080015ce */ LDR R0, =D_030000a8 \n\
/* 080015d0 */ LDRB R2, [R0] \n\
/* 080015d2 */ MOV R12, R1 @ Set R12 to R1 \n\
/* 080015d4 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080015d6 */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 080015d8 */ BEQ branch_0800161c \n\
/* 080015da */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 080015dc */ BGT branch_080015e0 \n\
/* 080015de */ B branch_08001710 \n\
 \n\
branch_080015e0: \n\
/* 080015e0 */ CMP R2, 0x4 @ Compare R2 and 0x4 \n\
/* 080015e2 */ BLE branch_080015e6 \n\
/* 080015e4 */ B branch_08001710 \n\
 \n\
branch_080015e6: \n\
/* 080015e6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080015e8 */ LDR R1, =D_030053b4 \n\
/* 080015ea */ LDR R0, =D_03005374 \n\
/* 080015ec */ LDR R2, [R1] \n\
/* 080015ee */ LDR R5, [R0] \n\
/* 080015f0 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 080015f2 */ CMP R2, R5 @ Check R2 - R5 \n\
/* 080015f4 */ BCC branch_080015f8 \n\
/* 080015f6 */ B branch_080016f2 \n\
 \n\
branch_080015f8: \n\
/* 080015f8 */ LDR R0, =D_030000a9 \n\
/* 080015fa */ LDRB R0, [R0] \n\
/* 080015fc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080015fe */ BEQ branch_080016b4 \n\
/* 08001600 */ B branch_0800169c \n\
\n\
.ltorg \n\
 \n\
branch_0800161c: \n\
/* 0800161c */ LDR R0, =D_030000a9 \n\
/* 0800161e */ LDRB R4, [R0] \n\
/* 08001620 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08001622 */ BNE branch_08001710 \n\
/* 08001624 */ LDR R0, =D_030053b4 \n\
/* 08001626 */ MOV R12, R0 @ Set R12 to R0 \n\
/* 08001628 */ LDR R0, =D_03005374 \n\
/* 0800162a */ MOV R1, R12 @ Set R1 to R12 \n\
/* 0800162c */ LDR R3, [R1] \n\
/* 0800162e */ LDR R5, [R0] \n\
/* 08001630 */ CMP R3, R5 @ Check R3 - R5 \n\
/* 08001632 */ BCS branch_08001710 \n\
/* 08001634 */ LDR R0, =D_030000b0 \n\
/* 08001636 */ LDR R7, [R0] \n\
/* 08001638 */ LSLS R0, R3, 0x1 \n\
/* 0800163a */ ADDS R2, R0, R7 @ Set R2 to R0 + R7 \n\
/* 0800163c */ LDRH R1, [R2] \n\
/* 0800163e */ LDR R0, =0x3ff \n\
/* 08001640 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08001642 */ CMP R0, R6 @ Check R0 - R6 \n\
/* 08001644 */ BNE branch_08001682 \n\
/* 08001646 */ LDR R1, =D_030000aa \n\
/* 08001648 */ LDRB R0, [R1] \n\
/* 0800164a */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0800164c */ STRB R0, [R1] \n\
/* 0800164e */ LSLS R0, R0, 0x18 \n\
/* 08001650 */ LSRS R0, R0, 0x18 \n\
/* 08001652 */ CMP R0, 0x3F @ Compare R0 and 0x3F \n\
/* 08001654 */ BLS branch_08001674 \n\
/* 08001656 */ STRB R4, [R1] \n\
/* 08001658 */ B branch_08001686 \n\
\n\
.ltorg \n\
 \n\
branch_08001674: \n\
/* 08001674 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08001676 */ LSLS R1, R1, 0x3 \n\
/* 08001678 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0800167a */ LDRH R1, [R2] \n\
/* 0800167c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800167e */ STRH R0, [R2] \n\
/* 08001680 */ B branch_08001710 \n\
 \n\
branch_08001682: \n\
/* 08001682 */ LDR R0, =D_030000aa \n\
/* 08001684 */ STRB R4, [R0] \n\
 \n\
branch_08001686: \n\
/* 08001686 */ ADDS R0, R3, 0x1 @ Set R0 to R3 + 0x1 \n\
/* 08001688 */ MOV R1, R12 @ Set R1 to R12 \n\
/* 0800168a */ STR R0, [R1] \n\
/* 0800168c */ CMP R0, R5 @ Check R0 - R5 \n\
/* 0800168e */ BCS branch_08001710 \n\
/* 08001690 */ LSLS R0, R0, 0x1 \n\
/* 08001692 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 08001694 */ STRH R6, [R0] \n\
/* 08001696 */ B branch_08001710 \n\
\n\
.ltorg \n\
 \n\
branch_0800169c: \n\
/* 0800169c */ LDR R0, [R4] \n\
/* 0800169e */ LDR R1, =D_030000b0 \n\
/* 080016a0 */ LDR R1, [R1] \n\
/* 080016a2 */ LSLS R0, R0, 0x1 \n\
/* 080016a4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080016a6 */ LDRH R0, [R0] \n\
/* 080016a8 */ MOV R1, R12 @ Set R1 to R12 \n\
/* 080016aa */ LDRH R3, [R1] \n\
/* 080016ac */ ANDS R3, R0 @ Set R3 to R3 & R0 \n\
/* 080016ae */ B branch_080016f2 \n\
\n\
.ltorg \n\
 \n\
branch_080016b4: \n\
/* 080016b4 */ LDR R4, =D_030000aa \n\
/* 080016b6 */ LDRB R0, [R4] \n\
/* 080016b8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080016ba */ BEQ branch_080016d8 \n\
/* 080016bc */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 080016be */ STRB R0, [R4] \n\
/* 080016c0 */ LDR R0, =D_030000b0 \n\
/* 080016c2 */ LDR R1, [R0] \n\
/* 080016c4 */ LSLS R0, R2, 0x1 \n\
/* 080016c6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080016c8 */ LDRH R0, [R0] \n\
/* 080016ca */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 080016cc */ ANDS R3, R7 @ Set R3 to R3 & R7 \n\
/* 080016ce */ B branch_080016f2 \n\
\n\
.ltorg \n\
 \n\
branch_080016d8: \n\
/* 080016d8 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 080016da */ STR R2, [R1] \n\
/* 080016dc */ CMP R2, R5 @ Check R2 - R5 \n\
/* 080016de */ BCS branch_080016f2 \n\
/* 080016e0 */ LDR R0, =D_030000b0 \n\
/* 080016e2 */ LDR R1, [R0] \n\
/* 080016e4 */ LSLS R0, R2, 0x1 \n\
/* 080016e6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080016e8 */ LDRH R0, [R0] \n\
/* 080016ea */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 080016ec */ ANDS R3, R7 @ Set R3 to R3 & R7 \n\
/* 080016ee */ LSRS R0, R0, 0xA \n\
/* 080016f0 */ STRB R0, [R4] \n\
 \n\
branch_080016f2: \n\
/* 080016f2 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 080016f4 */ LDRB R1, [R0] \n\
/* 080016f6 */ CMP R1, 0x2 @ Compare R1 and 0x2 \n\
/* 080016f8 */ BNE branch_080016fc \n\
/* 080016fa */ ADDS R6, R3, 0x0 @ Set R6 to R3 + 0x0 \n\
 \n\
branch_080016fc: \n\
/* 080016fc */ CMP R1, 0x4 @ Compare R1 and 0x4 \n\
/* 080016fe */ BNE branch_08001706 \n\
/* 08001700 */ ORRS R6, R3 @ Set R6 to R6 | R3 \n\
/* 08001702 */ LSLS R0, R6, 0x10 \n\
/* 08001704 */ LSRS R6, R0, 0x10 \n\
 \n\
branch_08001706: \n\
/* 08001706 */ CMP R1, 0x3 @ Compare R1 and 0x3 \n\
/* 08001708 */ BNE branch_08001710 \n\
/* 0800170a */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800170c */ BL func_0800152c \n\
 \n\
branch_08001710: \n\
/* 08001710 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08001712 */ BL func_0800149c \n\
/* 08001716 */ POP {R3} \n\
/* 08001718 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800171a */ POP {R4-R7} \n\
/* 0800171c */ POP {R0} \n\
/* 0800171e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
