asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002260 \n\
/* 08002260 */ PUSH {LR} \n\
/* 08002262 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08002264 */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 08002266 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08002268 */ BLT branch_08002278 \n\
/* 0800226a */ LDR R0, =D_03000340 \n\
/* 0800226c */ ADDS R0, R2, R0 @ Set R0 to R2 + R0 \n\
/* 0800226e */ LDRB R2, [R0] \n\
/* 08002270 */ MOVS R1, 0xF9 @ Set R1 to 0xF9 \n\
/* 08002272 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08002274 */ ORRS R1, R3 @ Set R1 to R1 | R3 \n\
/* 08002276 */ STRB R1, [R0] \n\
 \n\
branch_08002278: \n\
/* 08002278 */ POP {R0} \n\
/* 0800227a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
