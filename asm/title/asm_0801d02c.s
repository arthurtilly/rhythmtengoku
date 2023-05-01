asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d02c \n\
/* 0801d02c */ PUSH {R4-R6, LR} \n\
/* 0801d02e */ LDR R6, =gCurrentSceneData \n\
/* 0801d030 */ LDR R1, [R6] \n\
/* 0801d032 */ LDR R0, [R1, 0x4] \n\
/* 0801d034 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801d036 */ BEQ branch_0801d05a \n\
/* 0801d038 */ SUBS R5, R0, 0x1 @ Set R5 to R0 - 0x1 \n\
/* 0801d03a */ STR R5, [R1, 0x4] \n\
/* 0801d03c */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0801d03e */ BNE branch_0801d05a \n\
/* 0801d040 */ LDR R4, =D_089d3984 \n\
/* 0801d042 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801d044 */ BL func_08000584 \n\
/* 0801d048 */ LDR R1, =scene_riq_title \n\
/* 0801d04a */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0801d04c */ BL func_080006b0 \n\
/* 0801d050 */ LDR R0, =D_089dcff0 \n\
/* 0801d052 */ BL func_0801d968 \n\
/* 0801d056 */ LDR R0, [R6] \n\
/* 0801d058 */ STR R5, [R0] \n\
 \n\
branch_0801d05a: \n\
/* 0801d05a */ BL func_0801d08c \n\
/* 0801d05e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801d060 */ BEQ branch_0801d066 \n\
/* 0801d062 */ BL func_0801cfa8 \n\
 \n\
branch_0801d066: \n\
/* 0801d066 */ BL func_0801cc84 \n\
/* 0801d06a */ LDR R0, =gCurrentSceneData \n\
/* 0801d06c */ LDR R0, [R0] \n\
/* 0801d06e */ LDR R0, [R0, 0x8] \n\
/* 0801d070 */ BL text_printer_update \n\
/* 0801d074 */ POP {R4-R6} \n\
/* 0801d076 */ POP {R0} \n\
/* 0801d078 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
