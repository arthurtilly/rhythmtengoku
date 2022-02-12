asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080290c4 \n\
/* 080290c4 */ PUSH {R4, R5, LR} \n\
/* 080290c6 */ LDR R5, =D_030055d0 \n\
/* 080290c8 */ LDR R0, [R5] \n\
/* 080290ca */ LDR R1, =0x000003cd \n\
/* 080290cc */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080290ce */ LDRB R4, [R0] \n\
/* 080290d0 */ LDR R0, =D_08a9b85c \n\
/* 080290d2 */ BL func_08002634 \n\
/* 080290d6 */ LDR R0, [R5] \n\
/* 080290d8 */ LDR R2, =0x000003ce \n\
/* 080290da */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080290dc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080290de */ STRB R1, [R0] \n\
/* 080290e0 */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 080290e2 */ BNE branch_08029120 \n\
/* 080290e4 */ LDR R1, [R5] \n\
/* 080290e6 */ SUBS R2, 0x6 @ Subtract 0x6 from R2 \n\
/* 080290e8 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080290ea */ LDR R0, [R0] \n\
/* 080290ec */ LDRB R0, [R0] \n\
/* 080290ee */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080290f0 */ BNE branch_08029120 \n\
/* 080290f2 */ LDR R2, =0x0000057c \n\
/* 080290f4 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080290f6 */ LDR R1, [R0] \n\
/* 080290f8 */ MOVS R0, 0x96 @ Set R0 to 0x96 \n\
/* 080290fa */ LSLS R0, R0, 0x1 \n\
/* 080290fc */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080290fe */ BLS branch_08029120 \n\
/* 08029100 */ LDR R0, =D_089e2b04 \n\
/* 08029102 */ BL func_0801d968 \n\
/* 08029106 */ B branch_08029144 \n\
\n\
.ltorg \n\
 \n\
branch_08029120: \n\
/* 08029120 */ LDR R0, =D_030055d0 \n\
/* 08029122 */ LDR R0, [R0] \n\
/* 08029124 */ LDR R1, =0x000003cd \n\
/* 08029126 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08029128 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0802912a */ STRB R1, [R0] \n\
/* 0802912c */ LDR R1, =0x000003ff \n\
/* 0802912e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08029130 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08029132 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08029134 */ BL func_08001724 \n\
/* 08029138 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802913a */ BL func_0800bd04 \n\
/* 0802913e */ LDR R0, =D_089e2ad4 \n\
/* 08029140 */ BL func_0801d968 \n\
 \n\
branch_08029144: \n\
/* 08029144 */ LDR R0, =D_030055d0 \n\
/* 08029146 */ LDR R1, [R0] \n\
/* 08029148 */ LDRB R0, [R1] \n\
/* 0802914a */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 0802914c */ BNE branch_08029160 \n\
/* 0802914e */ MOVS R2, 0xAF @ Set R2 to 0xAF \n\
/* 08029150 */ LSLS R2, R2, 0x3 \n\
/* 08029152 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 08029154 */ LDR R0, [R0] \n\
/* 08029156 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08029158 */ BEQ branch_08029160 \n\
/* 0802915a */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 0802915c */ BL func_080028d8 \n\
 \n\
branch_08029160: \n\
/* 08029160 */ POP {R4, R5} \n\
/* 08029162 */ POP {R0} \n\
/* 08029164 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
