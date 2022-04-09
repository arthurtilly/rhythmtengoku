asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800742c \n\
/* 0800742c */ PUSH {R4-R6, LR} \n\
/* 0800742e */ MOV R6, R8 @ Set R6 to R8 \n\
/* 08007430 */ PUSH {R6} \n\
/* 08007432 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08007434 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08007436 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08007438 */ LDR R5, =D_03005380 \n\
/* 0800743a */ LDR R0, [R5] \n\
/* 0800743c */ LSLS R4, R4, 0x10 \n\
/* 0800743e */ ASRS R4, R4, 0x10 \n\
/* 08007440 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08007442 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08007444 */ BL func_0804ddb0 \n\
/* 08007448 */ STRH R0, [R6] \n\
/* 0800744a */ LDR R0, [R5] \n\
/* 0800744c */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800744e */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
/* 08007450 */ BL func_0804ddb0 \n\
/* 08007454 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08007456 */ STRH R0, [R1] \n\
/* 08007458 */ POP {R3} \n\
/* 0800745a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800745c */ POP {R4-R6} \n\
/* 0800745e */ POP {R0} \n\
/* 08007460 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
