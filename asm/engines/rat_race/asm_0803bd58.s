asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803bd58 \n\
/* 0803bd58 */ PUSH {R4, R5, LR} \n\
/* 0803bd5a */ LDR R0, =gCurrentEngineData \n\
/* 0803bd5c */ LDR R0, [R0] \n\
/* 0803bd5e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803bd60 */ ADDS R4, 0xEC @ Add 0xEC to R4 \n\
/* 0803bd62 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_0803bd64: \n\
/* 0803bd64 */ LDRB R0, [R4, 0x2] \n\
/* 0803bd66 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803bd68 */ BEQ branch_0803bd70 \n\
/* 0803bd6a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0803bd6c */ BL func_0803bd0c \n\
 \n\
branch_0803bd70: \n\
/* 0803bd70 */ ADDS R0, R5, 0x1 @ Set R0 to R5 + 0x1 \n\
/* 0803bd72 */ LSLS R0, R0, 0x18 \n\
/* 0803bd74 */ LSRS R5, R0, 0x18 \n\
/* 0803bd76 */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
/* 0803bd78 */ CMP R5, 0x5 @ Compare R5 and 0x5 \n\
/* 0803bd7a */ BLS branch_0803bd64 \n\
/* 0803bd7c */ POP {R4, R5} \n\
/* 0803bd7e */ POP {R0} \n\
/* 0803bd80 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
