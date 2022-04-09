asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080098c4 \n\
/* 080098c4 */ PUSH {R4, LR} \n\
/* 080098c6 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080098c8 */ LDR R0, [R1] \n\
/* 080098ca */ LDRB R0, [R0] \n\
/* 080098cc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080098ce */ BEQ branch_080098f4 \n\
/* 080098d0 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080098d2 */ BL func_0800a108 \n\
/* 080098d6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080098d8 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 080098da */ BLT branch_080098f4 \n\
/* 080098dc */ LDR R1, =D_089380ac \n\
/* 080098de */ LSLS R0, R4, 0x1 \n\
/* 080098e0 */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 080098e2 */ LSLS R0, R0, 0x2 \n\
/* 080098e4 */ ADDS R1, 0x4 @ Add 0x4 to R1 \n\
/* 080098e6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080098e8 */ LDR R0, [R0] \n\
/* 080098ea */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080098ec */ LDRB R0, [R0] \n\
/* 080098ee */ B branch_080098f6 \n\
\n\
.ltorg \n\
 \n\
branch_080098f4: \n\
/* 080098f4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_080098f6: \n\
/* 080098f6 */ POP {R4} \n\
/* 080098f8 */ POP {R1} \n\
/* 080098fa */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
