# Να εμφανίζει στο παράθυρο Run I/O τον ακέραιο αριθμό 5

.data

.text
.globl main
	main:

		li $a0, 5
		li $v0, 1
		syscall
	
	
	
		li $v0, 10
		syscall
