.data
A:  .word 4
B:  .word 6

.text

# ===========================
# Function: compute(a, b)
# returns (a + b) * 2
# ===========================
compute:
    # == Callee-save step ==
    addi $sp, $sp, -4
    sw   $s0, 0($sp)

    addu  $s0, $a0, $a1      # s0 = a + b
    addu  $v0, $s0, $s0      # v0 = s0 * 2

    # == Callee-restore step ==
    lw   $s0, 0($sp)
    addi $sp, $sp, 4

    jr   $ra


# ===========================
# main function (caller)
# ===========================
main:
    lw   $t0, A
    lw   $t1, B

    move $a0, $t0
    move $a1, $t1
    jal  compute
    move $t3, $v0

    # print result
    li $v0, 1
    move $a0, $t3
    syscall

    # exit program
    li $v0, 10
    syscall

