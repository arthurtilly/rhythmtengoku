asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08009948 \n\
/* 08009948 */ PUSH {R4-R6, LR} \n\
/* 0800994a */ SUB SP, 0x10 \n\
/* 0800994c */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800994e */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08009950 */ LDR R5, =D_03001220 \n\
/* 08009952 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08009954 */ BLT branch_0800998e \n\
/* 08009956 */ ASRS R1, R4, 0x3 \n\
/* 08009958 */ LSLS R1, R1, 0x5 \n\
/* 0800995a */ LSLS R0, R0, 0xA \n\
/* 0800995c */ MOVS R6, 0xC0 @ Set R6 to 0xC0 \n\
/* 0800995e */ LSLS R6, R6, 0x13 \n\
/* 08009960 */ ADDS R0, R0, R6 @ Set R0 to R0 + R6 \n\
/* 08009962 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08009964 */ STR R1, [SP] \n\
/* 08009966 */ LDR R1, =D_089380ac \n\
/* 08009968 */ LSLS R0, R2, 0x1 \n\
/* 0800996a */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0800996c */ LSLS R0, R0, 0x2 \n\
/* 0800996e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08009970 */ LDRB R1, [R0, 0x8] \n\
/* 08009972 */ MULS R1, R3 @ Multiply R1 by R3 \n\
/* 08009974 */ LDR R0, [R0] \n\
/* 08009976 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08009978 */ STR R0, [SP, 0x4] \n\
/* 0800997a */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 0800997c */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0800997e */ LSLS R0, R0, 0x2 \n\
/* 08009980 */ LDR R1, [SP, 0x20] \n\
/* 08009982 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08009984 */ STR R0, [SP, 0x8] \n\
/* 08009986 */ STR R2, [SP, 0xC] \n\
/* 08009988 */ MOV R0, SP @ Set R0 to SP \n\
/* 0800998a */ BL _call_via_r5 \n\
 \n\
branch_0800998e: \n\
/* 0800998e */ ADD SP, 0x10 \n\
/* 08009990 */ POP {R4-R6} \n\
/* 08009992 */ POP {R0} \n\
/* 08009994 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
