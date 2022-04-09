asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800222c \n\
/* 0800222c */ PUSH {R4-R6, LR} \n\
/* 0800222e */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08002230 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08002232 */ LDR R5, =D_03000368 \n\
 \n\
branch_08002234: \n\
/* 08002234 */ LDR R0, =D_03000340 \n\
/* 08002236 */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 08002238 */ LDRB R0, [R0] \n\
/* 0800223a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800223c */ BEQ branch_0800224a \n\
/* 0800223e */ LDR R0, [R5] \n\
/* 08002240 */ CMP R0, R6 @ Check R0 - R6 \n\
/* 08002242 */ BNE branch_0800224a \n\
/* 08002244 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08002246 */ BL func_080021b8 \n\
 \n\
branch_0800224a: \n\
/* 0800224a */ ADDS R5, 0x4 @ Add 0x4 to R5 \n\
/* 0800224c */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0800224e */ CMP R4, 0x1F @ Compare R4 and 0x1F \n\
/* 08002250 */ BLE branch_08002234 \n\
/* 08002252 */ POP {R4-R6} \n\
/* 08002254 */ POP {R0} \n\
/* 08002256 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
