asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800e9f8 \n\
/* 0800e9f8 */ PUSH {LR} \n\
/* 0800e9fa */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0800e9fc */ BL func_0800c0c4 \n\
/* 0800ea00 */ LDR R2, =D_030053c0 \n\
/* 0800ea02 */ LDRB R1, [R2, 0x1] \n\
/* 0800ea04 */ MOVS R0, 0x11 @ Set R0 to 0x11 \n\
/* 0800ea06 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800ea08 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800ea0a */ MOVS R1, 0x21 @ Set R1 to 0x21 \n\
/* 0800ea0c */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0800ea0e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800ea10 */ STRB R0, [R2, 0x1] \n\
/* 0800ea12 */ POP {R0} \n\
/* 0800ea14 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
