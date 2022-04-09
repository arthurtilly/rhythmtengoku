asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08016290 \n\
/* 08016290 */ PUSH {LR} \n\
/* 08016292 */ LDR R0, =D_030046a4 \n\
/* 08016294 */ LDR R0, [R0] \n\
/* 08016296 */ MOVS R2, 0xCC @ Set R2 to 0xCC \n\
/* 08016298 */ LSLS R2, R2, 0x1 \n\
/* 0801629a */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0801629c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
 \n\
branch_0801629e: \n\
/* 0801629e */ LDRB R0, [R1] \n\
/* 080162a0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080162a2 */ BEQ branch_080162ac \n\
/* 080162a4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080162a6 */ B branch_080162b6 \n\
\n\
.ltorg \n\
 \n\
branch_080162ac: \n\
/* 080162ac */ ADDS R1, 0x20 @ Add 0x20 to R1 \n\
/* 080162ae */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 080162b0 */ CMP R2, 0x9 @ Compare R2 and 0x9 \n\
/* 080162b2 */ BLS branch_0801629e \n\
/* 080162b4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_080162b6: \n\
/* 080162b6 */ POP {R1} \n\
/* 080162b8 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
