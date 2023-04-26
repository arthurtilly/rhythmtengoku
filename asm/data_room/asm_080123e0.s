asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080123e0 \n\
/* 080123e0 */ PUSH {LR} \n\
/* 080123e2 */ LDR R0, =gCurrentSceneData \n\
/* 080123e4 */ LDR R0, [R0] \n\
/* 080123e6 */ LDR R0, [R0] \n\
/* 080123e8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080123ea */ BNE branch_080123f4 \n\
/* 080123ec */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080123ee */ B branch_080123f6 \n\
\n\
.ltorg \n\
 \n\
branch_080123f4: \n\
/* 080123f4 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_080123f6: \n\
/* 080123f6 */ POP {R1} \n\
/* 080123f8 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
