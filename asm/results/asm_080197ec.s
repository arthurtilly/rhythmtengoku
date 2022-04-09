asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080197ec \n\
/* 080197ec */ PUSH {LR} \n\
/* 080197ee */ LDR R0, =D_089d7980 \n\
/* 080197f0 */ LDR R0, [R0] \n\
/* 080197f2 */ ADDS R0, 0x74 @ Add 0x74 to R0 \n\
/* 080197f4 */ LDRH R0, [R0] \n\
/* 080197f6 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080197f8 */ BEQ branch_08019812 \n\
/* 080197fa */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 080197fc */ BGT branch_08019808 \n\
/* 080197fe */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08019800 */ BEQ branch_0801980e \n\
/* 08019802 */ B branch_0801981a \n\
\n\
.ltorg \n\
 \n\
branch_08019808: \n\
/* 08019808 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0801980a */ BEQ branch_08019816 \n\
/* 0801980c */ B branch_0801981a \n\
 \n\
branch_0801980e: \n\
/* 0801980e */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 08019810 */ B branch_0801981c \n\
 \n\
branch_08019812: \n\
/* 08019812 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08019814 */ B branch_0801981c \n\
 \n\
branch_08019816: \n\
/* 08019816 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08019818 */ B branch_0801981c \n\
 \n\
branch_0801981a: \n\
/* 0801981a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0801981c: \n\
/* 0801981c */ POP {R1} \n\
/* 0801981e */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
