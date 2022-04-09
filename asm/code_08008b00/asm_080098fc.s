asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080098fc \n\
/* 080098fc */ PUSH {R4-R6, LR} \n\
/* 080098fe */ SUB SP, 0x4 \n\
/* 08009900 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08009902 */ STR R1, [SP] \n\
/* 08009904 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08009906 */ LDR R1, =D_089380ac \n\
/* 08009908 */ LSLS R0, R5, 0x1 \n\
/* 0800990a */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 0800990c */ LSLS R0, R0, 0x2 \n\
/* 0800990e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08009910 */ LDRB R6, [R0, 0x9] \n\
/* 08009912 */ B branch_0800992e \n\
\n\
.ltorg \n\
 \n\
branch_08009918: \n\
/* 08009918 */ MOV R0, SP @ Set R0 to SP \n\
/* 0800991a */ BL func_0800a108 \n\
/* 0800991e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08009920 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08009922 */ BLT branch_0800992e \n\
/* 08009924 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08009926 */ BL func_08009898 \n\
/* 0800992a */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 0800992c */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
 \n\
branch_0800992e: \n\
/* 0800992e */ LDR R0, [SP] \n\
/* 08009930 */ LDRB R0, [R0] \n\
/* 08009932 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08009934 */ BNE branch_08009918 \n\
/* 08009936 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08009938 */ BEQ branch_0800993c \n\
/* 0800993a */ SUBS R4, R4, R6 @ Set R4 to R4 - R6 \n\
 \n\
branch_0800993c: \n\
/* 0800993c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800993e */ ADD SP, 0x4 \n\
/* 08009940 */ POP {R4-R6} \n\
/* 08009942 */ POP {R1} \n\
/* 08009944 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
