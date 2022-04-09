asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080431c4 \n\
/* 080431c4 */ PUSH {R4-R6, LR} \n\
/* 080431c6 */ SUB SP, 0x4 \n\
/* 080431c8 */ LDR R1, =D_030055d0 \n\
/* 080431ca */ LDR R0, [R1] \n\
/* 080431cc */ ADDS R6, R0, 0x4 @ Set R6 to R0 + 0x4 \n\
/* 080431ce */ LDRH R0, [R6, 0x4] \n\
/* 080431d0 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 080431d2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080431d4 */ BEQ branch_080431e0 \n\
/* 080431d6 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 080431d8 */ STRH R0, [R6, 0x4] \n\
/* 080431da */ B branch_080432c8 \n\
\n\
.ltorg \n\
 \n\
branch_080431e0: \n\
/* 080431e0 */ LDRB R0, [R6, 0x2] \n\
/* 080431e2 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 080431e4 */ BHI branch_080432c8 \n\
/* 080431e6 */ LSLS R0, R0, 0x2 \n\
/* 080431e8 */ LDR R1, =jtbl_080431f4 \n\
/* 080431ea */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 080431ec */ LDR R0, [R0] \n\
/* 080431ee */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_080431f4: \n\
.word branch_080432c8 \n\
.word jump_08043208 \n\
.word jump_08043264 \n\
.word jump_08043272 \n\
.word jump_080432bc \n\
jump_08043208: \n\
/* 08043208 */ LDRB R0, [R6, 0x3] \n\
/* 0804320a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804320c */ BEQ branch_08043220 \n\
/* 0804320e */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08043210 */ BL func_080432d8 \n\
/* 08043214 */ LDR R0, =s_f_virus_face_fadeout_seqData \n\
/* 08043216 */ BL func_08002634 \n\
/* 0804321a */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0804321c */ BL func_080435e8 \n\
 \n\
branch_08043220: \n\
/* 08043220 */ LDR R2, =D_030055d0 \n\
/* 08043222 */ LDR R1, [R2] \n\
/* 08043224 */ MOVS R3, 0xFE @ Set R3 to 0xFE \n\
/* 08043226 */ LSLS R3, R3, 0x1 \n\
/* 08043228 */ ADDS R0, R1, R3 @ Set R0 to R1 + R3 \n\
/* 0804322a */ LDR R0, [R0] \n\
/* 0804322c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804322e */ BEQ branch_080432c8 \n\
/* 08043230 */ LDR R0, =0x202 \n\
/* 08043232 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08043234 */ LDRB R0, [R1] \n\
/* 08043236 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08043238 */ BNE branch_080432c8 \n\
/* 0804323a */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804323c */ STRB R0, [R1] \n\
/* 0804323e */ LDR R0, [R2] \n\
/* 08043240 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08043242 */ LSLS R1, R1, 0x2 \n\
/* 08043244 */ ADDS R2, R0, R1 @ Set R2 to R0 + R1 \n\
/* 08043246 */ LDR R1, =0x270f \n\
/* 08043248 */ STRH R1, [R2] \n\
/* 0804324a */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0804324c */ LDR R0, [R0] \n\
/* 0804324e */ BL func_0801d968 \n\
/* 08043252 */ B branch_080432c8 \n\
\n\
.ltorg \n\
jump_08043264: \n\
/* 08043264 */ LDRB R0, [R6, 0x3] \n\
/* 08043266 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08043268 */ BEQ branch_080432c8 \n\
/* 0804326a */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0804326c */ BL func_080432d8 \n\
/* 08043270 */ B branch_080432c8 \n\
jump_08043272: \n\
/* 08043272 */ LDRB R0, [R6, 0x3] \n\
/* 08043274 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08043276 */ BEQ branch_080432c8 \n\
/* 08043278 */ LDR R0, [R2] \n\
/* 0804327a */ LDR R2, =0x202 \n\
/* 0804327c */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0804327e */ LDRB R0, [R0] \n\
/* 08043280 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08043282 */ BEQ branch_080432b4 \n\
/* 08043284 */ LDR R4, =D_03005380 \n\
/* 08043286 */ LDR R0, [R4] \n\
/* 08043288 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804328a */ LDRSH R1, [R6, R2] \n\
/* 0804328c */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 0804328e */ STR R5, [SP] \n\
/* 08043290 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08043292 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08043294 */ BL func_0804dae0 \n\
/* 08043298 */ LDR R0, [R4] \n\
/* 0804329a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0804329c */ LDRSH R1, [R6, R2] \n\
/* 0804329e */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080432a0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 080432a2 */ BL func_0804daa8 \n\
/* 080432a6 */ STRB R5, [R6, 0x3] \n\
/* 080432a8 */ B branch_080432c8 \n\
\n\
.ltorg \n\
 \n\
branch_080432b4: \n\
/* 080432b4 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 080432b6 */ BL func_080432d8 \n\
/* 080432ba */ B branch_080432c8 \n\
jump_080432bc: \n\
/* 080432bc */ LDRB R0, [R6, 0x3] \n\
/* 080432be */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080432c0 */ BEQ branch_080432c8 \n\
/* 080432c2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080432c4 */ BL func_080432d8 \n\
 \n\
branch_080432c8: \n\
/* 080432c8 */ ADD SP, 0x4 \n\
/* 080432ca */ POP {R4-R6} \n\
/* 080432cc */ POP {R0} \n\
/* 080432ce */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
