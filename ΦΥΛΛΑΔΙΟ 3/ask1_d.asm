.data 
msg: .asciiz "Hello"
msg2: .asciiz "ICE"

.text
.globl main
	main:
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 11
	la $a0, '\n'
	syscall
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	
	li $v0, 10
	syscall