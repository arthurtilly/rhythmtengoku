asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800496c \n\
/* 0800496c */ PUSH {LR} \n\
/* 0800496e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08004970 */ LDRB R0, [R1] \n\
/* 08004972 */ CMP R0, 0x81 @ Compare R0 and 0x81 \n\
/* 08004974 */ BNE branch_0800497c \n\
/* 08004976 */ LDRB R0, [R1, 0x1] \n\
/* 08004978 */ CMP R0, 0x40 @ Compare R0 and 0x40 \n\
/* 0800497a */ BEQ branch_08004994 \n\
 \n\
branch_0800497c: \n\
/* 0800497c */ LDRB R0, [R1] \n\
/* 0800497e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08004980 */ CMP R2, 0x20 @ Compare R2 and 0x20 \n\
/* 08004982 */ BNE branch_0800498a \n\
/* 08004984 */ LDRB R0, [R1, 0x1] \n\
/* 08004986 */ CMP R0, 0x20 @ Compare R0 and 0x20 \n\
/* 08004988 */ BEQ branch_08004994 \n\
 \n\
branch_0800498a: \n\
/* 0800498a */ CMP R2, 0x81 @ Compare R2 and 0x81 \n\
/* 0800498c */ BNE branch_08004998 \n\
/* 0800498e */ LDRB R0, [R1, 0x1] \n\
/* 08004990 */ CMP R0, 0x51 @ Compare R0 and 0x51 \n\
/* 08004992 */ BNE branch_08004998 \n\
 \n\
branch_08004994: \n\
/* 08004994 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08004996 */ B branch_0800499a \n\
 \n\
branch_08004998: \n\
/* 08004998 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0800499a: \n\
/* 0800499a */ POP {R1} \n\
/* 0800499c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
