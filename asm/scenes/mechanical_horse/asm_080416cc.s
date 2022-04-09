asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080416cc \n\
/* 080416cc */ PUSH {R4-R6, LR} \n\
/* 080416ce */ MOV R6, R8 @ Set R6 to R8 \n\
/* 080416d0 */ PUSH {R6} \n\
/* 080416d2 */ SUB SP, 0xC \n\
/* 080416d4 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080416d6 */ LDR R4, =D_030055d0 \n\
/* 080416d8 */ LDR R1, [R4] \n\
/* 080416da */ MOVS R5, 0xB7 @ Set R5 to 0xB7 \n\
/* 080416dc */ LSLS R5, R5, 0x2 \n\
/* 080416de */ ADDS R0, R1, R5 @ Set R0 to R1 + R5 \n\
/* 080416e0 */ LDR R0, [R0] \n\
/* 080416e2 */ MOVS R6, 0xB8 @ Set R6 to 0xB8 \n\
/* 080416e4 */ LSLS R6, R6, 0x2 \n\
/* 080416e6 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 080416e8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080416ea */ LDRSH R1, [R1, R2] \n\
/* 080416ec */ BL func_08007b04 \n\
/* 080416f0 */ LDR R0, [R4] \n\
/* 080416f2 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 080416f4 */ LDR R0, [R0] \n\
/* 080416f6 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 080416f8 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080416fa */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 080416fc */ BL func_08004b98 \n\
/* 08041700 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08041702 */ LDR R0, =D_03005380 \n\
/* 08041704 */ LDR R0, [R0] \n\
/* 08041706 */ LDR R1, [R4] \n\
/* 08041708 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 0804170a */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804170c */ LDRSH R1, [R1, R3] \n\
/* 0804170e */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08041710 */ STR R3, [SP] \n\
/* 08041712 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08041714 */ STR R3, [SP, 0x4] \n\
/* 08041716 */ STR R3, [SP, 0x8] \n\
/* 08041718 */ BL func_0804d8f8 \n\
/* 0804171c */ ADD SP, 0xC \n\
/* 0804171e */ POP {R3} \n\
/* 08041720 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08041722 */ POP {R4-R6} \n\
/* 08041724 */ POP {R0} \n\
/* 08041726 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
