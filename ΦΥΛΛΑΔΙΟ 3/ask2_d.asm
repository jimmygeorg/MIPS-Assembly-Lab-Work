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

	move $a0, $t2	#το syscall 1 περιμενει η αξια να τυπωθει στον $a0
	syscall
	
	
	li $v0, 10
	syscall