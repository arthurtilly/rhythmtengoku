asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080141f8 \n\
/* 080141f8 */ PUSH {R4-R7, LR} \n\
/* 080141fa */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080141fc */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 080141fe */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08014200 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08014202 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08014204 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08014206 */ BEQ branch_08014258 \n\
/* 08014208 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801420a */ BL func_0801317c \n\
/* 0801420e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08014210 */ BLT branch_08014258 \n\
/* 08014212 */ CMP R0, R4 @ Check R0 - R4 \n\
/* 08014214 */ BGE branch_08014258 \n\
/* 08014216 */ LDR R3, =D_030046a4 \n\
/* 08014218 */ LDR R1, [R3] \n\
/* 0801421a */ MOVS R2, 0xB7 @ Set R2 to 0xB7 \n\
/* 0801421c */ LSLS R2, R2, 0x2 \n\
/* 0801421e */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08014220 */ LDRB R0, [R0] \n\
/* 08014222 */ LSLS R0, R0, 0x2 \n\
/* 08014224 */ MOVS R7, 0xB8 @ Set R7 to 0xB8 \n\
/* 08014226 */ LSLS R7, R7, 0x2 \n\
/* 08014228 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 0801422a */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0801422c */ STRB R5, [R1] \n\
/* 0801422e */ STRB R6, [R1, 0x1] \n\
/* 08014230 */ STRB R4, [R1, 0x2] \n\
/* 08014232 */ LDR R1, [R3] \n\
/* 08014234 */ LDR R0, =0x2da \n\
/* 08014236 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08014238 */ LDRB R0, [R1] \n\
/* 0801423a */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0801423c */ STRB R0, [R1] \n\
/* 0801423e */ LDR R1, [R3] \n\
/* 08014240 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08014242 */ LDRB R0, [R1] \n\
/* 08014244 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08014246 */ STRB R0, [R1] \n\
/* 08014248 */ LSLS R0, R0, 0x18 \n\
/* 0801424a */ LSRS R0, R0, 0x18 \n\
/* 0801424c */ CMP R0, 0xF @ Compare R0 and 0xF \n\
/* 0801424e */ BLS branch_08014258 \n\
/* 08014250 */ LDR R0, [R3] \n\
/* 08014252 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08014254 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08014256 */ STRB R1, [R0] \n\
 \n\
branch_08014258: \n\
/* 08014258 */ POP {R4-R7} \n\
/* 0801425a */ POP {R0} \n\
/* 0801425c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
