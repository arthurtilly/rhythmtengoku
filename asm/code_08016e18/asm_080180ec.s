asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080180ec \n\
/* 080180ec */ PUSH {R4, LR} \n\
/* 080180ee */ LDR R3, =D_030046a4 \n\
/* 080180f0 */ LDR R1, [R3] \n\
/* 080180f2 */ NEGS R2, R0 @ Set R2 to -R0 \n\
/* 080180f4 */ LDR R4, =0x4ab \n\
/* 080180f6 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 080180f8 */ STRB R2, [R1] \n\
/* 080180fa */ LDR R1, [R3] \n\
/* 080180fc */ LDR R2, =0x4ac \n\
/* 080180fe */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08018100 */ STRB R0, [R1] \n\
/* 08018102 */ POP {R4} \n\
/* 08018104 */ POP {R0} \n\
/* 08018106 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
