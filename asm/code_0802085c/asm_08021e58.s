asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08021e58 \n\
/* 08021e58 */ PUSH {LR} \n\
/* 08021e5a */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08021e5c */ LDRH R0, [R1, 0x6] \n\
/* 08021e5e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08021e60 */ BEQ branch_08021e66 \n\
/* 08021e62 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08021e64 */ STRH R0, [R1, 0x6] \n\
 \n\
branch_08021e66: \n\
/* 08021e66 */ LDRH R0, [R1, 0x8] \n\
/* 08021e68 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08021e6a */ BEQ branch_08021e70 \n\
/* 08021e6c */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08021e6e */ STRH R0, [R1, 0x8] \n\
 \n\
branch_08021e70: \n\
/* 08021e70 */ LDRH R0, [R1, 0xA] \n\
/* 08021e72 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08021e74 */ BEQ branch_08021e7a \n\
/* 08021e76 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08021e78 */ STRH R0, [R1, 0xA] \n\
 \n\
branch_08021e7a: \n\
/* 08021e7a */ LDRH R0, [R1, 0xC] \n\
/* 08021e7c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08021e7e */ BEQ branch_08021e84 \n\
/* 08021e80 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08021e82 */ STRH R0, [R1, 0xC] \n\
 \n\
branch_08021e84: \n\
/* 08021e84 */ POP {R0} \n\
/* 08021e86 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
