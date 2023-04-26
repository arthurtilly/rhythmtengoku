asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011fa8 \n\
/* 08011fa8 */ PUSH {R4-R7, LR} \n\
/* 08011faa */ MOV R7, R10 @ Set R7 to R10 \n\
/* 08011fac */ MOV R6, R9 @ Set R6 to R9 \n\
/* 08011fae */ MOV R5, R8 @ Set R5 to R8 \n\
/* 08011fb0 */ PUSH {R5-R7} \n\
/* 08011fb2 */ SUB SP, 0x4 \n\
/* 08011fb4 */ LDR R4, =gCurrentSceneData \n\
/* 08011fb6 */ LDR R0, [R4] \n\
/* 08011fb8 */ LDR R0, [R0, 0x4] \n\
/* 08011fba */ BL func_0800b32c \n\
/* 08011fbe */ LSLS R0, R0, 0x10 \n\
/* 08011fc0 */ LSRS R6, R0, 0x10 \n\
/* 08011fc2 */ LDR R0, [R4] \n\
/* 08011fc4 */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 08011fc6 */ LDRSH R0, [R0, R1] \n\
/* 08011fc8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08011fca */ BLT branch_08011fea \n\
/* 08011fcc */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
 \n\
branch_08011fce: \n\
/* 08011fce */ LDR R0, =D_03005380 \n\
/* 08011fd0 */ LDR R0, [R0] \n\
/* 08011fd2 */ LDR R1, =gCurrentSceneData \n\
/* 08011fd4 */ LDR R1, [R1] \n\
/* 08011fd6 */ LSLS R2, R7, 0x1 \n\
/* 08011fd8 */ ADDS R1, 0x8 @ Add 0x8 to R1 \n\
/* 08011fda */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08011fdc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011fde */ LDRSH R1, [R1, R2] \n\
/* 08011fe0 */ BL func_0804d504 \n\
/* 08011fe4 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 08011fe6 */ CMP R7, 0x7 @ Compare R7 and 0x7 \n\
/* 08011fe8 */ BLS branch_08011fce \n\
 \n\
branch_08011fea: \n\
/* 08011fea */ LDR R4, =D_03005380 \n\
/* 08011fec */ LDR R0, [R4] \n\
/* 08011fee */ LSLS R6, R6, 0x10 \n\
/* 08011ff0 */ ASRS R5, R6, 0x10 \n\
/* 08011ff2 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08011ff4 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08011ff6 */ BL func_0804ddb0 \n\
/* 08011ffa */ STR R0, [SP] \n\
/* 08011ffc */ LDR R0, [R4] \n\
/* 08011ffe */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08012000 */ MOVS R2, 0x6 @ Set R2 to 0x6 \n\
/* 08012002 */ BL func_0804ddb0 \n\
/* 08012006 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 08012008 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0801200a */ MOV R9, R6 @ Set R9 to R6 \n\
/* 0801200c */ MOV R8, R4 @ Set R8 to R4 \n\
 \n\
branch_0801200e: \n\
/* 0801200e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08012010 */ LDR R0, [R1] \n\
/* 08012012 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 08012014 */ ASRS R1, R2, 0x10 \n\
/* 08012016 */ BL func_0804d3cc \n\
/* 0801201a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801201c */ LSLS R4, R4, 0x10 \n\
/* 0801201e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08012020 */ LDR R0, [R1] \n\
/* 08012022 */ LSRS R6, R4, 0x10 \n\
/* 08012024 */ ASRS R4, R4, 0x10 \n\
/* 08012026 */ ADDS R2, R7, 0x2 @ Set R2 to R7 + 0x2 \n\
/* 08012028 */ LSLS R2, R2, 0x18 \n\
/* 0801202a */ ASRS R2, R2, 0x18 \n\
/* 0801202c */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801202e */ BL func_0804d8c4 \n\
/* 08012032 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08012034 */ LDR R0, [R2] \n\
/* 08012036 */ ADDS R5, R7, 0x1 @ Set R5 to R7 + 0x1 \n\
/* 08012038 */ LDR R1, [SP] \n\
/* 0801203a */ ADDS R2, R1, R5 @ Set R2 to R1 + R5 \n\
/* 0801203c */ LSLS R2, R2, 0x10 \n\
/* 0801203e */ ASRS R2, R2, 0x10 \n\
/* 08012040 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08012042 */ BL func_0804d614 \n\
/* 08012046 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08012048 */ LDR R0, [R2] \n\
/* 0801204a */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0801204c */ ADDS R2, R1, R7 @ Set R2 to R1 + R7 \n\
/* 0801204e */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08012050 */ LSLS R2, R2, 0x10 \n\
/* 08012052 */ LSRS R2, R2, 0x10 \n\
/* 08012054 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08012056 */ BL func_0804d67c \n\
/* 0801205a */ LDR R0, =gCurrentSceneData \n\
/* 0801205c */ LDR R0, [R0] \n\
/* 0801205e */ LSLS R1, R7, 0x1 \n\
/* 08012060 */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 08012062 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08012064 */ STRH R6, [R0] \n\
/* 08012066 */ ADDS R7, R5, 0x0 @ Set R7 to R5 + 0x0 \n\
/* 08012068 */ CMP R7, 0x7 @ Compare R7 and 0x7 \n\
/* 0801206a */ BLS branch_0801200e \n\
/* 0801206c */ ADD SP, 0x4 \n\
/* 0801206e */ POP {R3-R5} \n\
/* 08012070 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08012072 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08012074 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08012076 */ POP {R4-R7} \n\
/* 08012078 */ POP {R0} \n\
/* 0801207a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
