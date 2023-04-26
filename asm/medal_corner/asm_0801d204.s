asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d204 \n\
/* 0801d204 */ PUSH {LR} \n\
/* 0801d206 */ LDR R1, =gCurrentSceneData \n\
/* 0801d208 */ LDR R1, [R1] \n\
/* 0801d20a */ LDR R1, [R1, 0x14] \n\
/* 0801d20c */ LDR R2, [R1, 0xC] \n\
/* 0801d20e */ LDR R1, =D_030046a8 \n\
/* 0801d210 */ LDR R1, [R1] \n\
/* 0801d212 */ LDR R3, =0x29e \n\
/* 0801d214 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0801d216 */ LSLS R0, R0, 0x4 \n\
/* 0801d218 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801d21a */ LDRB R1, [R1] \n\
/* 0801d21c */ LDRB R0, [R0, 0xC] \n\
/* 0801d21e */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0801d220 */ BCC branch_0801d234 \n\
/* 0801d222 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0801d224 */ B branch_0801d236 \n\
\n\
.ltorg \n\
 \n\
branch_0801d234: \n\
/* 0801d234 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0801d236: \n\
/* 0801d236 */ POP {R1} \n\
/* 0801d238 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
