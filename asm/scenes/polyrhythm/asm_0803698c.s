asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803698c \n\
/* 0803698c */ PUSH {R4-R7, LR} \n\
/* 0803698e */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08036990 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08036992 */ PUSH {R6, R7} \n\
/* 08036994 */ SUB SP, 0x14 \n\
/* 08036996 */ LDR R0, =D_030055d0 \n\
/* 08036998 */ LDR R0, [R0] \n\
/* 0803699a */ MOVS R1, 0x84 @ Set R1 to 0x84 \n\
/* 0803699c */ LSLS R1, R1, 0x1 \n\
/* 0803699e */ ADDS R6, R0, R1 @ Set R6 to R0 + R1 \n\
/* 080369a0 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080369a2 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 080369a4 */ LDR R0, =D_03005380 \n\
/* 080369a6 */ MOV R8, R0 @ Set R8 to R0 \n\
 \n\
branch_080369a8: \n\
/* 080369a8 */ LDRB R1, [R6] \n\
/* 080369aa */ LSLS R0, R1, 0x1F \n\
/* 080369ac */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080369ae */ BEQ branch_08036a82 \n\
/* 080369b0 */ LSLS R0, R1, 0x19 \n\
/* 080369b2 */ LSRS R0, R0, 0x1D \n\
/* 080369b4 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080369b6 */ BEQ branch_080369da \n\
/* 080369b8 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080369ba */ BGT branch_080369cc \n\
/* 080369bc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080369be */ BEQ branch_080369d2 \n\
/* 080369c0 */ B branch_080369e8 \n\
\n\
.ltorg \n\
 \n\
branch_080369cc: \n\
/* 080369cc */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 080369ce */ BEQ branch_080369e2 \n\
/* 080369d0 */ B branch_080369e8 \n\
 \n\
branch_080369d2: \n\
/* 080369d2 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080369d4 */ BL func_08036630 \n\
/* 080369d8 */ B branch_080369e8 \n\
 \n\
branch_080369da: \n\
/* 080369da */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080369dc */ BL func_08036758 \n\
/* 080369e0 */ B branch_080369e8 \n\
 \n\
branch_080369e2: \n\
/* 080369e2 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080369e4 */ BL func_08036848 \n\
 \n\
branch_080369e8: \n\
/* 080369e8 */ LDRB R0, [R6, 0x1] \n\
/* 080369ea */ LSLS R0, R0, 0x1F \n\
/* 080369ec */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080369ee */ BEQ branch_08036a82 \n\
/* 080369f0 */ LDRH R0, [R6, 0x38] \n\
/* 080369f2 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 080369f4 */ STRH R0, [R6, 0x38] \n\
/* 080369f6 */ LSLS R0, R0, 0x10 \n\
/* 080369f8 */ LSRS R7, R0, 0x10 \n\
/* 080369fa */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 080369fc */ BNE branch_08036a82 \n\
/* 080369fe */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08036a00 */ LDR R0, [R1] \n\
/* 08036a02 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08036a04 */ LDRSH R1, [R6, R2] \n\
/* 08036a06 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08036a08 */ BL func_0804ddb0 \n\
/* 08036a0c */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08036a0e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08036a10 */ LDR R0, [R1] \n\
/* 08036a12 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08036a14 */ LDRSH R1, [R6, R2] \n\
/* 08036a16 */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 08036a18 */ BL func_0804ddb0 \n\
/* 08036a1c */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08036a1e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08036a20 */ LDR R0, [R1] \n\
/* 08036a22 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08036a24 */ LDRSH R1, [R6, R2] \n\
/* 08036a26 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08036a28 */ BL func_0804ddb0 \n\
/* 08036a2c */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08036a2e */ LDR R1, [R2] \n\
/* 08036a30 */ LSLS R5, R5, 0x10 \n\
/* 08036a32 */ ASRS R5, R5, 0x10 \n\
/* 08036a34 */ LSLS R4, R4, 0x10 \n\
/* 08036a36 */ ASRS R4, R4, 0x10 \n\
/* 08036a38 */ STR R4, [SP] \n\
/* 08036a3a */ LSLS R0, R0, 0x10 \n\
/* 08036a3c */ LSRS R0, R0, 0x10 \n\
/* 08036a3e */ STR R0, [SP, 0x4] \n\
/* 08036a40 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08036a42 */ STR R0, [SP, 0x8] \n\
/* 08036a44 */ STR R7, [SP, 0xC] \n\
/* 08036a46 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08036a48 */ STR R0, [SP, 0x10] \n\
/* 08036a4a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08036a4c */ LDR R1, =D_088f62bc \n\
/* 08036a4e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08036a50 */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 08036a52 */ BL func_0804d160 \n\
/* 08036a56 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08036a58 */ LDR R0, [R1] \n\
/* 08036a5a */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08036a5c */ LDRSH R1, [R6, R2] \n\
/* 08036a5e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08036a60 */ BL func_0804d770 \n\
/* 08036a64 */ LDRB R0, [R6] \n\
/* 08036a66 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08036a68 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 08036a6a */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08036a6c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08036a6e */ STRB R0, [R6] \n\
/* 08036a70 */ BL func_08017918 \n\
/* 08036a74 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08036a76 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08036a78 */ BL func_08017928 \n\
/* 08036a7c */ LDR R0, =s_f_poly_blast_seqData \n\
/* 08036a7e */ BL func_08002634 \n\
 \n\
branch_08036a82: \n\
/* 08036a82 */ ADDS R6, 0x3C @ Add 0x3C to R6 \n\
/* 08036a84 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08036a86 */ ADD R9, R0 @ Add R0 to R9 \n\
/* 08036a88 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08036a8a */ CMP R1, 0x7 @ Compare R1 and 0x7 \n\
/* 08036a8c */ BLS branch_080369a8 \n\
/* 08036a8e */ ADD SP, 0x14 \n\
/* 08036a90 */ POP {R3, R4} \n\
/* 08036a92 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08036a94 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08036a96 */ POP {R4-R7} \n\
/* 08036a98 */ POP {R0} \n\
/* 08036a9a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
