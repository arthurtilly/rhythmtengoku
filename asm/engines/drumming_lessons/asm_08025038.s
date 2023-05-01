asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08025038 \n\
/* 08025038 */ PUSH {R4-R7, LR} \n\
/* 0802503a */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0802503c */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0802503e */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08025040 */ PUSH {R5-R7} \n\
/* 08025042 */ SUB SP, 0x4 \n\
/* 08025044 */ LDR R1, =s_fanfare_drum3_seqData \n\
/* 08025046 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 08025048 */ LDR R2, =gCurrentEngineData \n\
/* 0802504a */ LDR R1, [R2] \n\
/* 0802504c */ MOVS R3, 0xE2 @ Set R3 to 0xE2 \n\
/* 0802504e */ LSLS R3, R3, 0x2 \n\
/* 08025050 */ ADDS R4, R1, R3 @ Set R4 to R1 + R3 \n\
/* 08025052 */ LDR R1, =D_08059f98 \n\
/* 08025054 */ STR R1, [R4] \n\
/* 08025056 */ LDRH R1, [R0] \n\
/* 08025058 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0802505a */ LDRB R1, [R0, 0x2] \n\
/* 0802505c */ LDRB R3, [R0, 0x3] \n\
/* 0802505e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08025060 */ STR R0, [SP] \n\
/* 08025062 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08025064 */ BNE branch_0802506a \n\
/* 08025066 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08025068 */ STR R0, [SP] \n\
 \n\
branch_0802506a: \n\
/* 0802506a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802506c */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0802506e */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08025070 */ BNE branch_08025076 \n\
/* 08025072 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08025074 */ MOV R10, R0 @ Set R10 to R0 \n\
 \n\
branch_08025076: \n\
/* 08025076 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08025078 */ MOV R12, R0 @ Set R12 to R0 \n\
/* 0802507a */ CMP R1, 0x2 @ Compare R1 and 0x2 \n\
/* 0802507c */ BNE branch_08025082 \n\
/* 0802507e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08025080 */ MOV R12, R0 @ Set R12 to R0 \n\
 \n\
branch_08025082: \n\
/* 08025082 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08025084 */ CMP R3, 0x2 @ Compare R3 and 0x2 \n\
/* 08025086 */ BNE branch_0802508a \n\
/* 08025088 */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
 \n\
branch_0802508a: \n\
/* 0802508a */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0802508c */ CMP R1, 0x3 @ Compare R1 and 0x3 \n\
/* 0802508e */ BNE branch_08025092 \n\
/* 08025090 */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
 \n\
branch_08025092: \n\
/* 08025092 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08025094 */ CMP R3, 0x3 @ Compare R3 and 0x3 \n\
/* 08025096 */ BNE branch_0802509a \n\
/* 08025098 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0802509a: \n\
/* 0802509a */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0802509c */ CMP R1, 0x4 @ Compare R1 and 0x4 \n\
/* 0802509e */ BNE branch_080250a2 \n\
/* 080250a0 */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
 \n\
branch_080250a2: \n\
/* 080250a2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080250a4 */ CMP R3, 0x4 @ Compare R3 and 0x4 \n\
/* 080250a6 */ BNE branch_080250aa \n\
/* 080250a8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
 \n\
branch_080250aa: \n\
/* 080250aa */ MOV R3, R8 @ Set R3 to R8 \n\
/* 080250ac */ CMP R3, 0x2 @ Compare R3 and 0x2 \n\
/* 080250ae */ BLS branch_080250c8 \n\
/* 080250b0 */ LDR R0, =D_08059f9c \n\
/* 080250b2 */ STR R0, [R4] \n\
/* 080250b4 */ B branch_080251b4 \n\
\n\
.ltorg \n\
 \n\
branch_080250c8: \n\
/* 080250c8 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 080250ca */ BNE branch_080250dc \n\
/* 080250cc */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080250ce */ BEQ branch_0802511c \n\
/* 080250d0 */ LDR R0, =D_0805a004 \n\
/* 080250d2 */ STR R0, [R4] \n\
/* 080250d4 */ B branch_080251b4 \n\
\n\
.ltorg \n\
 \n\
branch_080250dc: \n\
/* 080250dc */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080250de */ BEQ branch_08025108 \n\
/* 080250e0 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 080250e2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080250e4 */ BEQ branch_080250f8 \n\
/* 080250e6 */ LDR R0, [R2] \n\
/* 080250e8 */ MOVS R1, 0xE2 @ Set R1 to 0xE2 \n\
/* 080250ea */ LSLS R1, R1, 0x2 \n\
/* 080250ec */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080250ee */ LDR R1, =D_08059fb4 \n\
/* 080250f0 */ B branch_08025112 \n\
\n\
.ltorg \n\
 \n\
