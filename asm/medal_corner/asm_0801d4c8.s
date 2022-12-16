asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801d4c8 \n\
/* 0801d4c8 */ PUSH {R4-R6, LR} \n\
/* 0801d4ca */ MOV R6, R8 @ Set R6 to R8 \n\
/* 0801d4cc */ PUSH {R6} \n\
/* 0801d4ce */ SUB SP, 0x3C \n\
/* 0801d4d0 */ LDR R4, =D_030046a4 \n\
/* 0801d4d2 */ LDR R0, [R4] \n\
/* 0801d4d4 */ LDR R0, [R0, 0x14] \n\
/* 0801d4d6 */ LDRB R6, [R0] \n\
/* 0801d4d8 */ BL get_current_mem_id \n\
/* 0801d4dc */ LSLS R0, R0, 0x10 \n\
/* 0801d4de */ LSRS R0, R0, 0x10 \n\
/* 0801d4e0 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 0801d4e2 */ STR R1, [SP] \n\
/* 0801d4e4 */ MOVS R1, 0xB @ Set R1 to 0xB \n\
/* 0801d4e6 */ STR R1, [SP, 0x4] \n\
/* 0801d4e8 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0801d4ea */ STR R5, [SP, 0x8] \n\
/* 0801d4ec */ MOVS R1, 0x8F @ Set R1 to 0x8F \n\
/* 0801d4ee */ STR R1, [SP, 0xC] \n\
/* 0801d4f0 */ MOVS R1, 0x28 @ Set R1 to 0x28 \n\
/* 0801d4f2 */ STR R1, [SP, 0x10] \n\
/* 0801d4f4 */ MOVS R1, 0x88 @ Set R1 to 0x88 \n\
/* 0801d4f6 */ LSLS R1, R1, 0x8 \n\
/* 0801d4f8 */ STR R1, [SP, 0x14] \n\
/* 0801d4fa */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 0801d4fc */ STR R1, [SP, 0x18] \n\
/* 0801d4fe */ LDR R1, =D_03001550 \n\
/* 0801d500 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0801d502 */ LDR R3, [R4] \n\
/* 0801d504 */ LDRB R1, [R3, 0x18] \n\
/* 0801d506 */ ADD R1, R8 @ Add R8 to R1 \n\
/* 0801d508 */ LDRB R1, [R1] \n\
/* 0801d50a */ STR R1, [SP, 0x1C] \n\
/* 0801d50c */ STR R6, [SP, 0x20] \n\
/* 0801d50e */ LDR R1, =D_0890dab8 \n\
/* 0801d510 */ STR R1, [SP, 0x24] \n\
/* 0801d512 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 0801d514 */ STR R1, [SP, 0x28] \n\
/* 0801d516 */ MOVS R1, 0x4 @ Set R1 to 0x4 \n\
/* 0801d518 */ STR R1, [SP, 0x2C] \n\
/* 0801d51a */ LDR R2, =D_03001554 \n\
/* 0801d51c */ LDRB R1, [R3, 0x18] \n\
/* 0801d51e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801d520 */ LDRB R1, [R1] \n\
/* 0801d522 */ STR R1, [SP, 0x30] \n\
/* 0801d524 */ LDR R1, =func_0801d474 \n\
/* 0801d526 */ STR R1, [SP, 0x34] \n\
/* 0801d528 */ STR R5, [SP, 0x38] \n\
/* 0801d52a */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 0801d52c */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0801d52e */ MOVS R3, 0x20 @ Set R3 to 0x20 \n\
/* 0801d530 */ BL func_0800aeb4 \n\
/* 0801d534 */ LDR R1, [R4] \n\
/* 0801d536 */ STR R0, [R1, 0x4] \n\
/* 0801d538 */ BL func_0800b550 \n\
/* 0801d53c */ LSLS R0, R0, 0x10 \n\
/* 0801d53e */ ASRS R0, R0, 0x10 \n\
/* 0801d540 */ BL func_0801d6e4 \n\
/* 0801d544 */ LDR R0, [R4] \n\
/* 0801d546 */ LDR R0, [R0, 0x4] \n\
/* 0801d548 */ LDR R1, =func_0801d4b0 \n\
/* 0801d54a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801d54c */ BL func_0800b30c \n\
/* 0801d550 */ LDR R0, [R4] \n\
/* 0801d552 */ LDRB R0, [R0, 0x18] \n\
/* 0801d554 */ ADD R0, R8 @ Add R8 to R0 \n\
/* 0801d556 */ LDRB R0, [R0] \n\
/* 0801d558 */ BL func_0801d160 \n\
/* 0801d55c */ ADD SP, 0x3C \n\
/* 0801d55e */ POP {R3} \n\
/* 0801d560 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801d562 */ POP {R4-R6} \n\
/* 0801d564 */ POP {R0} \n\
/* 0801d566 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
