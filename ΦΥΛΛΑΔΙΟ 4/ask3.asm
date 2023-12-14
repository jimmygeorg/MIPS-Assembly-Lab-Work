.data

.text
.globl main
main:
    move $t0, $0    # t0=0
    li $t1, 5       # t1=5

Loop:
    beq $t0, $t1, Exit

    li $v0, 11
    li $a0, '*'     # Load the ASCII value of '*' into $a0
    syscall

    addi $t0, $t0, 1
    j Loop

Exit:
    li $v0, 10
    syscall
