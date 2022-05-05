asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080493c8 \n\
/* 080493c8 */ PUSH {R4, LR} \n\
/* 080493ca */ LDR R4, =D_03005b88 \n\
/* 080493cc */ LDR R3, [R4] \n\
/* 080493ce */ LSLS R0, R0, 0x5 \n\
/* 080493d0 */ ADDS R3, R0, R3 @ Set R3 to R0 + R3 \n\
/* 080493d2 */ STRB R1, [R3, 0x2] \n\
/* 080493d4 */ LDR R1, [R4] \n\
/* 080493d6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080493d8 */ STRB R2, [R0, 0x3] \n\
/* 080493da */ POP {R4} \n\
/* 080493dc */ POP {R0} \n\
/* 080493de */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
