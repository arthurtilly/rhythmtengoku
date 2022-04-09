asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804754c \n\
/* 0804754c */ PUSH {R4-R6, LR} \n\
/* 0804754e */ MOV R6, R10 @ Set R6 to R10 \n\
/* 08047550 */ MOV R5, R9 @ Set R5 to R9 \n\
/* 08047552 */ MOV R4, R8 @ Set R4 to R8 \n\
/* 08047554 */ PUSH {R4-R6} \n\
/* 08047556 */ SUB SP, 0x14 \n\
/* 08047558 */ LDR R1, =D_030055d0 \n\
/* 0804755a */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0804755c */ LDR R1, [R1] \n\
/* 0804755e */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08047560 */ STRB R0, [R1] \n\
/* 08047562 */ BL func_0804751c \n\
/* 08047566 */ BL func_0800e0ec \n\
/* 0804756a */ STR R5, [SP] \n\
/* 0804756c */ MOVS R0, 0x1D @ Set R0 to 0x1D \n\
/* 0804756e */ STR R0, [SP, 0x4] \n\
/* 08047570 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08047572 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 08047574 */ STR R2, [SP, 0x8] \n\
/* 08047576 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08047578 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 0804757a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804757c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804757e */ BL func_0800e0a0 \n\
/* 08047582 */ LDR R4, =D_03005380 \n\
/* 08047584 */ LDR R0, [R4] \n\
/* 08047586 */ LDR R1, =D_088b7338 \n\
/* 08047588 */ MOVS R2, 0x20 @ Set R2 to 0x20 \n\
/* 0804758a */ STR R2, [SP] \n\
/* 0804758c */ STR R5, [SP, 0x4] \n\
/* 0804758e */ MOV R2, R8 @ Set R2 to R8 \n\
/* 08047590 */ STR R2, [SP, 0x8] \n\
/* 08047592 */ MOVS R6, 0x7F @ Set R6 to 0x7F \n\
/* 08047594 */ STR R6, [SP, 0xC] \n\
/* 08047596 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08047598 */ LSLS R2, R2, 0x8 \n\
/* 0804759a */ MOV R10, R2 @ Set R10 to R2 \n\
/* 0804759c */ STR R2, [SP, 0x10] \n\
/* 0804759e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080475a0 */ MOVS R3, 0x50 @ Set R3 to 0x50 \n\
/* 080475a2 */ BL func_0804d160 \n\
/* 080475a6 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 080475a8 */ LDR R1, [R2] \n\
/* 080475aa */ STRH R0, [R1, 0x2] \n\
/* 080475ac */ LDR R0, [R4] \n\
/* 080475ae */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 080475b0 */ LDRSH R1, [R1, R2] \n\
/* 080475b2 */ MOVS R2, 0xA0 @ Set R2 to 0xA0 \n\
/* 080475b4 */ LSLS R2, R2, 0x2 \n\
/* 080475b6 */ BL func_0804dcb8 \n\
/* 080475ba */ LDR R0, [R4] \n\
/* 080475bc */ LDR R1, =D_088b7690 \n\
/* 080475be */ MOVS R2, 0x78 @ Set R2 to 0x78 \n\
/* 080475c0 */ STR R2, [SP] \n\
/* 080475c2 */ STR R5, [SP, 0x4] \n\
/* 080475c4 */ STR R5, [SP, 0x8] \n\
/* 080475c6 */ STR R6, [SP, 0xC] \n\
/* 080475c8 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 080475ca */ STR R2, [SP, 0x10] \n\
/* 080475cc */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080475ce */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 080475d0 */ BL func_0804d160 \n\
/* 080475d4 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 080475d6 */ LDR R1, [R2] \n\
/* 080475d8 */ STRH R0, [R1, 0x4] \n\
/* 080475da */ LDR R0, [R4] \n\
/* 080475dc */ LDR R1, =D_088b7660 \n\
/* 080475de */ MOVS R2, 0x40 @ Set R2 to 0x40 \n\
/* 080475e0 */ STR R2, [SP] \n\
/* 080475e2 */ STR R5, [SP, 0x4] \n\
/* 080475e4 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 080475e6 */ STR R2, [SP, 0x8] \n\
/* 080475e8 */ STR R6, [SP, 0xC] \n\
/* 080475ea */ LDR R2, =0x8002 \n\
/* 080475ec */ STR R2, [SP, 0x10] \n\
/* 080475ee */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080475f0 */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 080475f2 */ BL func_0804d160 \n\
/* 080475f6 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 080475f8 */ LDR R1, [R2] \n\
/* 080475fa */ STRH R0, [R1, 0x6] \n\
/* 080475fc */ ADD SP, 0x14 \n\
/* 080475fe */ POP {R3-R5} \n\
/* 08047600 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08047602 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 08047604 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 08047606 */ POP {R4-R6} \n\
/* 08047608 */ POP {R0} \n\
/* 0804760a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
