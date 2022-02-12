asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08022010 \n\
/* 08022010 */ PUSH {R4-R6, LR} \n\
/* 08022012 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08022014 */ LDR R6, =D_03005380 \n\
/* 08022016 */ LDR R0, [R6] \n\
/* 08022018 */ LDR R5, =D_030055d0 \n\
/* 0802201a */ LDR R1, [R5] \n\
/* 0802201c */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0802201e */ LDRSH R1, [R1, R2] \n\
/* 08022020 */ NEGS R2, R4 @ Set R2 to -R4 \n\
/* 08022022 */ ORRS R2, R4 @ Set R2 to R2 | R4 \n\
/* 08022024 */ LSRS R2, R2, 0x1F \n\
/* 08022026 */ BL func_0804d770 \n\
/* 0802202a */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0802202c */ BEQ branch_08022040 \n\
/* 0802202e */ LDR R0, [R6] \n\
/* 08022030 */ LDR R1, [R5] \n\
/* 08022032 */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 08022034 */ LDRSH R1, [R1, R2] \n\
/* 08022036 */ SUBS R2, R4, 0x1 @ Set R2 to R4 - 0x1 \n\
/* 08022038 */ LSLS R2, R2, 0x18 \n\
/* 0802203a */ ASRS R2, R2, 0x18 \n\
/* 0802203c */ BL func_0804cebc \n\
 \n\
branch_08022040: \n\
/* 08022040 */ POP {R4-R6} \n\
/* 08022042 */ POP {R0} \n\
/* 08022044 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
