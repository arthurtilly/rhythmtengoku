asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800a2f8 \n\
/* 0800a2f8 */ PUSH {LR} \n\
/* 0800a2fa */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0800a2fc */ ADDS R3, R1, 0x0 @ Set R3 to R1 + 0x0 \n\
/* 0800a2fe */ SUBS R0, 0x30 @ Subtract 0x30 from R0 \n\
/* 0800a300 */ CMP R0, 0x43 @ Compare R0 and 0x43 \n\
/* 0800a302 */ BLS branch_0800a306 \n\
/* 0800a304 */ B branch_0800a49e \n\
 \n\
branch_0800a306: \n\
/* 0800a306 */ LSLS R0, R0, 0x2 \n\
/* 0800a308 */ LDR R1, =jtbl_0800a314 \n\
/* 0800a30a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800a30c */ LDR R0, [R0] \n\
/* 0800a30e */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_0800a314: \n\
.word jump_0800a424 \n\
.word jump_0800a424 \n\
.word jump_0800a424 \n\
.word jump_0800a424 \n\
.word jump_0800a430 \n\
.word jump_0800a430 \n\
.word jump_0800a430 \n\
.word jump_0800a430 \n\
.word jump_0800a43c \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word jump_0800a460 \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word jump_0800a44c \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word jump_0800a454 \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word jump_0800a48c \n\
.word branch_0800a49e \n\
.word jump_0800a498 \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word jump_0800a480 \n\
.word jump_0800a474 \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word branch_0800a49e \n\
.word jump_0800a46c \n\
\n\
jump_0800a424: \n\
/* 0800a424 */ LDR R1, =D_030012fd \n\
/* 0800a426 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800a428 */ SUBS R0, 0x30 @ Subtract 0x30 from R0 \n\
/* 0800a42a */ B branch_0800a49c \n\
\n\
.ltorg \n\
\n\
jump_0800a430: \n\
/* 0800a430 */ LDR R1, =D_03001300 \n\
/* 0800a432 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800a434 */ SUBS R0, 0x34 @ Subtract 0x34 from R0 \n\
/* 0800a436 */ B branch_0800a49c \n\
\n\
.ltorg \n\
\n\
jump_0800a43c: \n\
/* 0800a43c */ LDR R1, =D_03001300 \n\
/* 0800a43e */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0800a440 */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0800a442 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0800a444 */ B branch_0800a49c \n\
\n\
.ltorg \n\
\n\
jump_0800a44c: \n\
/* 0800a44c */ LDR R1, =D_030012fc \n\
/* 0800a44e */ B branch_0800a49a \n\
\n\
.ltorg \n\
\n\
jump_0800a454: \n\
/* 0800a454 */ LDR R1, =D_030012fc \n\
/* 0800a456 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800a458 */ B branch_0800a49c \n\
\n\
.ltorg \n\
\n\
jump_0800a460: \n\
/* 0800a460 */ LDR R1, =D_030012fc \n\
/* 0800a462 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800a464 */ B branch_0800a49c \n\
\n\
.ltorg \n\
\n\
jump_0800a46c: \n\
/* 0800a46c */ LDR R1, =D_030012fe \n\
/* 0800a46e */ B branch_0800a49a \n\
\n\
.ltorg \n\
\n\
jump_0800a474: \n\
/* 0800a474 */ LDR R1, =D_030012fe \n\
/* 0800a476 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800a478 */ B branch_0800a49c \n\
\n\
.ltorg \n\
\n\
jump_0800a480: \n\
/* 0800a480 */ LDR R1, =D_030012fe \n\
/* 0800a482 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0800a484 */ B branch_0800a49c \n\
\n\
.ltorg \n\
\n\
jump_0800a48c: \n\
/* 0800a48c */ LDR R0, =D_030012ff \n\
/* 0800a48e */ STRB R3, [R0] \n\
/* 0800a490 */ B branch_0800a49e \n\
\n\
.ltorg \n\
\n\
jump_0800a498: \n\
/* 0800a498 */ LDR R1, =D_030012ff \n\
 \n\
branch_0800a49a: \n\
/* 0800a49a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_0800a49c: \n\
/* 0800a49c */ STRB R0, [R1] \n\
 \n\
branch_0800a49e: \n\
/* 0800a49e */ POP {R0} \n\
/* 0800a4a0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
