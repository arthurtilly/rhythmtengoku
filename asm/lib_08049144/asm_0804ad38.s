asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804ad38 \n\
/* 0804ad38 */ PUSH {R4-R6, LR} \n\
/* 0804ad3a */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0804ad3c */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0804ad3e */ PUSH {R5, R6} \n\
/* 0804ad40 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0804ad42 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0804ad44 */ LSLS R4, R2, 0x18 \n\
/* 0804ad46 */ LSRS R4, R4, 0x18 \n\
/* 0804ad48 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804ad4a */ ADDS R1, 0x80 @ Add 0x80 to R1 \n\
/* 0804ad4c */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804ad4e */ LSLS R0, R0, 0x8 \n\
/* 0804ad50 */ BL __udivsi3 \n\
/* 0804ad54 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0804ad56 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804ad58 */ LSLS R0, R0, 0x1 \n\
/* 0804ad5a */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0804ad5c */ SUBS R4, R0, R4 @ Set R4 to R0 - R4 \n\
/* 0804ad5e */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804ad60 */ LSLS R0, R0, 0x9 \n\
/* 0804ad62 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804ad64 */ BL __udivsi3 \n\
/* 0804ad68 */ LDR R1, [R6, 0x18] \n\
/* 0804ad6a */ LSLS R5, R5, 0x5 \n\
/* 0804ad6c */ ADDS R1, R5, R1 @ Set R1 to R5 + R1 \n\
/* 0804ad6e */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0804ad70 */ STRH R2, [R1, 0x16] \n\
/* 0804ad72 */ LDR R1, [R6, 0x18] \n\
/* 0804ad74 */ ADDS R1, R5, R1 @ Set R1 to R5 + R1 \n\
/* 0804ad76 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0804ad78 */ SUBS R0, R0, R2 @ Set R0 to R0 - R2 \n\
/* 0804ad7a */ STRH R0, [R1, 0x18] \n\
/* 0804ad7c */ LDR R0, [R6, 0x18] \n\
/* 0804ad7e */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 0804ad80 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0804ad82 */ STRH R0, [R5, 0x1A] \n\
/* 0804ad84 */ POP {R3, R4} \n\
/* 0804ad86 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804ad88 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0804ad8a */ POP {R4-R6} \n\
/* 0804ad8c */ POP {R0} \n\
/* 0804ad8e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
