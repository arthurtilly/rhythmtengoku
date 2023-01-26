asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08038248 \n\
/* 08038248 */ PUSH {R4-R6, LR} \n\
/* 0803824a */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0803824c */ PUSH {R6} \n\
/* 0803824e */ SUB SP, 0xC \n\
/* 08038250 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08038252 */ LDR R4, =D_030055d0 \n\
/* 08038254 */ LDR R1, [R4] \n\
/* 08038256 */ MOVS R5, 0xB8 @ Set R5 to 0xB8 \n\
/* 08038258 */ LSLS R5, R5, 0x1 \n\
/* 0803825a */ ADDS R0, R1, R5 @ Set R0 to R1 + R5 \n\
/* 0803825c */ LDR R0, [R0] \n\
/* 0803825e */ MOVS R6, 0xBA @ Set R6 to 0xBA \n\
/* 08038260 */ LSLS R6, R6, 0x1 \n\
/* 08038262 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 08038264 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08038266 */ LDRSH R1, [R1, R2] \n\
/* 08038268 */ BL func_08007b04 \n\
/* 0803826c */ LDR R0, [R4] \n\
/* 0803826e */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08038270 */ LDR R0, [R0] \n\
/* 08038272 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 08038274 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08038276 */ MOVS R3, 0xC @ Set R3 to 0xC \n\
/* 08038278 */ BL func_08004b98 \n\
/* 0803827c */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0803827e */ LDR R0, =D_03005380 \n\
/* 08038280 */ LDR R0, [R0] \n\
/* 08038282 */ LDR R1, [R4] \n\
/* 08038284 */ ADDS R1, R1, R6 @ Set R1 to R1 + R6 \n\
/* 08038286 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08038288 */ LDRSH R1, [R1, R3] \n\
/* 0803828a */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0803828c */ STR R3, [SP] \n\
/* 0803828e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08038290 */ STR R3, [SP, 0x4] \n\
/* 08038292 */ STR R3, [SP, 0x8] \n\
/* 08038294 */ BL func_0804d8f8 \n\
/* 08038298 */ ADD SP, 0xC \n\
/* 0803829a */ POP {R3} \n\
/* 0803829c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803829e */ POP {R4-R6} \n\
/* 080382a0 */ POP {R0} \n\
/* 080382a2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
