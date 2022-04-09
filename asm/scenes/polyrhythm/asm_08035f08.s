asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08035f08 \n\
/* 08035f08 */ PUSH {R4, R5, LR} \n\
/* 08035f0a */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08035f0c */ LDRB R0, [R4, 0x1] \n\
/* 08035f0e */ LSLS R0, R0, 0x1E \n\
/* 08035f10 */ LSRS R0, R0, 0x1F \n\
/* 08035f12 */ BL func_0803638c \n\
/* 08035f16 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 08035f18 */ LDRB R0, [R4, 0x1] \n\
/* 08035f1a */ LSLS R0, R0, 0x1E \n\
/* 08035f1c */ LSRS R0, R0, 0x1F \n\
/* 08035f1e */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 08035f20 */ BL func_080364f4 \n\
/* 08035f24 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08035f26 */ BNE branch_08035f3a \n\
/* 08035f28 */ BL func_08018068 \n\
/* 08035f2c */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 08035f2e */ BLT branch_08035f3a \n\
/* 08035f30 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08035f32 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 08035f34 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035f36 */ BL func_08017928 \n\
 \n\
branch_08035f3a: \n\
/* 08035f3a */ POP {R4, R5} \n\
/* 08035f3c */ POP {R0} \n\
/* 08035f3e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
