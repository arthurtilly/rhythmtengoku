asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080198f8 \n\
/* 080198f8 */ PUSH {R4, R5, LR} \n\
/* 080198fa */ SUB SP, 0x54 \n\
/* 080198fc */ LDR R0, =D_089d7980 \n\
/* 080198fe */ LDR R0, [R0] \n\
/* 08019900 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08019902 */ ADDS R4, 0x50 @ Add 0x50 to R4 \n\
/* 08019904 */ LDR R0, =D_030046a4 \n\
/* 08019906 */ LDR R0, [R0] \n\
/* 08019908 */ LDR R0, [R0, 0x4] \n\
/* 0801990a */ LDR R1, =D_08054ec4 \n\
/* 0801990c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801990e */ MOVS R3, 0x7 @ Set R3 to 0x7 \n\
/* 08019910 */ BL func_08004b98 \n\
/* 08019914 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08019916 */ LDR R0, =D_03005380 \n\
/* 08019918 */ LDR R0, [R0] \n\
/* 0801991a */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 0801991c */ STR R1, [SP] \n\
/* 0801991e */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
/* 08019920 */ LSLS R1, R1, 0x7 \n\
/* 08019922 */ STR R1, [SP, 0x4] \n\
/* 08019924 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08019926 */ STR R1, [SP, 0x8] \n\
/* 08019928 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801992a */ STR R1, [SP, 0xC] \n\
/* 0801992c */ STR R1, [SP, 0x10] \n\
/* 0801992e */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08019930 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08019932 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 08019934 */ BL func_0804d160 \n\
/* 08019938 */ BL func_080194e8 \n\
/* 0801993c */ LDRH R0, [R4, 0xA] \n\
/* 0801993e */ LSLS R1, R0, 0x2 \n\
/* 08019940 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08019942 */ LSLS R1, R1, 0x1 \n\
/* 08019944 */ LDRH R2, [R4, 0x4] \n\
/* 08019946 */ LSLS R0, R2, 0x1 \n\
/* 08019948 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801994a */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0801994c */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0801994e */ CMP R1, 0x9 @ Compare R1 and 0x9 \n\
/* 08019950 */ BLS branch_08019954 \n\
/* 08019952 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08019954: \n\
/* 08019954 */ CMP R1, 0x1D @ Compare R1 and 0x1D \n\
/* 08019956 */ BLS branch_0801995a \n\
/* 08019958 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0801995a: \n\
/* 0801995a */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0801995c */ BEQ branch_08019984 \n\
/* 0801995e */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08019960 */ BCC branch_08019978 \n\
/* 08019962 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 08019964 */ BEQ branch_08019990 \n\
/* 08019966 */ B branch_08019996 \n\
\n\
.ltorg \n\
 \n\
branch_08019978: \n\
/* 08019978 */ LDR R0, =D_089d7ae0 \n\
/* 0801997a */ BL func_08019554 \n\
/* 0801997e */ B branch_08019996 \n\
\n\
.ltorg \n\
 \n\
branch_08019984: \n\
/* 08019984 */ LDR R0, =D_089d7a8c \n\
/* 08019986 */ BL func_08019554 \n\
/* 0801998a */ B branch_08019996 \n\
\n\
.ltorg \n\
 \n\
branch_08019990: \n\
/* 08019990 */ LDR R0, =D_089d7a38 \n\
/* 08019992 */ BL func_08019554 \n\
 \n\
branch_08019996: \n\
/* 08019996 */ LDR R0, =D_089d7980 \n\
/* 08019998 */ LDR R2, [R0] \n\
/* 0801999a */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0801999c */ ADDS R0, 0x72 @ Add 0x72 to R0 \n\
/* 0801999e */ LDRH R1, [R0] \n\
/* 080199a0 */ LSLS R0, R1, 0x4 \n\
/* 080199a2 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 080199a4 */ ASRS R3, R0, 0x7 \n\
/* 080199a6 */ ADDS R2, 0x74 @ Add 0x74 to R2 \n\
/* 080199a8 */ LDRH R1, [R2] \n\
/* 080199aa */ LSLS R0, R1, 0x1 \n\
/* 080199ac */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080199ae */ SUBS R3, R3, R0 @ Set R3 to R3 - R0 \n\
/* 080199b0 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 080199b2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080199b4 */ MOVS R2, 0x1E @ Set R2 to 0x1E \n\
/* 080199b6 */ BL func_080087d4 \n\
/* 080199ba */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 080199bc */ ADDS R3, 0x46 @ Add 0x46 to R3 \n\
/* 080199be */ LDRH R1, [R4, 0xA] \n\
/* 080199c0 */ LSLS R0, R1, 0x2 \n\
/* 080199c2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080199c4 */ LSLS R0, R0, 0x1 \n\
/* 080199c6 */ SUBS R3, R3, R0 @ Set R3 to R3 - R0 \n\
/* 080199c8 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 080199ca */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080199cc */ MOVS R2, 0x64 @ Set R2 to 0x64 \n\
/* 080199ce */ BL func_080087d4 \n\
/* 080199d2 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 080199d4 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 080199d6 */ BNE branch_08019a0e \n\
/* 080199d8 */ LDRH R0, [R4, 0x2] \n\
/* 080199da */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080199dc */ BNE branch_080199e4 \n\
/* 080199de */ LDRH R0, [R4, 0x4] \n\
/* 080199e0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080199e2 */ BEQ branch_08019a0e \n\
 \n\
