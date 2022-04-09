asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080068f8 \n\
/* 080068f8 */ PUSH {R4-R6, LR} \n\
/* 080068fa */ MOV R6, R9 @ Set R6 to R9 \n\
/* 080068fc */ MOV R5, R8 @ Set R5 to R8 \n\
/* 080068fe */ PUSH {R5, R6} \n\
/* 08006900 */ SUB SP, 0x1C \n\
/* 08006902 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 08006904 */ MOV R9, R2 @ Set R9 to R2 \n\
/* 08006906 */ LDR R1, [SP, 0x34] \n\
/* 08006908 */ LDR R5, [SP, 0x38] \n\
/* 0800690a */ LDR R6, [SP, 0x3C] \n\
/* 0800690c */ LDR R2, [SP, 0x40] \n\
/* 0800690e */ LDR R4, [SP, 0x44] \n\
/* 08006910 */ LSLS R0, R0, 0x10 \n\
/* 08006912 */ LSRS R0, R0, 0x10 \n\
/* 08006914 */ LSLS R3, R3, 0x10 \n\
/* 08006916 */ ASRS R3, R3, 0x10 \n\
/* 08006918 */ STR R3, [SP] \n\
/* 0800691a */ LSLS R1, R1, 0x10 \n\
/* 0800691c */ ASRS R1, R1, 0x10 \n\
/* 0800691e */ STR R1, [SP, 0x4] \n\
/* 08006920 */ STR R5, [SP, 0x8] \n\
/* 08006922 */ STR R6, [SP, 0xC] \n\
/* 08006924 */ LSLS R2, R2, 0x10 \n\
/* 08006926 */ ASRS R2, R2, 0x10 \n\
/* 08006928 */ STR R2, [SP, 0x10] \n\
/* 0800692a */ LSLS R4, R4, 0x10 \n\
/* 0800692c */ ASRS R4, R4, 0x10 \n\
/* 0800692e */ STR R4, [SP, 0x14] \n\
/* 08006930 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08006932 */ STR R1, [SP, 0x18] \n\
/* 08006934 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08006936 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 08006938 */ BL func_080067a4 \n\
/* 0800693c */ ADD SP, 0x1C \n\
/* 0800693e */ POP {R3, R4} \n\
/* 08006940 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08006942 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08006944 */ POP {R4-R6} \n\
/* 08006946 */ POP {R1} \n\
/* 08006948 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
