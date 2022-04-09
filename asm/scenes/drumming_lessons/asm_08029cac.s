asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08029cac \n\
/* 08029cac */ PUSH {R4-R6, LR} \n\
/* 08029cae */ SUB SP, 0x4 \n\
/* 08029cb0 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08029cb2 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08029cb4 */ LSLS R6, R6, 0x10 \n\
/* 08029cb6 */ LSRS R6, R6, 0x10 \n\
/* 08029cb8 */ LSLS R4, R4, 0x10 \n\
/* 08029cba */ LSRS R4, R4, 0x10 \n\
/* 08029cbc */ LSLS R3, R3, 0x10 \n\
/* 08029cbe */ LSRS R3, R3, 0x10 \n\
/* 08029cc0 */ LDR R1, =D_089e29c8 \n\
/* 08029cc2 */ LSLS R0, R0, 0x2 \n\
/* 08029cc4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08029cc6 */ LDR R5, [R0] \n\
/* 08029cc8 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08029cca */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08029ccc */ STR R3, [SP] \n\
/* 08029cce */ BL func_0802ad2c \n\
/* 08029cd2 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08029cd4 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08029cd6 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08029cd8 */ LDR R3, [SP] \n\
/* 08029cda */ BL func_0802afb0 \n\
/* 08029cde */ ADD SP, 0x4 \n\
/* 08029ce0 */ POP {R4-R6} \n\
/* 08029ce2 */ POP {R0} \n\
/* 08029ce4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
