.data
 	num: .word 30
 	zerotxt: .asciiz "Zero"
 	nonzerotxt: .asciiz "Non Zero"
.text
.globl main
	main:
	li $v0, 5
	syscall
	
	sw $v0, num
	beq $v0, $zero, isZero
	
	li $v0, 4
	la $a0, nonzerotxt
	syscall
	
	j Exit
	
	isZero:	li $v0, 4
		la, $a0, zerotxt
		syscall
	Exit:
		li $v0, 10
		syscall
	