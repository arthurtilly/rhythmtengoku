asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08017514 \n\
/* 08017514 */ PUSH {R4, LR} \n\
/* 08017516 */ LDR R0, =D_03005380 \n\
/* 08017518 */ LDR R4, [R0] \n\
/* 0801751a */ BL func_0800c3b8 \n\
/* 0801751e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08017520 */ LSLS R1, R1, 0x10 \n\
/* 08017522 */ LSRS R1, R1, 0x10 \n\
/* 08017524 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08017526 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08017528 */ BL func_0804e0f0 \n\
/* 0801752c */ BL func_0800c3b8 \n\
/* 08017530 */ LSLS R0, R0, 0x10 \n\
/* 08017532 */ LSRS R0, R0, 0x10 \n\
/* 08017534 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08017536 */ BL func_08005e18 \n\
/* 0801753a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801753c */ BL func_0800bd04 \n\
/* 08017540 */ LDR R0, =D_089cfda4 \n\
/* 08017542 */ BL func_0801d968 \n\
/* 08017546 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08017548 */ BL func_0801db04 \n\
/* 0801754c */ LDR R0, =D_030046a4 \n\
/* 0801754e */ LDR R0, [R0] \n\
/* 08017550 */ ADDS R0, 0x7C @ Add 0x7C to R0 \n\
/* 08017552 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08017554 */ STRB R1, [R0] \n\
/* 08017556 */ POP {R4} \n\
/* 08017558 */ POP {R0} \n\
/* 0801755a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
