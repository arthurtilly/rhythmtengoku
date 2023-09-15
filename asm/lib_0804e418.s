.section .text
.syntax unified

.include "include/gba.inc"


// r0: struct struct_0804cb88 *
arm_func_start func_0804e418
    push {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    mov lr, r0
    ldm r0, {r2, r3, r4, r5, r6}
    // Rotate attributes 1 and 0
    ror r6, r6, #0x10
handling_data_loop:
    // Get attribute 2 from the OAM cel
    ldrh r0, [r2, #4]
    orr r0, r0, r6, lsl #8
    ldrh r1, [lr, #0x14]
    add r0, r0, r1
    // Copy attribute 2 into OAM memory
    strh r0, [r3, #4]
    // Get attribute 0
    ldrh r7, [r2]
    // Get attribute 1
    ldrh r8, [r2, #2]
    // Adjust them
    lsr r0, r7, #0xe
    lsr r1, r8, #0xe
    lsl r9, r8, #0x17
    asr r9, r9, #0x17
    lsl sl, r7, #0x18
    asr sl, sl, #0x18
    orr r7, r7, r6, lsr #8
    eor r8, r8, r6, lsr #0x10
    orr r0, r1, r0, lsl #2
    add r0, lr, r0, lsl #1
    ldrh r0, [r0, #0x20]
    and r1, r7, #0x300
    cmp r1, #0x300
    lsleq r0, r0, #1
    and fp, r0, #0xff
    lsr ip, r0, #8
    tst r6, #0x200
    beq handle_non_affine_data
    add r9, r9, fp, lsr #2
    add sl, sl, ip, lsr #2
    cmp r1, #0x300
    addne r9, r9, fp, lsr #2
    addne sl, sl, ip, lsr #2
    ldrsh r0, [lr, #0x18]
    ldrsh r1, [lr, #0x1a]
    mul r0, r9, r0
    mla r0, sl, r1, r0
    asr r0, r0, #8
    sub r1, r0, fp, lsr #1
    ldrsh r0, [lr, #0x1c]
    mul r0, r9, r0
    mov r9, r1
    ldrsh r1, [lr, #0x1e]
    mla r0, sl, r1, r0
    asr r0, r0, #8
    sub sl, r0, ip, lsr #1
    b continue_handling_data
handle_non_affine_data:
    // H-Flip
    tst r6, #0x10000000
    addne r9, r9, fp
    rsbne r9, r9, #0
    // V-Flip
    tst r6, #0x20000000
    addne sl, sl, ip
    rsbne sl, sl, #0
continue_handling_data:
    add r9, r9, r4, asr #0x10
    add sl, sl, r5, asr #0x10
    add r0, r9, fp
    add r1, fp, #0xf0
    cmp r0, r1
    bcs handling_data_loop_cond
    add r0, sl, ip
    add r1, ip, #0xa0
    cmp r0, r1
    bcs handling_data_loop_cond
    and r7, r7, #0xff00
    bic sl, sl, #0xff00
    orr r7, r7, sl
    // Copy attribute 0 into OAM memory
    strh r7, [r3]
    and r8, r8, #0xfe00
    bic r9, r9, #0xfe00
    orr r8, r8, r9
    // Copy attribute 1 into OAM memory
    strh r8, [r3, #2]
    lsl r0, r5, #0x10
    add r3, r3, r0, asr #0x18
    add r4, r4, #1
handling_data_loop_cond:
    lsl r0, r5, #0x18
    add r2, r2, r0, asr #0x18
    sub r4, r4, #0x100
    tst r4, #0xff00
    bne handling_data_loop
    and r0, r4, #0xff
    pop {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    bx lr
