asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801b9ec \n\
/* 0801b9ec */ PUSH {R4-R6, LR} \n\
/* 0801b9ee */ SUB SP, 0x10 \n\
/* 0801b9f0 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0801b9f2 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0801b9f4 */ BLT branch_0801ba0c \n\
/* 0801b9f6 */ LDR R0, =D_089d8444 \n\
/* 0801b9f8 */ LDR R6, =gCurrentSceneData \n\
/* 0801b9fa */ LDR R1, [R6] \n\
/* 0801b9fc */ MOVS R2, 0xDD @ Set R2 to 0xDD \n\
/* 0801b9fe */ LSLS R2, R2, 0x2 \n\
/* 0801ba00 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801ba02 */ LDRB R1, [R1] \n\
/* 0801ba04 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0801ba06 */ LDRB R1, [R1] \n\
/* 0801ba08 */ CMP R5, R1 @ Check R5 - R1 \n\
/* 0801ba0a */ BLT branch_0801ba18 \n\
 \n\
branch_0801ba0c: \n\
/* 0801ba0c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801ba0e */ B branch_0801ba50 \n\
\n\
.ltorg \n\
 \n\
branch_0801ba18: \n\
/* 0801ba18 */ ADDS R1, R5, 0x1 @ Set R1 to R5 + 0x1 \n\
/* 0801ba1a */ MOV R0, SP @ Set R0 to SP \n\
/* 0801ba1c */ BL strint \n\
/* 0801ba20 */ LDR R1, [R6] \n\
/* 0801ba22 */ MOVS R4, 0xE3 @ Set R4 to 0xE3 \n\
/* 0801ba24 */ LSLS R4, R4, 0x2 \n\
/* 0801ba26 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 0801ba28 */ LDR R0, =text_studio_option_default \n\
/* 0801ba2a */ LDRB R0, [R0] \n\
/* 0801ba2c */ STRB R0, [R1] \n\
/* 0801ba2e */ LDR R1, [R6] \n\
/* 0801ba30 */ ADDS R0, R1, R4 @ Set R0 to R1 + R4 \n\
/* 0801ba32 */ LDR R2, =studio_options_text \n\
/* 0801ba34 */ MOVS R3, 0xDD @ Set R3 to 0xDD \n\
/* 0801ba36 */ LSLS R3, R3, 0x2 \n\
/* 0801ba38 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 0801ba3a */ LDRB R1, [R1] \n\
/* 0801ba3c */ LSLS R1, R1, 0x2 \n\
/* 0801ba3e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801ba40 */ LDR R2, [R1] \n\
/* 0801ba42 */ LSLS R1, R5, 0x2 \n\
/* 0801ba44 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801ba46 */ LDR R1, [R1] \n\
/* 0801ba48 */ BL strcat \n\
/* 0801ba4c */ LDR R0, [R6] \n\
/* 0801ba4e */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
 \n\
branch_0801ba50: \n\
/* 0801ba50 */ ADD SP, 0x10 \n\
/* 0801ba52 */ POP {R4-R6} \n\
/* 0801ba54 */ POP {R1} \n\
/* 0801ba56 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
