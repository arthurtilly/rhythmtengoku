asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080022f4 \n\
/* 080022f4 */ PUSH {LR} \n\
/* 080022f6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080022f8 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080022fa */ BLT branch_08002308 \n\
/* 080022fc */ LDR R0, =D_03000340 \n\
/* 080022fe */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 08002300 */ LDRB R2, [R0] \n\
/* 08002302 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 08002304 */ ORRS R1, R2 @ Set R1 to R1 | R2 \n\
/* 08002306 */ STRB R1, [R0] \n\
 \n\
branch_08002308: \n\
/* 08002308 */ POP {R0} \n\
/* 0800230a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
