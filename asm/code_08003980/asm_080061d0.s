asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080061d0 \n\
/* 080061d0 */ PUSH {R4-R7, LR} \n\
/* 080061d2 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 080061d4 */ PUSH {R7} \n\
/* 080061d6 */ SUB SP, 0xC \n\
/* 080061d8 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 080061da */ LDR R2, [SP, 0x24] \n\
/* 080061dc */ LDR R5, [SP, 0x28] \n\
/* 080061de */ LDR R6, [SP, 0x2C] \n\
/* 080061e0 */ LDR R7, [SP, 0x30] \n\
/* 080061e2 */ LSLS R0, R0, 0x10 \n\
/* 080061e4 */ LSRS R0, R0, 0x10 \n\
/* 080061e6 */ LDRH R4, [R1, 0x4] \n\
/* 080061e8 */ MULS R2, R4 @ Multiply R2 by R4 \n\
/* 080061ea */ ADDS R3, R3, R2 @ Set R3 to R3 + R2 \n\
/* 080061ec */ LSLS R3, R3, 0x1 \n\
/* 080061ee */ LDR R2, [R1] \n\
/* 080061f0 */ ADDS R2, R2, R3 @ Set R2 to R2 + R3 \n\
/* 080061f2 */ STR R5, [SP] \n\
/* 080061f4 */ STR R6, [SP, 0x4] \n\
/* 080061f6 */ STR R7, [SP, 0x8] \n\
/* 080061f8 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080061fa */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 080061fc */ BL func_080055fc \n\
/* 08006200 */ ADD SP, 0xC \n\
/* 08006202 */ POP {R3} \n\
/* 08006204 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08006206 */ POP {R4-R7} \n\
/* 08006208 */ POP {R1} \n\
/* 0800620a */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
