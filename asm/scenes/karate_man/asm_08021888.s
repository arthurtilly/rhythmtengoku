asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08021888 \n\
/* 08021888 */ PUSH {R4-R7, LR} \n\
/* 0802188a */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0802188c */ PUSH {R7} \n\
/* 0802188e */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08021890 */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 08021892 */ ADDS R6, R3, 0x0 @ Set R6 to R3 + 0x0 \n\
/* 08021894 */ LDR R0, =D_030055d0 \n\
/* 08021896 */ LDR R0, [R0] \n\
/* 08021898 */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 0802189a */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0802189c */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 0802189e */ BL func_0800c3a4 \n\
/* 080218a2 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 080218a4 */ BHI branch_08021944 \n\
/* 080218a6 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 080218a8 */ LDRB R0, [R4] \n\
/* 080218aa */ LSLS R0, R0, 0x1C \n\
/* 080218ac */ LSRS R0, R0, 0x1C \n\
/* 080218ae */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080218b0 */ BEQ branch_080218bc \n\
/* 080218b2 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080218b4 */ BEQ branch_08021932 \n\
/* 080218b6 */ B branch_08021968 \n\
\n\
.ltorg \n\
 \n\
branch_080218bc: \n\
/* 080218bc */ LSLS R0, R5, 0x8 \n\
/* 080218be */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 080218c0 */ BL Div \n\
/* 080218c4 */ STRH R0, [R4, 0x28] \n\
/* 080218c6 */ LSLS R0, R0, 0x10 \n\
/* 080218c8 */ LSRS R1, R0, 0x10 \n\
/* 080218ca */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 080218cc */ LSLS R0, R0, 0x2 \n\
/* 080218ce */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080218d0 */ BLS branch_08021904 \n\
/* 080218d2 */ LDRB R1, [R4] \n\
/* 080218d4 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 080218d6 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080218d8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080218da */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080218dc */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 080218de */ STRB R0, [R4] \n\
/* 080218e0 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 080218e2 */ BL func_08001980 \n\
/* 080218e6 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080218e8 */ ADDS R1, 0x2C @ Add 0x2C to R1 \n\
/* 080218ea */ LDRB R2, [R1] \n\
/* 080218ec */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080218ee */ STRB R0, [R1] \n\
/* 080218f0 */ BL func_080220c4 \n\
/* 080218f4 */ LDR R0, =s_f_boxing_land_seqData \n\
/* 080218f6 */ BL func_08002634 \n\
/* 080218fa */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080218fc */ B branch_0802196a \n\
\n\
.ltorg \n\
 \n\
branch_08021904: \n\
/* 08021904 */ MOVS R0, 0xC0 @ Set R0 to 0xC0 \n\
/* 08021906 */ LSLS R0, R0, 0x1 \n\
/* 08021908 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0802190a */ BLS branch_08021924 \n\
/* 0802190c */ LDRB R1, [R4] \n\
/* 0802190e */ LSLS R0, R1, 0x1B \n\
/* 08021910 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08021912 */ BLT branch_08021924 \n\
/* 08021914 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08021916 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08021918 */ STRB R0, [R4] \n\
/* 0802191a */ MOVS R0, 0x24 @ Set R0 to 0x24 \n\
/* 0802191c */ BL func_0800c3a4 \n\
/* 08021920 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08021922 */ STRH R0, [R1, 0x8] \n\
 \n\
branch_08021924: \n\
/* 08021924 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08021926 */ BL func_08021818 \n\
/* 0802192a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802192c */ BL func_08021740 \n\
/* 08021930 */ B branch_08021968 \n\
 \n\
branch_08021932: \n\
/* 08021932 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08021934 */ BL func_080217ec \n\
/* 08021938 */ LDR R0, [R4, 0xC] \n\
/* 0802193a */ ASRS R0, R0, 0x8 \n\
/* 0802193c */ MOVS R1, 0x88 @ Set R1 to 0x88 \n\
/* 0802193e */ LSLS R1, R1, 0x1 \n\
/* 08021940 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08021942 */ BLE branch_08021948 \n\
 \n\
branch_08021944: \n\
/* 08021944 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08021946 */ B branch_0802196a \n\
 \n\
branch_08021948: \n\
/* 08021948 */ LDR R0, [R4, 0x10] \n\
/* 0802194a */ ASRS R0, R0, 0x8 \n\
/* 0802194c */ LDR R1, [R4, 0x14] \n\
/* 0802194e */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08021950 */ BLE branch_08021962 \n\
/* 08021952 */ LSLS R0, R1, 0x8 \n\
/* 08021954 */ STR R0, [R4, 0x10] \n\
/* 08021956 */ STR R7, [R4, 0x18] \n\
/* 08021958 */ STR R7, [R4, 0x1C] \n\
/* 0802195a */ STR R7, [R4, 0x24] \n\
/* 0802195c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802195e */ ADDS R0, 0x2D @ Add 0x2D to R0 \n\
/* 08021960 */ STRB R7, [R0] \n\
 \n\
branch_08021962: \n\
/* 08021962 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08021964 */ BL func_08021740 \n\
 \n\
branch_08021968: \n\
/* 08021968 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
 \n\
branch_0802196a: \n\
/* 0802196a */ POP {R3} \n\
/* 0802196c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802196e */ POP {R4-R7} \n\
/* 08021970 */ POP {R1} \n\
/* 08021972 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
