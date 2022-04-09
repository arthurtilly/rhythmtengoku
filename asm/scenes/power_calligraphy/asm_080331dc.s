asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080331dc \n\
/* 080331dc */ PUSH {R4-R7, LR} \n\
/* 080331de */ MOV R7, R8 @ Set R7 to R8 \n\
/* 080331e0 */ PUSH {R7} \n\
/* 080331e2 */ SUB SP, 0xC \n\
/* 080331e4 */ LDR R3, =D_030055d0 \n\
/* 080331e6 */ LDR R2, [R3] \n\
/* 080331e8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080331ea */ STRB R1, [R2, 0x7] \n\
/* 080331ec */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080331ee */ BEQ branch_08033200 \n\
/* 080331f0 */ LDR R1, [R3] \n\
/* 080331f2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080331f4 */ STRB R0, [R1, 0x8] \n\
/* 080331f6 */ LDR R1, [R3] \n\
/* 080331f8 */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 080331fa */ B branch_0803320a \n\
\n\
.ltorg \n\
 \n\
branch_08033200: \n\
/* 08033200 */ LDR R1, [R3] \n\
/* 08033202 */ MOVS R0, 0xFC @ Set R0 to 0xFC \n\
/* 08033204 */ STRB R0, [R1, 0x8] \n\
/* 08033206 */ LDR R1, [R3] \n\
/* 08033208 */ MOVS R0, 0xF8 @ Set R0 to 0xF8 \n\
 \n\
branch_0803320a: \n\
/* 0803320a */ STRB R0, [R1, 0x9] \n\
/* 0803320c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803320e */ BL func_0800e030 \n\
/* 08033212 */ LDR R0, =D_03004b10 \n\
/* 08033214 */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 08033216 */ LDRSH R1, [R0, R2] \n\
/* 08033218 */ MOVS R3, 0x16 @ Set R3 to 0x16 \n\
/* 0803321a */ LDRSH R2, [R0, R3] \n\
/* 0803321c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803321e */ BL func_0800e058 \n\
/* 08033222 */ LDR R6, =D_030055d0 \n\
/* 08033224 */ LDR R1, [R6] \n\
/* 08033226 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 08033228 */ LDRSB R0, [R1, R0] \n\
/* 0803322a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803322c */ BGE branch_08033264 \n\
/* 0803322e */ LDR R4, =D_03005380 \n\
/* 08033230 */ LDR R0, [R4] \n\
/* 08033232 */ MOVS R2, 0x36 @ Set R2 to 0x36 \n\
/* 08033234 */ LDRSH R1, [R1, R2] \n\
/* 08033236 */ LDR R2, =D_088eef28 \n\
/* 08033238 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803323a */ STR R3, [SP] \n\
/* 0803323c */ STR R3, [SP, 0x4] \n\
/* 0803323e */ STR R3, [SP, 0x8] \n\
/* 08033240 */ BL func_0804d8f8 \n\
/* 08033244 */ LDR R0, [R4] \n\
/* 08033246 */ LDR R1, [R6] \n\
/* 08033248 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 0803324a */ LDRSH R1, [R1, R3] \n\
/* 0803324c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803324e */ BL func_0804d770 \n\
/* 08033252 */ B branch_080332aa \n\
\n\
.ltorg \n\
 \n\
branch_08033264: \n\
/* 08033264 */ LDR R4, =D_03005380 \n\
/* 08033266 */ LDR R0, [R4] \n\
/* 08033268 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 0803326a */ LDRSH R1, [R1, R2] \n\
/* 0803326c */ MOVS R2, 0x7 @ Set R2 to 0x7 \n\
/* 0803326e */ BL func_0804ddb0 \n\
/* 08033272 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08033274 */ LDR R0, [R4] \n\
/* 08033276 */ LDR R1, [R6] \n\
/* 08033278 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0803327a */ LDRSH R1, [R1, R3] \n\
/* 0803327c */ BL func_0804d6cc \n\
/* 08033280 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08033282 */ LDR R0, [R4] \n\
/* 08033284 */ LDR R1, [R6] \n\
/* 08033286 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08033288 */ LDRSH R1, [R1, R2] \n\
/* 0803328a */ LSLS R3, R3, 0x18 \n\
/* 0803328c */ ASRS R3, R3, 0x18 \n\
/* 0803328e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08033290 */ STR R2, [SP] \n\
/* 08033292 */ STR R2, [SP, 0x4] \n\
/* 08033294 */ STR R2, [SP, 0x8] \n\
/* 08033296 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 08033298 */ BL func_0804d8f8 \n\
/* 0803329c */ LDR R0, [R4] \n\
/* 0803329e */ LDR R1, [R6] \n\
/* 080332a0 */ MOVS R3, 0x4 @ Set R3 to 0x4 \n\
/* 080332a2 */ LDRSH R1, [R1, R3] \n\
/* 080332a4 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080332a6 */ BL func_0804d770 \n\
 \n\
