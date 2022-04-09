asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800931c \n\
/* 0800931c */ PUSH {R4, LR} \n\
/* 0800931e */ LDR R4, =D_03001190 \n\
/* 08009320 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08009322 */ BL func_0804e870 \n\
/* 08009326 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08009328 */ LDR R0, [R4] \n\
/* 0800932a */ ADDS R0, 0xB @ Add 0xB to R0 \n\
/* 0800932c */ CMP R0, 0x16 @ Compare R0 and 0x16 \n\
/* 0800932e */ BHI branch_0800934a \n\
/* 08009330 */ LDR R1, =D_0300119c \n\
/* 08009332 */ LDRB R0, [R1] \n\
/* 08009334 */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 08009336 */ BHI branch_08009344 \n\
/* 08009338 */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0800933a */ B branch_0800934e \n\
\n\
.ltorg \n\
 \n\
branch_08009344: \n\
/* 08009344 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08009346 */ STR R0, [R4] \n\
/* 08009348 */ B branch_08009350 \n\
 \n\
branch_0800934a: \n\
/* 0800934a */ LDR R1, =D_0300119c \n\
/* 0800934c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0800934e: \n\
/* 0800934e */ STRB R0, [R1] \n\
 \n\
branch_08009350: \n\
/* 08009350 */ LDR R1, =D_0300119d \n\
/* 08009352 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08009354 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 08009356 */ BNE branch_0800935a \n\
/* 08009358 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_0800935a: \n\
/* 0800935a */ STRB R0, [R1] \n\
/* 0800935c */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800935e */ POP {R4} \n\
/* 08009360 */ POP {R1} \n\
/* 08009362 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
