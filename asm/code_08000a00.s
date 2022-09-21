.section .text
.syntax unified

.include "include/gba.inc"

arm_func_start func_08000a00
    push    {r4, r5, r6, r7, r8, r9, r10, r11, r12, lr}
    mov     r5, #0xff
    ldr     r12, [pc, #268]  @ 0x8000b1c
    ldr     r4, [pc, #268]  @ 0x8000b20
    ldrb    r4, [r4]
    cmp     r4, #0
    beq     branch_08000a30
    ldr     r1, [pc, #256]  @ 0x8000b24
    ldm     r1, {r0, r6, r7, r8, r9, lr}
    mov     r11, r0
    str     r11, [pc, #248]  @ 0x8000b28
    bx      lr
branch_08000a30:
    cmp     r0, #0
    beq     branch_08000b14
    mov     r6, r0
    mov     r7, r1
    mov     r9, r2
    lsr     r8, r3, #16
    lsl     r11, r3, #16
    lsr     r11, r11, #14
    str     r11, [pc, #208]  @ 0x8000b28
branch_08000a54:
    str     r6, [r12]
    str     r7, [r12, #4]
    ldrb    r10, [r9], #1
    cmp     r10, #0
    bleq    branch_08000acc
    add     r6, r6, r10, lsl #1
    add     r7, r7, r10, lsl #1
    subs    r11, r11, r10, lsl #1
    orr     r10, r10, #0x80000000
    str     r10, [r12, #8]
    bllt    branch_08000aec
    subs    r8, r8, #1
    beq     branch_08000b00
    sub     r10, r7, #2
    str     r10, [r12]
    str     r7, [r12, #4]
    ldrb    r10, [r9], #1
    cmp     r10, #0
    bleq    branch_08000ac0
    add     r7, r7, r10, lsl #1
    subs    r11, r11, r10, lsl #1
    orr     r10, r10, #0x81000000
    str     r10, [r12, #8]
    bllt    branch_08000aec
    subs    r8, r8, #1
    beq     branch_08000b00
    b       branch_08000a54
branch_08000ac0:
    orr     r10, r5, #0x81000000
    sub     lr, lr, #24
    b       branch_08000ad8
branch_08000acc:
    add     r6, r6, r5, lsl #1
    orr     r10, r5, #0x80000000
    sub     lr, lr, #20
branch_08000ad8:
    add     r7, r7, r5, lsl #1
    str     r10, [r12, #8]
    subs    r11, r11, r5, lsl #1
    blt     branch_08000aec
    bx      lr
branch_08000aec:
    ldr     r0, [pc, #52]   @ 0x8000b28
    ldr     r1, [pc, #44]   @ 0x8000b24
    stm     r1, {r0, r6, r7, r8, r9, lr}
    mov     r1, #1
    b       branch_08000b04
branch_08000b00:
    mov     r1, #0
branch_08000b04:
    ldr     r2, [pc, #20]   @ 0x8000b20
    strb    r1, [r2]
    ldr     r0, [pc, #20]   @ 0x8000b28
    sub     r0, r0, r11
branch_08000b14:
    pop     {r4, r5, r6, r7, r8, r9, r10, r11, r12, lr}
    bx      lr
_8000b1c:   .word REG_DMA3SAD
_8000b20:   .word D_030053b0
_8000b24:   .word D_03005390
_8000b28:   .word 0
glabel func_08000a00_end

arm_func_start func_08000b2c
    mov     r12, r0
    mov     r0, #0
    mov     r1, #0
    lsl     r2, r1, #2
    add     r3, r2, r0, lsl #2
    cmp     r3, r12, lsr #30
    lsl     r0, r0, #1
    mov     r1, r2
    addcc   r0, r0, #1
    addcc   r1, r3, #1
    lsl     r2, r1, #2
    add     r3, r2, r0, lsl #2
    cmp     r3, r12, lsr #28
    lsl     r0, r0, #1
_8000b64:       mov     r1, r2
_8000b68:       addcc   r0, r0, #1
_8000b6c:       addcc   r1, r3, #1
_8000b70:       lsl     r2, r1, #2
_8000b74:       add     r3, r2, r0, lsl #2
_8000b78:       cmp     r3, r12, lsr #26
_8000b7c:       lsl     r0, r0, #1
_8000b80:       mov     r1, r2
_8000b84:       addcc   r0, r0, #1
_8000b88:       addcc   r1, r3, #1
_8000b8c:       lsl     r2, r1, #2
_8000b90:       add     r3, r2, r0, lsl #2
_8000b94:       cmp     r3, r12, lsr #24
_8000b98:       lsl     r0, r0, #1
_8000b9c:       mov     r1, r2
_8000ba0:       addcc   r0, r0, #1
_8000ba4:       addcc   r1, r3, #1
_8000ba8:       lsl     r2, r1, #2
_8000bac:       add     r3, r2, r0, lsl #2
_8000bb0:       cmp     r3, r12, lsr #22
_8000bb4:       lsl     r0, r0, #1
_8000bb8:       mov     r1, r2
_8000bbc:       addcc   r0, r0, #1
_8000bc0:       addcc   r1, r3, #1
_8000bc4:       lsl     r2, r1, #2
_8000bc8:       add     r3, r2, r0, lsl #2
_8000bcc:       cmp     r3, r12, lsr #20
_8000bd0:       lsl     r0, r0, #1
_8000bd4:       mov     r1, r2
_8000bd8:       addcc   r0, r0, #1
_8000bdc:       addcc   r1, r3, #1
_8000be0:       lsl     r2, r1, #2
_8000be4:       add     r3, r2, r0, lsl #2
_8000be8:       cmp     r3, r12, lsr #18
_8000bec:       lsl     r0, r0, #1
_8000bf0:       mov     r1, r2
_8000bf4:       addcc   r0, r0, #1
_8000bf8:       addcc   r1, r3, #1
_8000bfc:       lsl     r2, r1, #2
_8000c00:       add     r3, r2, r0, lsl #2
_8000c04:       cmp     r3, r12, lsr #16
_8000c08:       lsl     r0, r0, #1
_8000c0c:       mov     r1, r2
_8000c10:       addcc   r0, r0, #1
_8000c14:       addcc   r1, r3, #1
_8000c18:       lsl     r2, r1, #2
_8000c1c:       add     r3, r2, r0, lsl #2
_8000c20:       cmp     r3, r12, lsr #14
_8000c24:       lsl     r0, r0, #1
_8000c28:       mov     r1, r2
_8000c2c:       addcc   r0, r0, #1
_8000c30:       addcc   r1, r3, #1
_8000c34:       lsl     r2, r1, #2
_8000c38:       add     r3, r2, r0, lsl #2
_8000c3c:       cmp     r3, r12, lsr #12
_8000c40:       lsl     r0, r0, #1
_8000c44:       mov     r1, r2
_8000c48:       addcc   r0, r0, #1
_8000c4c:       addcc   r1, r3, #1
_8000c50:       lsl     r2, r1, #2
_8000c54:       add     r3, r2, r0, lsl #2
_8000c58:       cmp     r3, r12, lsr #10
_8000c5c:       lsl     r0, r0, #1
_8000c60:       mov     r1, r2
_8000c64:       addcc   r0, r0, #1
_8000c68:       addcc   r1, r3, #1
_8000c6c:       lsl     r2, r1, #2
_8000c70:       add     r3, r2, r0, lsl #2
_8000c74:       cmp     r3, r12, lsr #8
_8000c78:       lsl     r0, r0, #1
_8000c7c:       mov     r1, r2
_8000c80:       addcc   r0, r0, #1
_8000c84:       addcc   r1, r3, #1
_8000c88:       lsl     r2, r1, #2
_8000c8c:       add     r3, r2, r0, lsl #2
_8000c90:       cmp     r3, r12, lsr #6
_8000c94:       lsl     r0, r0, #1
_8000c98:       mov     r1, r2
_8000c9c:       addcc   r0, r0, #1
_8000ca0:       addcc   r1, r3, #1
_8000ca4:       lsl     r2, r1, #2
_8000ca8:       add     r3, r2, r0, lsl #2
_8000cac:       cmp     r3, r12, lsr #4
_8000cb0:       lsl     r0, r0, #1
_8000cb4:       mov     r1, r2
_8000cb8:       addcc   r0, r0, #1
_8000cbc:       addcc   r1, r3, #1
_8000cc0:       lsl     r2, r1, #2
_8000cc4:       add     r3, r2, r0, lsl #2
_8000cc8:       cmp     r3, r12, lsr #2
_8000ccc:       lsl     r0, r0, #1
_8000cd0:       mov     r1, r2
_8000cd4:       addcc   r0, r0, #1
_8000cd8:       addcc   r1, r3, #1
_8000cdc:       lsl     r2, r1, #2
_8000ce0:       add     r3, r2, r0, lsl #2
_8000ce4:       cmp     r3, ip
_8000ce8:       lsl     r0, r0, #1
_8000cec:       mov     r1, r2
_8000cf0:       addcc   r0, r0, #1
_8000cf4:       addcc   r1, r3, #1
_8000cf8:       bx      lr
glabel func_08000b2c_end

arm_func_start func_08000cfc
_8000cfc:       mov     r2, #0
_8000d00:       adcs    r0, r0, r0
_8000d04:       adc     r2, r2, r2
_8000d08:       cmp     r2, r1
_8000d0c:       subcs   r2, r2, r1
_8000d10:       adcs    r0, r0, r0
_8000d14:       adc     r2, r2, r2
_8000d18:       cmp     r2, r1
_8000d1c:       subcs   r2, r2, r1
_8000d20:       adcs    r0, r0, r0
_8000d24:       adc     r2, r2, r2
_8000d28:       cmp     r2, r1
_8000d2c:       subcs   r2, r2, r1
_8000d30:       adcs    r0, r0, r0
_8000d34:       adc     r2, r2, r2
_8000d38:       cmp     r2, r1
_8000d3c:       subcs   r2, r2, r1
_8000d40:       adcs    r0, r0, r0
_8000d44:       adc     r2, r2, r2
_8000d48:       cmp     r2, r1
_8000d4c:       subcs   r2, r2, r1
_8000d50:       adcs    r0, r0, r0
_8000d54:       adc     r2, r2, r2
_8000d58:       cmp     r2, r1
_8000d5c:       subcs   r2, r2, r1
_8000d60:       adcs    r0, r0, r0
_8000d64:       adc     r2, r2, r2
_8000d68:       cmp     r2, r1
_8000d6c:       subcs   r2, r2, r1
_8000d70:       adcs    r0, r0, r0
_8000d74:       adc     r2, r2, r2
_8000d78:       cmp     r2, r1
_8000d7c:       subcs   r2, r2, r1
_8000d80:       adcs    r0, r0, r0
_8000d84:       adc     r2, r2, r2
_8000d88:       cmp     r2, r1
_8000d8c:       subcs   r2, r2, r1
_8000d90:       adcs    r0, r0, r0
_8000d94:       adc     r2, r2, r2
_8000d98:       cmp     r2, r1
_8000d9c:       subcs   r2, r2, r1
_8000da0:       adcs    r0, r0, r0
_8000da4:       adc     r2, r2, r2
_8000da8:       cmp     r2, r1
_8000dac:       subcs   r2, r2, r1
_8000db0:       adcs    r0, r0, r0
_8000db4:       adc     r2, r2, r2
_8000db8:       cmp     r2, r1
_8000dbc:       subcs   r2, r2, r1
_8000dc0:       adcs    r0, r0, r0
_8000dc4:       adc     r2, r2, r2
_8000dc8:       cmp     r2, r1
_8000dcc:       subcs   r2, r2, r1
_8000dd0:       adcs    r0, r0, r0
_8000dd4:       adc     r2, r2, r2
_8000dd8:       cmp     r2, r1
_8000ddc:       subcs   r2, r2, r1
_8000de0:       adcs    r0, r0, r0
_8000de4:       adc     r2, r2, r2
_8000de8:       cmp     r2, r1
_8000dec:       subcs   r2, r2, r1
_8000df0:       adcs    r0, r0, r0
_8000df4:       adc     r2, r2, r2
_8000df8:       cmp     r2, r1
_8000dfc:       subcs   r2, r2, r1
_8000e00:       adcs    r0, r0, r0
_8000e04:       adc     r2, r2, r2
_8000e08:       cmp     r2, r1
_8000e0c:       subcs   r2, r2, r1
_8000e10:       adcs    r0, r0, r0
_8000e14:       adc     r2, r2, r2
_8000e18:       cmp     r2, r1
_8000e1c:       subcs   r2, r2, r1
_8000e20:       adcs    r0, r0, r0
_8000e24:       adc     r2, r2, r2
_8000e28:       cmp     r2, r1
_8000e2c:       subcs   r2, r2, r1
_8000e30:       adcs    r0, r0, r0
_8000e34:       adc     r2, r2, r2
_8000e38:       cmp     r2, r1
_8000e3c:       subcs   r2, r2, r1
_8000e40:       adcs    r0, r0, r0
_8000e44:       adc     r2, r2, r2
_8000e48:       cmp     r2, r1
_8000e4c:       subcs   r2, r2, r1
_8000e50:       adcs    r0, r0, r0
_8000e54:       adc     r2, r2, r2
_8000e58:       cmp     r2, r1
_8000e5c:       subcs   r2, r2, r1
_8000e60:       adcs    r0, r0, r0
_8000e64:       adc     r2, r2, r2
_8000e68:       cmp     r2, r1
_8000e6c:       subcs   r2, r2, r1
_8000e70:       adcs    r0, r0, r0
_8000e74:       adc     r2, r2, r2
_8000e78:       cmp     r2, r1
_8000e7c:       subcs   r2, r2, r1
_8000e80:       adcs    r0, r0, r0
_8000e84:       adc     r2, r2, r2
_8000e88:       cmp     r2, r1
_8000e8c:       subcs   r2, r2, r1
_8000e90:       adcs    r0, r0, r0
_8000e94:       adc     r2, r2, r2
_8000e98:       cmp     r2, r1
_8000e9c:       subcs   r2, r2, r1
_8000ea0:       adcs    r0, r0, r0
_8000ea4:       adc     r2, r2, r2
_8000ea8:       cmp     r2, r1
_8000eac:       subcs   r2, r2, r1
_8000eb0:       adcs    r0, r0, r0
_8000eb4:       adc     r2, r2, r2
_8000eb8:       cmp     r2, r1
_8000ebc:       subcs   r2, r2, r1
_8000ec0:       adcs    r0, r0, r0
_8000ec4:       adc     r2, r2, r2
_8000ec8:       cmp     r2, r1
_8000ecc:       subcs   r2, r2, r1
_8000ed0:       adcs    r0, r0, r0
_8000ed4:       adc     r2, r2, r2
_8000ed8:       cmp     r2, r1
_8000edc:       subcs   r2, r2, r1
_8000ee0:       adcs    r0, r0, r0
_8000ee4:       adc     r2, r2, r2
_8000ee8:       cmp     r2, r1
_8000eec:       subcs   r2, r2, r1
_8000ef0:       adcs    r0, r0, r0
_8000ef4:       adc     r2, r2, r2
_8000ef8:       cmp     r2, r1
_8000efc:       subcs   r2, r2, r1
_8000f00:       adc     r0, r0, r0
_8000f04:       bx      lr
glabel func_08000cfc_end

arm_func_start func_08000f08
_8000f08:       push    {r4, r5, r6, r7, r8, r9, r10, r11, r12, lr}
_8000f0c:       stmfd   sp!, {r0}
_8000f10:       ldm     r0, {r1, r2, r3, r4, r5, r6, r7, r8}
branch_08000f14:
    rors    r4, r4, #1
_8000f18:       bcs     branch_08000f4c
_8000f1c:       ldrh    r0, [r1], #2
_8000f20:       strh    r0, [r2], #2
_8000f24:       subs    r3, r3, #65536  @ 0x10000
_8000f28:       blt     branch_0800110c
_8000f2c:       sub     r8, r8, #8
branch_08000f30:
    sub     r3, r3, #1
_8000f34:       tst     r3, #31
_8000f38:       orreq   r3, r3, #32
_8000f3c:       ldreq   r4, [r6], #4
_8000f40:       cmp     r8, #0
_8000f44:       bge     branch_08000f14
_8000f48:       b       branch_08001118
branch_08000f4c:
    rors    r5, r5, #1
_8000f50:       bcs     branch_08001034
_8000f54:       mov     r9, #4
_8000f58:       mov     r10, #15
_8000f5c:       ldrh    r11, [r1], #2
branch_08000f60:
    ldrh    r12, [r1], #2
_8000f64:       and     r0, r9, r12, ror #30
_8000f68:       and     lr, r10, r11, lsr r0
_8000f6c:       and     r0, r9, r12, ror #31
_8000f70:       and     r0, r10, r11, lsr r0
_8000f74:       orr     lr, lr, r0, lsl #4
_8000f78:       and     r0, r9, ip
_8000f7c:       and     r0, r10, r11, lsr r0
_8000f80:       orr     lr, lr, r0, lsl #8
_8000f84:       and     r0, r9, r12, ror #1
_8000f88:       and     r0, r10, r11, lsr r0
_8000f8c:       orr     lr, lr, r0, lsl #12
_8000f90:       strh    lr, [r2], #2
_8000f94:       and     r0, r9, r12, ror #2
_8000f98:       and     lr, r10, r11, lsr r0
_8000f9c:       and     r0, r9, r12, ror #3
_8000fa0:       and     r0, r10, r11, lsr r0
_8000fa4:       orr     lr, lr, r0, lsl #4
_8000fa8:       and     r0, r9, r12, ror #4
_8000fac:       and     r0, r10, r11, lsr r0
_8000fb0:       orr     lr, lr, r0, lsl #8
_8000fb4:       and     r0, r9, r12, ror #5
_8000fb8:       and     r0, r10, r11, lsr r0
_8000fbc:       orr     lr, lr, r0, lsl #12
_8000fc0:       strh    lr, [r2], #2
_8000fc4:       and     r0, r9, r12, ror #6
_8000fc8:       and     lr, r10, r11, lsr r0
_8000fcc:       and     r0, r9, r12, ror #7
_8000fd0:       and     r0, r10, r11, lsr r0
_8000fd4:       orr     lr, lr, r0, lsl #4
_8000fd8:       and     r0, r9, r12, ror #8
_8000fdc:       and     r0, r10, r11, lsr r0
_8000fe0:       orr     lr, lr, r0, lsl #8
_8000fe4:       and     r0, r9, r12, ror #9
_8000fe8:       and     r0, r10, r11, lsr r0
_8000fec:       orr     lr, lr, r0, lsl #12
_8000ff0:       strh    lr, [r2], #2
_8000ff4:       and     r0, r9, r12, ror #10
_8000ff8:       and     lr, r10, r11, lsr r0
_8000ffc:       and     r0, r9, r12, ror #11
_8001000:       and     r0, r10, r11, lsr r0
_8001004:       orr     lr, lr, r0, lsl #4
_8001008:       and     r0, r9, r12, ror #12
branch_0800100c:
    and     r0, r10, r11, lsr r0
_8001010:       orr     lr, lr, r0, lsl #8
_8001014:       and     r0, r9, r12, ror #13
_8001018:       and     r0, r10, r11, lsr r0
_800101c:       orr     lr, lr, r0, lsl #12
_8001020:       strh    lr, [r2], #2
_8001024:       sub     r8, r8, #12
_8001028:       subs    r11, r11, #256    @ 0x100
_800102c:       bge     branch_08000f60
_8001030:       b       branch_080010f0
branch_08001034:
    stmfd   sp!, {r4}
_8001038:       mov     r9, #12
_800103c:       mov     r10, #15
_8001040:       ldrh    r11, [r1], #2
_8001044:       ldrh    r4, [r1], #2
_8001048:       and     r0, r9, r4, lsr #6
_800104c:       and     lr, r10, r11, lsr r0
_8001050:       and     r0, r9, r4, lsr #8
_8001054:       and     r0, r10, r11, lsr r0
_8001058:       orr     lr, lr, r0, lsl #4
_800105c:       and     r0, r9, r4, lsr #10
_8001060:       and     r0, r10, r11, lsr r0
_8001064:       orr     lr, lr, r0, lsl #8
_8001068:       and     r0, r9, r4, lsr #12
_800106c:       and     r0, r10, r11, lsr r0
_8001070:       orr     lr, lr, r0, lsl #12
_8001074:       strh    lr, [r2], #2
_8001078:       and     r4, r4, #255    @ 0xff
branch_0800107c:
    ldrh    r12, [r1], #2
_8001080:       and     r0, r9, r12, ror #30
_8001084:       and     lr, r10, r11, lsr r0
_8001088:       and     r0, r9, ip
_800108c:       and     r0, r10, r11, lsr r0
_8001090:       orr     lr, lr, r0, lsl #4
_8001094:       and     r0, r9, r12, ror #2
_8001098:       and     r0, r10, r11, lsr r0
_800109c:       orr     lr, lr, r0, lsl #8
_80010a0:       and     r0, r9, r12, ror #4
_80010a4:       and     r0, r10, r11, lsr r0
_80010a8:       orr     lr, lr, r0, lsl #12
_80010ac:       strh    lr, [r2], #2
_80010b0:       and     r0, r9, r12, ror #6
_80010b4:       and     lr, r10, r11, lsr r0
_80010b8:       and     r0, r9, r12, ror #8
_80010bc:       and     r0, r10, r11, lsr r0
_80010c0:       orr     lr, lr, r0, lsl #4
_80010c4:       and     r0, r9, r12, ror #10
_80010c8:       and     r0, r10, r11, lsr r0
_80010cc:       orr     lr, lr, r0, lsl #8
_80010d0:       and     r0, r9, r12, ror #12
_80010d4:       and     r0, r10, r11, lsr r0
_80010d8:       orr     lr, lr, r0, lsl #12
_80010dc:       strh    lr, [r2], #2
_80010e0:       sub     r8, r8, #16
_80010e4:       subs    r4, r4, #1
_80010e8:       bge     branch_0800107c
_80010ec:       ldmfd   sp!, {r4}
branch_080010f0:
    subs    r3, r3, #65536  @ 0x10000
_80010f4:       blt     branch_0800110c
_80010f8:       sub     r3, r3, #256    @ 0x100
_80010fc:       tst     r3, #7936       @ 0x1f00
_8001100:       orreq   r3, r3, #8192   @ 0x2000
_8001104:       ldreq   r5, [r7], #4
_8001108:       b       branch_08000f30
branch_0800110c:
    ldmfd   sp!, {r0}
_8001110:       mov     r0, #1
_8001114:       b       branch_08001124
branch_08001118:
    ldmfd   sp!, {r0}
_800111c:       stm     r0, {r1, r2, r3, r4, r5, r6, r7}
_8001120:       mov     r0, #0
branch_08001124:
    pop     {r4, r5, r6, r7, r8, r9, r10, r11, r12, lr}
_8001128:       bx      lr
glabel func_08000f08_end

arm_func_start mem_heap_alloc_block_rom
_800112c:       stmfd   sp!, {r4}
_8001130:       mov     r4, #0
_8001134:       mov     r3, r4
_8001138:       add     r3, r3, r4, lsr #16
_800113c:       cmp     r3, r1
_8001140:       bcs     branch_08001160
_8001144:       ldr     r4, [r0, r3, lsl #2]
_8001148:       tst     r4, #32768      @ 0x8000
_800114c:       bne     branch_08001138
_8001150:       cmp     r2, r4, lsr #16
_8001154:       bhi     branch_08001138
_8001158:       mov     r0, r3
_800115c:       b       branch_08001164
_8001160:       mvn     r0, #0
_8001164:       ldmfd   sp!, {r4}
_8001168:       bx      lr
glabel mem_heap_alloc_block_rom_end

arm_func_start func_0800116c
_800116c:       push    {r4, r5, r6, r7, r8, r9, r10, r11, r12, lr}
_8001170:       ldr     r9, [r0]
_8001174:       ldr     r10, [r0, #4]
_8001178:       ldr     r11, [r0, #8]
_800117c:       ldr     r0, [r0, #12]
_8001180:       mov     r12, #17
_8001184:       orr     r12, r12, r12, lsl #8
_8001188:       orr     r12, r12, r12, lsl #16
_800118c:       cmp     r0, #2
_8001190:       addlt   r9, r9, #16
_8001194:       blt     branch_080011ac
_8001198:       ldm     r9, {r5, r6, r7, r8}
_800119c:       bl      branch_080011f4
_80011a0:       bl      branch_080011f4
_80011a4:       stm     r9, {r5, r6, r7, r8}
_80011a8:       sub     r9, r9, #48     @ 0x30
_80011ac:       ldm     r9, {r5, r6, r7, r8}
_80011b0:       bl      branch_080011f4
_80011b4:       bl      branch_080011f4
_80011b8:       stm     r9, {r5, r6, r7, r8}
_80011bc:       sub     r9, r9, #48     @ 0x30
_80011c0:       add     r9, r9, #992    @ 0x3e0
_80011c4:       ldm     r9, {r5, r6, r7, r8}
_80011c8:       bl      branch_080011f4
_80011cc:       bl      branch_080011f4
_80011d0:       stm     r9, {r5, r6, r7, r8}
_80011d4:       sub     r9, r9, #48     @ 0x30
_80011d8:       ldm     r9, {r5, r6, r7, r8}
_80011dc:       bl      branch_080011f4
_80011e0:       bl      branch_080011f4
_80011e4:       stm     r9, {r5, r6, r7, r8}
_80011e8:       sub     r9, r9, #48     @ 0x30
_80011ec:       pop     {r4, r5, r6, r7, r8, r9, r10, r11, r12, lr}
_80011f0:       bx      lr
_80011f4:       ldr     r0, [r10], #4
_80011f8:       and     r1, r12, r0
_80011fc:       and     r2, r12, r0, lsr #1
_8001200:       and     r3, r12, r0, lsr #2
_8001204:       and     r4, r12, r0, lsr #3
_8001208:       orr     r5, r5, r1, lsl fp
_800120c:       orr     r6, r6, r2, lsl fp
_8001210:       orr     r7, r7, r3, lsl fp
_8001214:       orr     r8, r8, r4, lsl fp
_8001218:       stm     r9, {r5, r6, r7, r8}
_800121c:       add     r9, r9, #32
_8001220:       rsb     r11, r11, #32
_8001224:       ldm     r9, {r5, r6, r7, r8}
_8001228:       orr     r5, r5, r1, lsr fp
_800122c:       orr     r6, r6, r2, lsr fp
_8001230:       orr     r7, r7, r3, lsr fp
_8001234:       orr     r8, r8, r4, lsr fp
_8001238:       rsb     r11, r11, #32
_800123c:       bx      lr
glabel func_0800116c_end

arm_func_start func_08001240
_8001240:       push    {r4, r5, r6, r7, r8, r9, r10}
_8001244:       ldr     r3, [r0]
_8001248:       ldr     r4, [r0, #4]
_800124c:       ldr     r5, [r0, #8]
_8001250:       ldr     r6, [r0, #12]
_8001254:       ldr     r7, [r0, #16]
_8001258:       mov     r10, #31
_800125c:       ldrh    r8, [r3], #2
_8001260:       ldrh    r9, [r4], #2
_8001264:       and     r0, r10, r8
_8001268:       and     r1, r10, r9
_800126c:       sub     r1, r1, r0
_8001270:       mul     r1, r7, r1
_8001274:       add     r2, r0, r1, asr #8
_8001278:       and     r0, r10, r8, lsr #5
_800127c:       and     r1, r10, r9, lsr #5
_8001280:       sub     r1, r1, r0
_8001284:       mul     r1, r7, r1
_8001288:       add     r0, r0, r1, asr #8
_800128c:       add     r2, r2, r0, lsl #5
_8001290:       and     r0, r10, r8, lsr #10
_8001294:       and     r1, r10, r9, lsr #10
_8001298:       sub     r1, r1, r0
_800129c:       mul     r1, r7, r1
_80012a0:       add     r0, r0, r1, asr #8
_80012a4:       add     r2, r2, r0, lsl #10
_80012a8:       strh    r2, [r5], #2
_80012ac:       subs    r6, r6, #1
_80012b0:       bne     branch_0800125c
_80012b4:       pop     {r4, r5, r6, r7, r8, r9, r10}
_80012b8:       bx      lr
glabel func_08001240_end

arm_func_start func_080012bc
_80012bc:       push    {r4, r5, r6, r7, r8, r9, r10}
_80012c0:       ldr     r2, [r0]
_80012c4:       ldr     r4, [r0, #4]
_80012c8:       ldr     r5, [r0, #8]
_80012cc:       ldr     r6, [r0, #12]
_80012d0:       ldr     r7, [r0, #16]
_80012d4:       mov     r10, #31
_80012d8:       and     r3, r10, r2, lsr #5
_80012dc:       and     r8, r10, r2, lsr #10
_80012e0:       and     r2, r10, r2
_80012e4:       ldrh    r9, [r4], #2
_80012e8:       and     r0, r10, r9
_80012ec:       sub     r0, r0, r2
_80012f0:       mul     r0, r7, r0
_80012f4:       add     r1, r2, r0, asr #8
_80012f8:       and     r0, r10, r9, lsr #5
_80012fc:       sub     r0, r0, r3
_8001300:       mul     r0, r7, r0
_8001304:       add     r0, r3, r0, asr #8
_8001308:       add     r1, r1, r0, lsl #5
_800130c:       and     r0, r10, r9, lsr #10
_8001310:       sub     r0, r0, r8
_8001314:       mul     r0, r7, r0
_8001318:       add     r0, r8, r0, asr #8
_800131c:       add     r1, r1, r0, lsl #10
_8001320:       strh    r1, [r5], #2
_8001324:       subs    r6, r6, #1
_8001328:       bne     branch_080012e4
_800132c:       pop     {r4, r5, r6, r7, r8, r9, r10}
_8001330:       bx      lr
glabel func_080012bc_end

arm_func_start func_08001334
_8001334:       ldr     r12, [r0], #4
_8001338:       strb    r12, [r1], #1
_800133c:       lsr     r12, r12, #8
_8001340:       strb    r12, [r1], #1
_8001344:       lsr     r12, r12, #8
_8001348:       strb    r12, [r1], #1
_800134c:       lsr     r12, r12, #8
_8001350:       strb    r12, [r1], #1
_8001354:       subs    r2, r2, #1
_8001358:       bne     branch_08001334
_800135c:       bx      lr
glabel func_08001334_end
