asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018154 \n\
/* 08018154 */ PUSH {R4-R7, LR} \n\
/* 08018156 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08018158 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0801815a */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0801815c */ PUSH {R5-R7} \n\
/* 0801815e */ SUB SP, 0x14 \n\
/* 08018160 */ LDR R5, =D_03005380 \n\
/* 08018162 */ LDR R0, [R5] \n\
/* 08018164 */ BL func_0804e0c0 \n\
/* 08018168 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0801816a */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0801816c */ LSLS R0, R0, 0x10 \n\
/* 0801816e */ LSRS R0, R0, 0x10 \n\
/* 08018170 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08018172 */ LDR R0, [R5] \n\
/* 08018174 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 08018176 */ BL func_0804e0bc \n\
/* 0801817a */ LDR R0, [R5] \n\
/* 0801817c */ LDR R1, =D_0890ab28 \n\
/* 0801817e */ MOVS R6, 0x50 @ Set R6 to 0x50 \n\
/* 08018180 */ STR R6, [SP] \n\
/* 08018182 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08018184 */ STR R4, [SP, 0x4] \n\
/* 08018186 */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 08018188 */ STR R7, [SP, 0x8] \n\
/* 0801818a */ STR R4, [SP, 0xC] \n\
/* 0801818c */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801818e */ LSLS R2, R2, 0x8 \n\
/* 08018190 */ MOV R10, R2 @ Set R10 to R2 \n\
/* 08018192 */ STR R2, [SP, 0x10] \n\
/* 08018194 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018196 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08018198 */ BL func_0804d160 \n\
/* 0801819c */ LDR R3, =D_030046a4 \n\
/* 0801819e */ MOV R9, R3 @ Set R9 to R3 \n\
/* 080181a0 */ LDR R1, [R3] \n\
/* 080181a2 */ ADDS R1, 0x8C @ Add 0x8C to R1 \n\
/* 080181a4 */ STRH R0, [R1] \n\
/* 080181a6 */ LDR R0, [R5] \n\
/* 080181a8 */ LDR R1, =D_0890ab88 \n\
/* 080181aa */ STR R6, [SP] \n\
/* 080181ac */ STR R4, [SP, 0x4] \n\
/* 080181ae */ STR R7, [SP, 0x8] \n\
/* 080181b0 */ STR R4, [SP, 0xC] \n\
/* 080181b2 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 080181b4 */ STR R2, [SP, 0x10] \n\
/* 080181b6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080181b8 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 080181ba */ BL func_0804d160 \n\
/* 080181be */ MOV R3, R9 @ Set R3 to R9 \n\
/* 080181c0 */ LDR R1, [R3] \n\
/* 080181c2 */ ADDS R1, 0x8E @ Add 0x8E to R1 \n\
/* 080181c4 */ STRH R0, [R1] \n\
/* 080181c6 */ LDR R0, [R5] \n\
/* 080181c8 */ LDR R1, =D_0890abd8 \n\
/* 080181ca */ STR R6, [SP] \n\
/* 080181cc */ STR R4, [SP, 0x4] \n\
/* 080181ce */ STR R4, [SP, 0x8] \n\
/* 080181d0 */ STR R4, [SP, 0xC] \n\
/* 080181d2 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 080181d4 */ STR R2, [SP, 0x10] \n\
/* 080181d6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080181d8 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 080181da */ BL func_0804d160 \n\
/* 080181de */ MOV R3, R9 @ Set R3 to R9 \n\
/* 080181e0 */ LDR R1, [R3] \n\
/* 080181e2 */ LDR R2, =0x494 \n\
/* 080181e4 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080181e6 */ STRH R0, [R1] \n\
/* 080181e8 */ LDR R0, [R5] \n\
/* 080181ea */ LDR R1, =D_0890ac00 \n\
/* 080181ec */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 080181ee */ STR R2, [SP] \n\
/* 080181f0 */ MOVS R2, 0x64 @ Set R2 to 0x64 \n\
/* 080181f2 */ STR R2, [SP, 0x4] \n\
/* 080181f4 */ STR R7, [SP, 0x8] \n\
/* 080181f6 */ STR R4, [SP, 0xC] \n\
/* 080181f8 */ MOV R3, R10 @ Set R3 to R10 \n\
/* 080181fa */ STR R3, [SP, 0x10] \n\
/* 080181fc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080181fe */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08018200 */ BL func_0804d160 \n\
/* 08018204 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08018206 */ LDR R1, [R2] \n\
/* 08018208 */ LDR R3, =0x496 \n\
/* 0801820a */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0801820c */ STRH R0, [R1] \n\
/* 0801820e */ LDR R0, [R5] \n\
/* 08018210 */ LDR R1, =D_0890ac40 \n\
/* 08018212 */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 08018214 */ STR R2, [SP] \n\
/* 08018216 */ MOVS R2, 0x5A @ Set R2 to 0x5A \n\
/* 08018218 */ STR R2, [SP, 0x4] \n\
/* 0801821a */ STR R7, [SP, 0x8] \n\
/* 0801821c */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0801821e */ STR R2, [SP, 0xC] \n\
/* 08018220 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 08018222 */ STR R2, [SP, 0x10] \n\
/* 08018224 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08018226 */ MOVS R3, 0xE6 @ Set R3 to 0xE6 \n\
/* 08018228 */ BL func_0804d160 \n\
/* 0801822c */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0801822e */ LDR R1, [R3] \n\
/* 08018230 */ LDR R3, =0x4a2 \n\
/* 08018232 */ ADDS R2, R1, R3 @ Set R2 to R1 + R3 \n\
/* 08018234 */ STRH R0, [R2] \n\
/* 08018236 */ LDR R0, [R5] \n\
/* 08018238 */ ADDS R1, 0x8C @ Add 0x8C to R1 \n\
/* 0801823a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801823c */ LDRSH R1, [R1, R2] \n\
/* 0801823e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08018240 */ BL func_0804da68 \n\
/* 08018244 */ LDR R0, [R5] \n\
/* 08018246 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08018248 */ LDR R1, [R3] \n\
/* 0801824a */ ADDS R1, 0x8E @ Add 0x8E to R1 \n\
/* 0801824c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801824e */ LDRSH R1, [R1, R2] \n\
/* 08018250 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08018252 */ BL func_0804da68 \n\
/* 08018256 */ LDR R0, [R5] \n\
/* 08018258 */ MOVS R2, 0xF0 @ Set R2 to 0xF0 \n\
/* 0801825a */ LSLS R2, R2, 0x2 \n\
/* 0801825c */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 0801825e */ BL func_0804e158 \n\
/* 08018262 */ LDR R0, [R5] \n\
/* 08018264 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 08018266 */ MOVS R2, 0xE @ Set R2 to 0xE \n\
/* 08018268 */ BL func_0804e170 \n\
/* 0801826c */ LDR R0, [R5] \n\
/* 0801826e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08018270 */ BL func_0804e0bc \n\
/* 08018274 */ ADD SP, 0x14 \n\
/* 08018276 */ POP {R3-R5} \n\
/* 08018278 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801827a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0801827c */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0801827e */ POP {R4-R7} \n\
/* 08018280 */ POP {R0} \n\
/* 08018282 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
