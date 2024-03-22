asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800716c \n\
/* 0800716c */ PUSH {R4-R7, LR} \n\
/* 0800716e */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08007170 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08007172 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08007174 */ PUSH {R5-R7} \n\
/* 08007176 */ SUB SP, 0x14 \n\
/* 08007178 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800717a */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0800717c */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0800717e */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08007180 */ LDR R7, =D_030046c0 \n\
/* 08007182 */ LSLS R0, R0, 0x8 \n\
/* 08007184 */ BL __udivsi3 \n\
/* 08007188 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800718a */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800718c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800718e */ BNE branch_080071a8 \n\
/* 08007190 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08007192 */ LSLS R3, R3, 0x2 \n\
/* 08007194 */ STR R5, [SP] \n\
/* 08007196 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08007198 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800719a */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 0800719c */ BL fast_blend_pal_to_col \n\
/* 080071a0 */ B branch_0800723a \n\
\n\
.ltorg \n\
 \n\
branch_080071a8: \n\
/* 080071a8 */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 080071aa */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080071ac */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 080071ae */ STR R1, [SP, 0x4] \n\
/* 080071b0 */ LSRS R1, R4, 0x5 \n\
/* 080071b2 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 080071b4 */ STR R1, [SP, 0x8] \n\
/* 080071b6 */ LSRS R4, R4, 0xA \n\
/* 080071b8 */ MOV R10, R4 @ Set R10 to R4 \n\
/* 080071ba */ MOV R1, R10 @ Set R1 to R10 \n\
/* 080071bc */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 080071be */ MOV R10, R1 @ Set R10 to R1 \n\
/* 080071c0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_080071c2: \n\
/* 080071c2 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080071c4 */ LDRH R1, [R1] \n\
/* 080071c6 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 080071c8 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 080071ca */ ADD R8, R1 @ Add R1 to R8 \n\
/* 080071cc */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 080071ce */ ADDS R1, 0x20 @ Add 0x20 to R1 \n\
/* 080071d0 */ STR R1, [SP, 0x10] \n\
/* 080071d2 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080071d4 */ STR R0, [SP, 0xC] \n\
/* 080071d6 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 080071d8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080071da */ BEQ branch_08007232 \n\
/* 080071dc */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 080071de */ MOVS R1, 0x1F @ Set R1 to 0x1F \n\
/* 080071e0 */ MOV R12, R1 @ Set R12 to R1 \n\
/* 080071e2 */ ADDS R4, R7, 0x0 @ Set R4 to R7 + 0x0 \n\
 \n\
branch_080071e4: \n\
/* 080071e4 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 080071e6 */ LSRS R0, R6 @ Set R0 to R0 >> R6 (logical) \n\
/* 080071e8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080071ea */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080071ec */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080071ee */ BEQ branch_0800722a \n\
/* 080071f0 */ LDRH R1, [R4] \n\
/* 080071f2 */ MOVS R2, 0x1F @ Set R2 to 0x1F \n\
/* 080071f4 */ ANDS R2, R1 @ Set R2 to R2 & R1 \n\
/* 080071f6 */ LSRS R3, R1, 0x5 \n\
/* 080071f8 */ MOV R7, R12 @ Set R7 to R12 \n\
/* 080071fa */ ANDS R3, R7 @ Set R3 to R3 & R7 \n\
/* 080071fc */ LSRS R1, R1, 0xA \n\
/* 080071fe */ MOV R0, R12 @ Set R0 to R12 \n\
/* 08007200 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 08007202 */ LDR R7, [SP, 0x4] \n\
/* 08007204 */ SUBS R0, R7, R2 @ Set R0 to R7 - R2 \n\
/* 08007206 */ MULS R0, R5 @ Multiply R0 by R5 \n\
/* 08007208 */ ASRS R0, R0, 0x8 \n\
/* 0800720a */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0800720c */ LDR R7, [SP, 0x8] \n\
/* 0800720e */ SUBS R0, R7, R3 @ Set R0 to R7 - R3 \n\
/* 08007210 */ MULS R0, R5 @ Multiply R0 by R5 \n\
/* 08007212 */ ASRS R0, R0, 0x8 \n\
/* 08007214 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 08007216 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08007218 */ SUBS R0, R7, R1 @ Set R0 to R7 - R1 \n\
/* 0800721a */ MULS R0, R5 @ Multiply R0 by R5 \n\
/* 0800721c */ ASRS R0, R0, 0x8 \n\
/* 0800721e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08007220 */ LSLS R3, R3, 0x5 \n\
/* 08007222 */ ORRS R2, R3 @ Set R2 to R2 | R3 \n\
/* 08007224 */ LSLS R1, R1, 0xA \n\
/* 08007226 */ ORRS R2, R1 @ Set R2 to R2 | R1 \n\
/* 08007228 */ STRH R2, [R4] \n\
 \n\
branch_0800722a: \n\
/* 0800722a */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 0800722c */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 0800722e */ CMP R6, 0xF @ Compare R6 and 0xF \n\
/* 08007230 */ BLS branch_080071e4 \n\
 \n\
branch_08007232: \n\
/* 08007232 */ LDR R7, [SP, 0x10] \n\
/* 08007234 */ LDR R0, [SP, 0xC] \n\
/* 08007236 */ CMP R0, 0x1F @ Compare R0 and 0x1F \n\
/* 08007238 */ BLS branch_080071c2 \n\
 \n\
branch_0800723a: \n\
/* 0800723a */ ADD SP, 0x14 \n\
/* 0800723c */ POP {R3-R5} \n\
/* 0800723e */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08007240 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08007242 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08007244 */ POP {R4-R7} \n\
/* 08007246 */ POP {R0} \n\
/* 08007248 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
