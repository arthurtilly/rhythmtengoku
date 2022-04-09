asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08007854 \n\
/* 08007854 */ PUSH {R4-R6, LR} \n\
/* 08007856 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08007858 */ MOVS R1, 0xC @ Set R1 to 0xC \n\
/* 0800785a */ LDRSH R0, [R4, R1] \n\
/* 0800785c */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 0800785e */ LDRSH R1, [R4, R2] \n\
/* 08007860 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 08007862 */ LDRH R1, [R4, 0xE] \n\
/* 08007864 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 08007866 */ LDRH R1, [R4, 0x10] \n\
/* 08007868 */ BL func_08007b80 \n\
/* 0800786c */ LDRB R1, [R4, 0xA] \n\
/* 0800786e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08007870 */ LSLS R1, R1, 0x18 \n\
/* 08007872 */ MOVS R5, 0x6 @ Set R5 to 0x6 \n\
/* 08007874 */ LDRSH R3, [R4, R5] \n\
/* 08007876 */ MOVS R6, 0x8 @ Set R6 to 0x8 \n\
/* 08007878 */ LDRSH R2, [R4, R6] \n\
/* 0800787a */ LDR R5, =D_08935fcc \n\
/* 0800787c */ LSRS R1, R1, 0x17 \n\
/* 0800787e */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 08007880 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08007882 */ LDRSH R0, [R1, R6] \n\
/* 08007884 */ MULS R0, R2 @ Multiply R0 by R2 \n\
/* 08007886 */ ASRS R0, R0, 0x8 \n\
/* 08007888 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 0800788a */ LDR R0, =D_089361cc \n\
/* 0800788c */ LDRB R1, [R4, 0x12] \n\
/* 0800788e */ LSLS R1, R1, 0x1 \n\
/* 08007890 */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 08007892 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08007894 */ LDRSH R0, [R0, R2] \n\
/* 08007896 */ ADDS R2, R3, 0x0 @ Set R2 to R3 + 0x0 \n\
/* 08007898 */ MULS R2, R0 @ Multiply R2 by R0 \n\
/* 0800789a */ ASRS R2, R2, 0x8 \n\
/* 0800789c */ LDRH R6, [R4, 0x2] \n\
/* 0800789e */ ADDS R2, R2, R6 @ Set R2 to R2 + R6 \n\
/* 080078a0 */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 080078a2 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080078a4 */ LDRSH R0, [R1, R5] \n\
/* 080078a6 */ MULS R3, R0 @ Multiply R3 by R0 \n\
/* 080078a8 */ ASRS R3, R3, 0x8 \n\
/* 080078aa */ LDRH R6, [R4, 0x4] \n\
/* 080078ac */ ADDS R3, R3, R6 @ Set R3 to R3 + R6 \n\
/* 080078ae */ LDR R0, =D_03005380 \n\
/* 080078b0 */ LDR R0, [R0] \n\
/* 080078b2 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080078b4 */ LDRSH R1, [R4, R5] \n\
/* 080078b6 */ LSLS R2, R2, 0x10 \n\
/* 080078b8 */ ASRS R2, R2, 0x10 \n\
/* 080078ba */ LSLS R3, R3, 0x10 \n\
/* 080078bc */ ASRS R3, R3, 0x10 \n\
/* 080078be */ BL func_0804d5d4 \n\
/* 080078c2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080078c4 */ LDRH R0, [R4, 0xE] \n\
/* 080078c6 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080078c8 */ STRH R0, [R4, 0xE] \n\
/* 080078ca */ LSLS R0, R0, 0x10 \n\
/* 080078cc */ LSRS R0, R0, 0x10 \n\
/* 080078ce */ LDRH R4, [R4, 0x10] \n\
/* 080078d0 */ CMP R0, R4 @ Check R0 - R4 \n\
/* 080078d2 */ BLS branch_080078d6 \n\
/* 080078d4 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
 \n\
branch_080078d6: \n\
/* 080078d6 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080078d8 */ POP {R4-R6} \n\
/* 080078da */ POP {R1} \n\
/* 080078dc */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
