asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803c2b8 \n\
/* 0803c2b8 */ PUSH {R4, LR} \n\
/* 0803c2ba */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803c2bc */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 0803c2be */ BEQ branch_0803c2d4 \n\
/* 0803c2c0 */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 0803c2c2 */ BCC branch_0803c2ce \n\
/* 0803c2c4 */ CMP R4, 0x2 @ Compare R4 and 0x2 \n\
/* 0803c2c6 */ BEQ branch_0803c2da \n\
/* 0803c2c8 */ CMP R4, 0x3 @ Compare R4 and 0x3 \n\
/* 0803c2ca */ BEQ branch_0803c2e0 \n\
/* 0803c2cc */ B branch_0803c2e4 \n\
 \n\
branch_0803c2ce: \n\
/* 0803c2ce */ BL func_0803c190 \n\
/* 0803c2d2 */ B branch_0803c2e4 \n\
 \n\
branch_0803c2d4: \n\
/* 0803c2d4 */ BL func_0803c20c \n\
/* 0803c2d8 */ B branch_0803c2e4 \n\
 \n\
branch_0803c2da: \n\
/* 0803c2da */ BL func_0803c260 \n\
/* 0803c2de */ B branch_0803c2e4 \n\
 \n\
branch_0803c2e0: \n\
/* 0803c2e0 */ BL func_0803c28c \n\
 \n\
branch_0803c2e4: \n\
/* 0803c2e4 */ LDR R0, =gCurrentEngineData \n\
/* 0803c2e6 */ LDR R0, [R0] \n\
/* 0803c2e8 */ STRB R4, [R0, 0x1] \n\
/* 0803c2ea */ POP {R4} \n\
/* 0803c2ec */ POP {R0} \n\
/* 0803c2ee */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
