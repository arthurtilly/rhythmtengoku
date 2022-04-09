asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08026b24 \n\
/* 08026b24 */ PUSH {LR} \n\
/* 08026b26 */ LDR R1, =0x000003ff \n\
/* 08026b28 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08026b2a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08026b2c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08026b2e */ BL func_08001724 \n\
/* 08026b32 */ POP {R0} \n\
/* 08026b34 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
