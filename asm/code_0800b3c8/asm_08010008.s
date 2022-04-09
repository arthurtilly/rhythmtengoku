asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08010008 \n\
/* 08010008 */ PUSH {R4-R7, LR} \n\
/* 0801000a */ SUB SP, 0x4 \n\
/* 0801000c */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801000e */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 08010010 */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 08010012 */ ADDS R7, R3, 0x0 @ Set R7 to R3 + 0x0 \n\
/* 08010014 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08010016 */ BEQ branch_08010032 \n\
/* 08010018 */ LDR R0, =D_03005380 \n\
/* 0801001a */ LDR R0, [R0] \n\
/* 0801001c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801001e */ LDRSH R1, [R4, R2] \n\
/* 08010020 */ LSLS R2, R5, 0x18 \n\
/* 08010022 */ ASRS R2, R2, 0x18 \n\
/* 08010024 */ LSLS R3, R6, 0x18 \n\
/* 08010026 */ ASRS R3, R3, 0x18 \n\
/* 08010028 */ LSLS R4, R7, 0x10 \n\
/* 0801002a */ LSRS R4, R4, 0x10 \n\
/* 0801002c */ STR R4, [SP] \n\
/* 0801002e */ BL func_0804dae0 \n\
 \n\
branch_08010032: \n\
/* 08010032 */ ADD SP, 0x4 \n\
/* 08010034 */ POP {R4-R7} \n\
/* 08010036 */ POP {R0} \n\
/* 08010038 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
