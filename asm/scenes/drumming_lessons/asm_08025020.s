asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08025020 \n\
/* 08025020 */ PUSH {LR} \n\
/* 08025022 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08025024 */ LDRB R0, [R1] \n\
/* 08025026 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08025028 */ BNE branch_08025030 \n\
/* 0802502a */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0802502c */ STRB R0, [R2, 0x2] \n\
/* 0802502e */ B branch_08025034 \n\
 \n\
branch_08025030: \n\
/* 08025030 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08025032 */ STRB R0, [R2, 0x3] \n\
 \n\
branch_08025034: \n\
/* 08025034 */ POP {R0} \n\
/* 08025036 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
