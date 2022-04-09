asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800724c \n\
/* 0800724c */ PUSH {R4-R7, LR} \n\
/* 0800724e */ SUB SP, 0x4 \n\
/* 08007250 */ LDR R7, =D_03004b10 \n\
/* 08007252 */ LDR R0, =0x854 \n\
/* 08007254 */ ADDS R5, R7, R0 @ Set R5 to R7 + R0 \n\
/* 08007256 */ LDRB R1, [R5] \n\
/* 08007258 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800725a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800725c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800725e */ BEQ branch_08007310 \n\
/* 08007260 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08007262 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08007264 */ LSLS R0, R0, 0x18 \n\
/* 08007266 */ LSRS R2, R0, 0x18 \n\
/* 08007268 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800726a */ BEQ branch_080072d8 \n\
/* 0800726c */ LDR R2, =D_03000ea6 \n\
/* 0800726e */ LDRH R0, [R2] \n\
/* 08007270 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08007272 */ STRH R0, [R2] \n\
/* 08007274 */ LDR R1, =D_03000ea4 \n\
/* 08007276 */ LSLS R0, R0, 0x10 \n\
/* 08007278 */ ASRS R0, R0, 0x10 \n\
/* 0800727a */ LDRH R4, [R1] \n\
/* 0800727c */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0800727e */ LDRSH R3, [R1, R6] \n\
/* 08007280 */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 08007282 */ MOV R12, R1 @ Set R12 to R1 \n\
/* 08007284 */ CMP R0, R3 @ Check R0 - R3 \n\
/* 08007286 */ BLT branch_080072fc \n\
/* 08007288 */ STRH R4, [R6] \n\
/* 0800728a */ LDRB R0, [R5] \n\
/* 0800728c */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 0800728e */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08007290 */ STRB R0, [R5] \n\
/* 08007292 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08007294 */ STRH R0, [R7] \n\
/* 08007296 */ LDR R5, =D_03000ea8 \n\
/* 08007298 */ LDRH R0, [R5] \n\
/* 0800729a */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 0800729c */ ADDS R1, 0x54 @ Add 0x54 to R1 \n\
/* 0800729e */ MOVS R6, 0x80 @ Set R6 to 0x80 \n\
/* 080072a0 */ LSLS R6, R6, 0x3 \n\
/* 080072a2 */ MOVS R4, 0x80 @ Set R4 to 0x80 \n\
/* 080072a4 */ LSLS R4, R4, 0x1 \n\
/* 080072a6 */ STR R4, [SP] \n\
/* 080072a8 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 080072aa */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 080072ac */ BL func_080018e0 \n\
/* 080072b0 */ LDRH R0, [R5] \n\
/* 080072b2 */ LDR R1, =D_030046c0 \n\
/* 080072b4 */ STR R4, [SP] \n\
/* 080072b6 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 080072b8 */ MOVS R3, 0x10 @ Set R3 to 0x10 \n\
/* 080072ba */ BL func_080018e0 \n\
/* 080072be */ B branch_08007310 \n\
\n\
.ltorg \n\
 \n\
branch_080072d8: \n\
/* 080072d8 */ LDR R1, =D_03000ea6 \n\
/* 080072da */ LDRH R0, [R1] \n\
/* 080072dc */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 080072de */ STRH R0, [R1] \n\
/* 080072e0 */ LSLS R0, R0, 0x10 \n\
/* 080072e2 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 080072e4 */ LDR R1, =D_03000ea4 \n\
/* 080072e6 */ MOV R12, R1 @ Set R12 to R1 \n\
/* 080072e8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080072ea */ BGT branch_080072fc \n\
/* 080072ec */ STRH R2, [R6] \n\
/* 080072ee */ LDRB R0, [R5] \n\
/* 080072f0 */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 080072f2 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 080072f4 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 080072f6 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 080072f8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080072fa */ STRB R0, [R5] \n\
 \n\
branch_080072fc: \n\
/* 080072fc */ LDR R0, =D_03000ea8 \n\
/* 080072fe */ LDRH R0, [R0] \n\
/* 08007300 */ MOV R3, R12 @ Set R3 to R12 \n\
/* 08007302 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08007304 */ LDRSH R2, [R3, R1] \n\
/* 08007306 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08007308 */ LDRSH R3, [R6, R1] \n\
/* 0800730a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800730c */ BL func_0800716c \n\
 \n\
branch_08007310: \n\
/* 08007310 */ ADD SP, 0x4 \n\
/* 08007312 */ POP {R4-R7} \n\
/* 08007314 */ POP {R0} \n\
/* 08007316 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
