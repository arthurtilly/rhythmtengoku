asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005208 \n\
/* 08005208 */ PUSH {R4-R7, LR} \n\
/* 0800520a */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0800520c */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0800520e */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08005210 */ PUSH {R5-R7} \n\
/* 08005212 */ SUB SP, 0x8 \n\
/* 08005214 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08005216 */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 08005218 */ LDRB R0, [R7] \n\
/* 0800521a */ CMP R0, 0x81 @ Compare R0 and 0x81 \n\
/* 0800521c */ BNE branch_08005224 \n\
/* 0800521e */ LDRB R0, [R7, 0x1] \n\
/* 08005220 */ CMP R0, 0x40 @ Compare R0 and 0x40 \n\
/* 08005222 */ BEQ branch_08005232 \n\
 \n\
branch_08005224: \n\
/* 08005224 */ LDRB R0, [R7] \n\
/* 08005226 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08005228 */ CMP R2, 0x20 @ Compare R2 and 0x20 \n\
/* 0800522a */ BNE branch_0800523c \n\
/* 0800522c */ LDRB R0, [R7, 0x1] \n\
/* 0800522e */ CMP R0, 0x20 @ Compare R0 and 0x20 \n\
/* 08005230 */ BNE branch_0800523c \n\
 \n\
branch_08005232: \n\
/* 08005232 */ LDR R0, =0xffff \n\
/* 08005234 */ B branch_08005314 \n\
\n\
.ltorg \n\
 \n\
branch_0800523c: \n\
/* 0800523c */ LDR R1, =D_030008f8 \n\
/* 0800523e */ LDR R0, [R1] \n\
/* 08005240 */ LSLS R0, R0, 0x4 \n\
/* 08005242 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 08005244 */ LSLS R0, R0, 0x18 \n\
/* 08005246 */ LSRS R0, R0, 0x18 \n\
/* 08005248 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0800524a */ LDRB R0, [R7, 0x1] \n\
/* 0800524c */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0800524e */ MOVS R0, 0x63 @ Set R0 to 0x63 \n\
/* 08005250 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08005252 */ LDR R2, [R6, 0x8] \n\
/* 08005254 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08005256 */ MOV R12, R1 @ Set R12 to R1 \n\
/* 08005258 */ LDRB R4, [R6, 0x7] \n\
/* 0800525a */ CMP R5, R4 @ Check R5 - R4 \n\
/* 0800525c */ BCS branch_08005288 \n\
 \n\
branch_0800525e: \n\
/* 0800525e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
 \n\
branch_08005260: \n\
/* 08005260 */ LDRB R0, [R2] \n\
/* 08005262 */ CMP R8, R0 @ Compare R8 and R0 \n\
/* 08005264 */ BNE branch_0800526c \n\
/* 08005266 */ LDRB R1, [R2, 0x1] \n\
/* 08005268 */ CMP R9, R1 @ Compare R9 and R1 \n\
/* 0800526a */ BEQ branch_080052f4 \n\
 \n\
branch_0800526c: \n\
/* 0800526c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800526e */ BNE branch_0800527a \n\
/* 08005270 */ LDRB R0, [R2, 0x1] \n\
/* 08005272 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005274 */ BNE branch_0800527a \n\
/* 08005276 */ MOV R10, R3 @ Set R10 to R3 \n\
/* 08005278 */ STR R5, [SP, 0x4] \n\
 \n\
branch_0800527a: \n\
/* 0800527a */ ADDS R2, 0x2 @ Add 0x2 to R2 \n\
/* 0800527c */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 0800527e */ CMP R3, 0xF @ Compare R3 and 0xF \n\
/* 08005280 */ BLS branch_08005260 \n\
/* 08005282 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08005284 */ CMP R5, R4 @ Check R5 - R4 \n\
/* 08005286 */ BCC branch_0800525e \n\
 \n\
