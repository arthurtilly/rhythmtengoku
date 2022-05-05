asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804b348 \n\
/* 0804b348 */ PUSH {LR} \n\
/* 0804b34a */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0804b34c */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804b34e */ LDRB R0, [R2] \n\
/* 0804b350 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804b352 */ BEQ branch_0804b362 \n\
 \n\
branch_0804b354: \n\
/* 0804b354 */ ADDS R0, R1, 0x1 @ Set R0 to R1 + 0x1 \n\
/* 0804b356 */ LSLS R0, R0, 0x18 \n\
/* 0804b358 */ LSRS R1, R0, 0x18 \n\
/* 0804b35a */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0804b35c */ LDRB R0, [R0] \n\
/* 0804b35e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804b360 */ BNE branch_0804b354 \n\
 \n\
branch_0804b362: \n\
/* 0804b362 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0804b364 */ POP {R1} \n\
/* 0804b366 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
