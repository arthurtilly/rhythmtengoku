asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08049144 \n\
/* 08049144 */ PUSH {R4-R6, LR} \n\
/* 08049146 */ SUB SP, 0x4 \n\
/* 08049148 */ LDR R0, =D_030064c4 \n\
/* 0804914a */ LDRH R0, [R0] \n\
/* 0804914c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804914e */ BNE branch_08049152 \n\
/* 08049150 */ B branch_080492f4 \n\
 \n\
branch_08049152: \n\
/* 08049152 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08049154 */ LDR R1, =D_030064a0 \n\
/* 08049156 */ LDR R0, [R1] \n\
/* 08049158 */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 0804915a */ STR R0, [R1] \n\
/* 0804915c */ LDR R3, =D_03005b24 \n\
/* 0804915e */ LDR R2, [R1] \n\
/* 08049160 */ LDR R0, [R3] \n\
/* 08049162 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08049164 */ CMP R2, R0 @ Check R2 - R0 \n\
/* 08049166 */ BCC branch_08049170 \n\
/* 08049168 */ LDR R0, [R6] \n\
/* 0804916a */ LDR R1, [R3] \n\
/* 0804916c */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804916e */ STR R0, [R6] \n\
 \n\
branch_08049170: \n\
/* 08049170 */ LDR R0, =D_03005b40 \n\
/* 08049172 */ LDR R1, [R6] \n\
/* 08049174 */ LDR R0, [R0] \n\
/* 08049176 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 08049178 */ BNE branch_08049218 \n\
/* 0804917a */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0804917c */ LDR R0, [R6] \n\
/* 0804917e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08049180 */ BEQ branch_08049198 \n\
/* 08049182 */ LDR R0, [R6] \n\
/* 08049184 */ B branch_0804919a \n\
\n\
.ltorg \n\
 \n\
branch_08049198: \n\
/* 08049198 */ LDR R0, [R3] \n\
 \n\
