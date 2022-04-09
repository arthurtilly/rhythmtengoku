asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080191bc \n\
/* 080191bc */ PUSH {R4, R5, LR} \n\
/* 080191be */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080191c0 */ LDR R5, =D_030046a8 \n\
/* 080191c2 */ LDR R0, [R5] \n\
/* 080191c4 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080191c6 */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 080191c8 */ LDR R0, =D_03001540 \n\
/* 080191ca */ LDRB R0, [R0] \n\
/* 080191cc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080191ce */ BEQ branch_08019202 \n\
/* 080191d0 */ STRB R1, [R4, 0x4] \n\
/* 080191d2 */ BL func_0801a060 \n\
/* 080191d6 */ STRH R0, [R4, 0x3E] \n\
/* 080191d8 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080191da */ LDRSB R0, [R4, R0] \n\
/* 080191dc */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 080191de */ LDRSB R1, [R4, R1] \n\
/* 080191e0 */ BL func_08013100 \n\
/* 080191e4 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 080191e6 */ BL func_080108a0 \n\
/* 080191ea */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 080191ec */ BLT branch_080191fe \n\
/* 080191ee */ LDR R1, [R5] \n\
/* 080191f0 */ MOVS R0, 0xD0 @ Set R0 to 0xD0 \n\
/* 080191f2 */ LSLS R0, R0, 0x1 \n\
/* 080191f4 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080191f6 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 080191f8 */ LDRB R0, [R1] \n\
/* 080191fa */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080191fc */ STRB R0, [R1] \n\
 \n\
branch_080191fe: \n\
/* 080191fe */ BL func_080009a0 \n\
 \n\
branch_08019202: \n\
/* 08019202 */ POP {R4, R5} \n\
/* 08019204 */ POP {R0} \n\
/* 08019206 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
