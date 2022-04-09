asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005014 \n\
/* 08005014 */ PUSH {R4-R7, LR} \n\
/* 08005016 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08005018 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0800501a */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800501c */ PUSH {R5-R7} \n\
/* 0800501e */ SUB SP, 0x4 \n\
/* 08005020 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08005022 */ LSLS R1, R1, 0x10 \n\
/* 08005024 */ LSRS R1, R1, 0x10 \n\
/* 08005026 */ MOV R10, R1 @ Set R10 to R1 \n\
/* 08005028 */ LDR R0, [R2] \n\
/* 0800502a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800502c */ BEQ branch_0800509e \n\
/* 0800502e */ LDR R0, =D_03004ae4 \n\
/* 08005030 */ MOV R9, R0 @ Set R9 to R0 \n\
 \n\
branch_08005032: \n\
/* 08005032 */ LDR R4, [R2] \n\
/* 08005034 */ LDRH R6, [R4] \n\
/* 08005036 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 08005038 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0800503a */ ADDS R2, 0x8 @ Add 0x8 to R2 \n\
/* 0800503c */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0800503e */ CMP R5, R6 @ Check R5 - R6 \n\
/* 08005040 */ BCS branch_08005096 \n\
/* 08005042 */ MOVS R3, 0x80 @ Set R3 to 0x80 \n\
/* 08005044 */ LSLS R3, R3, 0x1 \n\
/* 08005046 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 08005048 */ LSLS R0, R1, 0x10 \n\
/* 0800504a */ ASRS R0, R0, 0x10 \n\
/* 0800504c */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0800504e */ MULS R7, R0 @ Multiply R7 by R0 \n\
 \n\
branch_08005050: \n\
/* 08005050 */ LDRH R0, [R4, 0x2] \n\
/* 08005052 */ LSLS R0, R0, 0x17 \n\
/* 08005054 */ LSRS R2, R0, 0x17 \n\
/* 08005056 */ ADDS R1, R2, 0x0 @ Set R1 to R2 + 0x0 \n\
/* 08005058 */ CMP R1, R3 @ Check R1 - R3 \n\
/* 0800505a */ BLE branch_08005066 \n\
/* 0800505c */ LDR R2, =0xfffffe00 \n\
/* 0800505e */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08005060 */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 08005062 */ LSLS R0, R0, 0x10 \n\
/* 08005064 */ LSRS R2, R0, 0x10 \n\
 \n\
branch_08005066: \n\
/* 08005066 */ LDR R0, =D_030008b8 \n\
/* 08005068 */ ADDS R0, R5, R0 @ Set R0 to R5 + R0 \n\
/* 0800506a */ LDRB R0, [R0] \n\
/* 0800506c */ LSRS R0, R0, 0x1 \n\
/* 0800506e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08005070 */ LSLS R0, R0, 0x10 \n\
/* 08005072 */ ASRS R0, R0, 0x10 \n\
/* 08005074 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08005076 */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 08005078 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0800507a */ SUBS R0, R7, R0 @ Set R0 to R7 - R0 \n\
/* 0800507c */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0800507e */ LDR R1, [R2] \n\
/* 08005080 */ STR R3, [SP] \n\
/* 08005082 */ BL _call_via_r1 \n\
/* 08005086 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08005088 */ SUBS R0, 0xA @ Subtract 0xA from R0 \n\
/* 0800508a */ STRB R0, [R4] \n\
/* 0800508c */ ADDS R4, 0x6 @ Add 0x6 to R4 \n\
/* 0800508e */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08005090 */ LDR R3, [SP] \n\
/* 08005092 */ CMP R5, R6 @ Check R5 - R6 \n\
/* 08005094 */ BCC branch_08005050 \n\
 \n\
branch_08005096: \n\
/* 08005096 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08005098 */ LDR R0, [R2] \n\
/* 0800509a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800509c */ BNE branch_08005032 \n\
 \n\
branch_0800509e: \n\
/* 0800509e */ ADD SP, 0x4 \n\
/* 080050a0 */ POP {R3-R5} \n\
/* 080050a2 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 080050a4 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 080050a6 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 080050a8 */ POP {R4-R7} \n\
/* 080050aa */ POP {R0} \n\
/* 080050ac */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
