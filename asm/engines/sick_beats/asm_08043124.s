asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08043124 \n\
/* 08043124 */ PUSH {R4-R6, LR} \n\
/* 08043126 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08043128 */ LDR R0, =gCurrentEngineData \n\
/* 0804312a */ LDR R6, [R0] \n\
/* 0804312c */ ADDS R5, R6, 0x0 @ Set R5 to R6 + 0x0 \n\
/* 0804312e */ ADDS R5, 0xC @ Add 0xC to R5 \n\
/* 08043130 */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 08043132 */ BL beats_to_ticks \n\
/* 08043136 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08043138 */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0804313a */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0804313c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804313e */ BEQ branch_08043142 \n\
/* 08043140 */ STRH R1, [R5, 0x14] \n\
 \n\
branch_08043142: \n\
/* 08043142 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08043144 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 08043146 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08043148 */ BEQ branch_0804314c \n\
/* 0804314a */ STRH R1, [R5, 0x16] \n\
 \n\
branch_0804314c: \n\
/* 0804314c */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 0804314e */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 08043150 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08043152 */ BEQ branch_08043156 \n\
/* 08043154 */ STRH R1, [R5, 0x18] \n\
 \n\
branch_08043156: \n\
/* 08043156 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08043158 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0804315a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804315c */ BEQ branch_08043160 \n\
/* 0804315e */ STRH R1, [R5, 0x1A] \n\
 \n\
branch_08043160: \n\
/* 08043160 */ LDR R0, =D_03005380 \n\
/* 08043162 */ LDR R0, [R0] \n\
/* 08043164 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 08043166 */ LDRSH R1, [R6, R2] \n\
/* 08043168 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804316a */ BL func_0804cebc \n\
/* 0804316e */ POP {R4-R6} \n\
/* 08043170 */ POP {R0} \n\
/* 08043172 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
