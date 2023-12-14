.data
	msg1: .asciiz "Enter x:"
	msg2: .asciiz "Enter y:"
.text
.globl main
	main:
	
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	
	move $s0, $v0 #s0=x
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	
	move $s1, $v0 #s1=y

	move $t0, $0	#line counter

	LineLoop:
		move $t1, $0	#stars counter
		beq $t0, $s0, ExitLine	#if counter == x exit loop
		StarsLoop:
			beq $t1, $s1, ExitStars	#if counter == y move to next line
			
			li $v0, 11
			li $a0, '*'
			syscall
			
			addi $t1, $t1, 1
			j StarsLoop
		
		ExitStars:
		li $v0, 11
		li $a0, '\n'
		syscall
		
		addi $t0, $t0, 1
		j LineLoop
		
	ExitLine:
	
	li $v0, 10
	syscall
