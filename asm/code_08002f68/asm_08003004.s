asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08003004 \n\
/* 08003004 */ PUSH {R4-R6, LR} \n\
/* 08003006 */ LSLS R0, R0, 0x10 \n\
/* 08003008 */ LSLS R1, R1, 0x10 \n\
/* 0800300a */ LSRS R1, R1, 0x10 \n\
/* 0800300c */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0800300e */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 08003010 */ LSRS R3, R0, 0x10 \n\
/* 08003012 */ ASRS R0, R0, 0x10 \n\
/* 08003014 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08003016 */ BGE branch_08003024 \n\
/* 08003018 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800301a */ LSLS R0, R0, 0x10 \n\
/* 0800301c */ LSRS R3, R0, 0x10 \n\
/* 0800301e */ MOVS R6, 0x80 @ Set R6 to 0x80 \n\
/* 08003020 */ LSLS R6, R6, 0x3 \n\
/* 08003022 */ NEGS R5, R5 @ Set R5 to -R5 \n\
 \n\
branch_08003024: \n\
/* 08003024 */ LSLS R0, R1, 0x10 \n\
/* 08003026 */ ASRS R0, R0, 0x10 \n\
/* 08003028 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800302a */ BGE branch_08003034 \n\
/* 0800302c */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800302e */ LSLS R0, R0, 0x10 \n\
/* 08003030 */ LSRS R1, R0, 0x10 \n\
/* 08003032 */ NEGS R5, R5 @ Set R5 to -R5 \n\
 \n\
branch_08003034: \n\
/* 08003034 */ LSLS R0, R3, 0x10 \n\
/* 08003036 */ LSLS R2, R1, 0x10 \n\
/* 08003038 */ ASRS R4, R0, 0x10 \n\
/* 0800303a */ CMP R0, R2 @ Check R0 - R2 \n\
/* 0800303c */ BGE branch_0800304a \n\
/* 0800303e */ LSLS R0, R5, 0x9 \n\
/* 08003040 */ ADDS R6, R6, R0 @ Set R6 to R6 + R0 \n\
/* 08003042 */ NEGS R5, R5 @ Set R5 to -R5 \n\
/* 08003044 */ LSRS R3, R2, 0x10 \n\
/* 08003046 */ LSLS R0, R4, 0x10 \n\
/* 08003048 */ LSRS R1, R0, 0x10 \n\
 \n\
branch_0800304a: \n\
/* 0800304a */ LDR R4, =D_0893644e \n\
/* 0800304c */ LSLS R0, R1, 0x10 \n\
/* 0800304e */ ASRS R0, R0, 0x8 \n\
/* 08003050 */ LSLS R1, R3, 0x10 \n\
/* 08003052 */ ASRS R1, R1, 0x10 \n\
/* 08003054 */ BL __divsi3 \n\
/* 08003058 */ LSLS R0, R0, 0x1 \n\
/* 0800305a */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0800305c */ LDRH R0, [R0] \n\
/* 0800305e */ MULS R0, R5 @ Multiply R0 by R5 \n\
/* 08003060 */ ADDS R0, R6, R0 @ Set R0 to R6 + R0 \n\
/* 08003062 */ LSLS R0, R0, 0x10 \n\
/* 08003064 */ LSRS R0, R0, 0x10 \n\
/* 08003066 */ POP {R4-R6} \n\
/* 08003068 */ POP {R1} \n\
/* 0800306a */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