branch_080199e4: \n\
/* 080199e4 */ LDRH R1, [R4, 0xC] \n\
/* 080199e6 */ LSLS R0, R1, 0x2 \n\
/* 080199e8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080199ea */ LSRS R3, R0, 0x7 \n\
/* 080199ec */ LDRH R1, [R4, 0xE] \n\
/* 080199ee */ LSLS R0, R1, 0x1 \n\
/* 080199f0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080199f2 */ ASRS R0, R0, 0x8 \n\
/* 080199f4 */ ADDS R3, R3, R0 @ Set R3 to R3 + R0 \n\
/* 080199f6 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 080199f8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080199fa */ MOVS R2, 0xA @ Set R2 to 0xA \n\
/* 080199fc */ BL func_080087d4 \n\
/* 08019a00 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08019a02 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08019a04 */ BL func_08001980 \n\
/* 08019a08 */ LSLS R0, R0, 0x10 \n\
/* 08019a0a */ LSRS R0, R0, 0x10 \n\
/* 08019a0c */ ADDS R3, R4, R0 @ Set R3 to R4 + R0 \n\
 \n\
branch_08019a0e: \n\
/* 08019a0e */ ADD R4, SP, 0x34 \n\
/* 08019a10 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08019a12 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 08019a14 */ BL func_080082cc \n\
/* 08019a18 */ ADD R1, SP, 0x14 \n\
/* 08019a1a */ LDR R0, =D_08054eec \n\
/* 08019a1c */ LDMIA R0!, {R2, R3, R5} \n\
/* 08019a1e */ STMIA R1!, {R2, R3, R5} \n\
/* 08019a20 */ LDMIA R0!, {R2, R3} \n\
/* 08019a22 */ STMIA R1!, {R2, R3} \n\
/* 08019a24 */ LDRB R0, [R0] \n\
/* 08019a26 */ STRB R0, [R1] \n\
/* 08019a28 */ ADD R0, SP, 0x14 \n\
/* 08019a2a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08019a2c */ BL func_080081a8 \n\
/* 08019a30 */ LDR R0, =D_030046a4 \n\
/* 08019a32 */ LDR R0, [R0] \n\
/* 08019a34 */ LDR R0, [R0, 0x4] \n\
/* 08019a36 */ ADD R1, SP, 0x14 \n\
/* 08019a38 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08019a3a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08019a3c */ BL func_08004c50 \n\
/* 08019a40 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08019a42 */ LDR R0, =D_03005380 \n\
/* 08019a44 */ LDR R0, [R0] \n\
/* 08019a46 */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
/* 08019a48 */ STR R1, [SP] \n\
/* 08019a4a */ MOVS R1, 0x90 @ Set R1 to 0x90 \n\
/* 08019a4c */ LSLS R1, R1, 0x7 \n\
/* 08019a4e */ STR R1, [SP, 0x4] \n\
/* 08019a50 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08019a52 */ STR R1, [SP, 0x8] \n\
/* 08019a54 */ STR R1, [SP, 0xC] \n\
/* 08019a56 */ STR R1, [SP, 0x10] \n\
/* 08019a58 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08019a5a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08019a5c */ MOVS R3, 0xCC @ Set R3 to 0xCC \n\
/* 08019a5e */ BL func_0804d160 \n\
/* 08019a62 */ ADD SP, 0x54 \n\
/* 08019a64 */ POP {R4, R5} \n\
/* 08019a66 */ POP {R0} \n\
/* 08019a68 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
