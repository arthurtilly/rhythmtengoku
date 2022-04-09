asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080045fc \n\
/* 080045fc */ PUSH {R4, R5, LR} \n\
/* 080045fe */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08004600 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08004602 */ B branch_0800461a \n\
 \n\
branch_08004604: \n\
/* 08004604 */ CMP R0, 0x2E @ Compare R0 and 0x2E \n\
/* 08004606 */ BEQ branch_08004618 \n\
/* 08004608 */ CMP R0, 0x3A @ Compare R0 and 0x3A \n\
/* 0800460a */ BEQ branch_08004618 \n\
/* 0800460c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800460e */ BL func_0800496c \n\
/* 08004612 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08004614 */ BNE branch_08004618 \n\
/* 08004616 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
 \n\
branch_08004618: \n\
/* 08004618 */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
 \n\
branch_0800461a: \n\
/* 0800461a */ LDRB R0, [R4] \n\
/* 0800461c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800461e */ BNE branch_08004604 \n\
/* 08004620 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08004622 */ POP {R4, R5} \n\
/* 08004624 */ POP {R1} \n\
/* 08004626 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
