.section .text
.syntax unified

.include "include/gba.inc"

arm_func_start func_0804e938
    ldrh r2, [r0]
    bic r1, r2, #2
    orr r2, r2, #2
    strh r2, [r0]
    mov r0, #0
    ldr r3, =#0x080000c4 // writing at ROM address?
    strh r1, [r3]
    nop
    nop
    nop
    strh r2, [r3]
    nop
    nop
    nop
    strh r1, [r3]
    nop
    nop
    nop
    strh r2, [r3]
    nop
    nop
    nop
    strh r1, [r3]
    nop
    nop
    nop
    strh r2, [r3]
    nop
    nop
    nop
    strh r1, [r3]
    nop
    nop
    nop
    strh r2, [r3]
    ldrh ip, [r3]
    strh r1, [r3]
    lsr ip, ip, #2
    and ip, ip, #1
    orr r0, ip, r0, lsl #1
    strh r2, [r3]
    ldrh ip, [r3]
    strh r1, [r3]
    lsr ip, ip, #2
    and ip, ip, #1
    orr r0, ip, r0, lsl #1
    strh r2, [r3]
    ldrh ip, [r3]
    strh r1, [r3]
    lsr ip, ip, #2
    and ip, ip, #1
    orr r0, ip, r0, lsl #1
    strh r2, [r3]
    ldrh ip, [r3]
    strh r1, [r3]
    lsr ip, ip, #2
    and ip, ip, #1
    orr r0, ip, r0, lsl #1
    strh r2, [r3]
    ldrh ip, [r3]
    strh r1, [r3]
    lsr ip, ip, #2
    and ip, ip, #1
    orr r0, ip, r0, lsl #1
    strh r2, [r3]
    ldrh ip, [r3]
    strh r1, [r3]
    lsr ip, ip, #2
    and ip, ip, #1
    orr r0, ip, r0, lsl #1
    strh r2, [r3]
    ldrh ip, [r3]
    strh r1, [r3]
    lsr ip, ip, #2
    and ip, ip, #1
    orr r0, ip, r0, lsl #1
    strh r2, [r3]
    ldrh ip, [r3]
    strh r1, [r3]
    lsr ip, ip, #2
    and ip, ip, #1
    orr r0, ip, r0, lsl #1
    strh r2, [r3]
    ldrh ip, [r3]
    strh r1, [r3]
    lsr ip, ip, #2
    and ip, ip, #1
    orr r0, ip, r0, lsl #1
    strh r2, [r3]
    ldrh ip, [r3]
    strh r1, [r3]
    lsr ip, ip, #2
    and ip, ip, #1
    orr r0, ip, r0, lsl #1
    strh r2, [r3]
    ldrh ip, [r3]
    strh r1, [r3]
    lsr ip, ip, #2
    and ip, ip, #1
    orr r0, ip, r0, lsl #1
    strh r2, [r3]
    ldrh ip, [r3]
    strh r1, [r3]
    lsr ip, ip, #2
    and ip, ip, #1
    orr r0, ip, r0, lsl #1
    strh r2, [r3]
    bx lr
