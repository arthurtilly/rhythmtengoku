asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08037378 \n\
/* 08037378 */ PUSH {R4, LR} \n\
/* 0803737a */ LDR R0, =gCurrentEngineData \n\
/* 0803737c */ LDR R4, [R0] \n\
/* 0803737e */ LDR R1, [R4, 0x3C] \n\
/* 08037380 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08037382 */ BEQ branch_080373a0 \n\
/* 08037384 */ LDR R0, [R4, 0x38] \n\
/* 08037386 */ CMP R0, R1 @ Check R0 - R1 \n\
/* 08037388 */ BCS branch_080373a0 \n\
/* 0803738a */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0803738c */ STR R0, [R4, 0x38] \n\
/* 0803738e */ LSLS R0, R0, 0xB \n\
/* 08037390 */ BL __udivsi3 \n\
/* 08037394 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08037396 */ LDR R0, [R4, 0x34] \n\
/* 08037398 */ LSLS R1, R1, 0x10 \n\
/* 0803739a */ ASRS R1, R1, 0x10 \n\
/* 0803739c */ BL affine_sprite_set_rotation \n\
 \n\
branch_080373a0: \n\
/* 080373a0 */ POP {R4} \n\
/* 080373a2 */ POP {R0} \n\
/* 080373a4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
