#Να ορίζει στο τμήμα δεδομένων το string “hello” και να εμφανίζει διαδοχικά τον πρώτο και το δεύτερο χαρακτήρα του (με ξεχωριστές εντολές). 

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
		lb $a0, 0($a0)
		syscall

		
		li $v0, 11
		la $a0, str	#Ξαναφορτωνουμε τη διευθυνση μνημης που περιεχει το string γιατι ο a0 περιεχει τον πρωτο χαρακτηρα
		lb $a0, 1($a0)
		syscall


		li $v0, 10
		syscall
