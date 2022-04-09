asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801082c \n\
/* 0801082c */ PUSH {LR} \n\
/* 0801082e */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08010830 */ LDR R1, =D_030055a0 \n\
/* 08010832 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
 \n\
branch_08010834: \n\
/* 08010834 */ LDRB R0, [R1] \n\
/* 08010836 */ CMP R0, R3 @ Check R0 - R3 \n\
/* 08010838 */ BNE branch_08010844 \n\
/* 0801083a */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0801083c */ B branch_0801084e \n\
\n\
.ltorg \n\
 \n\
branch_08010844: \n\
/* 08010844 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08010846 */ ADDS R1, 0x8 @ Add 0x8 to R1 \n\
/* 08010848 */ CMP R2, 0x4 @ Compare R2 and 0x4 \n\
/* 0801084a */ BLE branch_08010834 \n\
/* 0801084c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0801084e: \n\
/* 0801084e */ POP {R1} \n\
/* 08010850 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
