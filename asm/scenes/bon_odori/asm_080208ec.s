asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080208ec \n\
/* 080208ec */ PUSH {R4-R6, LR} \n\
/* 080208ee */ SUB SP, 0x14 \n\
/* 080208f0 */ LDR R5, =D_030055d0 \n\
/* 080208f2 */ LDR R1, [R5] \n\
/* 080208f4 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 080208f6 */ STRB R0, [R1] \n\
/* 080208f8 */ BL func_080208c0 \n\
/* 080208fc */ BL func_0800e0ec \n\
/* 08020900 */ BL func_0800e114 \n\
/* 08020904 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 08020906 */ NEGS R3, R3 @ Set R3 to -R3 \n\
/* 08020908 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0802090a */ STR R0, [SP] \n\
/* 0802090c */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 0802090e */ STR R0, [SP, 0x4] \n\
/* 08020910 */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 08020912 */ LSLS R0, R0, 0x8 \n\
/* 08020914 */ STR R0, [SP, 0x8] \n\
/* 08020916 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08020918 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802091a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802091c */ BL func_0800e0a0 \n\
/* 08020920 */ STR R6, [SP] \n\
/* 08020922 */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 08020924 */ STR R0, [SP, 0x4] \n\
/* 08020926 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 08020928 */ STR R4, [SP, 0x8] \n\
/* 0802092a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0802092c */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802092e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08020930 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08020932 */ BL func_0800e0a0 \n\
/* 08020936 */ STR R6, [SP] \n\
/* 08020938 */ MOVS R0, 0x1E @ Set R0 to 0x1E \n\
/* 0802093a */ STR R0, [SP, 0x4] \n\
/* 0802093c */ STR R4, [SP, 0x8] \n\
/* 0802093e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08020940 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08020942 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08020944 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08020946 */ BL func_0800e0a0 \n\
/* 0802094a */ MOVS R0, 0xD0 @ Set R0 to 0xD0 \n\
/* 0802094c */ LSLS R0, R0, 0x2 \n\
/* 0802094e */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08020950 */ BL func_0800c660 \n\
/* 08020954 */ LDR R1, [R5] \n\
/* 08020956 */ STR R0, [R1, 0x4] \n\
/* 08020958 */ LDR R2, =D_03004b10 \n\
/* 0802095a */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 0802095c */ ADDS R1, 0x46 @ Add 0x46 to R1 \n\
/* 0802095e */ LDR R0, =0x0000311e \n\
/* 08020960 */ STRH R0, [R1] \n\
/* 08020962 */ ADDS R1, 0x6 @ Add 0x6 to R1 \n\
/* 08020964 */ LDR R0, =0x00001041 \n\
/* 08020966 */ STRH R0, [R1] \n\
/* 08020968 */ ADDS R1, 0x2 @ Add 0x2 to R1 \n\
/* 0802096a */ SUBS R0, 0x31 @ Subtract 0x31 from R0 \n\
/* 0802096c */ STRH R0, [R1] \n\
/* 0802096e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08020970 */ LDR R0, =0x0000ffff \n\
/* 08020972 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08020974 */ ADDS R6, R5, 0x0 @ Set R6 to R5 + 0x0 \n\
/* 08020976 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
 \n\
branch_08020978: \n\
/* 08020978 */ LDR R1, [R5] \n\
/* 0802097a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802097c */ LDRH R0, [R1, 0x8] \n\
/* 0802097e */ ORRS R0, R4 @ Set R0 to R0 | R4 \n\
/* 08020980 */ STRH R0, [R1, 0x8] \n\
/* 08020982 */ ADDS R2, 0xC @ Add 0xC to R2 \n\
/* 08020984 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 08020986 */ CMP R3, 0x3 @ Compare R3 and 0x3 \n\
/* 08020988 */ BLS branch_08020978 \n\
/* 0802098a */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0802098c */ LDR R0, [R6] \n\
/* 0802098e */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08020990 */ STRH R4, [R0, 0x3C] \n\
/* 08020992 */ STRH R4, [R0, 0x3A] \n\
/* 08020994 */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 08020996 */ BL func_080206a0 \n\
/* 0802099a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802099c */ LDR R0, =D_03005380 \n\
/* 0802099e */ LDR R0, [R0] \n\
/* 080209a0 */ MOVS R2, 0x48 @ Set R2 to 0x48 \n\
/* 080209a2 */ STR R2, [SP] \n\
/* 080209a4 */ MOVS R2, 0x88 @ Set R2 to 0x88 \n\
/* 080209a6 */ LSLS R2, R2, 0x8 \n\
/* 080209a8 */ STR R2, [SP, 0x4] \n\
/* 080209aa */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080209ac */ STR R2, [SP, 0x8] \n\
/* 080209ae */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 080209b0 */ STR R2, [SP, 0xC] \n\
/* 080209b2 */ STR R4, [SP, 0x10] \n\
/* 080209b4 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 080209b6 */ BL func_0804d160 \n\
/* 080209ba */ LDR R1, [R6] \n\
/* 080209bc */ STRH R0, [R1, 0x3E] \n\
/* 080209be */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080209c0 */ ADDS R0, 0x40 @ Add 0x40 to R0 \n\
/* 080209c2 */ STRH R4, [R0] \n\
/* 080209c4 */ ADDS R1, 0x42 @ Add 0x42 to R1 \n\
/* 080209c6 */ STRB R5, [R1] \n\
/* 080209c8 */ BL func_080206c0 \n\
/* 080209cc */ LDR R1, [R6] \n\
/* 080209ce */ LDR R2, =D_089deed4 \n\
/* 080209d0 */ LDRB R0, [R1] \n\
/* 080209d2 */ LSLS R0, R0, 0x2 \n\
/* 080209d4 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080209d6 */ LDR R2, [R0] \n\
/* 080209d8 */ STR R2, [R1, 0x5C] \n\
/* 080209da */ LDR R3, =D_089deecc \n\
/* 080209dc */ LDRB R0, [R1] \n\
/* 080209de */ LSLS R0, R0, 0x2 \n\
/* 080209e0 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 080209e2 */ LDR R0, [R0] \n\
/* 080209e4 */ STR R0, [R1, 0x58] \n\
/* 080209e6 */ MOVS R0, 0x8C @ Set R0 to 0x8C \n\
/* 080209e8 */ LSLS R0, R0, 0x3 \n\
/* 080209ea */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080209ec */ STR R1, [SP] \n\
/* 080209ee */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 080209f0 */ MOVS R1, 0x7 @ Set R1 to 0x7 \n\
/* 080209f2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080209f4 */ BL func_08001ec4 \n\
/* 080209f8 */ LDR R0, [R6] \n\
/* 080209fa */ LDR R2, [R0, 0x58] \n\
/* 080209fc */ ADDS R0, 0x60 @ Add 0x60 to R0 \n\
/* 080209fe */ STR R0, [SP] \n\
/* 08020a00 */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 08020a02 */ MOVS R1, 0x7 @ Set R1 to 0x7 \n\
/* 08020a04 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08020a06 */ BL func_08001ec4 \n\
/* 08020a0a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08020a0c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08020a0e */ BL func_08017338 \n\
/* 08020a12 */ LDR R0, [R6] \n\
/* 08020a14 */ LDR R1, =0x00000864 \n\
/* 08020a16 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08020a18 */ STRH R4, [R0] \n\
/* 08020a1a */ ADD SP, 0x14 \n\
/* 08020a1c */ POP {R4-R6} \n\
/* 08020a1e */ POP {R0} \n\
/* 08020a20 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