branch_08005288: \n\
/* 08005288 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0800528a */ CMP R0, 0x63 @ Compare R0 and 0x63 \n\
/* 0800528c */ BEQ branch_08005312 \n\
/* 0800528e */ LSLS R4, R0, 0x1 \n\
/* 08005290 */ LDRH R1, [R6, 0x4] \n\
/* 08005292 */ ADDS R4, R4, R1 @ Set R4 to R4 + R1 \n\
/* 08005294 */ LDR R1, [SP, 0x4] \n\
/* 08005296 */ LSLS R0, R1, 0x5 \n\
/* 08005298 */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
/* 0800529a */ LDRB R5, [R6, 0x6] \n\
/* 0800529c */ LSLS R5, R5, 0xE \n\
/* 0800529e */ LSLS R0, R4, 0x5 \n\
/* 080052a0 */ MOVS R1, 0xC0 @ Set R1 to 0xC0 \n\
/* 080052a2 */ LSLS R1, R1, 0x13 \n\
/* 080052a4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080052a6 */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 080052a8 */ MOV R1, R12 @ Set R1 to R12 \n\
/* 080052aa */ LDR R0, [R1] \n\
/* 080052ac */ LSLS R1, R0, 0x3 \n\
/* 080052ae */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 080052b0 */ LSLS R1, R1, 0x3 \n\
/* 080052b2 */ LDR R0, [R6] \n\
/* 080052b4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080052b6 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 080052b8 */ MOV R2, SP @ Set R2 to SP \n\
/* 080052ba */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080052bc */ BL func_080043c8 \n\
/* 080052c0 */ LDR R0, [SP] \n\
/* 080052c2 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 080052c4 */ BL func_080051f0 \n\
/* 080052c8 */ LDR R1, [SP, 0x4] \n\
/* 080052ca */ LSLS R0, R1, 0x4 \n\
/* 080052cc */ MOV R1, R10 @ Set R1 to R10 \n\
/* 080052ce */ ADDS R5, R1, R0 @ Set R5 to R1 + R0 \n\
/* 080052d0 */ LSLS R1, R5, 0x1 \n\
/* 080052d2 */ LDR R0, [R6, 0x8] \n\
/* 080052d4 */ ADDS R2, R0, R1 @ Set R2 to R0 + R1 \n\
/* 080052d6 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 080052d8 */ STRB R0, [R2] \n\
/* 080052da */ MOV R1, R9 @ Set R1 to R9 \n\
/* 080052dc */ STRB R1, [R2, 0x1] \n\
/* 080052de */ LDR R0, [R6, 0xC] \n\
/* 080052e0 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 080052e2 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080052e4 */ STRB R1, [R0] \n\
/* 080052e6 */ LSLS R4, R4, 0x10 \n\
/* 080052e8 */ LSRS R4, R4, 0x10 \n\
/* 080052ea */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080052ec */ B branch_08005314 \n\
\n\
.ltorg \n\
 \n\
branch_080052f4: \n\
/* 080052f4 */ LDR R1, [R6, 0xC] \n\
/* 080052f6 */ LSLS R0, R5, 0x4 \n\
/* 080052f8 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080052fa */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080052fc */ LDRB R0, [R1] \n\
/* 080052fe */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08005300 */ STRB R0, [R1] \n\
/* 08005302 */ LSLS R0, R3, 0x1 \n\
/* 08005304 */ LDRH R6, [R6, 0x4] \n\
/* 08005306 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08005308 */ LSLS R1, R5, 0x5 \n\
/* 0800530a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800530c */ LSLS R0, R0, 0x10 \n\
/* 0800530e */ LSRS R0, R0, 0x10 \n\
/* 08005310 */ B branch_08005314 \n\
 \n\
branch_08005312: \n\
/* 08005312 */ LDR R0, =0xfffe \n\
 \n\
branch_08005314: \n\
/* 08005314 */ ADD SP, 0x8 \n\
/* 08005316 */ POP {R3-R5} \n\
/* 08005318 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800531a */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800531c */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0800531e */ POP {R4-R7} \n\
/* 08005320 */ POP {R1} \n\
/* 08005322 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
