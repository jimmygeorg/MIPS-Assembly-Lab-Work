.data
	str: .space 100
	msg: .asciiz "Enter a string"
	msg2: .asciiz "Enter a number"
	num: .word 0
	
.text
.globl main
	main:
	li $v0, 8
	li $a1, 100
	la $a0, str
	syscall
	
	li $v0, 5
	syscall
	
	sw $v0, num
	
	
	li $v0, 11	
	la $a0, str	#φορτωνουμε τη διευθυνση του μηνυματος
	lw $t0, num	#φορτωνουμε τον αριθμο
	addi $t0, $t0, -1 #αφαιρουμε 1 για να ξεκιναει απο το 0
	add $a0, $a0, $t0 #προσθετουε στον καταχωρητη οπου κραταει το string τον αριθμο
	lb $a0, 0($a0)	#φορτωνουμε το byte της συγκεκριμενης θεσης στη μνημη
	syscall
	
	
	li $v0, 10
	syscall
