asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011820 \n\
/* 08011820 */ PUSH {R4-R7, LR} \n\
/* 08011822 */ MOV R7, R9 @ Set R7 to R9 \n\
/* 08011824 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08011826 */ PUSH {R6, R7} \n\
/* 08011828 */ SUB SP, 0x120 \n\
/* 0801182a */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0801182c */ LDR R0, =D_030046a8 \n\
/* 0801182e */ LDR R5, [R0] \n\
/* 08011830 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 08011832 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08011834 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08011836 */ ADD R6, SP, 0x100 \n\
/* 08011838 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0801183a */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0801183c */ BL func_080082cc \n\
/* 08011840 */ LDR R4, =D_08050b4c \n\
/* 08011842 */ MOV R1, SP @ Set R1 to SP \n\
/* 08011844 */ LDRH R0, [R4] \n\
/* 08011846 */ STRH R0, [R1] \n\
/* 08011848 */ LDRB R0, [R4, 0x2] \n\
/* 0801184a */ STRB R0, [R1, 0x2] \n\
/* 0801184c */ LDR R1, =D_08050b50 \n\
/* 0801184e */ MOV R0, SP @ Set R0 to SP \n\
/* 08011850 */ BL func_080081a8 \n\
/* 08011854 */ MOV R0, SP @ Set R0 to SP \n\
/* 08011856 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08011858 */ BL func_080081a8 \n\
/* 0801185c */ MOV R0, SP @ Set R0 to SP \n\
/* 0801185e */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08011860 */ BL func_080081a8 \n\
/* 08011864 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08011866 */ BL func_080141d8 \n\
/* 0801186a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801186c */ MOV R0, SP @ Set R0 to SP \n\
/* 0801186e */ BL func_080081a8 \n\
/* 08011872 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08011874 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08011876 */ MOV R2, SP @ Set R2 to SP \n\
/* 08011878 */ BL func_08011744 \n\
/* 0801187c */ LSLS R0, R7, 0x1 \n\
/* 0801187e */ ADDS R5, 0x50 @ Add 0x50 to R5 \n\
/* 08011880 */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 08011882 */ LDRH R4, [R5] \n\
/* 08011884 */ LDR R0, =0xffff \n\
/* 08011886 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 08011888 */ BNE branch_080118a8 \n\
/* 0801188a */ LDR R0, =D_08050b58 \n\
/* 0801188c */ LDR R0, [R0] \n\
/* 0801188e */ STR R0, [R6] \n\
/* 08011890 */ B branch_080118b0 \n\
\n\
.ltorg \n\
 \n\
branch_080118a8: \n\
/* 080118a8 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080118aa */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080118ac */ BL func_080082cc \n\
 \n\
branch_080118b0: \n\
/* 080118b0 */ LDR R5, =D_08050b4c \n\
/* 080118b2 */ MOV R1, SP @ Set R1 to SP \n\
/* 080118b4 */ LDRH R0, [R5] \n\
/* 080118b6 */ STRH R0, [R1] \n\
/* 080118b8 */ LDRB R0, [R5, 0x2] \n\
/* 080118ba */ STRB R0, [R1, 0x2] \n\
/* 080118bc */ LDR R1, =D_08050b5c \n\
/* 080118be */ MOV R0, SP @ Set R0 to SP \n\
/* 080118c0 */ BL func_080081a8 \n\
/* 080118c4 */ ADD R6, SP, 0x100 \n\
/* 080118c6 */ MOV R0, SP @ Set R0 to SP \n\
/* 080118c8 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 080118ca */ BL func_080081a8 \n\
/* 080118ce */ LDR R0, =0xffff \n\
/* 080118d0 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 080118d2 */ BEQ branch_080118dc \n\
/* 080118d4 */ LDR R1, =D_08050b64 \n\
/* 080118d6 */ MOV R0, SP @ Set R0 to SP \n\
/* 080118d8 */ BL func_080081a8 \n\
 \n\
