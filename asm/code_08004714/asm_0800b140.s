asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800b140 \n\
/* 0800b140 */ PUSH {R4-R7, LR} \n\
/* 0800b142 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0800b144 */ PUSH {R7} \n\
/* 0800b146 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0800b148 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0800b14a */ BEQ branch_0800b20e \n\
/* 0800b14c */ MOVS R1, 0x26 @ Set R1 to 0x26 \n\
/* 0800b14e */ LDRSH R0, [R6, R1] \n\
/* 0800b150 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800b152 */ BLE branch_0800b20e \n\
/* 0800b154 */ LDRB R1, [R6, 0x13] \n\
/* 0800b156 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800b158 */ BL func_0800ae3c \n\
/* 0800b15c */ LDRH R1, [R6, 0x30] \n\
/* 0800b15e */ MOVS R2, 0x30 @ Set R2 to 0x30 \n\
/* 0800b160 */ LDRSH R0, [R6, R2] \n\
/* 0800b162 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800b164 */ BGT branch_0800b1ce \n\
/* 0800b166 */ MOVS R1, 0x26 @ Set R1 to 0x26 \n\
/* 0800b168 */ LDRSH R0, [R6, R1] \n\
/* 0800b16a */ MOVS R2, 0x30 @ Set R2 to 0x30 \n\
/* 0800b16c */ LDRSH R1, [R6, R2] \n\
/* 0800b16e */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0800b170 */ MOVS R2, 0x2C @ Set R2 to 0x2C \n\
/* 0800b172 */ LDRSH R1, [R6, R2] \n\
/* 0800b174 */ SUBS R7, R0, R1 @ Set R7 to R0 - R1 \n\
/* 0800b176 */ MOVS R1, 0x16 @ Set R1 to 0x16 \n\
/* 0800b178 */ LDRSH R0, [R6, R1] \n\
/* 0800b17a */ LDRB R5, [R6, 0x8] \n\
/* 0800b17c */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800b17e */ BL __modsi3 \n\
/* 0800b182 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800b184 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800b186 */ BGE branch_0800b18a \n\
/* 0800b188 */ ADDS R4, R4, R5 @ Set R4 to R4 + R5 \n\
 \n\
branch_0800b18a: \n\
/* 0800b18a */ LDR R2, [R6, 0x4] \n\
/* 0800b18c */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0800b18e */ LDR R1, [R6, 0x34] \n\
/* 0800b190 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800b192 */ BL _call_via_r1 \n\
/* 0800b196 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800b198 */ LDR R1, [R6, 0x38] \n\
/* 0800b19a */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800b19c */ BEQ branch_0800b1aa \n\
/* 0800b19e */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800b1a0 */ BL _call_via_r1 \n\
/* 0800b1a4 */ LSLS R0, R0, 0x10 \n\
/* 0800b1a6 */ ASRS R3, R0, 0x10 \n\
/* 0800b1a8 */ B branch_0800b1ae \n\
 \n\
branch_0800b1aa: \n\
/* 0800b1aa */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0800b1ac */ NEGS R3, R3 @ Set R3 to -R3 \n\
 \n\
branch_0800b1ae: \n\
/* 0800b1ae */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800b1b0 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800b1b2 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0800b1b4 */ BL func_0800aac0 \n\
/* 0800b1b8 */ LDRH R0, [R6, 0x16] \n\
/* 0800b1ba */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0800b1bc */ STRH R0, [R6, 0x16] \n\
/* 0800b1be */ LDR R0, [R6, 0x4] \n\
/* 0800b1c0 */ MOVS R2, 0x16 @ Set R2 to 0x16 \n\
/* 0800b1c2 */ LDRSH R1, [R6, R2] \n\
/* 0800b1c4 */ BL func_0800abb0 \n\
/* 0800b1c8 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0800b1ca */ STRH R0, [R6, 0x20] \n\
/* 0800b1cc */ B branch_0800b1ee \n\
 \n\
branch_0800b1ce: \n\
/* 0800b1ce */ SUBS R0, R1, 0x1 @ Set R0 to R1 - 0x1 \n\
/* 0800b1d0 */ STRH R0, [R6, 0x30] \n\
/* 0800b1d2 */ LDR R0, =D_03005380 \n\
/* 0800b1d4 */ LDR R4, [R0] \n\
/* 0800b1d6 */ MOVS R0, 0x2A @ Set R0 to 0x2A \n\
/* 0800b1d8 */ LDRSH R5, [R6, R0] \n\
/* 0800b1da */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800b1dc */ BL func_0800ae1c \n\
/* 0800b1e0 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0800b1e2 */ LSLS R2, R2, 0x10 \n\
/* 0800b1e4 */ ASRS R2, R2, 0x10 \n\
/* 0800b1e6 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800b1e8 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800b1ea */ BL func_0804d648 \n\
 \n\
branch_0800b1ee: \n\
/* 0800b1ee */ LDRH R0, [R6, 0x26] \n\
/* 0800b1f0 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0800b1f2 */ STRH R0, [R6, 0x26] \n\
/* 0800b1f4 */ LDRB R1, [R6, 0x12] \n\
/* 0800b1f6 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800b1f8 */ BL func_0800ae3c \n\
/* 0800b1fc */ LDR R3, [R6, 0x40] \n\
/* 0800b1fe */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800b200 */ BEQ branch_0800b20e \n\
/* 0800b202 */ LDR R0, [R6, 0x44] \n\
/* 0800b204 */ MOVS R2, 0x26 @ Set R2 to 0x26 \n\
/* 0800b206 */ LDRSH R1, [R6, R2] \n\
/* 0800b208 */ ADDS R2, R1, 0x1 @ Set R2 to R1 + 0x1 \n\
/* 0800b20a */ BL _call_via_r3 \n\
 \n\
branch_0800b20e: \n\
/* 0800b20e */ POP {R3} \n\
/* 0800b210 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800b212 */ POP {R4-R7} \n\
/* 0800b214 */ POP {R0} \n\
/* 0800b216 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
