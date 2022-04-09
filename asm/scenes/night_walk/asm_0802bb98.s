asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802bb98 \n\
/* 0802bb98 */ PUSH {R4, LR} \n\
/* 0802bb9a */ SUB SP, 0xC \n\
/* 0802bb9c */ LDR R0, =D_030055d0 \n\
/* 0802bb9e */ LDR R0, [R0] \n\
/* 0802bba0 */ MOVS R2, 0xD6 @ Set R2 to 0xD6 \n\
/* 0802bba2 */ LSLS R2, R2, 0x2 \n\
/* 0802bba4 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0802bba6 */ LDRB R0, [R0, 0x1] \n\
/* 0802bba8 */ LSLS R0, R0, 0x1F \n\
/* 0802bbaa */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802bbac */ BNE branch_0802bbdc \n\
/* 0802bbae */ LDRB R0, [R1] \n\
/* 0802bbb0 */ LSLS R0, R0, 0x1C \n\
/* 0802bbb2 */ LSRS R4, R0, 0x1C \n\
/* 0802bbb4 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0802bbb6 */ BNE branch_0802bbdc \n\
/* 0802bbb8 */ LDR R0, =D_03005380 \n\
/* 0802bbba */ LDR R0, [R0] \n\
/* 0802bbbc */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802bbbe */ LDRSH R1, [R1, R2] \n\
/* 0802bbc0 */ LDR R2, =D_088c9b98 \n\
/* 0802bbc2 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802bbc4 */ STR R3, [SP] \n\
/* 0802bbc6 */ MOVS R3, 0x5 @ Set R3 to 0x5 \n\
/* 0802bbc8 */ STR R3, [SP, 0x4] \n\
/* 0802bbca */ STR R4, [SP, 0x8] \n\
/* 0802bbcc */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802bbce */ BL func_0804d8f8 \n\
/* 0802bbd2 */ LDR R0, =D_089e37e4 \n\
/* 0802bbd4 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802bbd6 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802bbd8 */ BL func_0802aac0 \n\
 \n\
branch_0802bbdc: \n\
/* 0802bbdc */ ADD SP, 0xC \n\
/* 0802bbde */ POP {R4} \n\
/* 0802bbe0 */ POP {R0} \n\
/* 0802bbe2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
