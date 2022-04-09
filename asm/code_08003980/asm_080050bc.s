asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080050bc \n\
/* 080050bc */ PUSH {R4-R7, LR} \n\
/* 080050be */ MOV R7, R9 @ Set R7 to R9 \n\
/* 080050c0 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 080050c2 */ PUSH {R6, R7} \n\
/* 080050c4 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080050c6 */ LSLS R1, R1, 0x10 \n\
/* 080050c8 */ LSRS R1, R1, 0x10 \n\
/* 080050ca */ MOV R9, R1 @ Set R9 to R1 \n\
/* 080050cc */ LSLS R2, R2, 0x10 \n\
/* 080050ce */ LSRS R2, R2, 0x10 \n\
/* 080050d0 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 080050d2 */ B branch_0800510a \n\
 \n\
branch_080050d4: \n\
/* 080050d4 */ LDR R3, [R4] \n\
/* 080050d6 */ LDRH R6, [R3] \n\
/* 080050d8 */ ADDS R3, 0x2 @ Add 0x2 to R3 \n\
/* 080050da */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 080050dc */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
/* 080050de */ CMP R5, R6 @ Check R5 - R6 \n\
/* 080050e0 */ BCS branch_0800510a \n\
/* 080050e2 */ LDR R0, =0x1ff \n\
/* 080050e4 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 080050e6 */ LDR R0, =0xfffffe00 \n\
/* 080050e8 */ MOV R12, R0 @ Set R12 to R0 \n\
 \n\
branch_080050ea: \n\
/* 080050ea */ LDRH R2, [R3, 0x2] \n\
/* 080050ec */ LSLS R1, R2, 0x17 \n\
/* 080050ee */ LSRS R1, R1, 0x17 \n\
/* 080050f0 */ ADD R1, R9 @ Add R9 to R1 \n\
/* 080050f2 */ ANDS R1, R7 @ Set R1 to R1 & R7 \n\
/* 080050f4 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 080050f6 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 080050f8 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 080050fa */ STRH R0, [R3, 0x2] \n\
/* 080050fc */ LDRB R0, [R3] \n\
/* 080050fe */ ADD R0, R8 @ Add R8 to R0 \n\
/* 08005100 */ STRB R0, [R3] \n\
/* 08005102 */ ADDS R3, 0x6 @ Add 0x6 to R3 \n\
/* 08005104 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08005106 */ CMP R5, R6 @ Check R5 - R6 \n\
/* 08005108 */ BCC branch_080050ea \n\
 \n\
branch_0800510a: \n\
/* 0800510a */ LDR R0, [R4] \n\
/* 0800510c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800510e */ BNE branch_080050d4 \n\
/* 08005110 */ POP {R3, R4} \n\
/* 08005112 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08005114 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08005116 */ POP {R4-R7} \n\
/* 08005118 */ POP {R0} \n\
/* 0800511a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
