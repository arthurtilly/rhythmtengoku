asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08010238 \n\
/* 08010238 */ PUSH {R4, R5, LR} \n\
/* 0801023a */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0801023c */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0801023e */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 08010240 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08010242 */ BEQ branch_08010254 \n\
/* 08010244 */ LDR R0, =D_03005380 \n\
/* 08010246 */ LDR R0, [R0] \n\
/* 08010248 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801024a */ LDRSH R1, [R3, R2] \n\
/* 0801024c */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0801024e */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 08010250 */ BL func_0804daa8 \n\
 \n\
branch_08010254: \n\
/* 08010254 */ POP {R4, R5} \n\
/* 08010256 */ POP {R0} \n\
/* 08010258 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
