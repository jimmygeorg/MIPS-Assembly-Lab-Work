#Να διαβάζει ένα string και να εμφανίζει το δεύτερο χαρακτήρα του

.data
	str: .space 100
.text
.globl main
	main:
	
	li $v0, 8
	li $a1, 100
	la $a0, str
	syscall
	
	li $v0, 11
	la $a0, str
	lb $a0, 1($a0)
	syscall
	
	
	
	
	
	li $v0, 10
	syscall
	

