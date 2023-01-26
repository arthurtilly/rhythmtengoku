asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080108c8 \n\
/* 080108c8 */ PUSH {LR} \n\
/* 080108ca */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080108cc */ BLT branch_080108e2 \n\
/* 080108ce */ BL func_0801082c \n\
/* 080108d2 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080108d4 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 080108d6 */ BEQ branch_080108e2 \n\
/* 080108d8 */ LDRB R0, [R1, 0x2] \n\
/* 080108da */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080108dc */ BNE branch_080108e2 \n\
/* 080108de */ MOVS R0, 0xFF @ Set R0 to 0xFF \n\
/* 080108e0 */ STRB R0, [R1] \n\
 \n\
branch_080108e2: \n\
/* 080108e2 */ POP {R0} \n\
/* 080108e4 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
