asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08015244 \n\
/* 08015244 */ PUSH {R4-R6, LR} \n\
/* 08015246 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08015248 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0801524a */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 0801524c */ BL func_08014f30 \n\
/* 08015250 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08015252 */ BGE branch_08015264 \n\
/* 08015254 */ LDR R0, =D_030046a4 \n\
/* 08015256 */ LDR R0, [R0] \n\
/* 08015258 */ ADDS R0, 0x41 @ Add 0x41 to R0 \n\
/* 0801525a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801525c */ STRB R1, [R0] \n\
/* 0801525e */ B branch_08015288 \n\
\n\
.ltorg \n\
 \n\
branch_08015264: \n\
/* 08015264 */ LDR R2, =D_030046a4 \n\
/* 08015266 */ LDR R0, [R2] \n\
/* 08015268 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801526a */ ADDS R1, 0x48 @ Add 0x48 to R1 \n\
/* 0801526c */ STRH R4, [R1] \n\
/* 0801526e */ ADDS R0, 0x3F @ Add 0x3F to R0 \n\
/* 08015270 */ STRB R5, [R0] \n\
/* 08015272 */ LDR R0, [R2] \n\
/* 08015274 */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 08015276 */ STRB R6, [R0] \n\
/* 08015278 */ LDR R2, [R2] \n\
/* 0801527a */ LSLS R0, R4, 0x5 \n\
/* 0801527c */ LDR R1, =D_089ce344 \n\
/* 0801527e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08015280 */ STR R0, [R2, 0x44] \n\
/* 08015282 */ ADDS R2, 0x41 @ Add 0x41 to R2 \n\
/* 08015284 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08015286 */ STRB R0, [R2] \n\
 \n\
branch_08015288: \n\
/* 08015288 */ POP {R4-R6} \n\
/* 0801528a */ POP {R0} \n\
/* 0801528c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