branch_080118dc: \n\
/* 080118dc */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 080118de */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080118e0 */ MOV R2, SP @ Set R2 to SP \n\
/* 080118e2 */ BL func_08011744 \n\
/* 080118e6 */ MOVS R0, 0xC8 @ Set R0 to 0xC8 \n\
/* 080118e8 */ LSLS R0, R0, 0x1 \n\
/* 080118ea */ ADD R0, R8 @ Add R8 to R0 \n\
/* 080118ec */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 080118ee */ LDRB R4, [R0] \n\
/* 080118f0 */ LDR R0, =0x1c7 \n\
/* 080118f2 */ ADD R0, R8 @ Add R8 to R0 \n\
/* 080118f4 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 080118f6 */ LDRB R0, [R0] \n\
/* 080118f8 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 080118fa */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 080118fc */ LSLS R0, R0, 0x1 \n\
/* 080118fe */ ADD R0, R8 @ Add R8 to R0 \n\
/* 08011900 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 08011902 */ LDRB R7, [R0] \n\
/* 08011904 */ MOV R1, SP @ Set R1 to SP \n\
/* 08011906 */ LDRH R0, [R5] \n\
/* 08011908 */ STRH R0, [R1] \n\
/* 0801190a */ LDRB R0, [R5, 0x2] \n\
/* 0801190c */ STRB R0, [R1, 0x2] \n\
/* 0801190e */ LDR R1, =D_08050b74 \n\
/* 08011910 */ MOV R0, SP @ Set R0 to SP \n\
/* 08011912 */ BL func_080081a8 \n\
/* 08011916 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08011918 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801191a */ BL func_080082cc \n\
/* 0801191e */ MOV R0, SP @ Set R0 to SP \n\
/* 08011920 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08011922 */ BL func_080081a8 \n\
/* 08011926 */ LDR R1, =D_08050b80 \n\
/* 08011928 */ MOV R0, SP @ Set R0 to SP \n\
/* 0801192a */ BL func_080081a8 \n\
/* 0801192e */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08011930 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08011932 */ MOV R2, SP @ Set R2 to SP \n\
/* 08011934 */ BL func_08011744 \n\
/* 08011938 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0801193a */ BEQ branch_080119ec \n\
/* 0801193c */ MOV R1, SP @ Set R1 to SP \n\
/* 0801193e */ LDRH R0, [R5] \n\
/* 08011940 */ STRH R0, [R1] \n\
/* 08011942 */ LDRB R0, [R5, 0x2] \n\
/* 08011944 */ STRB R0, [R1, 0x2] \n\
/* 08011946 */ LDR R1, =D_08050b84 \n\
/* 08011948 */ MOV R0, SP @ Set R0 to SP \n\
/* 0801194a */ BL func_080081a8 \n\
/* 0801194e */ MOV R0, R9 @ Set R0 to R9 \n\
/* 08011950 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08011952 */ BNE branch_08011984 \n\
/* 08011954 */ LDR R1, =D_08050b94 \n\
/* 08011956 */ MOV R0, SP @ Set R0 to SP \n\
/* 08011958 */ BL func_080081a8 \n\
/* 0801195c */ B branch_0801199c \n\
\n\
.ltorg \n\
 \n\
branch_08011984: \n\
/* 08011984 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08011986 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08011988 */ BL func_080082cc \n\
/* 0801198c */ MOV R0, SP @ Set R0 to SP \n\
/* 0801198e */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08011990 */ BL func_080081a8 \n\
/* 08011994 */ LDR R1, =D_08050b9c \n\
/* 08011996 */ MOV R0, SP @ Set R0 to SP \n\
/* 08011998 */ BL func_080081a8 \n\
 \n\
branch_0801199c: \n\
/* 0801199c */ LDR R1, =D_08050ba4 \n\
/* 0801199e */ MOV R0, SP @ Set R0 to SP \n\
/* 080119a0 */ BL func_080081a8 \n\
/* 080119a4 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 080119a6 */ BNE branch_080119c0 \n\
/* 080119a8 */ LDR R1, =D_08050bb4 \n\
/* 080119aa */ MOV R0, SP @ Set R0 to SP \n\
/* 080119ac */ BL func_080081a8 \n\
/* 080119b0 */ B branch_080119da \n\
\n\
.ltorg \n\
 \n\
branch_080119c0: \n\
/* 080119c0 */ ADD R4, SP, 0x100 \n\
/* 080119c2 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080119c4 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 080119c6 */ BL func_080082cc \n\
/* 080119ca */ MOV R0, SP @ Set R0 to SP \n\
/* 080119cc */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 080119ce */ BL func_080081a8 \n\
/* 080119d2 */ LDR R1, =D_08050bbc \n\
/* 080119d4 */ MOV R0, SP @ Set R0 to SP \n\
/* 080119d6 */ BL func_080081a8 \n\
 \n\
branch_080119da: \n\
/* 080119da */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 080119dc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080119de */ MOV R2, SP @ Set R2 to SP \n\
/* 080119e0 */ BL func_08011744 \n\
/* 080119e4 */ B branch_080119f6 \n\
\n\
.ltorg \n\
 \n\
branch_080119ec: \n\
/* 080119ec */ LDR R2, =D_08050bc4 \n\
/* 080119ee */ MOVS R0, 0x5 @ Set R0 to 0x5 \n\
/* 080119f0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080119f2 */ BL func_08011744 \n\
 \n\
branch_080119f6: \n\
/* 080119f6 */ ADD SP, 0x120 \n\
/* 080119f8 */ POP {R3, R4} \n\
/* 080119fa */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080119fc */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080119fe */ POP {R4-R7} \n\
/* 08011a00 */ POP {R0} \n\
/* 08011a02 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
