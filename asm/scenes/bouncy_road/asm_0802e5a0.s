asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802e5a0 \n\
/* 0802e5a0 */ PUSH {R4-R7, LR} \n\
/* 0802e5a2 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0802e5a4 */ PUSH {R7} \n\
/* 0802e5a6 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0802e5a8 */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 0802e5aa */ LDR R5, =D_030055d0 \n\
/* 0802e5ac */ LDR R0, [R5] \n\
/* 0802e5ae */ MOVS R4, 0xEA @ Set R4 to 0xEA \n\
/* 0802e5b0 */ LSLS R4, R4, 0x1 \n\
/* 0802e5b2 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802e5b4 */ LDRH R0, [R0] \n\
/* 0802e5b6 */ BL func_0802df08 \n\
/* 0802e5ba */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0802e5bc */ LDR R0, [R5] \n\
/* 0802e5be */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0802e5c0 */ LDRH R0, [R0] \n\
/* 0802e5c2 */ STRH R0, [R7] \n\
/* 0802e5c4 */ LDRH R0, [R6, 0xA] \n\
/* 0802e5c6 */ BL func_0800c3a4 \n\
/* 0802e5ca */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802e5cc */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0802e5ce */ BL func_080180b4 \n\
/* 0802e5d2 */ LDRB R0, [R6, 0xE] \n\
/* 0802e5d4 */ SUBS R0, 0xB @ Subtract 0xB from R0 \n\
/* 0802e5d6 */ STRB R0, [R7, 0x2] \n\
/* 0802e5d8 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0802e5da */ LSLS R0, R0, 0x18 \n\
/* 0802e5dc */ LSRS R0, R0, 0x18 \n\
/* 0802e5de */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802e5e0 */ BNE branch_0802e5e4 \n\
/* 0802e5e2 */ MOVS R1, 0xF0 @ Set R1 to 0xF0 \n\
 \n\
branch_0802e5e4: \n\
/* 0802e5e4 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0802e5e6 */ BL func_080180b0 \n\
/* 0802e5ea */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802e5ec */ STRB R0, [R7, 0x3] \n\
/* 0802e5ee */ POP {R3} \n\
/* 0802e5f0 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0802e5f2 */ POP {R4-R7} \n\
/* 0802e5f4 */ POP {R0} \n\
/* 0802e5f6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
