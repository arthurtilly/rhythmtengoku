asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800fd60 \n\
/* 0800fd60 */ PUSH {R4, R5, LR} \n\
/* 0800fd62 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800fd64 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0800fd66 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800fd68 */ LDRSB R0, [R4, R0] \n\
/* 0800fd6a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800fd6c */ BLT branch_0800fd82 \n\
/* 0800fd6e */ LDR R0, =D_03005380 \n\
/* 0800fd70 */ LDR R0, [R0] \n\
/* 0800fd72 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0800fd74 */ LDRSH R1, [R4, R2] \n\
/* 0800fd76 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0800fd78 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0800fd7a */ BEQ branch_0800fd7e \n\
/* 0800fd7c */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
 \n\
branch_0800fd7e: \n\
/* 0800fd7e */ BL func_0804dc8c \n\
 \n\
branch_0800fd82: \n\
/* 0800fd82 */ STRB R5, [R4, 0x3] \n\
/* 0800fd84 */ POP {R4, R5} \n\
/* 0800fd86 */ POP {R0} \n\
/* 0800fd88 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