branch_0804919a: \n\
/* 0804919a */ SUBS R0, 0x4 @ Subtract 0x4 from R0 \n\
/* 0804919c */ STR R0, [R1] \n\
/* 0804919e */ LDR R0, [R6] \n\
/* 080491a0 */ LDR R1, =D_0300563c \n\
/* 080491a2 */ LDR R4, [R1] \n\
/* 080491a4 */ LSLS R0, R0, 0x2 \n\
/* 080491a6 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 080491a8 */ LDR R0, [R0, 0xC] \n\
/* 080491aa */ LSRS R5, R0, 0x18 \n\
/* 080491ac */ LSLS R0, R5, 0x8 \n\
/* 080491ae */ ORRS R5, R0 @ Set R5 to R5 | R0 \n\
/* 080491b0 */ LSLS R0, R5, 0x10 \n\
/* 080491b2 */ ORRS R5, R0 @ Set R5 to R5 | R0 \n\
/* 080491b4 */ LDR R3, [R6] \n\
/* 080491b6 */ LSLS R3, R3, 0x2 \n\
/* 080491b8 */ ADDS R3, R3, R4 @ Set R3 to R3 + R4 \n\
/* 080491ba */ LDR R2, [R6] \n\
/* 080491bc */ LSLS R2, R2, 0x2 \n\
/* 080491be */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 080491c0 */ LDR R1, [R6] \n\
/* 080491c2 */ LSLS R1, R1, 0x2 \n\
/* 080491c4 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 080491c6 */ LDR R0, [R6] \n\
/* 080491c8 */ LSLS R0, R0, 0x2 \n\
/* 080491ca */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 080491cc */ STR R5, [R0, 0xC] \n\
/* 080491ce */ LDR R0, [R0, 0xC] \n\
/* 080491d0 */ STR R0, [R1, 0x8] \n\
/* 080491d2 */ LDR R0, [R1, 0x8] \n\
/* 080491d4 */ STR R0, [R2, 0x4] \n\
/* 080491d6 */ LDR R0, [R2, 0x4] \n\
/* 080491d8 */ STR R0, [R3] \n\
/* 080491da */ LDR R0, [R6] \n\
/* 080491dc */ LDR R1, =D_030064b8 \n\
/* 080491de */ LDR R4, [R1] \n\
/* 080491e0 */ LSLS R0, R0, 0x2 \n\
/* 080491e2 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 080491e4 */ LDR R0, [R0, 0xC] \n\
/* 080491e6 */ LSRS R5, R0, 0x18 \n\
/* 080491e8 */ LSLS R0, R5, 0x8 \n\
/* 080491ea */ ORRS R5, R0 @ Set R5 to R5 | R0 \n\
/* 080491ec */ LSLS R0, R5, 0x10 \n\
/* 080491ee */ ORRS R5, R0 @ Set R5 to R5 | R0 \n\
/* 080491f0 */ LDR R3, [R6] \n\
/* 080491f2 */ LSLS R3, R3, 0x2 \n\
/* 080491f4 */ ADDS R3, R3, R4 @ Set R3 to R3 + R4 \n\
/* 080491f6 */ LDR R2, [R6] \n\
/* 080491f8 */ LSLS R2, R2, 0x2 \n\
/* 080491fa */ ADDS R2, R2, R4 @ Set R2 to R2 + R4 \n\
/* 080491fc */ LDR R1, [R6] \n\
/* 080491fe */ LSLS R1, R1, 0x2 \n\
/* 08049200 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08049202 */ LDR R0, [R6] \n\
/* 08049204 */ LSLS R0, R0, 0x2 \n\
/* 08049206 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 08049208 */ STR R5, [R0, 0xC] \n\
/* 0804920a */ LDR R0, [R0, 0xC] \n\
/* 0804920c */ STR R0, [R1, 0x8] \n\
/* 0804920e */ LDR R0, [R1, 0x8] \n\
/* 08049210 */ STR R0, [R2, 0x4] \n\
/* 08049212 */ LDR R0, [R2, 0x4] \n\
/* 08049214 */ STR R0, [R3] \n\
/* 08049216 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
 \n\
branch_08049218: \n\
/* 08049218 */ ADDS R5, R6, 0x0 @ Set R5 to R6 + 0x0 \n\
/* 0804921a */ LDR R0, [R5] \n\
/* 0804921c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804921e */ BNE branch_08049222 \n\
/* 08049220 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
 \n\
branch_08049222: \n\
/* 08049222 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08049224 */ BEQ branch_080492f4 \n\
/* 08049226 */ LDR R0, =D_030055f4 \n\
/* 08049228 */ LDR R0, [R0] \n\
/* 0804922a */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0804922c */ BEQ branch_08049288 \n\
/* 0804922e */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08049230 */ BCC branch_08049244 \n\
/* 08049232 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08049234 */ BEQ branch_080492b8 \n\
/* 08049236 */ B branch_080492f4 \n\
\n\
.ltorg \n\
 \n\
branch_08049244: \n\
/* 08049244 */ LDR R3, =0x040000c6 @ !Hardware REG_DMA1CNT_H\n\
/* 08049246 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08049248 */ STRH R0, [R3] \n\
/* 0804924a */ LDR R4, =0x040000d2 @ !Hardware REG_DMA2CNT_H\n\
/* 0804924c */ STRH R0, [R4] \n\
/* 0804924e */ LDR R2, =0x040000bc @ !Hardware REG_DMA1SAD\n\
/* 08049250 */ LDR R0, =D_0300563c \n\
/* 08049252 */ LDR R1, [R5] \n\
/* 08049254 */ LSLS R1, R1, 0x2 \n\
/* 08049256 */ LDR R0, [R0] \n\
/* 08049258 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804925a */ STR R0, [R2] \n\
/* 0804925c */ ADDS R2, 0xC @ Add 0xC to R2 \n\
/* 0804925e */ LDR R0, =D_030064b8 \n\
/* 08049260 */ LDR R1, [R5] \n\
/* 08049262 */ LSLS R1, R1, 0x2 \n\
/* 08049264 */ LDR R0, [R0] \n\
/* 08049266 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08049268 */ STR R0, [R2] \n\
/* 0804926a */ MOVS R1, 0xB6 @ Set R1 to 0xB6 \n\
/* 0804926c */ LSLS R1, R1, 0x8 \n\
/* 0804926e */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08049270 */ B branch_080492e0 \n\
\n\
.ltorg \n\
 \n\
