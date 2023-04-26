asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080165f4 \n\
/* 080165f4 */ PUSH {LR} \n\
/* 080165f6 */ LDR R1, =D_03005380 \n\
/* 080165f8 */ LDR R3, [R1] \n\
/* 080165fa */ LDR R1, =gCurrentSceneData \n\
/* 080165fc */ LDR R1, [R1] \n\
/* 080165fe */ MOVS R2, 0x1C @ Set R2 to 0x1C \n\
/* 08016600 */ LDRSH R1, [R1, R2] \n\
/* 08016602 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 08016604 */ LSLS R2, R0, 0x4 \n\
/* 08016606 */ SUBS R2, R2, R0 @ Set R2 to R2 - R0 \n\
/* 08016608 */ ADDS R2, 0x4B @ Add 0x4B to R2 \n\
/* 0801660a */ LSLS R2, R2, 0x10 \n\
/* 0801660c */ ASRS R2, R2, 0x10 \n\
/* 0801660e */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08016610 */ BL func_0804d648 \n\
/* 08016614 */ POP {R0} \n\
/* 08016616 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
