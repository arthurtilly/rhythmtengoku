asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08035ed0 \n\
/* 08035ed0 */ PUSH {R4, R5, LR} \n\
/* 08035ed2 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08035ed4 */ LDRB R0, [R4, 0x1] \n\
/* 08035ed6 */ LSLS R0, R0, 0x1E \n\
/* 08035ed8 */ LSRS R0, R0, 0x1F \n\
/* 08035eda */ BL func_0803638c \n\
/* 08035ede */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08035ee0 */ LDRB R0, [R4, 0x1] \n\
/* 08035ee2 */ LSLS R0, R0, 0x1E \n\
/* 08035ee4 */ LSRS R0, R0, 0x1F \n\
/* 08035ee6 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08035ee8 */ BL func_080364f4 \n\
/* 08035eec */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08035eee */ BNE branch_08035f02 \n\
/* 08035ef0 */ BL func_08018068 \n\
/* 08035ef4 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08035ef6 */ BLT branch_08035f02 \n\
/* 08035ef8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08035efa */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 08035efc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035efe */ BL func_08017928 \n\
 \n\
branch_08035f02: \n\
/* 08035f02 */ POP {R4, R5} \n\
/* 08035f04 */ POP {R0} \n\
/* 08035f06 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
