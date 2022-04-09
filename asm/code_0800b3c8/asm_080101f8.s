asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080101f8 \n\
/* 080101f8 */ PUSH {R4, LR} \n\
/* 080101fa */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 080101fc */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 080101fe */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08010200 */ BEQ branch_0801020e \n\
/* 08010202 */ LDR R0, =D_03005380 \n\
/* 08010204 */ LDR R0, [R0] \n\
/* 08010206 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08010208 */ LDRSH R1, [R3, R4] \n\
/* 0801020a */ BL func_0804d7e8 \n\
 \n\
branch_0801020e: \n\
/* 0801020e */ POP {R4} \n\
/* 08010210 */ POP {R0} \n\
/* 08010212 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
