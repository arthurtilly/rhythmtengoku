asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804c6c8 \n\
/* 0804c6c8 */ PUSH {R4-R7, LR} \n\
/* 0804c6ca */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0804c6cc */ PUSH {R7} \n\
/* 0804c6ce */ LDR R7, =D_0300159c \n\
/* 0804c6d0 */ LDR R0, [R7] \n\
/* 0804c6d2 */ BL func_08049d08 \n\
/* 0804c6d6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804c6d8 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0804c6da */ LDR R4, =D_03005b78 \n\
/* 0804c6dc */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804c6de */ STRH R0, [R4] \n\
/* 0804c6e0 */ BL func_0804c508 \n\
/* 0804c6e4 */ LDR R5, =D_03005650 \n\
/* 0804c6e6 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0804c6e8 */ LDRH R4, [R4] \n\
/* 0804c6ea */ CMP R8, R4 @ Compare R8 and R4 \n\
/* 0804c6ec */ BCS branch_0804c756 \n\
/* 0804c6ee */ ADDS R4, R7, 0x0 @ Set R4 to R7 + 0x0 \n\
 \n\
branch_0804c6f0: \n\
/* 0804c6f0 */ LDR R2, [R5] \n\
/* 0804c6f2 */ LSLS R0, R2, 0xE \n\
/* 0804c6f4 */ LSRS R3, R0, 0x19 \n\
/* 0804c6f6 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0804c6f8 */ BEQ branch_0804c73c \n\
/* 0804c6fa */ LDR R0, [R4] \n\
/* 0804c6fc */ LSLS R1, R2, 0x1C \n\
/* 0804c6fe */ LSRS R1, R1, 0x1C \n\
/* 0804c700 */ LSLS R2, R2, 0x15 \n\
/* 0804c702 */ LSRS R2, R2, 0x19 \n\
/* 0804c704 */ BL func_0804a6b0 \n\
/* 0804c708 */ LDR R0, [R4] \n\
/* 0804c70a */ LDR R1, [R5] \n\
/* 0804c70c */ LSLS R1, R1, 0x1C \n\
/* 0804c70e */ LSRS R1, R1, 0x17 \n\
/* 0804c710 */ LDR R0, [R0, 0x18] \n\
/* 0804c712 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804c714 */ LDRB R0, [R0, 0x3] \n\
/* 0804c716 */ LSLS R0, R0, 0x19 \n\
/* 0804c718 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804c71a */ BGE branch_0804c74a \n\
/* 0804c71c */ LDR R0, =D_03005b3c \n\
/* 0804c71e */ LDRB R0, [R0] \n\
/* 0804c720 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0804c722 */ BNE branch_0804c74a \n\
/* 0804c724 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804c726 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0804c728 */ B branch_0804c74a \n\
\n\
.ltorg \n\
 \n\
branch_0804c73c: \n\
/* 0804c73c */ LDR R0, [R4] \n\
/* 0804c73e */ LSLS R1, R2, 0x1C \n\
/* 0804c740 */ LSRS R1, R1, 0x1C \n\
/* 0804c742 */ LSLS R2, R2, 0x15 \n\
/* 0804c744 */ LSRS R2, R2, 0x19 \n\
/* 0804c746 */ BL func_0804a5b4 \n\
 \n\
branch_0804c74a: \n\
/* 0804c74a */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 0804c74c */ ADDS R5, 0x4 @ Add 0x4 to R5 \n\
/* 0804c74e */ LDR R0, =D_03005b78 \n\
/* 0804c750 */ LDRH R0, [R0] \n\
/* 0804c752 */ CMP R6, R0 @ Check R6 - R0 \n\
/* 0804c754 */ BCC branch_0804c6f0 \n\
 \n\
branch_0804c756: \n\
/* 0804c756 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804c758 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804c75a */ BEQ branch_0804c766 \n\
/* 0804c75c */ BL func_08049be4 \n\
/* 0804c760 */ LDR R0, =D_03005b30 \n\
/* 0804c762 */ BL func_0804ae54 \n\
 \n\
branch_0804c766: \n\
/* 0804c766 */ POP {R3} \n\
/* 0804c768 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804c76a */ POP {R4-R7} \n\
/* 0804c76c */ POP {R0} \n\
/* 0804c76e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