branch_080332aa: \n\
/* 080332aa */ LDR R0, =D_03005380 \n\
/* 080332ac */ LDR R0, [R0] \n\
/* 080332ae */ LDR R4, =D_030055d0 \n\
/* 080332b0 */ LDR R1, [R4] \n\
/* 080332b2 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080332b4 */ LDRSH R1, [R1, R2] \n\
/* 080332b6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080332b8 */ BL func_0804d770 \n\
/* 080332bc */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080332be */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080332c0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080332c2 */ BL func_0800e058 \n\
/* 080332c6 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080332c8 */ B branch_080332ea \n\
\n\
.ltorg \n\
 \n\
branch_080332d4: \n\
/* 080332d4 */ LDR R0, =D_03005380 \n\
/* 080332d6 */ LDR R0, [R0] \n\
/* 080332d8 */ LDR R1, [R4] \n\
/* 080332da */ LSLS R2, R5, 0x1 \n\
/* 080332dc */ ADDS R1, 0x22 @ Add 0x22 to R1 \n\
/* 080332de */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080332e0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080332e2 */ LDRSH R1, [R1, R3] \n\
/* 080332e4 */ BL func_0804d504 \n\
/* 080332e8 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
 \n\
branch_080332ea: \n\
/* 080332ea */ LDR R0, [R4] \n\
/* 080332ec */ LDRB R0, [R0, 0xC] \n\
/* 080332ee */ CMP R5, R0 @ Check R5 - R0 \n\
/* 080332f0 */ BCC branch_080332d4 \n\
/* 080332f2 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080332f4 */ LDR R1, =D_030055d0 \n\
/* 080332f6 */ LDR R0, [R1] \n\
/* 080332f8 */ LDRB R0, [R0, 0xB] \n\
/* 080332fa */ CMP R5, R0 @ Check R5 - R0 \n\
/* 080332fc */ BCS branch_0803333e \n\
/* 080332fe */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08033300 */ LDR R7, =D_03005380 \n\
/* 08033302 */ LDR R6, =D_03004b20 \n\
 \n\
branch_08033304: \n\
/* 08033304 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08033306 */ LDR R1, [R0] \n\
/* 08033308 */ LSLS R2, R5, 0x1 \n\
/* 0803330a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0803330c */ ADDS R0, 0xE @ Add 0xE to R0 \n\
/* 0803330e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08033310 */ LDRH R4, [R0] \n\
/* 08033312 */ ADDS R1, 0x22 @ Add 0x22 to R1 \n\
/* 08033314 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08033316 */ STRH R4, [R1] \n\
/* 08033318 */ LDR R0, [R7] \n\
/* 0803331a */ LSLS R4, R4, 0x10 \n\
/* 0803331c */ ASRS R4, R4, 0x10 \n\
/* 0803331e */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08033320 */ LDR R2, =0x47f6 \n\
/* 08033322 */ BL func_0804d67c \n\
/* 08033326 */ LDR R0, [R7] \n\
/* 08033328 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0803332a */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0803332c */ ADDS R3, R6, 0x2 @ Set R3 to R6 + 0x2 \n\
/* 0803332e */ BL func_0804db44 \n\
/* 08033332 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08033334 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08033336 */ LDR R0, [R1] \n\
/* 08033338 */ LDRB R0, [R0, 0xB] \n\
/* 0803333a */ CMP R5, R0 @ Check R5 - R0 \n\
/* 0803333c */ BCC branch_08033304 \n\
 \n\
branch_0803333e: \n\
/* 0803333e */ LDR R1, =D_030055d0 \n\
/* 08033340 */ LDR R0, [R1] \n\
/* 08033342 */ LDRB R2, [R0, 0xB] \n\
/* 08033344 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08033346 */ STRB R2, [R0, 0xC] \n\
/* 08033348 */ LDR R0, [R1] \n\
/* 0803334a */ STRB R3, [R0, 0xB] \n\
/* 0803334c */ LDR R1, [R1] \n\
/* 0803334e */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 08033350 */ STRB R0, [R1, 0x6] \n\
/* 08033352 */ ADD SP, 0xC \n\
/* 08033354 */ POP {R3} \n\
/* 08033356 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08033358 */ POP {R4-R7} \n\
/* 0803335a */ POP {R0} \n\
/* 0803335c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