branch_08049288: \n\
/* 08049288 */ LDR R3, =0x040000d2 @ !Hardware REG_DMA2CNT_H\n\
/* 0804928a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804928c */ STRH R0, [R3] \n\
/* 0804928e */ LDR R2, =0x040000c8 @ !Hardware REG_DMA2SAD\n\
/* 08049290 */ LDR R0, =D_0300563c \n\
/* 08049292 */ LDR R1, [R5] \n\
/* 08049294 */ LSLS R1, R1, 0x2 \n\
/* 08049296 */ LDR R0, [R0] \n\
/* 08049298 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804929a */ STR R0, [R2] \n\
/* 0804929c */ MOVS R1, 0xF6 @ Set R1 to 0xF6 \n\
/* 0804929e */ LSLS R1, R1, 0x8 \n\
/* 080492a0 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080492a2 */ STRH R0, [R3] \n\
/* 080492a4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080492a6 */ STR R0, [SP] \n\
/* 080492a8 */ STR R0, [SP] \n\
/* 080492aa */ B branch_080492f4 \n\
\n\
.ltorg \n\
 \n\
branch_080492b8: \n\
/* 080492b8 */ LDR R3, =0x040000c6 @ !Hardware REG_DMA1CNT_H\n\
/* 080492ba */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080492bc */ STRH R0, [R3] \n\
/* 080492be */ LDR R4, =0x040000d2 @ !Hardware REG_DMA2CNT_H\n\
/* 080492c0 */ STRH R0, [R4] \n\
/* 080492c2 */ LDR R2, =0x040000bc @ !Hardware REG_DMA1SAD\n\
/* 080492c4 */ LDR R1, =D_0300563c \n\
/* 080492c6 */ LDR R0, [R6] \n\
/* 080492c8 */ LSLS R0, R0, 0x2 \n\
/* 080492ca */ LDR R1, [R1] \n\
/* 080492cc */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 080492ce */ STR R0, [R2] \n\
/* 080492d0 */ ADDS R2, 0xC @ Add 0xC to R2 \n\
/* 080492d2 */ LDR R0, [R6] \n\
/* 080492d4 */ LSLS R0, R0, 0x2 \n\
/* 080492d6 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080492d8 */ STR R1, [R2] \n\
/* 080492da */ MOVS R2, 0xB6 @ Set R2 to 0xB6 \n\
/* 080492dc */ LSLS R2, R2, 0x8 \n\
/* 080492de */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
 \n\
branch_080492e0: \n\
/* 080492e0 */ STRH R0, [R3] \n\
/* 080492e2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080492e4 */ STR R1, [SP] \n\
/* 080492e6 */ STR R1, [SP] \n\
/* 080492e8 */ MOVS R2, 0xF6 @ Set R2 to 0xF6 \n\
/* 080492ea */ LSLS R2, R2, 0x8 \n\
/* 080492ec */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080492ee */ STRH R0, [R4] \n\
/* 080492f0 */ STR R1, [SP] \n\
/* 080492f2 */ STR R1, [SP] \n\
 \n\
branch_080492f4: \n\
/* 080492f4 */ ADD SP, 0x4 \n\
/* 080492f6 */ POP {R4-R6} \n\
/* 080492f8 */ POP {R0} \n\
/* 080492fa */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
