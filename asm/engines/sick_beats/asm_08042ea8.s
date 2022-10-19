asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08042ea8 \n\
/* 08042ea8 */ PUSH {R4, LR} \n\
/* 08042eaa */ LDR R1, =D_030055d0 \n\
/* 08042eac */ LDR R3, [R1] \n\
/* 08042eae */ LSRS R2, R0, 0x8 \n\
/* 08042eb0 */ MOVS R4, 0x94 @ Set R4 to 0x94 \n\
/* 08042eb2 */ LSLS R4, R4, 0x1 \n\
/* 08042eb4 */ ADDS R1, R3, R4 @ Set R1 to R3 + R4 \n\
/* 08042eb6 */ STRB R2, [R1] \n\
/* 08042eb8 */ LDR R2, =0x129 \n\
/* 08042eba */ ADDS R1, R3, R2 @ Set R1 to R3 + R2 \n\
/* 08042ebc */ STRB R0, [R1] \n\
/* 08042ebe */ POP {R4} \n\
/* 08042ec0 */ POP {R0} \n\
/* 08042ec2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
