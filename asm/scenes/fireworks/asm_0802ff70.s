asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802ff70 \n\
/* 0802ff70 */ PUSH {R4-R7, LR} \n\
/* 0802ff72 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0802ff74 */ PUSH {R7} \n\
/* 0802ff76 */ SUB SP, 0xC \n\
/* 0802ff78 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0802ff7a */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0802ff7c */ LDRB R6, [R4, 0x1E] \n\
/* 0802ff7e */ CMP R6, 0x1 @ Compare R6 and 0x1 \n\
/* 0802ff80 */ BEQ branch_08030004 \n\
/* 0802ff82 */ CMP R6, 0x1 @ Compare R6 and 0x1 \n\
/* 0802ff84 */ BGT branch_0802ff8c \n\
/* 0802ff86 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0802ff88 */ BEQ branch_0802ff94 \n\
/* 0802ff8a */ B branch_080300d2 \n\
 \n\
branch_0802ff8c: \n\
/* 0802ff8c */ CMP R6, 0x2 @ Compare R6 and 0x2 \n\
/* 0802ff8e */ BNE branch_0802ff92 \n\
/* 0802ff90 */ B branch_080300a4 \n\
 \n\
branch_0802ff92: \n\
/* 0802ff92 */ B branch_080300d2 \n\
 \n\
branch_0802ff94: \n\
/* 0802ff94 */ LDR R2, [R4, 0x8] \n\
/* 0802ff96 */ LDR R0, [R4, 0x10] \n\
/* 0802ff98 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0802ff9a */ STR R2, [R4, 0x8] \n\
/* 0802ff9c */ LDR R7, =D_03005380 \n\
/* 0802ff9e */ LDR R0, [R7] \n\
/* 0802ffa0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802ffa2 */ LDRSH R1, [R4, R3] \n\
/* 0802ffa4 */ LSLS R2, R2, 0x8 \n\
/* 0802ffa6 */ ASRS R2, R2, 0x10 \n\
/* 0802ffa8 */ BL func_0804d648 \n\
/* 0802ffac */ LDRB R5, [R4, 0x1D] \n\
/* 0802ffae */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0802ffb0 */ BNE branch_0802ffdc \n\
/* 0802ffb2 */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 0802ffb4 */ BL func_0800c3a4 \n\
/* 0802ffb8 */ CMP R8, R0 @ Compare R8 and R0 \n\
/* 0802ffba */ BHI branch_0802ffbe \n\
/* 0802ffbc */ B branch_080300d2 \n\
 \n\
branch_0802ffbe: \n\
/* 0802ffbe */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802ffc0 */ STRB R3, [R4, 0x1D] \n\
/* 0802ffc2 */ LDR R0, [R7] \n\
/* 0802ffc4 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0802ffc6 */ LDRSH R1, [R4, R5] \n\
/* 0802ffc8 */ LDR R2, =D_088e93cc \n\
/* 0802ffca */ STR R3, [SP] \n\
/* 0802ffcc */ STR R6, [SP, 0x4] \n\
/* 0802ffce */ STR R6, [SP, 0x8] \n\
/* 0802ffd0 */ B branch_08030050 \n\
\n\
.ltorg \n\
 \n\
branch_0802ffdc: \n\
/* 0802ffdc */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 0802ffde */ BEQ branch_0802ffe2 \n\
/* 0802ffe0 */ B branch_080300d2 \n\
 \n\
branch_0802ffe2: \n\
/* 0802ffe2 */ MOVS R0, 0x13 @ Set R0 to 0x13 \n\
/* 0802ffe4 */ BL func_0800c3a4 \n\
/* 0802ffe8 */ CMP R8, R0 @ Compare R8 and R0 \n\
/* 0802ffea */ BLS branch_080300d2 \n\
/* 0802ffec */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0802ffee */ STRB R0, [R4, 0x1D] \n\
/* 0802fff0 */ LDR R0, [R7] \n\
/* 0802fff2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802fff4 */ LDRSH R1, [R4, R2] \n\
/* 0802fff6 */ LDR R2, =D_088e8f14 \n\
/* 0802fff8 */ STR R5, [SP] \n\
/* 0802fffa */ STR R6, [SP, 0x4] \n\
/* 0802fffc */ STR R6, [SP, 0x8] \n\
/* 0802fffe */ B branch_08030050 \n\
\n\
.ltorg \n\
 \n\
branch_08030004: \n\
/* 08030004 */ LDR R2, [R4, 0x8] \n\
/* 08030006 */ LDR R0, [R4, 0x10] \n\
/* 08030008 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0803000a */ STR R2, [R4, 0x8] \n\
/* 0803000c */ LDR R7, =D_03005380 \n\
/* 0803000e */ LDR R0, [R7] \n\
/* 08030010 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08030012 */ LDRSH R1, [R4, R3] \n\
/* 08030014 */ LSLS R2, R2, 0x8 \n\
/* 08030016 */ ASRS R2, R2, 0x10 \n\
/* 08030018 */ BL func_0804d648 \n\
/* 0803001c */ LDRB R5, [R4, 0x1D] \n\
/* 0803001e */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 08030020 */ BEQ branch_0803005c \n\
/* 08030022 */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 08030024 */ BGT branch_08030030 \n\
/* 08030026 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08030028 */ BEQ branch_08030036 \n\
/* 0803002a */ B branch_080300d2 \n\
\n\
.ltorg \n\
 \n\
branch_08030030: \n\
/* 08030030 */ CMP R5, 0x2 @ Compare R5 and 0x2 \n\
/* 08030032 */ BEQ branch_0803007c \n\
/* 08030034 */ B branch_080300d2 \n\
 \n\
