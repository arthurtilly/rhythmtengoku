asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08020644 \n\
/* 08020644 */ LDR R0, =D_030055d0 \n\
/* 08020646 */ LDR R2, [R0] \n\
/* 08020648 */ MOVS R0, 0xAC @ Set R0 to 0xAC \n\
/* 0802064a */ LSLS R0, R0, 0x1 \n\
/* 0802064c */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0802064e */ LDRB R0, [R2] \n\
/* 08020650 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08020652 */ STRB R0, [R2] \n\
/* 08020654 */ ADDS R1, 0x28 @ Add 0x28 to R1 \n\
/* 08020656 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08020658 */ STRB R0, [R1] \n\
/* 0802065a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
