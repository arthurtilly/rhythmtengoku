asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018698 \n\
/* 08018698 */ PUSH {R4, LR} \n\
/* 0801869a */ SUB SP, 0x4 \n\
/* 0801869c */ LDR R0, =D_030046a4 \n\
/* 0801869e */ LDR R0, [R0] \n\
/* 080186a0 */ MOVS R1, 0x93 @ Set R1 to 0x93 \n\
/* 080186a2 */ LSLS R1, R1, 0x3 \n\
/* 080186a4 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080186a6 */ LDR R0, [R0] \n\
/* 080186a8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080186aa */ BEQ branch_080186c8 \n\
/* 080186ac */ MOV R4, SP @ Set R4 to SP \n\
/* 080186ae */ ADDS R4, 0x2 @ Add 0x2 to R4 \n\
/* 080186b0 */ MOV R1, SP @ Set R1 to SP \n\
/* 080186b2 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 080186b4 */ BL func_0800acf8 \n\
/* 080186b8 */ MOV R0, SP @ Set R0 to SP \n\
/* 080186ba */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080186bc */ LDRSH R0, [R0, R2] \n\
/* 080186be */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080186c0 */ LDRSH R1, [R4, R2] \n\
/* 080186c2 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 080186c4 */ BL func_080185d0 \n\
 \n\
branch_080186c8: \n\
/* 080186c8 */ ADD SP, 0x4 \n\
/* 080186ca */ POP {R4} \n\
/* 080186cc */ POP {R0} \n\
/* 080186ce */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
