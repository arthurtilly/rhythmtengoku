asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804c3c0 \n\
/* 0804c3c0 */ PUSH {R4-R7, LR} \n\
/* 0804c3c2 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0804c3c4 */ PUSH {R7} \n\
/* 0804c3c6 */ SUB SP, 0x4 \n\
/* 0804c3c8 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0804c3ca */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0804c3cc */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 0804c3ce */ ADDS R6, R3, 0x0 @ Set R6 to R3 + 0x0 \n\
/* 0804c3d0 */ LDR R0, =D_08aa431c \n\
/* 0804c3d2 */ LDRB R0, [R0] \n\
/* 0804c3d4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804c3d6 */ BEQ branch_0804c47e \n\
/* 0804c3d8 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804c3da */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0804c3dc */ LDR R2, [SP, 0x1C] \n\
/* 0804c3de */ BL func_08049fa0 \n\
/* 0804c3e2 */ LDR R1, =instrument_banks \n\
/* 0804c3e4 */ LDR R0, =D_08aa431d \n\
/* 0804c3e6 */ LDRB R0, [R0] \n\
/* 0804c3e8 */ LSLS R0, R0, 0x2 \n\
/* 0804c3ea */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804c3ec */ LDR R1, [R0] \n\
/* 0804c3ee */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804c3f0 */ BL func_0804a014 \n\
/* 0804c3f4 */ LDR R0, =D_08aa431e \n\
/* 0804c3f6 */ LDRB R1, [R0] \n\
/* 0804c3f8 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804c3fa */ BL func_0804adb4 \n\
/* 0804c3fe */ LDR R4, =D_08aa431f \n\
/* 0804c400 */ LDRB R1, [R4] \n\
/* 0804c402 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804c404 */ BL func_08049e8c \n\
/* 0804c408 */ LDRB R0, [R4] \n\
/* 0804c40a */ STR R0, [SP] \n\
/* 0804c40c */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0804c40e */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0804c410 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0804c412 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0804c414 */ BL func_0804c35c \n\
/* 0804c418 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804c41a */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0804c41c */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0804c41e */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0804c420 */ LSLS R1, R1, 0x1 \n\
/* 0804c422 */ STRH R1, [R7, 0x26] \n\
/* 0804c424 */ STRH R1, [R7, 0x22] \n\
/* 0804c426 */ LDRB R2, [R7, 0x3] \n\
/* 0804c428 */ MOVS R0, 0x39 @ Set R0 to 0x39 \n\
/* 0804c42a */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804c42c */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0804c42e */ STRB R0, [R7, 0x3] \n\
/* 0804c430 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804c432 */ LSLS R0, R0, 0x8 \n\
/* 0804c434 */ STRH R0, [R7, 0x28] \n\
/* 0804c436 */ STRH R5, [R7, 0x2A] \n\
/* 0804c438 */ LDR R4, =D_08aa4320 \n\
/* 0804c43a */ LDRB R3, [R4] \n\
/* 0804c43c */ LSLS R3, R3, 0xC \n\
/* 0804c43e */ LDR R0, [R7] \n\
/* 0804c440 */ LDR R2, =0xffe00fff \n\
/* 0804c442 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0804c444 */ ORRS R0, R3 @ Set R0 to R0 | R3 \n\
/* 0804c446 */ STR R0, [R7] \n\
/* 0804c448 */ LDRB R0, [R4] \n\
/* 0804c44a */ MOVS R2, 0x18 @ Set R2 to 0x18 \n\
/* 0804c44c */ BL func_0804b6f0 \n\
/* 0804c450 */ STR R0, [R7, 0x10] \n\
/* 0804c452 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0804c454 */ ADDS R0, 0x2D @ Add 0x2D to R0 \n\
/* 0804c456 */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 0804c458 */ STRB R1, [R0] \n\
/* 0804c45a */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0804c45c */ STRB R1, [R0] \n\
/* 0804c45e */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0804c460 */ STRB R1, [R0] \n\
/* 0804c462 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0804c464 */ STRB R1, [R0] \n\
/* 0804c466 */ LDR R0, =D_03001598 \n\
/* 0804c468 */ STR R7, [R0] \n\
/* 0804c46a */ LDR R0, =D_0300159c \n\
/* 0804c46c */ STR R6, [R0] \n\
/* 0804c46e */ LDR R1, =D_030015a0 \n\
/* 0804c470 */ LDR R0, [SP, 0x20] \n\
/* 0804c472 */ STR R0, [R1] \n\
/* 0804c474 */ LDR R0, =D_030015a4 \n\
/* 0804c476 */ STRH R5, [R0] \n\
/* 0804c478 */ LDR R0, =D_030015a6 \n\
/* 0804c47a */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804c47c */ STRB R1, [R0] \n\
 \n\
branch_0804c47e: \n\
/* 0804c47e */ ADD SP, 0x4 \n\
/* 0804c480 */ POP {R3} \n\
/* 0804c482 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804c484 */ POP {R4-R7} \n\
/* 0804c486 */ POP {R0} \n\
/* 0804c488 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
