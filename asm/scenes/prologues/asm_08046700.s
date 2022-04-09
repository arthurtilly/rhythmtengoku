asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046700 \n\
/* 08046700 */ PUSH {LR} \n\
/* 08046702 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08046704 */ LDR R0, =D_03005380 \n\
/* 08046706 */ LDR R0, [R0] \n\
/* 08046708 */ LDR R1, =D_030055d0 \n\
/* 0804670a */ LDR R1, [R1] \n\
/* 0804670c */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0804670e */ LDRSH R1, [R1, R3] \n\
/* 08046710 */ LSLS R2, R2, 0x18 \n\
/* 08046712 */ ASRS R2, R2, 0x18 \n\
/* 08046714 */ BL func_0804cebc \n\
/* 08046718 */ POP {R0} \n\
/* 0804671a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
