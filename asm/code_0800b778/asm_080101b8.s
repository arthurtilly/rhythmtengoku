asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080101b8 \n\
/* 080101b8 */ PUSH {LR} \n\
/* 080101ba */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080101bc */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080101be */ BEQ branch_080101d0 \n\
/* 080101c0 */ LDR R0, =D_03005380 \n\
/* 080101c2 */ LDR R0, [R0] \n\
/* 080101c4 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080101c6 */ LDRSH R1, [R1, R2] \n\
/* 080101c8 */ BL func_0804d708 \n\
/* 080101cc */ LSLS R0, R0, 0x18 \n\
/* 080101ce */ LSRS R0, R0, 0x18 \n\
 \n\
branch_080101d0: \n\
/* 080101d0 */ POP {R1} \n\
/* 080101d2 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
