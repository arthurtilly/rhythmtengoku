asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080249c0 \n\
/* 080249c0 */ PUSH {LR} \n\
/* 080249c2 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 080249c4 */ LDR R2, =drum_intro_kits \n\
/* 080249c6 */ LDR R0, =gCurrentEngineData \n\
/* 080249c8 */ LDR R1, [R0] \n\
/* 080249ca */ LDRB R0, [R1] \n\
/* 080249cc */ LSLS R0, R0, 0x2 \n\
/* 080249ce */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 080249d0 */ LDR R0, [R0] \n\
/* 080249d2 */ LDR R2, =0x00000396 \n\
/* 080249d4 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 080249d6 */ LDRH R1, [R1] \n\
/* 080249d8 */ ANDS R1, R3 @ Set R1 to R1 & R3 \n\
/* 080249da */ BL play_drumtech_kit_w_anim \n\
/* 080249de */ POP {R0} \n\
/* 080249e0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
