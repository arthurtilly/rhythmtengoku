asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800acf8 \n\
/* 0800acf8 */ PUSH {R4, LR} \n\
/* 0800acfa */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0800acfc */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800acfe */ BEQ branch_0800ad1a \n\
/* 0800ad00 */ LDRH R0, [R3, 0x8] \n\
/* 0800ad02 */ LSRS R0, R0, 0x1 \n\
/* 0800ad04 */ LDRH R4, [R3, 0x2C] \n\
/* 0800ad06 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 0800ad08 */ STRH R0, [R1] \n\
/* 0800ad0a */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800ad0c */ ADDS R0, 0x2A @ Add 0x2A to R0 \n\
/* 0800ad0e */ LDRB R1, [R0] \n\
/* 0800ad10 */ LDRB R0, [R3, 0xB] \n\
/* 0800ad12 */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0800ad14 */ LDRH R3, [R3, 0x2E] \n\
/* 0800ad16 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0800ad18 */ STRH R0, [R2] \n\
 \n\
branch_0800ad1a: \n\
/* 0800ad1a */ POP {R4} \n\
/* 0800ad1c */ POP {R0} \n\
/* 0800ad1e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
