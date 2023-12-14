.data
	num: .word 30
	pos: .asciiz "Positive"
	neg: .asciiz "Negative"
.text
.globl main
	main:
	li $v0, 5
	syscall
	
	sw $v0, num
	
	blt $v0, $zero, Less
	li $v0, 4
	la $a0, pos
	syscall
	
	j Exit
	
	Less:
		li $v0, 4
		la $a0, neg
		syscall
	Exit:
		li $v0, 10
		syscall
	
	
	