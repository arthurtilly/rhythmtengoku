asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ad68 \n\
/* 0800ad68 */ PUSH {LR} \n\
/* 0800ad6a */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0800ad6c */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 0800ad6e */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800ad70 */ BEQ branch_0800ad94 \n\
/* 0800ad72 */ LDR R0, [R3] \n\
/* 0800ad74 */ STR R0, [R2, 0x34] \n\
/* 0800ad76 */ LDRB R0, [R3, 0x4] \n\
/* 0800ad78 */ STRB R0, [R2, 0xA] \n\
/* 0800ad7a */ LDRB R0, [R3, 0x5] \n\
/* 0800ad7c */ STRB R0, [R2, 0x6] \n\
/* 0800ad7e */ LDRB R1, [R3, 0x6] \n\
/* 0800ad80 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800ad82 */ ADDS R0, 0x24 @ Add 0x24 to R0 \n\
/* 0800ad84 */ STRB R1, [R0] \n\
/* 0800ad86 */ LDRB R0, [R3, 0x7] \n\
/* 0800ad88 */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 0800ad8a */ ADDS R3, 0x25 @ Add 0x25 to R3 \n\
/* 0800ad8c */ STRB R0, [R3] \n\
/* 0800ad8e */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800ad90 */ BL func_0800aa9c \n\
 \n\
branch_0800ad94: \n\
/* 0800ad94 */ POP {R0} \n\
/* 0800ad96 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
