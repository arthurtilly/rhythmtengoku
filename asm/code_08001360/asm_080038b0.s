asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080038b0 \n\
/* 080038b0 */ PUSH {R4-R7, LR} \n\
/* 080038b2 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 080038b4 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080038b6 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080038b8 */ PUSH {R5-R7} \n\
/* 080038ba */ SUB SP, 0xC \n\
/* 080038bc */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080038be */ MOV R8, R2 @ Set R8 to R2 \n\
/* 080038c0 */ ADDS R7, R3, 0x0 @ Set R7 to R3 + 0x0 \n\
/* 080038c2 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080038c4 */ B branch_08003956 \n\
 \n\
branch_080038c6: \n\
/* 080038c6 */ LDRB R0, [R4] \n\
/* 080038c8 */ LSLS R0, R0, 0x1F \n\
/* 080038ca */ LDRB R2, [R1, 0x4] \n\
/* 080038cc */ MOVS R5, 0x8 @ Set R5 to 0x8 \n\
/* 080038ce */ ADDS R5, R5, R1 @ Set R5 to R5 + R1 \n\
/* 080038d0 */ MOV R9, R5 @ Set R9 to R5 \n\
/* 080038d2 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 080038d4 */ MOV R10, R3 @ Set R10 to R3 \n\
/* 080038d6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080038d8 */ BEQ branch_080038e4 \n\
 \n\
branch_080038da: \n\
/* 080038da */ ADDS R4, 0x18 @ Add 0x18 to R4 \n\
/* 080038dc */ LDRB R0, [R4] \n\
/* 080038de */ LSLS R0, R0, 0x1F \n\
/* 080038e0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080038e2 */ BNE branch_080038da \n\
 \n\
branch_080038e4: \n\
/* 080038e4 */ LSLS R0, R2, 0x5 \n\
/* 080038e6 */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 080038e8 */ LSLS R2, R2, 0x13 \n\
/* 080038ea */ ADDS R5, R0, R2 @ Set R5 to R0 + R2 \n\
/* 080038ec */ LDR R2, [SP, 0x2C] \n\
/* 080038ee */ ADDS R6, R2, R0 @ Set R6 to R2 + R0 \n\
/* 080038f0 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 080038f2 */ BEQ branch_0800390a \n\
/* 080038f4 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 080038f6 */ BCC branch_08003902 \n\
/* 080038f8 */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 080038fa */ BEQ branch_08003920 \n\
/* 080038fc */ CMP R7, 0x3 @ Compare R7 and 0x3 \n\
/* 080038fe */ BEQ branch_0800393c \n\
/* 08003900 */ B branch_08003950 \n\
 \n\
branch_08003902: \n\
/* 08003902 */ LDR R3, [R1] \n\
/* 08003904 */ LDRB R2, [R1, 0x5] \n\
/* 08003906 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08003908 */ B branch_08003926 \n\
 \n\
branch_0800390a: \n\
/* 0800390a */ LDR R0, [R1] \n\
/* 0800390c */ LDRB R2, [R1, 0x5] \n\
/* 0800390e */ STR R0, [SP] \n\
/* 08003910 */ STR R5, [SP, 0x4] \n\
/* 08003912 */ STR R6, [SP, 0x8] \n\
/* 08003914 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08003916 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08003918 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800391a */ BL func_08001c64 \n\
/* 0800391e */ B branch_08003950 \n\
 \n\
branch_08003920: \n\
/* 08003920 */ LDR R3, [R1] \n\
/* 08003922 */ LDRB R2, [R1, 0x5] \n\
/* 08003924 */ LDR R0, =0x7fff \n\
 \n\
branch_08003926: \n\
/* 08003926 */ STR R0, [SP] \n\
/* 08003928 */ STR R5, [SP, 0x4] \n\
/* 0800392a */ STR R6, [SP, 0x8] \n\
/* 0800392c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800392e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08003930 */ BL func_08001cd8 \n\
/* 08003934 */ B branch_08003950 \n\
\n\
.ltorg \n\
 \n\
branch_0800393c: \n\
/* 0800393c */ LDR R0, [R1] \n\
/* 0800393e */ LDRB R2, [R1, 0x5] \n\
/* 08003940 */ STR R0, [SP] \n\
/* 08003942 */ STR R5, [SP, 0x4] \n\
/* 08003944 */ STR R6, [SP, 0x8] \n\
/* 08003946 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08003948 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800394a */ LDR R3, =0x7fff \n\
/* 0800394c */ BL func_08001c64 \n\
 \n\
branch_08003950: \n\
/* 08003950 */ ADDS R4, 0x18 @ Add 0x18 to R4 \n\
/* 08003952 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 08003954 */ MOV R3, R10 @ Set R3 to R10 \n\
 \n\
branch_08003956: \n\
/* 08003956 */ LDR R0, [R1] \n\
/* 08003958 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800395a */ BNE branch_080038c6 \n\
/* 0800395c */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800395e */ ADD SP, 0xC \n\
/* 08003960 */ POP {R3-R5} \n\
/* 08003962 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08003964 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08003966 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08003968 */ POP {R4-R7} \n\
/* 0800396a */ POP {R1} \n\
/* 0800396c */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