branch_080250f8: \n\
/* 080250f8 */ LDR R0, [R2] \n\
/* 080250fa */ MOVS R3, 0xE2 @ Set R3 to 0xE2 \n\
/* 080250fc */ LSLS R3, R3, 0x2 \n\
/* 080250fe */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08025100 */ LDR R1, =D_08059fd0 \n\
/* 08025102 */ B branch_08025112 \n\
\n\
.ltorg \n\
 \n\
branch_08025108: \n\
/* 08025108 */ LDR R0, [R2] \n\
/* 0802510a */ MOVS R1, 0xE2 @ Set R1 to 0xE2 \n\
/* 0802510c */ LSLS R1, R1, 0x2 \n\
/* 0802510e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08025110 */ LDR R1, =D_08059fe8 \n\
 \n\
branch_08025112: \n\
/* 08025112 */ STR R1, [R0] \n\
/* 08025114 */ B branch_080251b4 \n\
\n\
.ltorg \n\
 \n\
branch_0802511c: \n\
/* 0802511c */ MOV R3, R12 @ Set R3 to R12 \n\
/* 0802511e */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08025120 */ BNE branch_08025134 \n\
/* 08025122 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 08025124 */ BNE branch_0802512e \n\
/* 08025126 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 08025128 */ BNE branch_0802512e \n\
/* 0802512a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802512c */ BEQ branch_0802517c \n\
 \n\
branch_0802512e: \n\
/* 0802512e */ MOV R1, R12 @ Set R1 to R12 \n\
/* 08025130 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08025132 */ BEQ branch_08025138 \n\
 \n\
branch_08025134: \n\
/* 08025134 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08025136 */ BNE branch_08025140 \n\
 \n\
branch_08025138: \n\
/* 08025138 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0802513a */ BEQ branch_08025150 \n\
/* 0802513c */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0802513e */ BEQ branch_08025150 \n\
 \n\
branch_08025140: \n\
/* 08025140 */ LDR R0, [R2] \n\
/* 08025142 */ MOVS R3, 0xE2 @ Set R3 to 0xE2 \n\
/* 08025144 */ LSLS R3, R3, 0x2 \n\
/* 08025146 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08025148 */ LDR R1, =D_0805a020 \n\
/* 0802514a */ B branch_08025112 \n\
\n\
.ltorg \n\
 \n\
branch_08025150: \n\
/* 08025150 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 08025152 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08025154 */ BNE branch_0802515a \n\
/* 08025156 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 08025158 */ BEQ branch_0802516c \n\
 \n\
branch_0802515a: \n\
/* 0802515a */ LDR R0, [R2] \n\
/* 0802515c */ MOVS R1, 0xE2 @ Set R1 to 0xE2 \n\
/* 0802515e */ LSLS R1, R1, 0x2 \n\
/* 08025160 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08025162 */ LDR R1, =D_0805a038 \n\
/* 08025164 */ B branch_08025112 \n\
\n\
.ltorg \n\
 \n\
branch_0802516c: \n\
/* 0802516c */ LDR R0, [R2] \n\
/* 0802516e */ MOVS R3, 0xE2 @ Set R3 to 0xE2 \n\
/* 08025170 */ LSLS R3, R3, 0x2 \n\
/* 08025172 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08025174 */ LDR R1, =D_0805a048 \n\
/* 08025176 */ B branch_08025112 \n\
\n\
.ltorg \n\
 \n\
branch_0802517c: \n\
/* 0802517c */ LDR R0, [SP] \n\
/* 0802517e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08025180 */ BNE branch_08025188 \n\
/* 08025182 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08025184 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08025186 */ BEQ branch_080251a4 \n\
 \n\
branch_08025188: \n\
/* 08025188 */ LDR R0, [R2] \n\
/* 0802518a */ MOVS R3, 0xE2 @ Set R3 to 0xE2 \n\
/* 0802518c */ LSLS R3, R3, 0x2 \n\
/* 0802518e */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08025190 */ LDR R1, =D_0805a058 \n\
/* 08025192 */ STR R1, [R0] \n\
/* 08025194 */ LDR R0, =s_fanfare_drum1_seqData \n\
/* 08025196 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 08025198 */ B branch_080251b4 \n\
\n\
.ltorg \n\
 \n\
branch_080251a4: \n\
/* 080251a4 */ LDR R0, [R2] \n\
/* 080251a6 */ MOVS R1, 0xE2 @ Set R1 to 0xE2 \n\
/* 080251a8 */ LSLS R1, R1, 0x2 \n\
/* 080251aa */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080251ac */ LDR R1, =D_0805a06c \n\
/* 080251ae */ STR R1, [R0] \n\
/* 080251b0 */ LDR R3, =s_fanfare_drum2_seqData \n\
/* 080251b2 */ MOV R9, R3 @ Set R9 to R3 \n\
 \n\
branch_080251b4: \n\
/* 080251b4 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 080251b6 */ ADD SP, 0x4 \n\
/* 080251b8 */ POP {R3-R5} \n\
/* 080251ba */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080251bc */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080251be */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080251c0 */ POP {R4-R7} \n\
/* 080251c2 */ POP {R1} \n\
/* 080251c4 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
