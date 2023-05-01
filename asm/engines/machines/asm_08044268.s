asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08044268 \n\
/* 08044268 */ PUSH {R4-R7, LR} \n\
/* 0804426a */ MOV R7, R9 @ Set R7 to R9 \n\
/* 0804426c */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0804426e */ PUSH {R6, R7} \n\
/* 08044270 */ SUB SP, 0x14 \n\
/* 08044272 */ LDR R7, =gCurrentEngineData \n\
/* 08044274 */ LDR R2, [R7] \n\
/* 08044276 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08044278 */ LDR R0, =rhythm_toys_demo_table \n\
/* 0804427a */ LDRB R1, [R2] \n\
/* 0804427c */ LSLS R1, R1, 0x2 \n\
/* 0804427e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08044280 */ LDR R0, [R1] \n\
/* 08044282 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08044284 */ BNE branch_08044288 \n\
/* 08044286 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
 \n\
branch_08044288: \n\
/* 08044288 */ LDR R6, =0x35f \n\
/* 0804428a */ ADDS R0, R2, R6 @ Set R0 to R2 + R6 \n\
/* 0804428c */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0804428e */ STRB R3, [R0] \n\
/* 08044290 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 08044292 */ BL func_08044208 \n\
/* 08044296 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08044298 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 0804429a */ BL func_08044228 \n\
/* 0804429e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080442a0 */ LSLS R4, R4, 0x10 \n\
/* 080442a2 */ ASRS R4, R4, 0x10 \n\
/* 080442a4 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 080442a6 */ BL func_08044248 \n\
/* 080442aa */ LSLS R0, R0, 0x10 \n\
/* 080442ac */ ASRS R0, R0, 0x10 \n\
/* 080442ae */ LDR R1, =D_03005380 \n\
/* 080442b0 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 080442b2 */ LDR R1, [R1] \n\
/* 080442b4 */ STR R0, [SP] \n\
/* 080442b6 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 080442b8 */ LSLS R0, R0, 0x4 \n\
/* 080442ba */ STR R0, [SP, 0x4] \n\
/* 080442bc */ STR R5, [SP, 0x8] \n\
/* 080442be */ STR R5, [SP, 0xC] \n\
/* 080442c0 */ STR R5, [SP, 0x10] \n\
/* 080442c2 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080442c4 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080442c6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080442c8 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 080442ca */ BL func_0804d160 \n\
/* 080442ce */ LDR R1, [R7] \n\
/* 080442d0 */ MOVS R3, 0xD8 @ Set R3 to 0xD8 \n\
/* 080442d2 */ LSLS R3, R3, 0x2 \n\
/* 080442d4 */ ADDS R2, R1, R3 @ Set R2 to R1 + R3 \n\
/* 080442d6 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080442d8 */ STRH R0, [R2] \n\
/* 080442da */ LDR R0, =0x362 \n\
/* 080442dc */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080442de */ STRB R3, [R1] \n\
/* 080442e0 */ LDR R1, [R7] \n\
/* 080442e2 */ ADDS R6, R1, R6 @ Set R6 to R1 + R6 \n\
/* 080442e4 */ LDRB R0, [R6] \n\
/* 080442e6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080442e8 */ BEQ branch_080442fe \n\
/* 080442ea */ MOV R2, R9 @ Set R2 to R9 \n\
/* 080442ec */ LDR R0, [R2] \n\
/* 080442ee */ MOVS R3, 0xD8 @ Set R3 to 0xD8 \n\
/* 080442f0 */ LSLS R3, R3, 0x2 \n\
/* 080442f2 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 080442f4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080442f6 */ LDRSH R1, [R1, R2] \n\
/* 080442f8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080442fa */ BL func_0804d770 \n\
 \n\
branch_080442fe: \n\
/* 080442fe */ ADD SP, 0x14 \n\
/* 08044300 */ POP {R3, R4} \n\
/* 08044302 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08044304 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08044306 */ POP {R4-R7} \n\
/* 08044308 */ POP {R0} \n\
/* 0804430a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
