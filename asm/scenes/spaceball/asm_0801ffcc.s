asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801ffcc \n\
/* 0801ffcc */ PUSH {R4-R7, LR} \n\
/* 0801ffce */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0801ffd0 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0801ffd2 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0801ffd4 */ PUSH {R5-R7} \n\
/* 0801ffd6 */ SUB SP, 0x1C \n\
/* 0801ffd8 */ LDR R1, =D_030055d0 \n\
/* 0801ffda */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0801ffdc */ LDR R1, [R1] \n\
/* 0801ffde */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801ffe0 */ STRB R0, [R1] \n\
/* 0801ffe2 */ BL func_0801ffa0 \n\
/* 0801ffe6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801ffe8 */ BL func_0800e018 \n\
/* 0801ffec */ BL func_0800e0ec \n\
/* 0801fff0 */ STR R4, [SP] \n\
/* 0801fff2 */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 0801fff4 */ STR R0, [SP, 0x4] \n\
/* 0801fff6 */ LDR R0, =0x00004082 \n\
/* 0801fff8 */ STR R0, [SP, 0x8] \n\
/* 0801fffa */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801fffc */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0801fffe */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08020000 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08020002 */ BL func_0800e0a0 \n\
/* 08020006 */ MOVS R1, 0xF0 @ Set R1 to 0xF0 \n\
/* 08020008 */ LSLS R1, R1, 0x7 \n\
/* 0802000a */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 0802000c */ LSLS R2, R2, 0x7 \n\
/* 0802000e */ MOVS R3, 0xF0 @ Set R3 to 0xF0 \n\
/* 08020010 */ LSLS R3, R3, 0x8 \n\
/* 08020012 */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 08020014 */ LSLS R0, R0, 0x8 \n\
/* 08020016 */ STR R0, [SP] \n\
/* 08020018 */ STR R4, [SP, 0x4] \n\
/* 0802001a */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0802001c */ BL func_08008910 \n\
/* 08020020 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08020022 */ BL func_0800e044 \n\
/* 08020026 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08020028 */ BL func_0800e044 \n\
/* 0802002c */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0802002e */ BL func_0800e044 \n\
/* 08020032 */ LDR R0, =D_088a1a70 \n\
/* 08020034 */ MOVS R2, 0x90 @ Set R2 to 0x90 \n\
/* 08020036 */ LSLS R2, R2, 0x7 \n\
/* 08020038 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 0802003a */ STR R2, [SP] \n\
/* 0802003c */ MOVS R6, 0x80 @ Set R6 to 0x80 \n\
/* 0802003e */ STR R6, [SP, 0x4] \n\
/* 08020040 */ STR R4, [SP, 0x8] \n\
/* 08020042 */ STR R4, [SP, 0xC] \n\
/* 08020044 */ STR R4, [SP, 0x10] \n\
/* 08020046 */ STR R4, [SP, 0x14] \n\
/* 08020048 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802004a */ STR R3, [SP, 0x18] \n\
/* 0802004c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802004e */ MOVS R2, 0xAA @ Set R2 to 0xAA \n\
/* 08020050 */ MOVS R3, 0x50 @ Set R3 to 0x50 \n\
/* 08020052 */ BL func_0800fa6c \n\
/* 08020056 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08020058 */ LDR R1, [R2] \n\
/* 0802005a */ STR R0, [R1, 0x8] \n\
/* 0802005c */ MOVS R0, 0x32 @ Set R0 to 0x32 \n\
/* 0802005e */ STR R0, [R1, 0xC] \n\
/* 08020060 */ STR R4, [R1, 0x10] \n\
/* 08020062 */ STR R4, [R1, 0x14] \n\
/* 08020064 */ STR R4, [R1, 0x18] \n\
/* 08020066 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08020068 */ BL func_0802026c \n\
/* 0802006c */ LDR R0, =D_088a1ad0 \n\
/* 0802006e */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08020070 */ STR R3, [SP] \n\
/* 08020072 */ STR R6, [SP, 0x4] \n\
/* 08020074 */ STR R4, [SP, 0x8] \n\
/* 08020076 */ STR R4, [SP, 0xC] \n\
/* 08020078 */ STR R4, [SP, 0x10] \n\
/* 0802007a */ STR R4, [SP, 0x14] \n\
/* 0802007c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802007e */ STR R1, [SP, 0x18] \n\
/* 08020080 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08020082 */ MOVS R2, 0x46 @ Set R2 to 0x46 \n\
/* 08020084 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08020086 */ BL func_0800fa6c \n\
/* 0802008a */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0802008c */ LDR R1, [R2] \n\
/* 0802008e */ STR R0, [R1, 0x24] \n\
/* 08020090 */ MOVS R0, 0x32 @ Set R0 to 0x32 \n\
/* 08020092 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08020094 */ STR R0, [R1, 0x28] \n\
/* 08020096 */ MOVS R0, 0x30 @ Set R0 to 0x30 \n\
/* 08020098 */ STR R0, [R1, 0x2C] \n\
/* 0802009a */ STR R4, [R1, 0x30] \n\
/* 0802009c */ LDR R0, =D_088a1bd0 \n\
/* 0802009e */ LDR R3, =0x00004864 \n\
/* 080200a0 */ MOV R9, R3 @ Set R9 to R3 \n\
/* 080200a2 */ STR R3, [SP] \n\
/* 080200a4 */ STR R6, [SP, 0x4] \n\
/* 080200a6 */ STR R4, [SP, 0x8] \n\
/* 080200a8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080200aa */ STR R1, [SP, 0xC] \n\
/* 080200ac */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080200ae */ STR R2, [SP, 0x10] \n\
/* 080200b0 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 080200b2 */ LSLS R1, R1, 0x8 \n\
/* 080200b4 */ STR R1, [SP, 0x14] \n\
/* 080200b6 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 080200b8 */ STR R3, [SP, 0x18] \n\
/* 080200ba */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 080200bc */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 080200be */ MOVS R3, 0x59 @ Set R3 to 0x59 \n\
/* 080200c0 */ BL func_0800fa6c \n\
/* 080200c4 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080200c6 */ LDR R1, [R2] \n\
/* 080200c8 */ STR R0, [R1, 0x34] \n\
/* 080200ca */ STR R4, [R1, 0x38] \n\
/* 080200cc */ MOVS R2, 0x9 @ Set R2 to 0x9 \n\
/* 080200ce */ STR R2, [R1, 0x3C] \n\
/* 080200d0 */ STR R4, [R1, 0x40] \n\
/* 080200d2 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080200d4 */ BL func_08010040 \n\
/* 080200d8 */ LDR R5, =D_088a1b70 \n\
/* 080200da */ MOV R3, R9 @ Set R3 to R9 \n\
/* 080200dc */ STR R3, [SP] \n\
/* 080200de */ MOVS R7, 0x80 @ Set R7 to 0x80 \n\
/* 080200e0 */ LSLS R7, R7, 0x1 \n\
/* 080200e2 */ STR R7, [SP, 0x4] \n\
/* 080200e4 */ STR R4, [SP, 0x8] \n\
/* 080200e6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080200e8 */ STR R0, [SP, 0xC] \n\
/* 080200ea */ STR R4, [SP, 0x10] \n\
/* 080200ec */ LDR R1, =0x00008002 \n\
/* 080200ee */ MOV R10, R1 @ Set R10 to R1 \n\
/* 080200f0 */ STR R1, [SP, 0x14] \n\
/* 080200f2 */ STR R0, [SP, 0x18] \n\
/* 080200f4 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 080200f6 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 080200f8 */ MOVS R2, 0x9A @ Set R2 to 0x9A \n\
/* 080200fa */ MOVS R3, 0x84 @ Set R3 to 0x84 \n\
/* 080200fc */ BL func_0800fa6c \n\
/* 08020100 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08020102 */ LDR R1, [R2] \n\
/* 08020104 */ STR R0, [R1, 0x44] \n\
/* 08020106 */ MOVS R0, 0x22 @ Set R0 to 0x22 \n\
/* 08020108 */ STR R0, [R1, 0x48] \n\
/* 0802010a */ MOVS R6, 0x34 @ Set R6 to 0x34 \n\
/* 0802010c */ STR R6, [R1, 0x4C] \n\
/* 0802010e */ STR R4, [R1, 0x50] \n\
/* 08020110 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08020112 */ STR R3, [SP] \n\
/* 08020114 */ STR R7, [SP, 0x4] \n\
/* 08020116 */ STR R4, [SP, 0x8] \n\
/* 08020118 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802011a */ STR R0, [SP, 0xC] \n\
/* 0802011c */ STR R4, [SP, 0x10] \n\
/* 0802011e */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08020120 */ STR R1, [SP, 0x14] \n\
/* 08020122 */ STR R0, [SP, 0x18] \n\
/* 08020124 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08020126 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08020128 */ MOVS R2, 0x7A @ Set R2 to 0x7A \n\
/* 0802012a */ MOVS R3, 0x84 @ Set R3 to 0x84 \n\
/* 0802012c */ BL func_0800fa6c \n\
/* 08020130 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08020132 */ LDR R1, [R2] \n\
/* 08020134 */ STR R0, [R1, 0x54] \n\
/* 08020136 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08020138 */ STR R3, [R1, 0x58] \n\
/* 0802013a */ STR R6, [R1, 0x5C] \n\
/* 0802013c */ STR R4, [R1, 0x60] \n\
/* 0802013e */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08020140 */ BL func_0800ff44 \n\
/* 08020144 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08020146 */ LDR R2, [R0] \n\
/* 08020148 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0802014a */ ADDS R0, 0x64 @ Add 0x64 to R0 \n\
/* 0802014c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802014e */ STRH R4, [R0] \n\
/* 08020150 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08020152 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08020154 */ STR R0, [R2, 0x4] \n\
/* 08020156 */ MOVS R3, 0xAC @ Set R3 to 0xAC \n\
/* 08020158 */ LSLS R3, R3, 0x1 \n\
/* 0802015a */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 0802015c */ STRB R1, [R0] \n\
/* 0802015e */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08020160 */ LDR R0, [R2] \n\
/* 08020162 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 08020164 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08020166 */ STRB R1, [R0] \n\
/* 08020168 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802016a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802016c */ BL func_08017338 \n\
/* 08020170 */ ADD SP, 0x1C \n\
/* 08020172 */ POP {R3-R5} \n\
/* 08020174 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08020176 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08020178 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0802017a */ POP {R4-R7} \n\
/* 0802017c */ POP {R0} \n\
/* 0802017e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
