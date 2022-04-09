asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008420 \n\
/* 08008420 */ PUSH {R4, LR} \n\
/* 08008422 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08008424 */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 08008426 */ BL mem_heap_alloc \n\
/* 0800842a */ LDR R2, [R4, 0x8] \n\
/* 0800842c */ ADDS R2, 0x3 @ Add 0x3 to R2 \n\
/* 0800842e */ LSRS R2, R2, 0x2 \n\
/* 08008430 */ STR R2, [R0, 0x8] \n\
/* 08008432 */ LDR R1, [R4, 0xC] \n\
/* 08008434 */ ADDS R1, 0x3 @ Add 0x3 to R1 \n\
/* 08008436 */ LSRS R1, R1, 0x2 \n\
/* 08008438 */ STR R1, [R0, 0xC] \n\
/* 0800843a */ LSLS R3, R2, 0x2 \n\
/* 0800843c */ LDR R1, [R4] \n\
/* 0800843e */ ADDS R1, R1, R3 @ Set R1 to R1 + R3 \n\
/* 08008440 */ STR R1, [R0] \n\
/* 08008442 */ LSLS R2, R2, 0x3 \n\
/* 08008444 */ LDR R1, [R4, 0x4] \n\
/* 08008446 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08008448 */ STR R1, [R0, 0x4] \n\
/* 0800844a */ LDR R3, [R4, 0x10] \n\
/* 0800844c */ LSLS R1, R3, 0x4 \n\
/* 0800844e */ ORRS R1, R3 @ Set R1 to R1 | R3 \n\
/* 08008450 */ LSLS R2, R3, 0x8 \n\
/* 08008452 */ ORRS R1, R2 @ Set R1 to R1 | R2 \n\
/* 08008454 */ LSLS R3, R3, 0xC \n\
/* 08008456 */ ORRS R3, R1 @ Set R3 to R3 | R1 \n\
/* 08008458 */ LSLS R1, R3, 0x10 \n\
/* 0800845a */ ORRS R3, R1 @ Set R3 to R3 | R1 \n\
/* 0800845c */ STR R3, [R0, 0x10] \n\
/* 0800845e */ POP {R4} \n\
/* 08008460 */ POP {R1} \n\
/* 08008462 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
