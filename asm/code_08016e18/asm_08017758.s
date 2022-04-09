asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08017758 \n\
/* 08017758 */ PUSH {LR} \n\
/* 0801775a */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0801775c */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 0801775e */ CMP R2, 0x3F @ Compare R2 and 0x3F \n\
/* 08017760 */ BHI branch_08017770 \n\
/* 08017762 */ LDR R0, =D_030046a4 \n\
/* 08017764 */ LDR R0, [R0] \n\
/* 08017766 */ LSLS R1, R2, 0x2 \n\
/* 08017768 */ LDR R2, =0x4b4 \n\
/* 0801776a */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0801776c */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0801776e */ STR R3, [R0] \n\
 \n\
branch_08017770: \n\
/* 08017770 */ POP {R0} \n\
/* 08017772 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
