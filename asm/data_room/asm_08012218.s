asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08012218 \n\
/* 08012218 */ PUSH {R4, R5, LR} \n\
/* 0801221a */ SUB SP, 0xC \n\
/* 0801221c */ LDR R5, =D_030046a4 \n\
/* 0801221e */ LDR R1, [R5] \n\
/* 08012220 */ LDRH R0, [R1, 0x1A] \n\
/* 08012222 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08012224 */ BEQ branch_08012296 \n\
/* 08012226 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08012228 */ STRH R0, [R1, 0x1A] \n\
/* 0801222a */ LSLS R0, R0, 0x10 \n\
/* 0801222c */ LSRS R4, R0, 0x10 \n\
/* 0801222e */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08012230 */ BNE branch_08012296 \n\
/* 08012232 */ LDRB R3, [R1, 0x1C] \n\
/* 08012234 */ CMP R3, 0x1 @ Compare R3 and 0x1 \n\
/* 08012236 */ BEQ branch_08012270 \n\
/* 08012238 */ CMP R3, 0x1 @ Compare R3 and 0x1 \n\
/* 0801223a */ BGT branch_08012296 \n\
/* 0801223c */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0801223e */ BNE branch_08012296 \n\
/* 08012240 */ LDR R0, =D_03005380 \n\
/* 08012242 */ LDR R0, [R0] \n\
/* 08012244 */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 08012246 */ LDRSH R1, [R1, R2] \n\
/* 08012248 */ LDR R2, =D_089019a8 \n\
/* 0801224a */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0801224c */ STR R3, [SP] \n\
/* 0801224e */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 08012250 */ STR R3, [SP, 0x4] \n\
/* 08012252 */ STR R4, [SP, 0x8] \n\
/* 08012254 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08012256 */ BL func_0804d8f8 \n\
/* 0801225a */ LDR R1, [R5] \n\
/* 0801225c */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801225e */ STRB R0, [R1, 0x1C] \n\
/* 08012260 */ B branch_08012296 \n\
\n\
.ltorg \n\
 \n\
branch_08012270: \n\
/* 08012270 */ LDR R0, =D_03005380 \n\
/* 08012272 */ LDR R0, [R0] \n\
/* 08012274 */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 08012276 */ LDRSH R1, [R1, R2] \n\
/* 08012278 */ LDR R2, =D_08901948 \n\
/* 0801227a */ STR R3, [SP] \n\
/* 0801227c */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0801227e */ STR R3, [SP, 0x4] \n\
/* 08012280 */ STR R4, [SP, 0x8] \n\
/* 08012282 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08012284 */ BL func_0804d8f8 \n\
/* 08012288 */ LDR R1, [R5] \n\
/* 0801228a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801228c */ STRB R0, [R1, 0x1C] \n\
/* 0801228e */ LDR R1, [R5] \n\
/* 08012290 */ MOVS R0, 0x87 @ Set R0 to 0x87 \n\
/* 08012292 */ LSLS R0, R0, 0x2 \n\
/* 08012294 */ STRH R0, [R1, 0x1A] \n\
 \n\
branch_08012296: \n\
/* 08012296 */ ADD SP, 0xC \n\
/* 08012298 */ POP {R4, R5} \n\
/* 0801229a */ POP {R0} \n\
/* 0801229c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
