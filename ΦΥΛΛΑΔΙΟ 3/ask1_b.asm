# Να εμφανίζει στο παράθυρο Run I/O τους χαρακτήρες a,d (χρησιμοποιώντας μόνο τον κωδικό κλήσης 11)
.data
char1: .asciiz "a"
char2: .asciiz "d"

.text
.globl main

main:
li $v0,11
la $a0, char1
lb $a0, 0($a0)
syscall

li $v0, 11
la $a0, '\n'
syscall

li $v0,11
la $a0, char2
lb $a0, 0($a0)
syscall


li $v0, 10
syscall
