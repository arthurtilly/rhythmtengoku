asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08017000 \n\
/* 08017000 */ PUSH {R4-R7, LR} \n\
/* 08017002 */ LDR R0, =D_030046a4 \n\
/* 08017004 */ LDR R1, [R0] \n\
/* 08017006 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08017008 */ ADDS R0, 0x7C @ Add 0x7C to R0 \n\
/* 0801700a */ LDRB R0, [R0] \n\
/* 0801700c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801700e */ BEQ branch_08017012 \n\
/* 08017010 */ B branch_0801713a \n\
 \n\
branch_08017012: \n\
/* 08017012 */ LDR R0, [R1, 0x10] \n\
/* 08017014 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017016 */ BEQ branch_08017022 \n\
/* 08017018 */ LDR R0, [R0, 0x8] \n\
/* 0801701a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801701c */ BEQ branch_08017022 \n\
/* 0801701e */ BL _call_via_r0 \n\
 \n\
branch_08017022: \n\
/* 08017022 */ LDR R0, =D_03004afc \n\
/* 08017024 */ LDR R1, =D_030046a4 \n\
/* 08017026 */ MOV R12, R1 @ Set R12 to R1 \n\
/* 08017028 */ LDR R2, [R1] \n\
/* 0801702a */ LDRH R0, [R0] \n\
/* 0801702c */ LDRH R4, [R2, 0xA] \n\
/* 0801702e */ ANDS R4, R0 @ Set R4 to R4 & R0 \n\
/* 08017030 */ LDR R0, =D_03004b00 \n\
/* 08017032 */ LDRH R0, [R0] \n\
/* 08017034 */ LDRH R6, [R2, 0xC] \n\
/* 08017036 */ ANDS R6, R0 @ Set R6 to R6 & R0 \n\
/* 08017038 */ LDR R3, =0x5b4 \n\
/* 0801703a */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 0801703c */ LDRB R3, [R0] \n\
/* 0801703e */ CMP R3, 0x1 @ Compare R3 and 0x1 \n\
/* 08017040 */ BNE branch_080170e6 \n\
/* 08017042 */ LDR R7, =0x5b5 \n\
/* 08017044 */ ADDS R5, R2, R7 @ Set R5 to R2 + R7 \n\
/* 08017046 */ LDRB R0, [R5] \n\
/* 08017048 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801704a */ BEQ branch_080170b0 \n\
/* 0801704c */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 0801704e */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 08017050 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017052 */ BEQ branch_080170e6 \n\
/* 08017054 */ MOVS R1, 0xF1 @ Set R1 to 0xF1 \n\
/* 08017056 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08017058 */ ANDS R1, R4 @ Set R1 to R1 & R4 \n\
/* 0801705a */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0801705c */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0801705e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017060 */ BEQ branch_08017064 \n\
/* 08017062 */ MOVS R4, 0x40 @ Set R4 to 0x40 \n\
 \n\
branch_08017064: \n\
/* 08017064 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08017066 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 08017068 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801706a */ BEQ branch_0801706e \n\
/* 0801706c */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
 \n\
branch_0801706e: \n\
/* 0801706e */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 08017070 */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 08017072 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017074 */ BEQ branch_08017078 \n\
/* 08017076 */ MOVS R4, 0x20 @ Set R4 to 0x20 \n\
 \n\
branch_08017078: \n\
/* 08017078 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0801707a */ ANDS R0, R4 @ Set R0 to R0 & R4 \n\
/* 0801707c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801707e */ BEQ branch_08017082 \n\
/* 08017080 */ MOVS R4, 0x10 @ Set R4 to 0x10 \n\
 \n\
branch_08017082: \n\
/* 08017082 */ ORRS R4, R1 @ Set R4 to R4 | R1 \n\
/* 08017084 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08017086 */ STRB R0, [R5] \n\
/* 08017088 */ MOV R1, R12 @ Set R1 to R12 \n\
/* 0801708a */ LDR R0, [R1] \n\
/* 0801708c */ LDR R3, =0x5b6 \n\
/* 0801708e */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 08017090 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08017092 */ STRB R1, [R0] \n\
/* 08017094 */ B branch_080170e6 \n\
\n\
.ltorg \n\
 \n\
