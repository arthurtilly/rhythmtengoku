asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803012c \n\
/* 0803012c */ PUSH {R4, R5, LR} \n\
/* 0803012e */ SUB SP, 0xC \n\
/* 08030130 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08030132 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08030134 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08030136 */ STRB R3, [R4, 0x1F] \n\
/* 08030138 */ LDRB R0, [R4, 0x1C] \n\
/* 0803013a */ CMP R0, 0x13 @ Compare R0 and 0x13 \n\
/* 0803013c */ BNE branch_08030178 \n\
/* 0803013e */ STRB R3, [R4, 0x1D] \n\
/* 08030140 */ LDR R0, =D_03005380 \n\
/* 08030142 */ LDR R0, [R0] \n\
/* 08030144 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030146 */ LDRSH R1, [R4, R2] \n\
/* 08030148 */ LDR R2, =D_088e90c4 \n\
/* 0803014a */ STR R3, [SP] \n\
/* 0803014c */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0803014e */ STR R3, [SP, 0x4] \n\
/* 08030150 */ STR R5, [SP, 0x8] \n\
/* 08030152 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08030154 */ BL func_0804d8f8 \n\
/* 08030158 */ LDR R0, =D_030055d0 \n\
/* 0803015a */ LDR R0, [R0] \n\
/* 0803015c */ LDR R1, =0x90e \n\
/* 0803015e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08030160 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 08030162 */ STRB R1, [R0] \n\
/* 08030164 */ B branch_0803019a \n\
\n\
.ltorg \n\
 \n\
branch_08030178: \n\
/* 08030178 */ LDR R0, =D_03005380 \n\
/* 0803017a */ LDR R0, [R0] \n\
/* 0803017c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803017e */ LDRSH R1, [R4, R2] \n\
/* 08030180 */ LDR R2, =D_088e8f34 \n\
/* 08030182 */ STR R3, [SP] \n\
/* 08030184 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08030186 */ STR R3, [SP, 0x4] \n\
/* 08030188 */ STR R5, [SP, 0x8] \n\
/* 0803018a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803018c */ BL func_0804d8f8 \n\
/* 08030190 */ LDRB R0, [R4, 0x1C] \n\
/* 08030192 */ LDR R1, [R4, 0x14] \n\
/* 08030194 */ LDR R2, [R4, 0x18] \n\
/* 08030196 */ BL func_0802f74c \n\
 \n\
branch_0803019a: \n\
/* 0803019a */ LDR R0, =D_030055d0 \n\
/* 0803019c */ LDR R0, [R0] \n\
/* 0803019e */ LDR R1, =0x90f \n\
/* 080301a0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080301a2 */ LDRB R0, [R0] \n\
/* 080301a4 */ CMP R0, 0x13 @ Compare R0 and 0x13 \n\
/* 080301a6 */ BEQ branch_080301ac \n\
/* 080301a8 */ CMP R0, 0x2A @ Compare R0 and 0x2A \n\
/* 080301aa */ BNE branch_080301b2 \n\
 \n\
branch_080301ac: \n\
/* 080301ac */ LDR R0, =s_f_hanabi_kansei_seqData \n\
/* 080301ae */ BL func_08002634 \n\
 \n\
branch_080301b2: \n\
/* 080301b2 */ ADD SP, 0xC \n\
/* 080301b4 */ POP {R4, R5} \n\
/* 080301b6 */ POP {R0} \n\
/* 080301b8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
