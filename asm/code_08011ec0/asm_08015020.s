asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08015020 \n\
/* 08015020 */ PUSH {R4, LR} \n\
/* 08015022 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08015024 */ LDR R4, =D_030046a4 \n\
/* 08015026 */ LDR R0, [R4] \n\
/* 08015028 */ LDR R0, [R0, 0x38] \n\
/* 0801502a */ LDR R1, [R1, 0x8] \n\
/* 0801502c */ BL func_0800aa4c \n\
/* 08015030 */ LDR R0, [R4] \n\
/* 08015032 */ ADDS R0, 0x3E @ Add 0x3E to R0 \n\
/* 08015034 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08015036 */ STRB R1, [R0] \n\
/* 08015038 */ POP {R4} \n\
/* 0801503a */ POP {R0} \n\
/* 0801503c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
