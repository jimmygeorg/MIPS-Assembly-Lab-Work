#Πρόγραμμα που να διαβάζει ένα ακέραιο x και να εμφανίζει x φορές το χαρακτήρα «*». 
.data

.text
.globl main
	main:
	li $v0, 5
	syscall
	
	move $t0, $0	
	move $t1, $v0

	
	Loop:
		beq $t0, $t1, Exit
		
		li $v0, 11
		li $a0, '*'
		syscall
		
		addi $t0, $t0, 1
		j Loop
	
	
	Exit:
	li $v0, 10
	syscall
