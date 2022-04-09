asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800bc68 \n\
/* 0800bc68 */ PUSH {R4-R7, LR} \n\
/* 0800bc6a */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0800bc6c */ LDR R7, =D_030053c0 \n\
/* 0800bc6e */ LDRB R1, [R7] \n\
/* 0800bc70 */ LSLS R0, R1, 0x1B \n\
/* 0800bc72 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800bc74 */ BLT branch_0800bcaa \n\
/* 0800bc76 */ LSLS R0, R1, 0x1A \n\
/* 0800bc78 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800bc7a */ BLT branch_0800bcaa \n\
/* 0800bc7c */ BL func_0800c3b8 \n\
/* 0800bc80 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800bc82 */ LSLS R4, R4, 0x10 \n\
/* 0800bc84 */ LSRS R4, R4, 0x10 \n\
/* 0800bc86 */ LDR R5, =func_0800bc58 \n\
/* 0800bc88 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0800bc8a */ BL func_0800c3a4 \n\
/* 0800bc8e */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0800bc90 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800bc92 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0800bc94 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800bc96 */ BL func_0800856c \n\
/* 0800bc9a */ LDRB R0, [R7] \n\
/* 0800bc9c */ LSLS R0, R0, 0x1C \n\
/* 0800bc9e */ LSRS R0, R0, 0x1C \n\
/* 0800bca0 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0800bca2 */ BNE branch_0800bcaa \n\
/* 0800bca4 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800bca6 */ BL func_0800c3ec \n\
 \n\
branch_0800bcaa: \n\
/* 0800bcaa */ POP {R4-R7} \n\
/* 0800bcac */ POP {R0} \n\
/* 0800bcae */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
