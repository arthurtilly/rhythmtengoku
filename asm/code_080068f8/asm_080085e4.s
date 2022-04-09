asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080085e4 \n\
/* 080085e4 */ PUSH {LR} \n\
/* 080085e6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 080085e8 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 080085ea */ BNE branch_080085ee \n\
/* 080085ec */ LDR R2, =D_030010d0 \n\
 \n\
branch_080085ee: \n\
/* 080085ee */ LDR R0, [R2, 0x20] \n\
/* 080085f0 */ STR R0, [R2, 0x1C] \n\
/* 080085f2 */ LDR R1, =D_08000f08 \n\
/* 080085f4 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080085f6 */ BL _call_via_r1 \n\
/* 080085fa */ POP {R1} \n\
/* 080085fc */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
