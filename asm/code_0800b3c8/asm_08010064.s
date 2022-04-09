asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08010064 \n\
/* 08010064 */ PUSH {R4-R6, LR} \n\
/* 08010066 */ SUB SP, 0xC \n\
/* 08010068 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801006a */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 0801006c */ ADDS R5, R3, 0x0 @ Set R5 to R3 + 0x0 \n\
/* 0801006e */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08010070 */ BEQ branch_0801009a \n\
/* 08010072 */ LDR R0, =D_03005380 \n\
/* 08010074 */ LDR R0, [R0] \n\
/* 08010076 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08010078 */ LDRSH R1, [R4, R3] \n\
/* 0801007a */ LSLS R3, R2, 0x18 \n\
/* 0801007c */ ASRS R3, R3, 0x18 \n\
/* 0801007e */ LSLS R2, R5, 0x18 \n\
/* 08010080 */ ASRS R2, R2, 0x18 \n\
/* 08010082 */ STR R2, [SP] \n\
/* 08010084 */ LDR R2, [SP, 0x1C] \n\
/* 08010086 */ LSLS R2, R2, 0x18 \n\
/* 08010088 */ ASRS R2, R2, 0x18 \n\
/* 0801008a */ STR R2, [SP, 0x4] \n\
/* 0801008c */ LDR R2, [SP, 0x20] \n\
/* 0801008e */ LSLS R2, R2, 0x10 \n\
/* 08010090 */ LSRS R2, R2, 0x10 \n\
/* 08010092 */ STR R2, [SP, 0x8] \n\
/* 08010094 */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 08010096 */ BL func_0804d8f8 \n\
 \n\
branch_0801009a: \n\
/* 0801009a */ ADD SP, 0xC \n\
/* 0801009c */ POP {R4-R6} \n\
/* 0801009e */ POP {R0} \n\
/* 080100a0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
