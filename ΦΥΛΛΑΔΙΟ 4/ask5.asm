.data
	str: .asciiz "****"
.text
.globl main
	main:
	
	move $t0, $0
	
	Loop:
		beq $t0, 5, Exit
		
		li $v0, 4
		la $a0, str
		syscall
		
		li $v0, 11
		li $a0, '\n'
		syscall
		
		addi $t0, $t0, 1
		
		j Loop
	
	Exit:	
	li $v0, 10
	syscall