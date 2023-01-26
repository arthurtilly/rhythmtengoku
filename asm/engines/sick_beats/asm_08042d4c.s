asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08042d4c \n\
/* 08042d4c */ PUSH {LR} \n\
/* 08042d4e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08042d50 */ LDR R0, =D_030055d0 \n\
/* 08042d52 */ LDR R1, [R0] \n\
/* 08042d54 */ LDRB R0, [R1] \n\
/* 08042d56 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08042d58 */ BNE branch_08042d68 \n\
/* 08042d5a */ LDR R3, =0x20e \n\
/* 08042d5c */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 08042d5e */ LDRH R1, [R0] \n\
/* 08042d60 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08042d62 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08042d64 */ BL func_08042cec \n\
 \n\
branch_08042d68: \n\
/* 08042d68 */ POP {R0} \n\
/* 08042d6a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
