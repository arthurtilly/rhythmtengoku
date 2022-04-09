asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080180c4 \n\
/* 080180c4 */ PUSH {R4, LR} \n\
/* 080180c6 */ LDR R3, =D_030046a4 \n\
/* 080180c8 */ LDR R1, [R3] \n\
/* 080180ca */ NEGS R2, R0 @ Set R2 to -R0 \n\
/* 080180cc */ LDR R4, =0x4a9 \n\
/* 080180ce */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 080180d0 */ STRB R2, [R1] \n\
/* 080180d2 */ LDR R1, [R3] \n\
/* 080180d4 */ LDR R2, =0x4aa \n\
/* 080180d6 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080180d8 */ STRB R0, [R1] \n\
/* 080180da */ POP {R4} \n\
/* 080180dc */ POP {R0} \n\
/* 080180de */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