branch_080170b0: \n\
/* 080170b0 */ MOVS R0, 0xF1 @ Set R0 to 0xF1 \n\
/* 080170b2 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 080170b4 */ ANDS R4, R0 @ Set R4 to R4 & R0 \n\
/* 080170b6 */ LDR R0, =D_03004ac0 \n\
/* 080170b8 */ LDRH R1, [R0] \n\
/* 080170ba */ MOVS R0, 0xF0 @ Set R0 to 0xF0 \n\
/* 080170bc */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080170be */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080170c0 */ BEQ branch_080170e4 \n\
/* 080170c2 */ LDR R0, =0x5b6 \n\
/* 080170c4 */ ADDS R1, R2, R0 @ Set R1 to R2 + R0 \n\
/* 080170c6 */ LDRB R0, [R1] \n\
/* 080170c8 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 080170ca */ STRB R0, [R1] \n\
/* 080170cc */ LSLS R0, R0, 0x18 \n\
/* 080170ce */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080170d0 */ BNE branch_080170e6 \n\
/* 080170d2 */ MOV R1, R12 @ Set R1 to R12 \n\
/* 080170d4 */ LDR R0, [R1] \n\
/* 080170d6 */ ADDS R0, R0, R7 @ Set R0 to R0 + R7 \n\
/* 080170d8 */ STRB R3, [R0] \n\
/* 080170da */ B branch_080170e6 \n\
\n\
.ltorg \n\
 \n\
branch_080170e4: \n\
/* 080170e4 */ STRB R3, [R5] \n\
 \n\
branch_080170e6: \n\
/* 080170e6 */ BL func_0801714c \n\
/* 080170ea */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080170ec */ BEQ branch_080170fe \n\
/* 080170ee */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 080170f0 */ BNE branch_080170f6 \n\
/* 080170f2 */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 080170f4 */ BEQ branch_080170fe \n\
 \n\
branch_080170f6: \n\
/* 080170f6 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080170f8 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 080170fa */ BL func_08017ec8 \n\
 \n\
branch_080170fe: \n\
/* 080170fe */ BL func_08017c68 \n\
/* 08017102 */ BL func_0801875c \n\
/* 08017106 */ LDR R2, =D_030046a4 \n\
/* 08017108 */ LDR R0, [R2] \n\
/* 0801710a */ LDR R3, =0x4a7 \n\
/* 0801710c */ ADDS R1, R0, R3 @ Set R1 to R0 + R3 \n\
/* 0801710e */ LDRB R0, [R1] \n\
/* 08017110 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017112 */ BEQ branch_08017118 \n\
/* 08017114 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08017116 */ STRB R0, [R1] \n\
 \n\
branch_08017118: \n\
/* 08017118 */ LDR R1, =D_03004afc \n\
/* 0801711a */ LDR R2, [R2] \n\
/* 0801711c */ MOVS R3, 0x96 @ Set R3 to 0x96 \n\
/* 0801711e */ LSLS R3, R3, 0x3 \n\
/* 08017120 */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 08017122 */ LDRH R1, [R1] \n\
/* 08017124 */ LDRH R0, [R0] \n\
/* 08017126 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08017128 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801712a */ BEQ branch_0801713a \n\
/* 0801712c */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0801712e */ ADDS R0, 0x7B @ Add 0x7B to R0 \n\
/* 08017130 */ LDRB R0, [R0] \n\
/* 08017132 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017134 */ BEQ branch_0801713a \n\
/* 08017136 */ BL func_08017514 \n\
 \n\
branch_0801713a: \n\
/* 0801713a */ POP {R4-R7} \n\
/* 0801713c */ POP {R0} \n\
/* 0801713e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
