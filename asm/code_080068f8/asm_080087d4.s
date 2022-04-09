asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080087d4 \n\
/* 080087d4 */ PUSH {LR} \n\
/* 080087d6 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 080087d8 */ BGE branch_080087de \n\
/* 080087da */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 080087dc */ B branch_080087e4 \n\
 \n\
branch_080087de: \n\
/* 080087de */ CMP R0, R2 @ Check R0 - R2 \n\
/* 080087e0 */ BLE branch_080087e4 \n\
/* 080087e2 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
 \n\
branch_080087e4: \n\
/* 080087e4 */ POP {R1} \n\
/* 080087e6 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
