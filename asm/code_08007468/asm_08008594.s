asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008594 \n\
/* 08008594 */ PUSH {R4, LR} \n\
/* 08008596 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08008598 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800859a */ BNE branch_0800859e \n\
/* 0800859c */ LDR R3, =D_030010d0 \n\
 \n\
branch_0800859e: \n\
/* 0800859e */ LDR R0, [R4] \n\
/* 080085a0 */ STR R0, [R3] \n\
/* 080085a2 */ STR R1, [R3, 0x4] \n\
/* 080085a4 */ LDRH R0, [R4, 0x6] \n\
/* 080085a6 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 080085a8 */ LSLS R0, R0, 0x10 \n\
/* 080085aa */ LDR R1, =0x2020 \n\
/* 080085ac */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 080085ae */ STR R0, [R3, 0x8] \n\
/* 080085b0 */ LDR R1, [R4, 0x8] \n\
/* 080085b2 */ LDMIA R1!, {R0} \n\
/* 080085b4 */ STR R0, [R3, 0xC] \n\
/* 080085b6 */ LDR R0, [R4, 0xC] \n\
/* 080085b8 */ LDR R0, [R0] \n\
/* 080085ba */ STR R0, [R3, 0x10] \n\
/* 080085bc */ STR R1, [R3, 0x14] \n\
/* 080085be */ LDR R0, [R4, 0xC] \n\
/* 080085c0 */ ADDS R0, 0x4 @ Add 0x4 to R0 \n\
/* 080085c2 */ STR R0, [R3, 0x18] \n\
/* 080085c4 */ STR R2, [R3, 0x1C] \n\
/* 080085c6 */ STR R2, [R3, 0x20] \n\
/* 080085c8 */ LDR R1, =func_08000f08 \n\
/* 080085ca */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 080085cc */ BL _call_via_r1 \n\
/* 080085d0 */ POP {R4} \n\
/* 080085d2 */ POP {R1} \n\
/* 080085d4 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
