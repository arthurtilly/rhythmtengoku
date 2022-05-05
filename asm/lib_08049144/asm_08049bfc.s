asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08049bfc \n\
/* 08049bfc */ PUSH {R4-R7, LR} \n\
/* 08049bfe */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08049c00 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08049c02 */ ADDS R7, R2, 0x0 @ Set R7 to R2 + 0x0 \n\
/* 08049c04 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08049c06 */ BEQ branch_08049c0a \n\
/* 08049c08 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
 \n\
branch_08049c0a: \n\
/* 08049c0a */ LDR R5, =D_03005b44 \n\
/* 08049c0c */ LDRB R0, [R5] \n\
/* 08049c0e */ CMP R0, R4 @ Check R0 - R4 \n\
/* 08049c10 */ BEQ branch_08049c20 \n\
/* 08049c12 */ BL func_08049bac \n\
/* 08049c16 */ STRB R4, [R5] \n\
/* 08049c18 */ LDR R0, =D_03005620 \n\
/* 08049c1a */ STR R6, [R0] \n\
/* 08049c1c */ LDR R0, =D_03005b28 \n\
/* 08049c1e */ STRB R7, [R0] \n\
 \n\
branch_08049c20: \n\
/* 08049c20 */ POP {R4-R7} \n\
/* 08049c22 */ POP {R0} \n\
/* 08049c24 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
