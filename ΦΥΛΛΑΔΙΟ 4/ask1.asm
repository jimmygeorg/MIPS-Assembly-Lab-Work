# Πρόγραμμα που να διαβάζει έναν ακέραιο και να εμφανίζει το μήνυμα «Zero» ή το μήνυμα «Non Zero». Χρησιμοποιήστε ως αφετηρία τον ακόλουθο κώδικα C:
# scanf(‚%d‛, &n);
# if (n==0) goto 1;
# printf(‚Non Zero‛);
# goto 2:
# 1: printf(‚Zero‛);
# 2: ...........

.data
 	num: .word 30
 	zerotxt: .asciiz "Zero"
 	nonzerotxt: .asciiz "Non Zero"
.text
.globl main
	main:
	li $v0, 5
	syscall
	
	sw $v0, num
	beq $v0, $zero, isZero
	
	li $v0, 4
	la $a0, nonzerotxt
	syscall
	
	j Exit
	
	isZero:	li $v0, 4
		la, $a0, zerotxt
		syscall
	Exit:
		li $v0, 10
		syscall
	
