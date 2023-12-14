#Να διαβάζει από το παράθυρο Run I/O το ονοματεπώνυμό σας, να το αποθηκεύει στη μνήμη και στη συνέχεια να το εμφανίζει στο παράθυρο Run I/O. 


.data
str: .space 100
msg1: .asciiz "Enter your first name"
msg2: .asciiz "Enter your last name"

.text
.globl main
	main:
		li $v0, 8	#ετοιμασου να διαβασεις string
		li $a1, 100	#φορτωνουμε το μεγιστο μηκος του string
		la $a0, str	#φορτωνουμε στον a0 τη διευθυνση μνημης οπου θα αποκηθευτει το string
		syscall
		
		
		li $v0, 11
		la $a0, '\n'
		syscall
		
		li $v0, 4	#ετοιμασου να εμφανισεις το string
		la $a0, str	#φορτωνουμε τη διευθυνση μνημης οπου ειναι αποθηκευμενο το string
		syscall
		
		
		li $v0, 10
		syscall
