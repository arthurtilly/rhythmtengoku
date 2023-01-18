asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804d160 \n\
/* 0804d160 */ PUSH {R4-R7, LR} \n\
/* 0804d162 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0804d164 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0804d166 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0804d168 */ PUSH {R5-R7} \n\
/* 0804d16a */ SUB SP, 0x18 \n\
/* 0804d16c */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0804d16e */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0804d170 */ LDR R0, [SP, 0x38] \n\
/* 0804d172 */ LDR R1, [SP, 0x3C] \n\
/* 0804d174 */ LDR R4, [SP, 0x40] \n\
/* 0804d176 */ LDR R7, [SP, 0x44] \n\
/* 0804d178 */ LDR R5, [SP, 0x48] \n\
/* 0804d17a */ MOV R12, R5 @ Set R12 to R5 \n\
/* 0804d17c */ LSLS R2, R2, 0x18 \n\
/* 0804d17e */ LSRS R2, R2, 0x18 \n\
/* 0804d180 */ STR R2, [SP] \n\
/* 0804d182 */ LSLS R3, R3, 0x10 \n\
/* 0804d184 */ LSRS R3, R3, 0x10 \n\
/* 0804d186 */ STR R3, [SP, 0x4] \n\
/* 0804d188 */ LSLS R0, R0, 0x10 \n\
/* 0804d18a */ LSRS R0, R0, 0x10 \n\
/* 0804d18c */ STR R0, [SP, 0x8] \n\
/* 0804d18e */ LSLS R1, R1, 0x10 \n\
/* 0804d190 */ LSRS R1, R1, 0x10 \n\
/* 0804d192 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 0804d194 */ LSLS R4, R4, 0x18 \n\
/* 0804d196 */ LSRS R4, R4, 0x18 \n\
/* 0804d198 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0804d19a */ LSLS R0, R7, 0x18 \n\
/* 0804d19c */ LSRS R5, R0, 0x18 \n\
/* 0804d19e */ MOV R1, R12 @ Set R1 to R12 \n\
/* 0804d1a0 */ LSLS R1, R1, 0x10 \n\
/* 0804d1a2 */ STR R1, [SP, 0x14] \n\
/* 0804d1a4 */ LSRS R0, R1, 0x10 \n\
/* 0804d1a6 */ STR R0, [SP, 0x10] \n\
/* 0804d1a8 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804d1aa */ BL func_0804d0a4 \n\
/* 0804d1ae */ LSLS R0, R0, 0x10 \n\
/* 0804d1b0 */ ASRS R7, R0, 0x10 \n\
/* 0804d1b2 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 0804d1b4 */ BLT branch_0804d280 \n\
/* 0804d1b6 */ LSLS R0, R7, 0x4 \n\
/* 0804d1b8 */ SUBS R0, R0, R7 @ Set R0 to R0 - R7 \n\
/* 0804d1ba */ LSLS R0, R0, 0x2 \n\
/* 0804d1bc */ LDR R4, [R6, 0x8] \n\
/* 0804d1be */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0804d1c0 */ LDRB R0, [R4, 0x1] \n\
/* 0804d1c2 */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 0804d1c4 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804d1c6 */ STRB R0, [R4, 0x1] \n\
/* 0804d1c8 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804d1ca */ STR R1, [R4, 0x8] \n\
/* 0804d1cc */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0804d1ce */ STRB R0, [R4, 0xD] \n\
/* 0804d1d0 */ STRB R5, [R4, 0xE] \n\
/* 0804d1d2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804d1d4 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0804d1d6 */ MOV R5, SP @ Set R5 to SP \n\
/* 0804d1d8 */ LDRH R5, [R5, 0x4] \n\
/* 0804d1da */ STRH R5, [R4, 0x2] \n\
/* 0804d1dc */ MOV R0, SP @ Set R0 to SP \n\
/* 0804d1de */ LDRH R0, [R0, 0x8] \n\
/* 0804d1e0 */ STRH R0, [R4, 0x4] \n\
/* 0804d1e2 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0804d1e4 */ STRH R1, [R4, 0x6] \n\
/* 0804d1e6 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804d1e8 */ BL func_0804d11c \n\
/* 0804d1ec */ LSLS R0, R0, 0x18 \n\
/* 0804d1ee */ MOVS R2, 0xFF @ Set R2 to 0xFF \n\
/* 0804d1f0 */ LSRS R0, R0, 0x13 \n\
/* 0804d1f2 */ LDRH R3, [R4] \n\
/* 0804d1f4 */ LDR R1, =0xffffe01f \n\
/* 0804d1f6 */ ANDS R1, R3 @ Set R1 to R1 & R3 \n\
/* 0804d1f8 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0804d1fa */ STRH R1, [R4] \n\
/* 0804d1fc */ LDR R5, [SP, 0x10] \n\
/* 0804d1fe */ ANDS R2, R5 @ Set R2 to R2 & R5 \n\
/* 0804d200 */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 0804d202 */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 0804d204 */ LSLS R2, R2, 0x1 \n\
/* 0804d206 */ LDRB R1, [R4] \n\
/* 0804d208 */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 0804d20a */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804d20c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804d20e */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0804d210 */ STRB R0, [R4] \n\
/* 0804d212 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804d214 */ STR R0, [R4, 0x10] \n\
/* 0804d216 */ STRH R0, [R4, 0x14] \n\
/* 0804d218 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0804d21a */ STRB R1, [R4, 0x16] \n\
/* 0804d21c */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 0804d21e */ STRB R0, [R4, 0x17] \n\
/* 0804d220 */ LDRB R1, [R4, 0x1] \n\
/* 0804d222 */ MOVS R0, 0x21 @ Set R0 to 0x21 \n\
/* 0804d224 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804d226 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804d228 */ MOVS R1, 0x7F @ Set R1 to 0x7F \n\
/* 0804d22a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804d22c */ STRB R0, [R4, 0x1] \n\
/* 0804d22e */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0804d230 */ STR R5, [R4, 0x20] \n\
/* 0804d232 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804d234 */ BL func_0804d140 \n\
/* 0804d238 */ STRH R0, [R4, 0x28] \n\
/* 0804d23a */ LDR R0, =D_08bd0cac \n\
/* 0804d23c */ STR R0, [R4, 0x30] \n\
/* 0804d23e */ STR R0, [R4, 0x2C] \n\
/* 0804d240 */ LDRH R0, [R6, 0x1C] \n\
/* 0804d242 */ STRH R0, [R4, 0x2A] \n\
/* 0804d244 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804d246 */ LSLS R0, R0, 0x1 \n\
/* 0804d248 */ STRH R0, [R4, 0x38] \n\
/* 0804d24a */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804d24c */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0804d24e */ BL func_0804cf38 \n\
/* 0804d252 */ LDR R0, [SP] \n\
/* 0804d254 */ LSLS R2, R0, 0x18 \n\
/* 0804d256 */ ASRS R2, R2, 0x18 \n\
/* 0804d258 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804d25a */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0804d25c */ BL func_0804cebc \n\
/* 0804d260 */ LDR R5, [SP, 0x14] \n\
/* 0804d262 */ LSRS R1, R5, 0x1F \n\
/* 0804d264 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804d266 */ EORS R1, R0 @ Set R1 to R1 ^ R0 \n\
/* 0804d268 */ LDRB R2, [R4] \n\
/* 0804d26a */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0804d26c */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804d26e */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0804d270 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804d272 */ STRB R0, [R4] \n\
/* 0804d274 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0804d276 */ B branch_0804d284 \n\
\n\
.ltorg \n\
 \n\
branch_0804d280: \n\
/* 0804d280 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804d282 */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_0804d284: \n\
/* 0804d284 */ ADD SP, 0x18 \n\
/* 0804d286 */ POP {R3-R5} \n\
/* 0804d288 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804d28a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0804d28c */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0804d28e */ POP {R4-R7} \n\
/* 0804d290 */ POP {R1} \n\
/* 0804d292 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
