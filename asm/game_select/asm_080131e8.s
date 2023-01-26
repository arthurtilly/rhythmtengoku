asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080131e8 \n\
/* 080131e8 */ PUSH {R4-R7, LR} \n\
/* 080131ea */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080131ec */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080131ee */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080131f0 */ PUSH {R5-R7} \n\
/* 080131f2 */ SUB SP, 0x1C \n\
/* 080131f4 */ LDR R0, =D_030046a8 \n\
/* 080131f6 */ LDR R0, [R0] \n\
/* 080131f8 */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 080131fa */ STR R0, [SP, 0x10] \n\
/* 080131fc */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 080131fe */ LSLS R1, R1, 0x13 \n\
/* 08013200 */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
/* 08013202 */ LSLS R4, R4, 0x2 \n\
/* 08013204 */ STR R4, [SP] \n\
/* 08013206 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08013208 */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0801320a */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0801320c */ BL dma3_fill \n\
/* 08013210 */ LDR R1, =(VRAMBase + 0xe000) \n\
/* 08013212 */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
/* 08013214 */ LSLS R5, R5, 0x6 \n\
/* 08013216 */ STR R4, [SP] \n\
/* 08013218 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801321a */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0801321c */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0801321e */ BL dma3_fill \n\
/* 08013222 */ LDR R1, =(VRAMBase + 0xc000) \n\
/* 08013224 */ LDR R0, =0x01000100 \n\
/* 08013226 */ STR R4, [SP] \n\
/* 08013228 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0801322a */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0801322c */ BL dma3_fill \n\
/* 08013230 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 08013232 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08013234 */ LDR R5, =D_089cea24 \n\
 \n\
branch_08013236: \n\
/* 08013236 */ LDMIA R5!, {R0} \n\
/* 08013238 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801323a */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0801323c */ BL func_08015ccc \n\
/* 08013240 */ ADDS R4, 0x9 @ Add 0x9 to R4 \n\
/* 08013242 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 08013244 */ CMP R7, 0x35 @ Compare R7 and 0x35 \n\
/* 08013246 */ BLS branch_08013236 \n\
/* 08013248 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0801324a */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0801324c */ MOV R10, R0 @ Set R10 to R0 \n\
 \n\
branch_0801324e: \n\
/* 0801324e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08013250 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08013252 */ ADDS R0, R7, 0x1 @ Set R0 to R7 + 0x1 \n\
/* 08013254 */ STR R0, [SP, 0x14] \n\
/* 08013256 */ LSLS R1, R7, 0x4 \n\
/* 08013258 */ STR R1, [SP, 0x18] \n\
/* 0801325a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801325c */ MOV R8, R0 @ Set R8 to R0 \n\
 \n\
branch_0801325e: \n\
/* 0801325e */ LDR R0, [SP, 0x18] \n\
/* 08013260 */ SUBS R1, R0, R7 @ Set R1 to R0 - R7 \n\
/* 08013262 */ ADD R1, R9 @ Add R9 to R1 \n\
/* 08013264 */ LSLS R0, R1, 0x2 \n\
/* 08013266 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08013268 */ LSLS R0, R0, 0x2 \n\
/* 0801326a */ LDR R1, =D_089ceafc \n\
/* 0801326c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801326e */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08013270 */ LDRSH R2, [R0, R1] \n\
/* 08013272 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08013274 */ BLT branch_080132e0 \n\
/* 08013276 */ LSLS R0, R7, 0x1 \n\
/* 08013278 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0801327a */ ADDS R6, R0, 0x4 @ Set R6 to R0 + 0x4 \n\
/* 0801327c */ LSLS R1, R2, 0x5 \n\
/* 0801327e */ LDR R0, =D_089ce344 \n\
/* 08013280 */ ADDS R3, R1, R0 @ Set R3 to R1 + R0 \n\
/* 08013282 */ LDRB R1, [R3, 0xE] \n\
/* 08013284 */ LDR R0, [SP, 0x10] \n\
/* 08013286 */ ADDS R0, 0x6 @ Add 0x6 to R0 \n\
/* 08013288 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801328a */ LDRB R2, [R0] \n\
/* 0801328c */ LDR R0, =D_089cfaac \n\
/* 0801328e */ LSLS R1, R1, 0x2 \n\
/* 08013290 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08013292 */ LDR R0, [R1] \n\
/* 08013294 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08013296 */ LDRB R5, [R0] \n\
/* 08013298 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0801329a */ BEQ branch_080132c0 \n\
/* 0801329c */ LDRH R1, [R3, 0xC] \n\
/* 0801329e */ LSLS R0, R1, 0x3 \n\
/* 080132a0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080132a2 */ ADDS R4, R0, 0x1 @ Set R4 to R0 + 0x1 \n\
/* 080132a4 */ LDR R0, =D_089cf90c \n\
/* 080132a6 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080132a8 */ LDRB R0, [R1] \n\
/* 080132aa */ MOV R1, R10 @ Set R1 to R10 \n\
/* 080132ac */ STR R1, [SP] \n\
/* 080132ae */ STR R1, [SP, 0x4] \n\
/* 080132b0 */ STR R4, [SP, 0x8] \n\
/* 080132b2 */ STR R0, [SP, 0xC] \n\
/* 080132b4 */ MOVS R0, 0x1C @ Set R0 to 0x1C \n\
/* 080132b6 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 080132b8 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080132ba */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 080132bc */ BL func_08015afc \n\
 \n\
branch_080132c0: \n\
/* 080132c0 */ LSLS R0, R5, 0x3 \n\
/* 080132c2 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 080132c4 */ LDR R1, =0x101 \n\
/* 080132c6 */ ADDS R4, R0, R1 @ Set R4 to R0 + R1 \n\
/* 080132c8 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 080132ca */ STR R0, [SP] \n\
/* 080132cc */ STR R0, [SP, 0x4] \n\
/* 080132ce */ STR R4, [SP, 0x8] \n\
/* 080132d0 */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 080132d2 */ STR R0, [SP, 0xC] \n\
/* 080132d4 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 080132d6 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 080132d8 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080132da */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 080132dc */ BL func_08015afc \n\
 \n\
branch_080132e0: \n\
/* 080132e0 */ MOVS R1, 0x5 @ Set R1 to 0x5 \n\
/* 080132e2 */ ADD R8, R1 @ Add R1 to R8 \n\
/* 080132e4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080132e6 */ ADD R9, R0 @ Add R0 to R9 \n\
/* 080132e8 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 080132ea */ CMP R1, 0xE @ Compare R1 and 0xE \n\
/* 080132ec */ BLS branch_0801325e \n\
/* 080132ee */ LDR R7, [SP, 0x14] \n\
/* 080132f0 */ CMP R7, 0xB @ Compare R7 and 0xB \n\
/* 080132f2 */ BLS branch_0801324e \n\
/* 080132f4 */ ADD SP, 0x1C \n\
/* 080132f6 */ POP {R3-R5} \n\
/* 080132f8 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080132fa */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080132fc */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080132fe */ POP {R4-R7} \n\
/* 08013300 */ POP {R0} \n\
/* 08013302 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
