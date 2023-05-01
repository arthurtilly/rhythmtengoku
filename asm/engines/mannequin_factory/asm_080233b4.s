asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080233b4 \n\
/* 080233b4 */ PUSH {R4, LR} \n\
/* 080233b6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080233b8 */ LDR R4, =gCurrentEngineData \n\
/* 080233ba */ LDR R1, [R4] \n\
/* 080233bc */ LDRB R0, [R1] \n\
/* 080233be */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080233c0 */ BEQ branch_080233ec \n\
/* 080233c2 */ MOVS R3, 0x83 @ Set R3 to 0x83 \n\
/* 080233c4 */ LSLS R3, R3, 0x3 \n\
/* 080233c6 */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 080233c8 */ LDR R0, [R1] \n\
/* 080233ca */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080233cc */ STR R0, [R1] \n\
/* 080233ce */ LDR R2, =0x0000270f \n\
/* 080233d0 */ CMP R0, R2 @ Check R0 - R2 \n\
/* 080233d2 */ BLS branch_080233d6 \n\
/* 080233d4 */ STR R2, [R1] \n\
 \n\
branch_080233d6: \n\
/* 080233d6 */ LDR R0, [R4] \n\
/* 080233d8 */ ADDS R1, R0, R3 @ Set R1 to R0 + R3 \n\
/* 080233da */ LDR R3, =0x00000424 \n\
/* 080233dc */ ADDS R2, R0, R3 @ Set R2 to R0 + R3 \n\
/* 080233de */ LDR R1, [R1] \n\
/* 080233e0 */ LDR R0, [R2] \n\
/* 080233e2 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080233e4 */ BLS branch_080233e8 \n\
/* 080233e6 */ STR R1, [R2] \n\
 \n\
branch_080233e8: \n\
/* 080233e8 */ BL func_080231c8 \n\
 \n\
branch_080233ec: \n\
/* 080233ec */ POP {R4} \n\
/* 080233ee */ POP {R0} \n\
/* 080233f0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
