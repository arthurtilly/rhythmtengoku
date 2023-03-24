asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start sick_beats_engine_update \n\
/* 0804358c */ PUSH {LR} \n\
/* 0804358e */ BL func_080431c4 \n\
/* 08043592 */ BL func_08043064 \n\
/* 08043596 */ BL func_08042e80 \n\
/* 0804359a */ BL func_08043534 \n\
/* 0804359e */ BL func_08042934 \n\
/* 080435a2 */ LDR R0, =D_030055d0 \n\
/* 080435a4 */ LDR R1, [R0] \n\
/* 080435a6 */ LDR R2, =0x202 \n\
/* 080435a8 */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 080435aa */ LDRB R0, [R0] \n\
/* 080435ac */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080435ae */ BEQ branch_080435de \n\
/* 080435b0 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 080435b2 */ LSLS R0, R0, 0x2 \n\
/* 080435b4 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 080435b6 */ LDRH R0, [R1] \n\
/* 080435b8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080435ba */ BEQ branch_080435cc \n\
/* 080435bc */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 080435be */ STRH R0, [R1] \n\
/* 080435c0 */ B branch_080435de \n\
\n\
.ltorg \n\
 \n\
branch_080435cc: \n\
/* 080435cc */ LDR R0, =D_03004afc \n\
/* 080435ce */ LDRH R1, [R0] \n\
/* 080435d0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080435d2 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080435d4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080435d6 */ BEQ branch_080435de \n\
/* 080435d8 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080435da */ BL set_pause_beatscript_scene \n\
 \n\
branch_080435de: \n\
/* 080435de */ POP {R0} \n\
/* 080435e0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
