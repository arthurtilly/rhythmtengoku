.set NULL, 0

.macro MOV32 reg,value
	MOV \reg, \value&0xFFFF0000
	ADD \reg, \reg, \value&0xFFFF
.endm

.macro glabel value
	.global \value
	\value:
.endm

.macro thumb_func_start value
	.balign 4, 0
	.thumb
	.thumb_func
	.global \value
	\value:
.endm

.macro unaligned_thumb_func_start value
	.thumb
	@.thumb_func
	.global \value
	\value:
.endm

.macro arm_func_start value
	.balign 4, 0
	.arm
	.global \value
	\value:
.endm

.macro text_size_large
    .byte 0x03, 0x32
.endm

.macro text_size_small
    .byte 0x03, 0x30
.endm

.macro text_linesize_large
    .byte 0x01, 0x6C
.endm
    
.macro text_linesize_small
    .byte 0x01, 0x73
.endm

.macro text_style_gold
    .byte 0x05, 0x31
.endm
    
.macro text_style_normal
    .byte 0x05, 0x34
.endm
    
.macro text_linestyle_5
    .byte 0x01, 0x35
.endm
    
.macro text_linestyle_8
    .byte 0x01, 0x38
.endm

.macro .text_large
    text_size_large
    text_linesize_large
.endm

.macro .text_gold
    text_style_gold
    text_linestyle_5
.endm

.macro .text_small
    text_size_small
    text_linesize_small
.endm

.macro .text_normal
    text_style_normal
    text_linestyle_8
.endm
