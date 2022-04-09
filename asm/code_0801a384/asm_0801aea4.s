asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801aea4 \n\
/* 0801aea4 */ PUSH {R4, R5, LR} \n\
/* 0801aea6 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0801aea8 */ CMP R0, R5 @ Check R0 - R5 \n\
/* 0801aeaa */ BLE branch_0801aec6 \n\
 \n\
branch_0801aeac: \n\
/* 0801aeac */ SUBS R4, R0, 0x1 @ Set R4 to R0 - 0x1 \n\
/* 0801aeae */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801aeb0 */ BL func_0801ae34 \n\
/* 0801aeb4 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801aeb6 */ CMP R0, R5 @ Check R0 - R5 \n\
/* 0801aeb8 */ BGT branch_0801aeac \n\
/* 0801aeba */ B branch_0801aeca \n\
 \n\
branch_0801aebc: \n\
/* 0801aebc */ ADDS R4, R0, 0x1 @ Set R4 to R0 + 0x1 \n\
/* 0801aebe */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801aec0 */ BL func_0801ae34 \n\
/* 0801aec4 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
 \n\
branch_0801aec6: \n\
/* 0801aec6 */ CMP R0, R5 @ Check R0 - R5 \n\
/* 0801aec8 */ BLT branch_0801aebc \n\
 \n\
branch_0801aeca: \n\
/* 0801aeca */ POP {R4, R5} \n\
/* 0801aecc */ POP {R0} \n\
/* 0801aece */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
