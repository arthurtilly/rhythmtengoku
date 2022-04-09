asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801a860 \n\
/* 0801a860 */ PUSH {R4, LR} \n\
/* 0801a862 */ LDR R4, =D_030046a4 \n\
/* 0801a864 */ LDR R1, [R4] \n\
/* 0801a866 */ LDR R0, [R1, 0x4] \n\
/* 0801a868 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801a86a */ BEQ branch_0801a898 \n\
/* 0801a86c */ LDR R0, [R1, 0x8] \n\
/* 0801a86e */ BL func_0800ac58 \n\
/* 0801a872 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0801a874 */ LDR R0, [R4] \n\
/* 0801a876 */ MOVS R2, 0x88 @ Set R2 to 0x88 \n\
/* 0801a878 */ LSLS R2, R2, 0x1 \n\
/* 0801a87a */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801a87c */ LDRB R0, [R0] \n\
/* 0801a87e */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0801a880 */ BNE branch_0801a884 \n\
/* 0801a882 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
 \n\
branch_0801a884: \n\
/* 0801a884 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0801a886 */ BNE branch_0801a88a \n\
/* 0801a888 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
 \n\
branch_0801a88a: \n\
/* 0801a88a */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0801a88c */ BNE branch_0801a898 \n\
/* 0801a88e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801a890 */ B branch_0801a89a \n\
\n\
.ltorg \n\
 \n\
branch_0801a898: \n\
/* 0801a898 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0801a89a: \n\
/* 0801a89a */ POP {R4} \n\
/* 0801a89c */ POP {R1} \n\
/* 0801a89e */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
