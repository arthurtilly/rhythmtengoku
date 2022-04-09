asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801e0c8 \n\
/* 0801e0c8 */ PUSH {R4, LR} \n\
/* 0801e0ca */ LDR R4, =D_030046a4 \n\
/* 0801e0cc */ LDR R1, [R4] \n\
/* 0801e0ce */ LDR R0, [R1] \n\
/* 0801e0d0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801e0d2 */ BEQ branch_0801e0f2 \n\
/* 0801e0d4 */ LDR R0, =D_03004afc \n\
/* 0801e0d6 */ LDRH R0, [R0] \n\
/* 0801e0d8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801e0da */ BNE branch_0801e0e6 \n\
/* 0801e0dc */ LDR R0, [R1, 0x4] \n\
/* 0801e0de */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0801e0e0 */ STR R0, [R1, 0x4] \n\
/* 0801e0e2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801e0e4 */ BNE branch_0801e0f2 \n\
 \n\
branch_0801e0e6: \n\
/* 0801e0e6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e0e8 */ BL func_0800bd04 \n\
/* 0801e0ec */ LDR R1, [R4] \n\
/* 0801e0ee */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801e0f0 */ STR R0, [R1] \n\
 \n\
branch_0801e0f2: \n\
/* 0801e0f2 */ POP {R4} \n\
/* 0801e0f4 */ POP {R0} \n\
/* 0801e0f6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
