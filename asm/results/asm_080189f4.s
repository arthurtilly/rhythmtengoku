asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start results_scene_inputs_enabled \n\
/* 080189f4 */ PUSH {LR} \n\
/* 080189f6 */ LDR R0, =gCurrentSceneData \n\
/* 080189f8 */ LDR R0, [R0] \n\
/* 080189fa */ LDR R0, [R0, 0x8] \n\
/* 080189fc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080189fe */ BNE branch_08018a08 \n\
/* 08018a00 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08018a02 */ B branch_08018a0a \n\
\n\
.ltorg \n\
 \n\
branch_08018a08: \n\
/* 08018a08 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
 \n\
branch_08018a0a: \n\
/* 08018a0a */ POP {R1} \n\
/* 08018a0c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
