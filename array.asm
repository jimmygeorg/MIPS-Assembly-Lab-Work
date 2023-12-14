.data
	myArray: .space 12 #int = 4 bytes -> 3 ints *4 = 12 bytes
	
.text
.globl main
	main:
	
	addi $s0, $zero, 4  #arr[0]=4
	addi $s1, $zero, 10 #arr[1]=10
	addi $s2, $zero, 12 #arr[2]=12
	
	#inderx = $t0
	addi $t0, $zero, 0
	
	sw $s0, myArray($t0)
		addi $t0, $t0, 4 #μετακινω τον δεικτη στην επομενη θεση
	sw $s1, myArray($t0)
		addi $t0, $t0, 4 #μετακινω τον δεικτη στην επομενη θεση
	sw $s2, myArray($t0)
		addi $t0, $t0, 4 #μετακινω τον δεικτη στην επομενη θεση
	
	lw $t6, myArray($zero) #φορτωνω το πρωτο κελι στον t6
	
	
	li $v0, 1
	addi $a0, $t6, 0
	syscall
	
	li $v0, 10
	syscall