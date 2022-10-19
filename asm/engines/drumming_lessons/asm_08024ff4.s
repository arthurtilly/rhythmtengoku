asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08024ff4 \n\
/* 08024ff4 */ PUSH {LR} \n\
/* 08024ff6 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08024ff8 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08024ffa */ BGE branch_0802500c \n\
/* 08024ffc */ LDRB R0, [R1] \n\
/* 08024ffe */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08025000 */ BNE branch_08025008 \n\
/* 08025002 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08025004 */ STRB R0, [R3, 0x2] \n\
/* 08025006 */ B branch_0802501c \n\
 \n\
branch_08025008: \n\
/* 08025008 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0802500a */ B branch_0802501a \n\
 \n\
branch_0802500c: \n\
/* 0802500c */ LDRB R0, [R1] \n\
/* 0802500e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08025010 */ BNE branch_08025018 \n\
/* 08025012 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08025014 */ STRB R0, [R3, 0x2] \n\
/* 08025016 */ B branch_0802501c \n\
 \n\
branch_08025018: \n\
/* 08025018 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
 \n\
branch_0802501a: \n\
/* 0802501a */ STRB R0, [R3, 0x3] \n\
 \n\
branch_0802501c: \n\
/* 0802501c */ POP {R0} \n\
/* 0802501e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
