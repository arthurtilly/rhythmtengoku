asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08017c68 \n\
/* 08017c68 */ PUSH {R4, LR} \n\
/* 08017c6a */ LDR R0, =D_030046a4 \n\
/* 08017c6c */ LDR R0, [R0] \n\
/* 08017c6e */ LDR R0, [R0, 0x18] \n\
/* 08017c70 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017c72 */ BEQ branch_08017c80 \n\
 \n\
branch_08017c74: \n\
/* 08017c74 */ LDR R4, [R0, 0x4] \n\
/* 08017c76 */ BL func_08017b98 \n\
/* 08017c7a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08017c7c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08017c7e */ BNE branch_08017c74 \n\
 \n\
branch_08017c80: \n\
/* 08017c80 */ POP {R4} \n\
/* 08017c82 */ POP {R0} \n\
/* 08017c84 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
