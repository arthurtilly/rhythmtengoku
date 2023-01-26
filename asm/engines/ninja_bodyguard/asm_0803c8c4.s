asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803c8c4 \n\
/* 0803c8c4 */ PUSH {R4-R6, LR} \n\
/* 0803c8c6 */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0803c8c8 */ PUSH {R6} \n\
/* 0803c8ca */ SUB SP, 0x4 \n\
/* 0803c8cc */ MOVS R6, 0x80 @ Set R6 to 0x80 \n\
/* 0803c8ce */ LSLS R6, R6, 0x1 \n\
/* 0803c8d0 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0803c8d2 */ BL agb_random \n\
/* 0803c8d6 */ LSLS R0, R0, 0x10 \n\
/* 0803c8d8 */ LSRS R0, R0, 0x10 \n\
/* 0803c8da */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
/* 0803c8dc */ NEGS R5, R5 @ Set R5 to -R5 \n\
/* 0803c8de */ SUBS R5, R5, R0 @ Set R5 to R5 - R0 \n\
/* 0803c8e0 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0803c8e2 */ BL agb_random \n\
/* 0803c8e6 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803c8e8 */ LSLS R4, R4, 0x10 \n\
/* 0803c8ea */ LSRS R4, R4, 0x10 \n\
/* 0803c8ec */ LDR R0, =0xffffff00 \n\
/* 0803c8ee */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0803c8f0 */ SUBS R4, R0, R4 @ Set R4 to R0 - R4 \n\
/* 0803c8f2 */ MOVS R0, 0x63 @ Set R0 to 0x63 \n\
/* 0803c8f4 */ BL agb_random \n\
/* 0803c8f8 */ LDR R1, =0xffe0 \n\
/* 0803c8fa */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0803c8fc */ SUBS R2, R2, R0 @ Set R2 to R2 - R0 \n\
/* 0803c8fe */ LSLS R2, R2, 0x10 \n\
/* 0803c900 */ ASRS R2, R2, 0x10 \n\
/* 0803c902 */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 0803c904 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0803c906 */ STR R2, [SP] \n\
/* 0803c908 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803c90a */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0803c90c */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 0803c90e */ BL func_0803c834 \n\
/* 0803c912 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0803c914 */ BL agb_random \n\
/* 0803c918 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0803c91a */ LSLS R4, R4, 0x10 \n\
/* 0803c91c */ LSRS R4, R4, 0x10 \n\
/* 0803c91e */ ADDS R4, 0x80 @ Add 0x80 to R4 \n\
/* 0803c920 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0803c922 */ BL agb_random \n\
/* 0803c926 */ LSLS R0, R0, 0x10 \n\
/* 0803c928 */ LSRS R0, R0, 0x10 \n\
/* 0803c92a */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0803c92c */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0803c92e */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0803c930 */ MOVS R0, 0x63 @ Set R0 to 0x63 \n\
/* 0803c932 */ BL agb_random \n\
/* 0803c936 */ ADDS R0, 0x20 @ Add 0x20 to R0 \n\
/* 0803c938 */ LSLS R0, R0, 0x10 \n\
/* 0803c93a */ ASRS R0, R0, 0x10 \n\
/* 0803c93c */ STR R0, [SP] \n\
/* 0803c93e */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803c940 */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 0803c942 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0803c944 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0803c946 */ BL func_0803c834 \n\
/* 0803c94a */ ADD SP, 0x4 \n\
/* 0803c94c */ POP {R3} \n\
/* 0803c94e */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803c950 */ POP {R4-R6} \n\
/* 0803c952 */ POP {R0} \n\
/* 0803c954 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
