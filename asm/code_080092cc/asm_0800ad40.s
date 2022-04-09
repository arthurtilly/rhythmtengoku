asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ad40 \n\
/* 0800ad40 */ PUSH {LR} \n\
/* 0800ad42 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0800ad44 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800ad46 */ BEQ branch_0800ad64 \n\
/* 0800ad48 */ LDR R0, [R2, 0x34] \n\
/* 0800ad4a */ STR R0, [R1] \n\
/* 0800ad4c */ LDRB R0, [R2, 0xA] \n\
/* 0800ad4e */ STRB R0, [R1, 0x4] \n\
/* 0800ad50 */ LDRB R0, [R2, 0x6] \n\
/* 0800ad52 */ STRB R0, [R1, 0x5] \n\
/* 0800ad54 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800ad56 */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0800ad58 */ LDRB R0, [R0] \n\
/* 0800ad5a */ STRB R0, [R1, 0x6] \n\
/* 0800ad5c */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800ad5e */ ADDS R0, 0x25 @ Add 0x25 to R0 \n\
/* 0800ad60 */ LDRB R0, [R0] \n\
/* 0800ad62 */ STRB R0, [R1, 0x7] \n\
 \n\
branch_0800ad64: \n\
/* 0800ad64 */ POP {R0} \n\
/* 0800ad66 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
