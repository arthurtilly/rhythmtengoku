asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08006a8c \n\
/* 08006a8c */ PUSH {R4, LR} \n\
/* 08006a8e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08006a90 */ LDRH R0, [R4, 0x1C] \n\
/* 08006a92 */ LSLS R0, R0, 0x14 \n\
/* 08006a94 */ LSRS R0, R0, 0x14 \n\
/* 08006a96 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08006a98 */ BNE branch_08006ab6 \n\
/* 08006a9a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08006a9c */ BL func_080069d4 \n\
/* 08006aa0 */ LDR R2, [R4, 0x28] \n\
/* 08006aa2 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08006aa4 */ BEQ branch_08006aae \n\
/* 08006aa6 */ LDR R1, [R4, 0x2C] \n\
/* 08006aa8 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08006aaa */ BL _call_via_r2 \n\
 \n\
branch_08006aae: \n\
/* 08006aae */ LDRH R1, [R4, 0x1C] \n\
/* 08006ab0 */ LDR R0, =0xfffff000 \n\
/* 08006ab2 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08006ab4 */ STRH R0, [R4, 0x1C] \n\
 \n\
branch_08006ab6: \n\
/* 08006ab6 */ POP {R4} \n\
/* 08006ab8 */ POP {R0} \n\
/* 08006aba */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
