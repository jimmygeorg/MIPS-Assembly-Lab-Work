#Να υλοποιεί τον εξής κώδικα της C:
#int x, a = 20, b = 30, c = 15;
#x = (a+b) - (c + 10); 

.data
	
	
.text
.globl main
	main:
	li $a0, 20
	li $a1, 30
	li $a2, 15
	
	
	li $v0, 1
	add $t0, $a0, $a1
	add $t1, $a2, 10
	sub $t2, $t0, $t1

	move $a0, $t2	#ôï syscall 1 ðåñéìåíåé ç áîéá íá ôõðùèåé óôïí $a0
	syscall
	
	
	li $v0, 10
	syscall
