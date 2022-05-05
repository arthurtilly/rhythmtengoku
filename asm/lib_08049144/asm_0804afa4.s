asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804afa4 \n\
/* 0804afa4 */ PUSH {LR} \n\
/* 0804afa6 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0804afa8 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804afaa */ BNE branch_0804afb0 \n\
/* 0804afac */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804afae */ B branch_0804afce \n\
 \n\
branch_0804afb0: \n\
/* 0804afb0 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804afb2 */ LSLS R0, R0, 0xF \n\
/* 0804afb4 */ BL __udivsi3 \n\
/* 0804afb8 */ LSRS R0, R0, 0x5 \n\
/* 0804afba */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0804afbc */ LSLS R1, R1, 0x4 \n\
/* 0804afbe */ SUBS R0, R1, R0 @ Set R0 to R1 - R0 \n\
/* 0804afc0 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804afc2 */ BGE branch_0804afc6 \n\
/* 0804afc4 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0804afc6: \n\
/* 0804afc6 */ LDR R1, =0x000007ff \n\
/* 0804afc8 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 0804afca */ BLE branch_0804afce \n\
/* 0804afcc */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
 \n\
branch_0804afce: \n\
/* 0804afce */ POP {R1} \n\
/* 0804afd0 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
