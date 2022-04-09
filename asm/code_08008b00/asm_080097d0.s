asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080097d0 \n\
/* 080097d0 */ PUSH {R4, LR} \n\
/* 080097d2 */ CMP R0, 0x18 @ Compare R0 and 0x18 \n\
/* 080097d4 */ BLS branch_080097d8 \n\
/* 080097d6 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
 \n\
branch_080097d8: \n\
/* 080097d8 */ LSLS R4, R0, 0xC \n\
/* 080097da */ LDR R2, =D_03001201 \n\
/* 080097dc */ LDRB R1, [R2] \n\
/* 080097de */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080097e0 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080097e2 */ LDR R3, =D_03001208 \n\
/* 080097e4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080097e6 */ BEQ branch_080097ee \n\
/* 080097e8 */ LDR R0, [R3] \n\
/* 080097ea */ CMP R0, R4 @ Check R0 - R4 \n\
/* 080097ec */ BHI branch_080097f0 \n\
 \n\
branch_080097ee: \n\
/* 080097ee */ STR R4, [R3] \n\
 \n\
branch_080097f0: \n\
/* 080097f0 */ LDR R0, =D_03001204 \n\
/* 080097f2 */ LDR R1, [R0] \n\
/* 080097f4 */ LDR R0, [R3] \n\
/* 080097f6 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 080097f8 */ BCS branch_08009802 \n\
/* 080097fa */ LDRB R0, [R2] \n\
/* 080097fc */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 080097fe */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08009800 */ STRB R0, [R2] \n\
 \n\
branch_08009802: \n\
/* 08009802 */ POP {R4} \n\
/* 08009804 */ POP {R0} \n\
/* 08009806 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
