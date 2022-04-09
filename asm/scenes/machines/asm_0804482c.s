asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804482c \n\
/* 0804482c */ PUSH {R4, R5, LR} \n\
/* 0804482e */ LDR R4, =D_030055d0 \n\
/* 08044830 */ LDR R0, [R4] \n\
/* 08044832 */ LDR R1, =0x35e \n\
/* 08044834 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08044836 */ LDRB R0, [R0] \n\
/* 08044838 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804483a */ BEQ branch_0804483e \n\
/* 0804483c */ B branch_08044944 \n\
 \n\
branch_0804483e: \n\
/* 0804483e */ LDR R0, =func_08044730 \n\
/* 08044840 */ BL func_0802b050 \n\
/* 08044844 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08044846 */ MOVS R3, 0xD6 @ Set R3 to 0xD6 \n\
/* 08044848 */ LSLS R3, R3, 0x2 \n\
 \n\
branch_0804484a: \n\
/* 0804484a */ LDR R0, [R4] \n\
/* 0804484c */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0804484e */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 08044850 */ LDRB R0, [R1] \n\
/* 08044852 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08044854 */ BEQ branch_0804485a \n\
/* 08044856 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08044858 */ STRB R0, [R1] \n\
 \n\
branch_0804485a: \n\
/* 0804485a */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0804485c */ CMP R2, 0x5 @ Compare R2 and 0x5 \n\
/* 0804485e */ BLS branch_0804484a \n\
/* 08044860 */ LDR R5, =D_030055d0 \n\
/* 08044862 */ LDR R0, [R5] \n\
/* 08044864 */ LDR R2, =0x362 \n\
/* 08044866 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08044868 */ LDRB R0, [R0] \n\
/* 0804486a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804486c */ BEQ branch_08044898 \n\
/* 0804486e */ BL func_0804442c \n\
/* 08044872 */ LDR R0, =D_03004afc \n\
/* 08044874 */ LDRH R1, [R0] \n\
/* 08044876 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08044878 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804487a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804487c */ BEQ branch_080448f4 \n\
/* 0804487e */ BL func_080443c0 \n\
/* 08044882 */ B branch_080448f4 \n\
\n\
.ltorg \n\
 \n\
branch_08044898: \n\
/* 08044898 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0804489a */ NEGS R2, R2 @ Set R2 to -R2 \n\
/* 0804489c */ LDR R4, =D_03004afc \n\
/* 0804489e */ LDRH R1, [R4] \n\
/* 080448a0 */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 080448a2 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080448a4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080448a6 */ BEQ branch_080448aa \n\
/* 080448a8 */ MOVS R2, 0x5 @ Set R2 to 0x5 \n\
 \n\
branch_080448aa: \n\
/* 080448aa */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 080448ac */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080448ae */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080448b0 */ BEQ branch_080448b4 \n\
/* 080448b2 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
 \n\
branch_080448b4: \n\
/* 080448b4 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 080448b6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080448b8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080448ba */ BEQ branch_080448be \n\
/* 080448bc */ MOVS R2, 0x3 @ Set R2 to 0x3 \n\
 \n\
branch_080448be: \n\
/* 080448be */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 080448c0 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080448c2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080448c4 */ BEQ branch_080448c8 \n\
/* 080448c6 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
 \n\
branch_080448c8: \n\
/* 080448c8 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 080448ca */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080448cc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080448ce */ BEQ branch_080448d2 \n\
/* 080448d0 */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
 \n\
branch_080448d2: \n\
/* 080448d2 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080448d4 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080448d6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080448d8 */ BEQ branch_080448dc \n\
/* 080448da */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
 \n\
branch_080448dc: \n\
/* 080448dc */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 080448de */ BL func_0804475c \n\
/* 080448e2 */ LDRH R1, [R4] \n\
/* 080448e4 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 080448e6 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 080448e8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 080448ea */ BEQ branch_080448f4 \n\
/* 080448ec */ LDR R0, [R5] \n\
/* 080448ee */ LDRB R0, [R0] \n\
/* 080448f0 */ BL func_08044320 \n\
 \n\
branch_080448f4: \n\
/* 080448f4 */ BL func_0802ab34 \n\
/* 080448f8 */ LDR R0, =D_03004afc \n\
/* 080448fa */ LDRH R1, [R0] \n\
/* 080448fc */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 080448fe */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08044900 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08044902 */ BEQ branch_08044932 \n\
/* 08044904 */ BL func_0802b064 \n\
/* 08044908 */ BL func_0800bce4 \n\
/* 0804490c */ LDR R2, =D_030055d0 \n\
/* 0804490e */ LDR R0, [R2] \n\
/* 08044910 */ LDR R1, =0x35e \n\
/* 08044912 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08044914 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08044916 */ STRB R1, [R0] \n\
/* 08044918 */ LDR R0, [R2] \n\
/* 0804491a */ MOVS R2, 0xDF @ Set R2 to 0xDF \n\
/* 0804491c */ LSLS R2, R2, 0x2 \n\
/* 0804491e */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08044920 */ LDR R0, [R0] \n\
/* 08044922 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08044924 */ BEQ branch_0804492c \n\
/* 08044926 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08044928 */ BL func_080028d8 \n\
 \n\
branch_0804492c: \n\
/* 0804492c */ LDR R0, =s_menu_cancel2_seqData \n\
/* 0804492e */ BL func_08002634 \n\
 \n\
branch_08044932: \n\
/* 08044932 */ LDR R0, =D_030055d0 \n\
/* 08044934 */ LDR R0, [R0] \n\
/* 08044936 */ LDR R2, =0x382 \n\
/* 08044938 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 0804493a */ LDRH R0, [R1] \n\
/* 0804493c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804493e */ BEQ branch_08044944 \n\
/* 08044940 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08044942 */ STRH R0, [R1] \n\
 \n\
branch_08044944: \n\
/* 08044944 */ POP {R4, R5} \n\
/* 08044946 */ POP {R0} \n\
/* 08044948 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
