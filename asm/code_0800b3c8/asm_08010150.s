asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08010150 \n\
/* 08010150 */ PUSH {R4, LR} \n\
/* 08010152 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08010154 */ LSLS R1, R1, 0x10 \n\
/* 08010156 */ LSRS R2, R1, 0x10 \n\
/* 08010158 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0801015a */ BEQ branch_08010168 \n\
/* 0801015c */ LDR R0, =D_03005380 \n\
/* 0801015e */ LDR R0, [R0] \n\
/* 08010160 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08010162 */ LDRSH R1, [R3, R4] \n\
/* 08010164 */ BL func_0804da20 \n\
 \n\
branch_08010168: \n\
/* 08010168 */ POP {R4} \n\
/* 0801016a */ POP {R0} \n\
/* 0801016c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
