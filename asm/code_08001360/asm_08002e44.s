asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08002e44 \n\
/* 08002e44 */ PUSH {LR} \n\
/* 08002e46 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08002e48 */ B branch_08002e4c \n\
 \n\
branch_08002e4a: \n\
/* 08002e4a */ ADDS R3, 0xC @ Add 0xC to R3 \n\
 \n\
branch_08002e4c: \n\
/* 08002e4c */ LDR R0, [R3] \n\
/* 08002e4e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08002e50 */ BNE branch_08002e4a \n\
/* 08002e52 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 08002e54 */ BL func_08002dec \n\
/* 08002e58 */ POP {R0} \n\
/* 08002e5a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
