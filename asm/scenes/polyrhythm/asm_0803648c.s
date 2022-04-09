asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803648c \n\
/* 0803648c */ PUSH {LR} \n\
/* 0803648e */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 08036490 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08036492 */ BGE branch_080364a0 \n\
/* 08036494 */ LDR R0, =D_089e5c08 \n\
/* 08036496 */ MOVS R1, 0x2 @ Set R1 to 0x2 \n\
/* 08036498 */ LDRSH R0, [R0, R1] \n\
/* 0803649a */ B branch_080364ce \n\
\n\
.ltorg \n\
 \n\
branch_080364a0: \n\
/* 080364a0 */ CMP R2, 0xF @ Compare R2 and 0xF \n\
/* 080364a2 */ BGT branch_080364cc \n\
/* 080364a4 */ LDR R1, =D_030055d0 \n\
/* 080364a6 */ LSLS R0, R0, 0x7 \n\
/* 080364a8 */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 080364aa */ LDR R1, [R1] \n\
/* 080364ac */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080364ae */ LSLS R0, R2, 0x3 \n\
/* 080364b0 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080364b2 */ LDR R2, =D_089e5c08 \n\
/* 080364b4 */ LDRB R0, [R1] \n\
/* 080364b6 */ LSLS R0, R0, 0x1A \n\
/* 080364b8 */ LSRS R0, R0, 0x1D \n\
/* 080364ba */ LSLS R0, R0, 0x1 \n\
/* 080364bc */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080364be */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 080364c0 */ LDRSH R0, [R0, R1] \n\
/* 080364c2 */ B branch_080364ce \n\
\n\
.ltorg \n\
 \n\
branch_080364cc: \n\
/* 080364cc */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_080364ce: \n\
/* 080364ce */ POP {R1} \n\
/* 080364d0 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
