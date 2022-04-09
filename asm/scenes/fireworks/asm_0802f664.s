asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802f664 \n\
/* 0802f664 */ PUSH {R4-R7, LR} \n\
/* 0802f666 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0802f668 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0802f66a */ PUSH {R6, R7} \n\
/* 0802f66c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802f66e */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0802f670 */ LDR R1, =D_030055d0 \n\
/* 0802f672 */ MOV R9, R1 @ Set R9 to R1 \n\
 \n\
branch_0802f674: \n\
/* 0802f674 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0802f676 */ LDR R2, [R2] \n\
/* 0802f678 */ MOV R12, R2 @ Set R12 to R2 \n\
/* 0802f67a */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0802f67c */ LSLS R4, R3, 0x5 \n\
/* 0802f67e */ ADDS R7, R2, R4 @ Set R7 to R2 + R4 \n\
/* 0802f680 */ LDRB R0, [R7, 0xE] \n\
/* 0802f682 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802f684 */ BEQ branch_0802f726 \n\
/* 0802f686 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 0802f688 */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 0802f68a */ ADDS R5, R0, R4 @ Set R5 to R0 + R4 \n\
/* 0802f68c */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 0802f68e */ ADDS R3, R0, R4 @ Set R3 to R0 + R4 \n\
/* 0802f690 */ LDR R0, [R5] \n\
/* 0802f692 */ LDR R1, [R3] \n\
/* 0802f694 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802f696 */ STR R0, [R5] \n\
/* 0802f698 */ LDR R1, [R3] \n\
/* 0802f69a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802f69c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0802f69e */ BGE branch_0802f6a2 \n\
/* 0802f6a0 */ ADDS R0, 0x1F @ Add 0x1F to R0 \n\
 \n\
branch_0802f6a2: \n\
/* 0802f6a2 */ ASRS R0, R0, 0x5 \n\
/* 0802f6a4 */ SUBS R0, R1, R0 @ Set R0 to R1 - R0 \n\
/* 0802f6a6 */ STR R0, [R3] \n\
/* 0802f6a8 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 0802f6aa */ ADDS R0, 0x14 @ Add 0x14 to R0 \n\
/* 0802f6ac */ ADDS R3, R0, R4 @ Set R3 to R0 + R4 \n\
/* 0802f6ae */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 0802f6b0 */ ADDS R2, R0, R4 @ Set R2 to R0 + R4 \n\
/* 0802f6b2 */ LDR R0, [R3] \n\
/* 0802f6b4 */ LDR R1, [R2] \n\
/* 0802f6b6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0802f6b8 */ STR R0, [R3] \n\
/* 0802f6ba */ LDR R1, [R2] \n\
/* 0802f6bc */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0802f6be */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0802f6c0 */ BGE branch_0802f6c4 \n\
/* 0802f6c2 */ ADDS R0, 0x1F @ Add 0x1F to R0 \n\
 \n\
branch_0802f6c4: \n\
/* 0802f6c4 */ ASRS R0, R0, 0x5 \n\
/* 0802f6c6 */ SUBS R0, R1, R0 @ Set R0 to R1 - R0 \n\
/* 0802f6c8 */ ADDS R0, 0x6 @ Add 0x6 to R0 \n\
/* 0802f6ca */ STR R0, [R2] \n\
/* 0802f6cc */ LDR R6, =D_03005380 \n\
/* 0802f6ce */ LDR R0, [R6] \n\
/* 0802f6d0 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0802f6d2 */ LDRSH R1, [R7, R2] \n\
/* 0802f6d4 */ LDR R2, [R5] \n\
/* 0802f6d6 */ LSLS R2, R2, 0x8 \n\
/* 0802f6d8 */ ASRS R2, R2, 0x10 \n\
/* 0802f6da */ LDR R3, [R3] \n\
/* 0802f6dc */ LSLS R3, R3, 0x8 \n\
/* 0802f6de */ ASRS R3, R3, 0x10 \n\
/* 0802f6e0 */ BL func_0804d5d4 \n\
/* 0802f6e4 */ LDR R0, [R6] \n\
/* 0802f6e6 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0802f6e8 */ LDR R1, [R3] \n\
/* 0802f6ea */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802f6ec */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0802f6ee */ LDRSH R1, [R1, R2] \n\
/* 0802f6f0 */ BL func_0804d6cc \n\
/* 0802f6f4 */ LSLS R0, R0, 0x18 \n\
/* 0802f6f6 */ ASRS R0, R0, 0x18 \n\
/* 0802f6f8 */ LDR R2, =D_0805a41c \n\
/* 0802f6fa */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0802f6fc */ LDR R1, [R3] \n\
/* 0802f6fe */ ADDS R3, R1, R4 @ Set R3 to R1 + R4 \n\
/* 0802f700 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0802f702 */ ADDS R1, 0x28 @ Add 0x28 to R1 \n\
/* 0802f704 */ LDRB R1, [R1] \n\
/* 0802f706 */ LSLS R1, R1, 0x2 \n\
/* 0802f708 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802f70a */ LDR R1, [R1] \n\
/* 0802f70c */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0802f70e */ BLT branch_0802f726 \n\
/* 0802f710 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802f712 */ STRB R0, [R3, 0xE] \n\
/* 0802f714 */ LDR R0, [R6] \n\
/* 0802f716 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0802f718 */ LDR R1, [R2] \n\
/* 0802f71a */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0802f71c */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 0802f71e */ LDRSH R1, [R1, R3] \n\
/* 0802f720 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802f722 */ BL func_0804d770 \n\
 \n\
branch_0802f726: \n\
/* 0802f726 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0802f728 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0802f72a */ LSLS R0, R0, 0x18 \n\
/* 0802f72c */ LSRS R0, R0, 0x18 \n\
/* 0802f72e */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0802f730 */ CMP R0, 0x47 @ Compare R0 and 0x47 \n\
/* 0802f732 */ BLS branch_0802f674 \n\
/* 0802f734 */ POP {R3, R4} \n\
/* 0802f736 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802f738 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0802f73a */ POP {R4-R7} \n\
/* 0802f73c */ POP {R0} \n\
/* 0802f73e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
