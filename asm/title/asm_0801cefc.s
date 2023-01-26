asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801cefc \n\
/* 0801cefc */ PUSH {R4, R5, LR} \n\
/* 0801cefe */ SUB SP, 0xC \n\
/* 0801cf00 */ LDR R5, =D_03005380 \n\
/* 0801cf02 */ LDR R0, [R5] \n\
/* 0801cf04 */ LDR R4, =D_030046a4 \n\
/* 0801cf06 */ LDR R1, [R4] \n\
/* 0801cf08 */ MOVS R2, 0xC @ Set R2 to 0xC \n\
/* 0801cf0a */ LDRSH R1, [R1, R2] \n\
/* 0801cf0c */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801cf0e */ BL func_0804d770 \n\
/* 0801cf12 */ LDR R0, [R5] \n\
/* 0801cf14 */ LDR R1, [R4] \n\
/* 0801cf16 */ MOVS R2, 0xE @ Set R2 to 0xE \n\
/* 0801cf18 */ LDRSH R1, [R1, R2] \n\
/* 0801cf1a */ LDR R2, =D_0890d428 \n\
/* 0801cf1c */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 0801cf1e */ STR R5, [SP] \n\
/* 0801cf20 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801cf22 */ STR R3, [SP, 0x4] \n\
/* 0801cf24 */ STR R3, [SP, 0x8] \n\
/* 0801cf26 */ BL func_0804d8f8 \n\
/* 0801cf2a */ LDR R0, [R4] \n\
/* 0801cf2c */ STRB R5, [R0, 0x10] \n\
/* 0801cf2e */ ADD SP, 0xC \n\
/* 0801cf30 */ POP {R4, R5} \n\
/* 0801cf32 */ POP {R0} \n\
/* 0801cf34 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
