asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08022114 \n\
/* 08022114 */ PUSH {R4, LR} \n\
/* 08022116 */ LDR R4, =D_030055d0 \n\
/* 08022118 */ LDR R1, [R4] \n\
/* 0802211a */ LDRB R0, [R1, 0x17] \n\
/* 0802211c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802211e */ BEQ branch_0802215a \n\
/* 08022120 */ LDRB R0, [R1, 0x16] \n\
/* 08022122 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 08022124 */ BHI branch_0802215a \n\
/* 08022126 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08022128 */ STRB R0, [R1, 0x16] \n\
/* 0802212a */ LDR R0, =D_03005380 \n\
/* 0802212c */ LDR R0, [R0] \n\
/* 0802212e */ LDR R2, [R4] \n\
/* 08022130 */ MOVS R3, 0x14 @ Set R3 to 0x14 \n\
/* 08022132 */ LDRSH R1, [R2, R3] \n\
/* 08022134 */ LDRB R2, [R2, 0x16] \n\
/* 08022136 */ LSLS R2, R2, 0x18 \n\
/* 08022138 */ ASRS R2, R2, 0x18 \n\
/* 0802213a */ BL func_0804cebc \n\
/* 0802213e */ LDR R1, [R4] \n\
/* 08022140 */ LDRB R0, [R1, 0x16] \n\
/* 08022142 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 08022144 */ BNE branch_0802215a \n\
/* 08022146 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08022148 */ STRB R0, [R1, 0x18] \n\
/* 0802214a */ LDR R1, [R4] \n\
/* 0802214c */ LDR R0, =D_089df37e \n\
/* 0802214e */ STR R0, [R1, 0x1C] \n\
/* 08022150 */ BL func_080221cc \n\
/* 08022154 */ LDR R0, =D_08a9e1c4 \n\
/* 08022156 */ BL func_08002634 \n\
 \n\
branch_0802215a: \n\
/* 0802215a */ POP {R4} \n\
/* 0802215c */ POP {R0} \n\
/* 0802215e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
