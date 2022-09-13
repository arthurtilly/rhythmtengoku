asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080143c0 \n\
/* 080143c0 */ PUSH {R4-R7, LR} \n\
/* 080143c2 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 080143c4 */ PUSH {R7} \n\
/* 080143c6 */ SUB SP, 0x10 \n\
/* 080143c8 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080143ca */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 080143cc */ LDR R0, =D_030046a8 \n\
/* 080143ce */ LDR R6, [R0] \n\
/* 080143d0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080143d2 */ BL func_08013100 \n\
/* 080143d6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080143d8 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 080143da */ BLT branch_0801444c \n\
/* 080143dc */ LSLS R0, R4, 0x2 \n\
/* 080143de */ ADDS R0, R0, R4 @ Set R0 to R0 + R4 \n\
/* 080143e0 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080143e2 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 080143e4 */ LSLS R0, R5, 0x1 \n\
/* 080143e6 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 080143e8 */ ADDS R7, R0, 0x4 @ Set R7 to R0 + 0x4 \n\
/* 080143ea */ LSLS R1, R2, 0x5 \n\
/* 080143ec */ LDR R0, =D_089ce344 \n\
/* 080143ee */ ADDS R3, R1, R0 @ Set R3 to R1 + R0 \n\
/* 080143f0 */ LDRB R1, [R3, 0xE] \n\
/* 080143f2 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 080143f4 */ ADDS R0, 0x16 @ Add 0x16 to R0 \n\
/* 080143f6 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080143f8 */ LDRB R2, [R0] \n\
/* 080143fa */ LDR R0, =D_089cfaac \n\
/* 080143fc */ LSLS R1, R1, 0x2 \n\
/* 080143fe */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08014400 */ LDR R0, [R1] \n\
/* 08014402 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08014404 */ LDRB R5, [R0] \n\
/* 08014406 */ CMP R2, 0x1 @ Compare R2 and 0x1 \n\
/* 08014408 */ BLS branch_0801444c \n\
/* 0801440a */ LDRH R1, [R3, 0xC] \n\
/* 0801440c */ LSLS R0, R1, 0x3 \n\
/* 0801440e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08014410 */ ADDS R2, R0, 0x1 @ Set R2 to R0 + 0x1 \n\
/* 08014412 */ LDR R0, =D_089cf90c \n\
/* 08014414 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08014416 */ LDRB R0, [R1] \n\
/* 08014418 */ MOVS R4, 0x3 @ Set R4 to 0x3 \n\
/* 0801441a */ STR R4, [SP] \n\
/* 0801441c */ STR R4, [SP, 0x4] \n\
/* 0801441e */ STR R2, [SP, 0x8] \n\
/* 08014420 */ STR R0, [SP, 0xC] \n\
/* 08014422 */ MOVS R0, 0x1C @ Set R0 to 0x1C \n\
/* 08014424 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 08014426 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08014428 */ ADDS R3, R7, 0x0 @ Set R3 to R7 + 0x0 \n\
/* 0801442a */ BL func_08015afc \n\
/* 0801442e */ LSLS R0, R5, 0x3 \n\
/* 08014430 */ ADDS R0, R0, R5 @ Set R0 to R0 + R5 \n\
/* 08014432 */ LDR R1, =0x101 \n\
/* 08014434 */ ADDS R2, R0, R1 @ Set R2 to R0 + R1 \n\
/* 08014436 */ STR R4, [SP] \n\
/* 08014438 */ STR R4, [SP, 0x4] \n\
/* 0801443a */ STR R2, [SP, 0x8] \n\
/* 0801443c */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 0801443e */ STR R0, [SP, 0xC] \n\
/* 08014440 */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 08014442 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 08014444 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08014446 */ ADDS R3, R7, 0x0 @ Set R3 to R7 + 0x0 \n\
/* 08014448 */ BL func_08015afc \n\
 \n\
branch_0801444c: \n\
/* 0801444c */ ADD SP, 0x10 \n\
/* 0801444e */ POP {R3} \n\
/* 08014450 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08014452 */ POP {R4-R7} \n\
/* 08014454 */ POP {R0} \n\
/* 08014456 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
