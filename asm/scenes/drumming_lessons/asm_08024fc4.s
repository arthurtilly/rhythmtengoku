asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08024fc4 \n\
/* 08024fc4 */ PUSH {LR} \n\
/* 08024fc6 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08024fc8 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08024fca */ BGE branch_08024fce \n\
/* 08024fcc */ NEGS R2, R2 @ Set R2 to -R2 \n\
 \n\
branch_08024fce: \n\
/* 08024fce */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 08024fd0 */ BGT branch_08024fe0 \n\
/* 08024fd2 */ LDRB R1, [R1] \n\
/* 08024fd4 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08024fd6 */ BNE branch_08024fdc \n\
/* 08024fd8 */ STRB R1, [R3, 0x2] \n\
/* 08024fda */ B branch_08024ff0 \n\
 \n\
branch_08024fdc: \n\
/* 08024fdc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08024fde */ B branch_08024fee \n\
 \n\
branch_08024fe0: \n\
/* 08024fe0 */ LDRB R0, [R1] \n\
/* 08024fe2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08024fe4 */ BNE branch_08024fec \n\
/* 08024fe6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08024fe8 */ STRB R0, [R3, 0x2] \n\
/* 08024fea */ B branch_08024ff0 \n\
 \n\
branch_08024fec: \n\
/* 08024fec */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08024fee: \n\
/* 08024fee */ STRB R0, [R3, 0x3] \n\
 \n\
branch_08024ff0: \n\
/* 08024ff0 */ POP {R0} \n\
/* 08024ff2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
