asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080093c0 \n\
/* 080093c0 */ PUSH {R4-R7, LR} \n\
/* 080093c2 */ SUB SP, 0x50 \n\
/* 080093c4 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080093c6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080093c8 */ MOV R12, R0 @ Set R12 to R0 \n\
/* 080093ca */ LDR R2, =0x04000200 @ !Hardware REG_IE \n\
/* 080093cc */ LDRH R1, [R2] \n\
/* 080093ce */ LDR R0, =0xFFBF \n\
/* 080093d0 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080093d2 */ STRH R0, [R2] \n\
/* 080093d4 */ LDR R0, =D_030011a0 \n\
/* 080093d6 */ LDR R4, [R0] \n\
/* 080093d8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080093da */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 080093dc */ LDR R7, =D_03004af8 \n\
/* 080093de */ CMP R3, R4 @ Check R3 - R4 \n\
/* 080093e0 */ BCS branch_080093f0 \n\
/* 080093e2 */ LDR R5, =D_030011b0 \n\
/* 080093e4 */ MOV R1, SP @ Set R1 to SP \n\
 \n\
branch_080093e6: \n\
/* 080093e6 */ LDMIA R5!, {R0} \n\
/* 080093e8 */ STMIA R1!, {R0} \n\
/* 080093ea */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 080093ec */ CMP R2, R4 @ Check R2 - R4 \n\
/* 080093ee */ BCC branch_080093e6 \n\
 \n\
branch_080093f0: \n\
/* 080093f0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080093f2 */ STR R0, [R6] \n\
/* 080093f4 */ LDR R2, =0x04000200 @ !Hardware REG_IE \n\
/* 080093f6 */ LDRH R0, [R2] \n\
/* 080093f8 */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 080093fa */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 080093fc */ STRH R0, [R2] \n\
/* 080093fe */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08009400 */ BEQ branch_08009432 \n\
/* 08009402 */ LDR R3, [SP] \n\
/* 08009404 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08009406 */ BGE branch_0800940a \n\
/* 08009408 */ NEGS R3, R3 @ Set R3 to -R3 \n\
 \n\
branch_0800940a: \n\
/* 0800940a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0800940c */ CMP R2, R4 @ Check R2 - R4 \n\
/* 0800940e */ BCS branch_0800942e \n\
/* 08009410 */ ADD R1, SP, 0x4 \n\
 \n\
branch_08009412: \n\
/* 08009412 */ LDR R0, [R1] \n\
/* 08009414 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08009416 */ BGE branch_0800941a \n\
/* 08009418 */ NEGS R0, R0 @ Set R0 to -R0 \n\
 \n\
branch_0800941a: \n\
/* 0800941a */ CMP R0, R3 @ Check R0 - R3 \n\
/* 0800941c */ BLS branch_08009426 \n\
/* 0800941e */ LDR R3, [R1] \n\
/* 08009420 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08009422 */ BGE branch_08009426 \n\
/* 08009424 */ NEGS R3, R3 @ Set R3 to -R3 \n\
 \n\
branch_08009426: \n\
/* 08009426 */ ADDS R1, 0x4 @ Add 0x4 to R1 \n\
/* 08009428 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0800942a */ CMP R2, R4 @ Check R2 - R4 \n\
/* 0800942c */ BCC branch_08009412 \n\
 \n\
branch_0800942e: \n\
/* 0800942e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08009430 */ MOV R12, R0 @ Set R12 to R0 \n\
 \n\
branch_08009432: \n\
/* 08009432 */ LDR R2, [R7] \n\
/* 08009434 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08009436 */ MOV R1, R12 @ Set R1 to R12 \n\
/* 08009438 */ BL _call_via_r2 \n\
/* 0800943c */ ADD SP, 0x50 \n\
/* 0800943e */ POP {R4-R7} \n\
/* 08009440 */ POP {R1} \n\
/* 08009442 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