branch_08030036: \n\
/* 08030036 */ MOVS R0, 0x13 @ Set R0 to 0x13 \n\
/* 08030038 */ BL func_0800c3a4 \n\
/* 0803003c */ CMP R8, R0 @ Compare R8 and R0 \n\
/* 0803003e */ BLS branch_080300d2 \n\
/* 08030040 */ STRB R6, [R4, 0x1D] \n\
/* 08030042 */ LDR R0, [R7] \n\
/* 08030044 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030046 */ LDRSH R1, [R4, R2] \n\
/* 08030048 */ LDR R2, =D_088e93ec \n\
/* 0803004a */ STR R6, [SP] \n\
/* 0803004c */ STR R5, [SP, 0x4] \n\
/* 0803004e */ STR R5, [SP, 0x8] \n\
 \n\
branch_08030050: \n\
/* 08030050 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08030052 */ BL func_0804d8f8 \n\
/* 08030056 */ B branch_080300d2 \n\
\n\
.ltorg \n\
 \n\
branch_0803005c: \n\
/* 0803005c */ MOVS R0, 0x2B @ Set R0 to 0x2B \n\
/* 0803005e */ BL func_0800c3a4 \n\
/* 08030062 */ CMP R8, R0 @ Compare R8 and R0 \n\
/* 08030064 */ BLS branch_080300d2 \n\
/* 08030066 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08030068 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803006a */ STRB R0, [R4, 0x1D] \n\
/* 0803006c */ LDR R0, [R7] \n\
/* 0803006e */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08030070 */ LDRSH R1, [R4, R5] \n\
/* 08030072 */ LDR R2, =D_088e93cc \n\
/* 08030074 */ B branch_08030094 \n\
\n\
.ltorg \n\
 \n\
branch_0803007c: \n\
/* 0803007c */ MOVS R0, 0x43 @ Set R0 to 0x43 \n\
/* 0803007e */ BL func_0800c3a4 \n\
/* 08030082 */ CMP R8, R0 @ Compare R8 and R0 \n\
/* 08030084 */ BLS branch_080300d2 \n\
/* 08030086 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08030088 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0803008a */ STRB R0, [R4, 0x1D] \n\
/* 0803008c */ LDR R0, [R7] \n\
/* 0803008e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08030090 */ LDRSH R1, [R4, R2] \n\
/* 08030092 */ LDR R2, =D_088e8f14 \n\
 \n\
branch_08030094: \n\
/* 08030094 */ STR R6, [SP] \n\
/* 08030096 */ STR R3, [SP, 0x4] \n\
/* 08030098 */ STR R3, [SP, 0x8] \n\
/* 0803009a */ BL func_0804d8f8 \n\
/* 0803009e */ B branch_080300d2 \n\
\n\
.ltorg \n\
 \n\
branch_080300a4: \n\
/* 080300a4 */ LDRB R0, [R4, 0x1D] \n\
/* 080300a6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080300a8 */ BNE branch_080300d2 \n\
/* 080300aa */ LDR R2, [R4, 0x4] \n\
/* 080300ac */ LDR R0, [R4, 0xC] \n\
/* 080300ae */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 080300b0 */ STR R2, [R4, 0x4] \n\
/* 080300b2 */ LDR R3, [R4, 0x8] \n\
/* 080300b4 */ LDR R0, [R4, 0x10] \n\
/* 080300b6 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 080300b8 */ STR R3, [R4, 0x8] \n\
/* 080300ba */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 080300bc */ STR R0, [R4, 0x10] \n\
/* 080300be */ LDR R0, =D_03005380 \n\
/* 080300c0 */ LDR R0, [R0] \n\
/* 080300c2 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080300c4 */ LDRSH R1, [R4, R5] \n\
/* 080300c6 */ LSLS R2, R2, 0x8 \n\
/* 080300c8 */ ASRS R2, R2, 0x10 \n\
/* 080300ca */ LSLS R3, R3, 0x8 \n\
/* 080300cc */ ASRS R3, R3, 0x10 \n\
/* 080300ce */ BL func_0804d5d4 \n\
 \n\
branch_080300d2: \n\
/* 080300d2 */ LDR R1, =D_089e43e8 \n\
/* 080300d4 */ LDRB R0, [R4, 0x1E] \n\
/* 080300d6 */ LSLS R0, R0, 0x1 \n\
/* 080300d8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080300da */ LDRH R0, [R0] \n\
/* 080300dc */ BL func_0800c3a4 \n\
/* 080300e0 */ CMP R8, R0 @ Compare R8 and R0 \n\
/* 080300e2 */ BLS branch_08030104 \n\
/* 080300e4 */ LDRB R0, [R4, 0x1F] \n\
/* 080300e6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080300e8 */ BNE branch_080300f4 \n\
/* 080300ea */ LDR R0, =s_hanabi_ah_seqData \n\
/* 080300ec */ MOVS R1, 0x30 @ Set R1 to 0x30 \n\
/* 080300ee */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080300f0 */ BL func_08002698 \n\
 \n\
branch_080300f4: \n\
/* 080300f4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080300f6 */ B branch_08030106 \n\
\n\
.ltorg \n\
 \n\
branch_08030104: \n\
/* 08030104 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_08030106: \n\
/* 08030106 */ ADD SP, 0xC \n\
/* 08030108 */ POP {R3} \n\
/* 0803010a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803010c */ POP {R4-R7} \n\
/* 0803010e */ POP {R1} \n\
/* 08030110 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
