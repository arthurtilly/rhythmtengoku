asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08036428 \n\
/* 08036428 */ PUSH {LR} \n\
/* 0803642a */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0803642c */ LDR R1, =gCurrentEngineData \n\
/* 0803642e */ LSLS R0, R0, 0x7 \n\
/* 08036430 */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 08036432 */ LDR R1, [R1] \n\
/* 08036434 */ ADDS R3, R1, R0 @ Set R3 to R1 + R0 \n\
/* 08036436 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08036438 */ BGE branch_0803643c \n\
/* 0803643a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
 \n\
branch_0803643c: \n\
/* 0803643c */ ADDS R1, R2, 0x1 @ Set R1 to R2 + 0x1 \n\
/* 0803643e */ CMP R1, 0xF @ Compare R1 and 0xF \n\
/* 08036440 */ BGT branch_08036462 \n\
/* 08036442 */ LSLS R0, R1, 0x3 \n\
/* 08036444 */ ADDS R2, R0, R3 @ Set R2 to R0 + R3 \n\
/* 08036446 */ B branch_08036454 \n\
\n\
.ltorg \n\
 \n\
branch_0803644c: \n\
/* 0803644c */ ADDS R2, 0x8 @ Add 0x8 to R2 \n\
/* 0803644e */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08036450 */ CMP R1, 0xF @ Compare R1 and 0xF \n\
/* 08036452 */ BGT branch_08036462 \n\
 \n\
branch_08036454: \n\
/* 08036454 */ LDRB R0, [R2] \n\
/* 08036456 */ LSLS R0, R0, 0x1A \n\
/* 08036458 */ LSRS R0, R0, 0x1D \n\
/* 0803645a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803645c */ BEQ branch_0803644c \n\
/* 0803645e */ CMP R1, 0xF @ Compare R1 and 0xF \n\
/* 08036460 */ BLE branch_08036464 \n\
 \n\
branch_08036462: \n\
/* 08036462 */ MOVS R1, 0xF @ Set R1 to 0xF \n\
 \n\
branch_08036464: \n\
/* 08036464 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08036466 */ POP {R1} \n\
/* 08036468 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
