asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803a164 \n\
/* 0803a164 */ PUSH {R4, LR} \n\
/* 0803a166 */ BL func_0800c398 \n\
/* 0803a16a */ LDR R1, =gCurrentEngineData \n\
/* 0803a16c */ LDR R4, [R1] \n\
/* 0803a16e */ LDR R1, [R4, 0x20] \n\
/* 0803a170 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0803a172 */ STR R1, [R4, 0x20] \n\
/* 0803a174 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0803a176 */ BGT branch_0803a184 \n\
/* 0803a178 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803a17a */ STR R0, [R4, 0x20] \n\
/* 0803a17c */ B branch_0803a190 \n\
\n\
.ltorg \n\
 \n\
branch_0803a184: \n\
/* 0803a184 */ LSLS R0, R1, 0x1 \n\
/* 0803a186 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803a188 */ LSLS R0, R0, 0x9 \n\
/* 0803a18a */ LDR R1, [R4, 0x24] \n\
/* 0803a18c */ BL __divsi3 \n\
 \n\
branch_0803a190: \n\
/* 0803a190 */ STR R0, [R4, 0x28] \n\
/* 0803a192 */ POP {R4} \n\
/* 0803a194 */ POP {R0} \n\
/* 0803a196 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
