#Να εμφανίζει στο παράθυρο Run I/O το string Hello

.data 
msg: .asciiz "Hello\n"

.text
.globl main
	main:
	
	li $v0, 4
	la $a0, msg
	syscall
	
	
	li $v0, 10
	syscall
