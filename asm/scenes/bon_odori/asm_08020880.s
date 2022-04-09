asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08020880 \n\
/* 08020880 */ PUSH {LR} \n\
/* 08020882 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08020884 */ BL func_0800c604 \n\
/* 08020888 */ BL func_0800c3b8 \n\
/* 0802088c */ LSLS R0, R0, 0x10 \n\
/* 0802088e */ LSRS R0, R0, 0x10 \n\
/* 08020890 */ LDR R2, =D_089deec4 \n\
/* 08020892 */ LDR R1, =D_030055d0 \n\
/* 08020894 */ LDR R1, [R1] \n\
/* 08020896 */ LDRB R1, [R1] \n\
/* 08020898 */ LSLS R1, R1, 0x2 \n\
/* 0802089a */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802089c */ LDR R1, [R1] \n\
/* 0802089e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080208a0 */ LSLS R2, R2, 0x6 \n\
/* 080208a2 */ BL func_08002ee0 \n\
/* 080208a6 */ LDR R1, =func_0802085c \n\
/* 080208a8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080208aa */ BL func_08005d38 \n\
/* 080208ae */ POP {R0} \n\
/* 080208b0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
