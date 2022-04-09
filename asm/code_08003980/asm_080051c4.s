asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080051c4 \n\
/* 080051c4 */ PUSH {R4, LR} \n\
/* 080051c6 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 080051c8 */ LDRB R0, [R3, 0x7] \n\
/* 080051ca */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080051cc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080051ce */ BEQ branch_080051ea \n\
/* 080051d0 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
 \n\
branch_080051d2: \n\
/* 080051d2 */ LDR R1, [R3, 0x8] \n\
/* 080051d4 */ LSLS R0, R2, 0x1 \n\
/* 080051d6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080051d8 */ STRH R4, [R0] \n\
/* 080051da */ LDR R0, [R3, 0xC] \n\
/* 080051dc */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080051de */ STRB R4, [R0] \n\
/* 080051e0 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 080051e2 */ LDRB R0, [R3, 0x7] \n\
/* 080051e4 */ LSLS R0, R0, 0x4 \n\
/* 080051e6 */ CMP R2, R0 @ Check R2 - R0 \n\
/* 080051e8 */ BCC branch_080051d2 \n\
 \n\
branch_080051ea: \n\
/* 080051ea */ POP {R4} \n\
/* 080051ec */ POP {R0} \n\
/* 080051ee */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
